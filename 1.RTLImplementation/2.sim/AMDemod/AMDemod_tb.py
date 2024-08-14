"""
-----------------------------------------------------------------------------
CocoTB Testbench for AMDemod module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock
import numpy as np
import random
import os

async def init(dut, inphase, quadrature):
    # Function to initialize inphase and quadrature values #
    original_inphase = inphase.value
    original_quadrature = quadrature.value

    inphase.value = 0
    quadrature.value = 0

    await RisingEdge(dut.clk)

    cocotb.log.info(f"[Initialization] {inphase._name} value changed from {original_inphase} to {inphase.value}")
    cocotb.log.info(f"[Initialization] {quadrature._name} value changed from {original_quadrature} to {quadrature.value}")

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
    # Log monitored variables #
    table_data = [
        ["Variable", "Value"],
        ["inphase", str(dut.inphase.value)],
        ["quadrature", str(dut.quadrature.value)],
        ["amdemod_out", str(dut.amdemod_out.value)]
    ]
    cocotb.log.info("\n" + format_table("Monitoring Variables", table_data))

@cocotb.test()
async def AMDemod_test(dut):
    input_width = dut.INPUT_WIDTH.value
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))    
    num_test_values = int(os.environ.get('NUM_TEST_VALUES', 100))
    
    cocotb.log.info(f"[Test Start] Starting AMDemodulation cocotb test with clock_value = {clock_value} ns ({1/clock_value * 1e3} MHz)")

    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initializing Input Variables to 0 #
    cocotb.log.info("[Test Initialization] Initializing input variables inphase and quadrature to 0")
    await init(dut, dut.inphase, dut.quadrature)

    # Printing to monitor to check if the variable change is OK #
    print_vars(dut)

    # Generating test data including edge cases and random values #
    cocotb.log.info("[Test Data Generation] Generating test data")
    test_data = [
        [0, 0], 
        [2**(input_width-1)-1, 2**(input_width-1)-1], 
        [-2**(input_width-1), -2**(input_width-1)], 
        [2**(input_width-1)-1, -2**(input_width-1)], 
        [-2**(input_width-1), 2**(input_width-1)-1]
    ]
    test_data += [
        [random.randint(-2**(input_width-1), 2**(input_width-1)-1), 
         random.randint(-2**(input_width-1), 2**(input_width-1)-1)] 
        for _ in range(num_test_values)
    ]
    cocotb.log.info("[Test Data Generation] Generated test data with edge and random values")

    assertions_passed = 0
    for iteration_number, (inphase, quadrature) in enumerate(test_data):
        # Loading values into DUT #
        cocotb.log.info("==========================================")
        cocotb.log.info(f"[Test enumeration] Iteration number: {iteration_number + 1}")
        cocotb.log.info("[Test Execution] Applying input values...")
        dut.inphase.value = int(inphase)
        dut.quadrature.value = int(quadrature)
        await RisingEdge(dut.clk) # Waiting to load inphase and quadrature values
        cocotb.log.info("----- Loaded Values -----")

        # Doing operation sqrt(inphase^2 + quadrature^2)
        cocotb.log.info("[Test Execution] Calculating output...")
        wait_cycles = 5
        cocotb.log.info(f"----- Waiting {wait_cycles} clock cycles for the operation to finish -----")
        for _ in range(wait_cycles):
            await RisingEdge(dut.clk)

        # Monitoring variables after operation #
        print_vars(dut)

        # Checking the output against expected value #
        expected_output = int(np.sqrt(inphase**2 + quadrature**2))
        actual_output = int(dut.amdemod_out.value)
        
        result = '✓' if actual_output == expected_output else '✗'
        table_data = [
            ["Iteration", "inphase", "quadrature", "Actual", "Expected", "Result"],
            [iteration_number + 1, str(inphase), str(quadrature), str(actual_output), str(expected_output), result]
        ]
        cocotb.log.info("\n" + format_table(f"Checking Table Iteration {iteration_number + 1}", table_data))
        
        assert actual_output == expected_output, f"Assertion failed: inphase = {inphase}, quadrature = {quadrature}: expected {expected_output}, got {actual_output}"
        assertions_passed += 1
        cocotb.log.info("[Check] Assertion passed for current input set")
        cocotb.log.info("==========================================")

    # Summary Table
    summary_table = [
        ["Metric", "Value"],
        ["Input Width", input_width],
        ["Clock frequency (MHz)", f"{1/clock_value * 1000}"],
        ["Runtime of simulation (ns)", f"{(num_test_values + 5) * clock_value}"],
        ["Total number of assertions passed", assertions_passed]
    ]
    cocotb.log.info("\n" + format_table("Summary", summary_table))
    
    cocotb.log.info("[Summary] All values matched expected results")

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/18  TH: Initial Creation   
 2024/7/3   TH: Quality of Life changes 
 2024/8/3   TH: Added additional comments, resolved deprecation issue, added Iteration count, updated Makefile to include help
 2024/8/5   TH: Added formatted tables for monitoring and checking with titles and outlines
 2024/8/5   TH: Added summary table at the end and iteration count in the checking table
"""
