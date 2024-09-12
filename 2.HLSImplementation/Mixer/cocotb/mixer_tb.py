"""
-----------------------------------------------------------------------------
CocoTB Testbench for Mixer module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge
from cocotb.binary import BinaryValue
import random
from cocotb.clock import Clock
import os


def twos_complement(value, bit_width):
    """Compute the two's complement of int value assuming it's of bit_width."""
    if value >= 2**bit_width:
        # This catches when someone tries to give a value that is out of range
        raise ValueError("value out of range")
    if value & (1 << (bit_width - 1)):
        # If the sign bit is set, compute the negative value
        value -= 1 << bit_width
    return value


def invert_twos_complement(value, bit_width=12):
    """Invert a number in two's complement form within a given bit width."""
    # Step 1: Invert all bits
    inverted = ~value
    # Step 2: Mask to bit width to discard extended bits beyond bit_width
    masked_inverted = inverted & ((1 << bit_width) - 1)
    # Step 3: Add 1 to complete the two's complement
    result = (masked_inverted + 1) & ((1 << bit_width) - 1)
    return result


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
        ["sinewave_in", str(dut.sinewave_in.value)],
        ["cosinewave_in", str(dut.cosinewave_in.value)],
        ["rf_in", str(dut.rf_in.value)],
        ["rf_in_d_1", str(dut.rf_in_d_1.value)],
        ["rf_in_d_2", str(dut.rf_in_d_2.value)],
        ["sinewave_out", str(dut.sinewave_out.value)],
        ["cosinewave_out", str(dut.cosinewave_out.value)]
    ]
    cocotb.log.info("\n" + format_table("Monitoring Variables", table_data))


async def wait(dut, n_cycles):
    for _ in range(n_cycles):
        await RisingEdge(dut.clk)


@cocotb.test()
async def Mixer_test(dut):

    input_bits = 12
    number_of_iterations = int(os.environ.get("ITERATIONS", 100))
    clock_value = float(os.environ.get("CLOCK_VALUE", 12.5))

    cocotb.log.info(f"[Test Start] Starting Mixer cocotb test with clock_value = {clock_value} ns")

    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    cocotb.log.info("[Test Initialization] Initializing inputs to 0, and rf_in to 1")
    await RisingEdge(dut.clk)
    dut.sinewave_in.value = 0
    dut.cosinewave_in.value = 0
    dut.rf_in.value = 1

    cocotb.log.info("------ Waiting 3 cycles so all inputs are defined ------")
    await wait(dut, 3)

    assertions_passed = 0
    for iteration in range(number_of_iterations):
        cocotb.log.info("==============================================")
        cocotb.log.info(f"[Test Execution] Iteration: {iteration+1}")
        cocotb.log.info("[Test Execution] Generating random inputs...")
        # Generate random inputs
        sinewave_random_value   = random.randint(-(2 ** (input_bits - 1)), 2 ** (input_bits - 1) - 1)
        cosinewave_random_value = random.randint(-(2 ** (input_bits - 1)), 2 ** (input_bits - 1) - 1)
        rf_in_random_value      = random.randint(0, 1)

        # Loading values into DUT #
        dut.sinewave_in.value   = sinewave_random_value
        dut.cosinewave_in.value = cosinewave_random_value
        dut.rf_in.value         = rf_in_random_value

        cocotb.log.info("[Test Execution] Applying random inputs...")
        await RisingEdge(dut.clk)
        cocotb.log.info("------ Loaded Values ------")

        cocotb.log.info("------ Waiting 1 Clock Cycle ------")
        await RisingEdge(dut.clk)

        expected_sinewave   = sinewave_random_value   if dut.rf_in_d_2.value == 0 else -sinewave_random_value
        expected_cosinewave = cosinewave_random_value if dut.rf_in_d_2.value == 0 else -cosinewave_random_value

        expected_sinewave_bin   = BinaryValue(
            value=expected_sinewave, n_bits=input_bits, bigEndian=False, binaryRepresentation=2
        )
        expected_cosinewave_bin = BinaryValue(
            value=expected_cosinewave, n_bits=input_bits, bigEndian=False, binaryRepresentation=2
        )

        sinewave_correct       = '✓' if sinewave_random_value   == dut.sinewave_in.value.signed_integer else '✗'
        cosinewave_correct     = '✓' if cosinewave_random_value == dut.cosinewave_in.value.signed_integer else '✗'
        rf_in_correct          = '✓' if rf_in_random_value      == dut.rf_in.value else '✗'
        sinewave_out_correct   = '✓' if expected_sinewave_bin   == dut.sinewave_out.value.signed_integer else '✗'
        cosinewave_out_correct = '✓' if expected_cosinewave_bin == dut.cosinewave_out.value.signed_integer else '✗'

        table_data = [
            ["Variable", "Actual", "Expected", "Correct"],
            ["sinewave_in", int(dut.sinewave_in.value.signed_integer), sinewave_random_value, sinewave_correct],
            ["cosinewave_in", int(dut.cosinewave_in.value.signed_integer), cosinewave_random_value, cosinewave_correct],
            ["rf_in", int(dut.rf_in.value), rf_in_random_value, rf_in_correct],
            ["sinewave_out", int(dut.sinewave_out.value.signed_integer), int(expected_sinewave_bin), sinewave_out_correct],
            ["cosinewave_out", int(dut.cosinewave_out.value.signed_integer), int(expected_cosinewave_bin), cosinewave_out_correct]
        ]
        cocotb.log.info("\n" + format_table(f"Checking Table Iteration {iteration + 1}", table_data))

        assert expected_sinewave_bin == dut.sinewave_out.value.signed_integer, f"Mixer output sine mismatch: expected {expected_sinewave_bin}, got {dut.sinewave_out.value.signed_integer}"
        assert expected_cosinewave_bin == dut.cosinewave_out.value.signed_integer, f"Mixer output cosine mismatch: expected {expected_cosinewave_bin}, got {dut.cosinewave_out.value.signed_integer}"
        
        assertions_passed += 2
        cocotb.log.info("==============================================")


    cocotb.log.info("[Summary] All values matched expected results")
    cocotb.log.info(f"[Summary] Clock frequency of the simulation: {1/clock_value * 1000} MHz")
    cocotb.log.info(f"[Summary] Runtime of simulation: {number_of_iterations * clock_value} ns")
    cocotb.log.info(f"[Summary] Runtime of simulation in checks: {number_of_iterations}")
    cocotb.log.info(f"[Summary] Total number of assertions passed: {assertions_passed}")

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/18 TH: initial creation    
 2024/5/26 TH: revision
 2024/7/6  TH: Added detailed comments and logging
 2024/6/7  TH: Fixed assertions
 2024/8/5  TH: Added check marks for correctness and table titles
 2024/8/5  TH: Added iteration count in table title and swapped actual/expected in checking table
"""