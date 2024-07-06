"""
-----------------------------------------------------------------------------
CocoTB Testbench for Mixer.v module
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


def print_vars(dut):
    # Log monitored variables #
    cocotb.log.info(
        f"Monitor: sin_in={dut.sin_in.value}, cos_in={dut.cos_in.value}, RFIn={dut.RFIn.value}, RFInR1={dut.RFInR1.value}, RFInR={dut.RFInR.value}, MixerOutSin={dut.MixerOutSin.value}, MixerOutCos={dut.MixerOutCos.value}"
    )


async def wait(dut, n_cycles):
    for _ in range(n_cycles):
        await RisingEdge(dut.clk)


@cocotb.test()
async def Mixer_test(dut):

    input_bits = int(os.environ.get("INPUT_BITS", 12))
    number_of_iterations = int(os.environ.get("ITERATIONS", 100))
    clock_value = float(os.environ.get("CLOCK_VALUE", 12.5))

    cocotb.log.info(f"[Test Start] Starting Mixer cocotb test with clock_value = {clock_value} ns")

    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    cocotb.log.info("[Test Initialization] Initializing inputs to 0, and RFIn to 1")
    await RisingEdge(dut.clk)
    dut.sin_in.value = 0
    dut.cos_in.value = 0
    dut.RFIn.value = 1

    cocotb.log.info("------ Waiting 3 cycles so all inputs are defined ------")
    await wait(dut, 3)

    assertions_passed = 0
    for _ in range(number_of_iterations):
        cocotb.log.info("[Test Execution] Generating random inputs...")
        # Generate random inputs
        sin_random_value = random.randint(-(2 ** (input_bits - 1)), 2 ** (input_bits - 1) - 1)
        cos_random_value = random.randint(-(2 ** (input_bits - 1)), 2 ** (input_bits - 1) - 1)
        RFIn_random_value = random.randint(0, 1)

        # Loading values into DUT #
        dut.sin_in.value = sin_random_value
        dut.cos_in.value = cos_random_value
        dut.RFIn.value = RFIn_random_value

        cocotb.log.info("[Test Execution] Applying random inputs...")
        await RisingEdge(dut.clk)
        print_vars(dut)
        cocotb.log.info("------ Loaded Values ------")

        cocotb.log.info("------ Waiting 1 Clock Cycle ------")
        await RisingEdge(dut.clk)
        print_vars(dut)

        expected_sin = sin_random_value if dut.RFInR.value == 0 else -sin_random_value
        expected_cos = cos_random_value if dut.RFInR.value == 0 else -cos_random_value

        expected_sin_bin = BinaryValue(
            value=expected_sin, n_bits=input_bits, bigEndian=False, binaryRepresentation=2
        )
        expected_cos_bin = BinaryValue(
            value=expected_cos, n_bits=input_bits, bigEndian=False, binaryRepresentation=2
        )

        cocotb.log.info(f"[Check] expected_sin_bin = {int(expected_sin_bin)}")
        cocotb.log.info(f"[Check] expected_cos_bin = {int(expected_cos_bin)}")
        cocotb.log.info(f"[Check] MixerOutSin = {int(dut.MixerOutSin.value.signed_integer)}")
        cocotb.log.info(f"[Check] MixerOutCos = {int(dut.MixerOutCos.value.signed_integer)}")
        """
        Asserts fail for some reason but the values are identical in binary
        Figure out why it fails? DONE!
        Problem maybe due to signed/unsigned?
        NOTE: Problem fixed with using Python property .signed_integer
        """
        assert expected_sin_bin == dut.MixerOutSin.value.signed_integer, f"Mixer output sin mismatch: expected {expected_sin_bin}, got {dut.MixerOutSin.value}"
        assert expected_cos_bin == dut.MixerOutCos.value.signed_integer, f"Mixer output cos mismatch: expected {expected_cos_bin}, got {dut.MixerOutCos.value}"
        
        assertions_passed += 2

    cocotb.log.info("[Summary] All values matched expected results (with noted exceptions)")
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
"""
