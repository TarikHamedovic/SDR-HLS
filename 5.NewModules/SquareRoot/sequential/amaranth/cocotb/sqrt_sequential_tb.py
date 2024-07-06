"""
-----------------------------------------------------------------------------
CocoTB Testbench for sqrt_sequential module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock
import os
import random
import numpy as np


def print_vars(dut):
    """Helper function to print the current state of the DUT signals."""
    cocotb.log.info("----- Monitoring Variables -----")
    cocotb.log.info(f"[Monitor] num = {dut.num.value}, res = {dut.res.value}")
    cocotb.log.info(
        f"[Monitor] valid = {dut.valid.value}, reset = {dut.reset.value}, ready = {dut.ready.value}"
    )
    cocotb.log.info(f"[Monitor] current_count = {dut.current_count.value}")
    cocotb.log.info(f"[Monitor] sqrt_state = {dut.sqrt_state.value.integer}")
    cocotb.log.info(f"[Monitor] a = {dut.a.value}, q = {dut.q.value}, r = {dut.r.value}, r_reg = {dut.r_reg.value}")
    cocotb.log.info(f"[Monitor] left = {dut.left.value}, right = {dut.right.value}")


@cocotb.test()
async def sqrt_test(dut):
    """Test the square root calculation in the sqrt_sequential module."""

    input_bits = int(os.environ.get('INPUT_BITS', 32)) # TODO: Figure out how to change input bits i n .v file aswell
    clock_value = float(os.environ.get("CLOCK_VALUE", 12.5))
    num_test_values = int(os.environ.get('NUM_TEST_VALUES', 1))

    cocotb.log.info(
        f"[Test Start] Starting Sequential Square Root cocotb test with clock_value = {clock_value} ns ({1/clock_value * 1e3} MHz)"
    )

    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initialize DUT signals #
    cocotb.log.info(
        "[Initialization] Initializing DUT signals to default values")
    dut.reset.value = 0
    dut.valid.value = 0
    dut.num.value = 0
    #dut.ready.value = 0
    await RisingEdge(dut.clk)
    print_vars(dut)

    await RisingEdge(dut.clk)
    cocotb.log.info("[Reset] Applying reset to DUT")
    dut.reset.value = 1
    await RisingEdge(dut.clk)

    # Adding random tests #
    random_tests_passed = 0
    cocotb.log.info(f"[Random Tests] Starting {num_test_values} random tests")

    for _ in range(num_test_values):
        #num = random.randint(0, 2 ** 32 - 1)
        num = 121
        expected_sqrt = int(np.sqrt(num))
        cocotb.log.info(
            f"[Random Test Case] Testing with random input num = {num}")

        dut.valid.value = 1
        dut.num.value = num
        i = 0

        await RisingEdge(dut.clk)
        #while dut.ready.value != 1:
        for _ in range(17):
            cocotb.log.info(f"Cycle {i}: Waiting for ready signal...")
            await RisingEdge(dut.clk)
            if i == 3:
                dut.valid.value = 0
            print_vars(dut)
            i += 1

        assert (
            dut.res.value.integer == expected_sqrt
        ), f"Random test failed for num={num}: expected {expected_sqrt}, got {dut.res.value.integer}"
        random_tests_passed += 1
        cocotb.log.info(
            f"[Random Test Result] Test passed for num={num}: got {dut.res.value.integer}"
        )
        cocotb.log.info(
            "--------------------------------------------------------")

    cocotb.log.info(
        f"[Random Tests Summary] Passed {random_tests_passed} random tests")
    cocotb.log.info("All random test cases passed!")
