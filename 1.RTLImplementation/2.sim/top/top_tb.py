"""
-----------------------------------------------------------------------------
CocoTB Testbench for top module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import random
import os


async def init(dut):
    # Function to initialize DUT values #
    cocotb.log.info("[Initialization] Commencing input reset sequence...")

    # I/O #
    dut.rx_serial.value      = 0
    dut.rf_in.value          = 0
    dut.diff_out.value       = 0
    dut.pwm_out.value        = 0
    dut.pwm_out_p1.value     = 0
    dut.pwm_out_p2.value     = 0
    dut.pwm_out_p3.value     = 0
    dut.pwm_out_p4.value     = 0
    dut.pwm_out_n1.value     = 0
    dut.pwm_out_n2.value     = 0
    dut.pwm_out_n3.value     = 0
    dut.pwm_out_n4.value     = 0

    # Internal Values #
    dut.phase_inc_gen.value  = 0
    dut.phase_inc_gen1.value = 0
    dut.lo_sinewave.value    = 0
    dut.lo_cosinewave.value  = 0

    dut.mix_sinewave.value   = 0
    dut.mix_cosinewave.value = 0

    dut.cic_gain.value       = 0
    dut.cic_sine_out.value   = 0
    dut.cic_sine_clk.value   = 0
    dut.cic_cosine_out.value = 0
    dut.cic_cosine_clk.value = 0

    dut.amdemod_out.value    = 0

    dut.rx_data_valid.value  = 0
    dut.rx_byte.value        = 0
    dut.rx_data_valid1.value = 0
    dut.rx_byte1.value       = 0

    await RisingEdge(dut.clk)

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

def print_vars(dut):
    table_data = [
        ["Variable", "Value"],
        ["count", str(dut.count.value)],
        ["pwm_out", str(dut.pwm_out.value)]
    ]
    cocotb.log.info("\n" + format_table("Monitoring Variables", table_data))


@cocotb.test()
async def top_test(dut):
    
    number_of_iterations = int(os.environ.get("ITERATIONS", 10))
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))

    cocotb.log.info(f"[Test Start] Starting top cocotb test with clock_value = {clock_value} ns")

    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initializing Variables to 0 #
    await init(dut)
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
