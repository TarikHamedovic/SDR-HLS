"""
-----------------------------------------------------------------------------
CocoTB Testbench for NCO module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import random
import os


async def init(phase_increment, phase_accumulator, duration_ns):
    # Function to initialize phase_increment and phase_accumulator values #
    cocotb.log.info("[Initialization] Commencing input reset sequence...")

    original_phase_increment = phase_increment.value
    original_phase_accumulator = phase_accumulator.value

    phase_increment.value = 0
    phase_accumulator.value = 0

    await Timer(duration_ns, units="ns")

    cocotb.log.info(f"[Initialization] {phase_increment._name} value changed from {original_phase_increment} to {phase_increment.value}")
    cocotb.log.info(f"[Initialization] {phase_accumulator._name} value changed from {original_phase_accumulator} to {phase_accumulator.value}")

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
        ["phase_increment", str(dut.phase_increment.value)],
        ["phase_accumulator", str(dut.phase_accumulator.value)],
        ["sinewave_out", str(dut.sinewave_out.value)],
        ["cosinewave_out", str(dut.cosinewave_out.value)]
    ]
    cocotb.log.info("\n" + format_table("Monitoring Variables", table_data))

@cocotb.test()
async def nco_test(dut):
    width = int(os.environ.get('WIDTH', 64))
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))
    num_test_values = int(os.environ.get('NUM_TEST_VALUES', 10))
    cocotb.log.info(f"[Test Start] Starting NCO Signal Generator cocotb test with clock_value = {clock_value} ns")

    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initializing Input Variables to 0 #
    await init(dut.phase_increment, dut.phase_accumulator, clock_value)

    # Printing to Monitor to check if the variable change is OK #
    print_vars(dut)

    # Generating test data including edge cases and random values #
    test_data = [0, 1, (1 << (width - 1)) - 1, (1 << (width - 1)), (1 << width) - 1]
    test_data += [random.randint(0, (1 << width) - 1) for _ in range(num_test_values)]
    cocotb.log.info("[Test Data Generation] Generated test data with edge and random values")

    assertions_passed = 0
    for iteration, phase_increment in enumerate(test_data):
        # Loading values into DUT #
        cocotb.log.info(f"[Test Execution] Applying input value phase_increment = {phase_increment}...")
        dut.phase_increment.value = phase_increment
        await RisingEdge(dut.clk)  # Waiting to load phase_increment value
        cocotb.log.info("----- Loaded Values -----")

        # Allow some time for the phase_accumulator to update #
        cocotb.log.info("[Test Execution] Waiting 1 clock cycle for the phase accumulation...")

        await RisingEdge(dut.clk)

        # Monitoring variables after operation #
        print_vars(dut)

        # Checking the sinewave_out and cosinewave_out values #
        expected_sinewave_out = 0 if (dut.phase_accumulator.value >> (width - 1)) & 1 else 1
        expected_cosinewave_out = 0 if ((dut.phase_accumulator.value >> (width - 1)) ^ (dut.phase_accumulator.value >> (width - 2))) & 1 else 1
        actual_sinewave_out = int(dut.sinewave_out.value)
        actual_cosinewave_out = int(dut.cosinewave_out.value)

        sinewave_correct = '✓' if actual_sinewave_out == expected_sinewave_out else '✗'
        cosinewave_correct = '✓' if actual_cosinewave_out == expected_cosinewave_out else '✗'

        table_data = [
            ["Variable", "Actual", "Expected", "Correct"],
            ["phase_increment", phase_increment, phase_increment, "✓"],
            ["phase_accumulator", int(dut.phase_accumulator.value), "-", "-"],
            ["sinewave_out", actual_sinewave_out, expected_sinewave_out, sinewave_correct],
            ["cosinewave_out", actual_cosinewave_out, expected_cosinewave_out, cosinewave_correct]
        ]
        cocotb.log.info("\n" + format_table(f"Checking Table Iteration {iteration + 1}", table_data))

        assert actual_sinewave_out == expected_sinewave_out, f"Assertion failed: phase_increment = {phase_increment}: expected sinewave_out = {expected_sinewave_out}, got {actual_sinewave_out}"
        assertions_passed += 1

        assert actual_cosinewave_out == expected_cosinewave_out, f"Assertion failed: phase_increment = {phase_increment}: expected cosinewave_out = {expected_cosinewave_out}, got {actual_cosinewave_out}"
        assertions_passed += 1

        cocotb.log.info("[Check] Assertion passed for current input set")

    # Summary Table
    summary_table = [
        ["Metric", "Value"],
        ["Clock frequency (MHz)", f"{1/clock_value * 1000}"],
        ["Runtime of simulation (ns)", f"{num_test_values * clock_value}"],
        ["Total number of assertions passed", assertions_passed]
    ]
    cocotb.log.info("\n" + format_table("Summary", summary_table))

    cocotb.log.info("[Summary] All values matched expected results")

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26: initial creation    
 2024/7/6 : Added detailed comments and logging
 2024/8/5 : Added formatted tables for monitoring and checking with titles and outlines
 2024/8/5 : Added iteration count in table title and swapped actual/expected in checking table
 2024/8/20: Modified for the nco_sig module
"""
