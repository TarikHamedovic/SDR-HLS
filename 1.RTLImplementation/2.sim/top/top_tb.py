"""
-----------------------------------------------------------------------------
CocoTB Testbench for top module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, FallingEdge
from cocotb.clock import Clock
import numpy as np
import os

from uart_handler import UartHandler

async def init(dut):
    # Function to initialize DUT values #
    cocotb.log.info("[Initialization] Commencing input reset sequence...")

    # I/O #
    dut.rx_serial.value          = 0
    dut.rf_in.value              = 0
    dut.diff_out.value           = 0
    dut.pwm_out.value            = 0
    dut.pwm_out_p[0].value       = 0
    dut.pwm_out_p[1].value       = 0
    dut.pwm_out_p[2].value       = 0
    dut.pwm_out_p[3].value       = 0
    dut.pwm_out_n[0].value       = 0
    dut.pwm_out_n[1].value       = 0
    dut.pwm_out_n[2].value       = 0
    dut.pwm_out_n[3].value       = 0

    # Internal Values #
    dut.phase_increment[0].value = 0
    dut.phase_increment[1].value = 0
    dut.lo_sinewave.value        = 0
    dut.lo_cosinewave.value      = 0

    dut.mix_sinewave.value       = 0
    dut.mix_cosinewave.value     = 0

    dut.cic_gain.value           = 0
    dut.cic_sine_out.value       = 0
    dut.cic_sine_clk.value       = 0
    dut.cic_cosine_out.value     = 0
    dut.cic_cosine_clk.value     = 0

    dut.amdemod_out.value        = 0

    dut.rx_data_valid.value      = 0
    dut.rx_byte.value            = 0
    dut.rx_data_valid1.value     = 0
    dut.rx_byte1.value           = 0

    await RisingEdge(dut.clk_25mhz)

    cocotb.log.info("[Initialization] Initialized...")


def format_table(title, table_data):
    col_widths = [max(len(str(item)) for item in col) for col in zip(*table_data)]
    table_width = sum(col_widths) + 3 * len(col_widths) + 1
    title_str = '| ' + title.center(table_width - 4) + ' |'
    border = '+' + '+'.join('-' * (width + 2) for width in col_widths) + '+'
    title_border = '+' + '-' * (table_width - 2) + '+'
    table_str = [title_border, title_str, border]
    for row in table_data:
        row_str = '| ' + ' | '.join(str(item).ljust(width) for item, width in zip(row, col_widths)) + ' |'
        table_str.append(row_str)
        table_str.append(border)
    return '\n'.join(table_str)

# Constants
FULL_RANGE_BITS = 12
FULL_RANGE      = 2**FULL_RANGE_BITS

shared_vars = {
    'analog_input': 0,
    'integrator': FULL_RANGE / 2,
    'analog_value': 0,
    'analog_value2': 0,
    'analog_value3': 0,
    'analog_value4': 0
}

async def generate_am_sine_wave(dut, carrier_frequency=1e6, modulation_frequency=5e3, modulation_index=1):
    """Generate an amplitude-modulated sine wave as analog input with given carrier and modulation frequencies."""
    
    # Calculate the clock period in seconds
    clock_period     = 12.5 * 1e-9  # Convert nanoseconds to seconds (12.5 ns)

    # Calculate the phase step per clock cycle for carrier and modulation
    carrier_step     = 2 * np.pi * carrier_frequency * clock_period
    modulation_step  = 2 * np.pi * modulation_frequency * clock_period

    carrier_phase    = 0
    modulation_phase = 0

    while True:
        await RisingEdge(dut.clk_80mhz)

        # Calculate the modulation signal (sinusoidal between 0 and 1)
        modulation_signal = (1 + modulation_index * np.sin(modulation_phase)) / 2

        # Calculate the AM sine wave (carrier * modulation)
        shared_vars['analog_input'] = int(modulation_signal * (np.sin(carrier_phase) + 1) * (FULL_RANGE // 2))

        # Clip the value if it goes beyond the allowable range
        if shared_vars['analog_input'] > 2**FULL_RANGE_BITS - 1:
            dut.analog_input.value = 2**FULL_RANGE_BITS - 1
        else:
            dut.analog_input.value = shared_vars['analog_input']

        # Increment phases for carrier and modulation
        carrier_phase += carrier_step
        modulation_phase += modulation_step

        # Reset phases if they exceed 2*pi
        if carrier_phase >= 2 * np.pi:
            carrier_phase -= 2 * np.pi
        if modulation_phase >= 2 * np.pi:
            modulation_phase -= 2 * np.pi

        cocotb.log.info(f"COROUTINE generate_am_sine_wave: analog_input = {shared_vars['analog_input']}")

async def integrate_feedback(dut):
    while True:
        await RisingEdge(dut.clk_80mhz)
        increase = (FULL_RANGE - shared_vars['integrator']) // (2**(FULL_RANGE_BITS-5))
        decrease = (shared_vars['integrator']) // (2**(FULL_RANGE_BITS-5))
        
        cocotb.log.info(f"COROUTINE integrate_feedback : increase = {increase}, decrease = {decrease}")

        # Check if diff_out is valid
        if dut.diff_out.value.is_resolvable:
            cocotb.log.info(f"COROUTINE integrate_feedback: diff_out = {dut.diff_out.value}")
            if dut.diff_out.value.integer == 1:
                shared_vars['integrator'] += increase    
                cocotb.log.info(f"COROUTINE integrate_feedback: integrator - increase = {shared_vars['integrator']}")
            else:
                shared_vars['integrator'] -= decrease
                cocotb.log.info(f"COROUTINE integrate_feedback: integrator - decrease = {shared_vars['integrator']}")
        else:
            cocotb.log.info("COROUTINE integrate_feedback: diff_out is in high-impedance state ('z')")

async def comparator(dut):
    while True:
        await FallingEdge(dut.clk_80mhz)
        if shared_vars['analog_input'] > shared_vars['integrator']:
            dut.rf_in.value = 1
        else:
            dut.rf_in.value = 0
        cocotb.log.info(f"COROUTINE comparator: rf_in = {dut.rf_in.value}")

async def analog_value_delay(dut):
    while True:
        await RisingEdge(dut.clk_80mhz)
        if(shared_vars['analog_input'] == 512):
           shared_vars['analog_value']  = shared_vars['analog_value2']
           shared_vars['analog_value2'] = shared_vars['analog_value3']
           shared_vars['analog_value3'] = shared_vars['analog_value4']
           shared_vars['analog_value4'] = shared_vars['analog_input']
           cocotb.log.info(f"COROUTINE analog_value_delay")



@cocotb.test()
async def top_test(dut):
    
    clock_value = float(os.environ.get('CLOCK_VALUE', 40))

    cocotb.log.info(f"[Test Start] Starting top cocotb test with clock_value = {clock_value} ns")

    # Starting Clock #
    clock       = Clock(dut.clk_25mhz, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Wait for PLL lock to go high
    cocotb.log.info("[PLL Lock] Waiting for PLL to lock...")
    while not dut.pll_lock.value:
        await RisingEdge(dut.clk_25mhz)
    cocotb.log.info("[PLL Lock] PLL is locked. Continuing with the test.")

    # Initializing Variables to 0 #
    #await init(dut)

    # Asynchronous Reset #
    cocotb.log.info("[ARST] Setting asynchronous reset value to 1")
    dut.arst.value = 1

    await RisingEdge(dut.clk_25mhz)
    cocotb.log.info("[WAIT] Waiting one clock cycle")

    cocotb.log.info("[ARST] Setting asynchronous reset value to 0")
    dut.arst.value = 0

    # Rf_in value #
    dut.rf_in.value = 0
    await RisingEdge(dut.clk_25mhz)

    # Start the UART handler in the background
    uart_handler = UartHandler(
        dut           = dut,
        clk           = dut.clk_80mhz,
        baud_rate     = int(os.environ.get('BAUD_RATE', 115200)),
        clocks_per_bit= int(os.environ.get('CLOCKS_PER_BIT',694))
    )

    # Set the data to send over UART
    uart_handler.set_data(97)  # Example data to send 'a' in ASCII

    # Start the UART handling in the background
    cocotb.start_soon(uart_handler.run())

    cocotb.start_soon(generate_am_sine_wave(dut))

    # Start the integrate feedback
    cocotb.start_soon(integrate_feedback(dut))

    # Start the comparator
    cocotb.start_soon(comparator(dut))

    # Start the analog value delay
    cocotb.start_soon(analog_value_delay(dut))

    # Continue with the rest of your testbench
    for _ in range(40000):
        await RisingEdge(dut.clk_80mhz)

"""
    # Printing to Monitor to check if the variable change is OK #
    print_vars(dut)

    # Generating test data including edge cases and random values #
    test_data = [random.randint(-2**(input_bits-1), 2**(input_bits-1)-1) for _ in range(number_of_iterations)]
    cocotb.log.info("[Test Data Generation] Generated test data")

    assertions_passed = 0
    for iteration, data in enumerate(test_data):
        # Loading values into DUT #
        cocotb.log.info(f"[Test Execution] Applying input value {data}...")
        dut.data_in.value = data
        await RisingEdge(dut.clk)
        await RisingEdge(dut.clk)
        dut.count.value = 0

        # Monitoring variables after operation #
        await RisingEdge(dut.clk)
        print_vars(dut)

        for _ in range(2**counter_bits - 1):
            await RisingEdge(dut.clk)
            expected_output = calculate_expected_output(dut, int(dut.count.value), int(dut.data_in_reg.value), counter_bits)

            # Checking the output against expected value #
            actual_output = int(dut.pwm_out.value)

            result = '✓' if actual_output == expected_output else '✗'

            table_data = [
                ["Variable", "Actual", "Expected", "Correct"],
                ["count", int(dut.count.value), "-", "-"],
                ["data_in", data, data, "✓"],
                ["pwm_out", actual_output, expected_output, result]
            ]
            cocotb.log.info("\n" + format_table(f"Checking Table Iteration {iteration + 1}", table_data))

            assert actual_output == expected_output, f"Assertion failed: data_in = {data}, data_in_reg = {int(dut.data_in_reg.value)} count = {int(dut.count.value)}: expected {expected_output}, got {actual_output}"
            assertions_passed += 1

        cocotb.log.info("[Check] Assertion passed for current input set")

    # Summary Table
    summary_table = [
        ["Metric", "Value"],
        ["Input data width", f"{input_bits}"],
        ["Counter bits", f"{counter_bits}"],
        ["Offset value", f"{offset}"],
        ["Clock frequency (MHz)", f"{1/clock_value * 1000}"],
        ["Runtime of simulation (ns)", f"{number_of_iterations * clock_value * (2**counter_bits - 1)}"],
        ["Total number of assertions passed", assertions_passed]
    ]
    cocotb.log.info("\n" + format_table("Summary", summary_table))

    cocotb.log.info("[Summary] All values matched expected results")
"""
"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/8/15 TH: initial creation   
 
"""
