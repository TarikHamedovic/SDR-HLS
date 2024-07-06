"""
-----------------------------------------------------------------------------
CocoTB Testbench for sqrt_combinatorial module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import os
import random
import numpy as np

def print_vars(dut):
    """Helper function to print the current state of the DUT signals."""
    cocotb.log.info(f"[Monitor] num: {dut.num.value} result: {dut.result.value}")
    # NOTE: Uncomment if you want to see the values 
    #cocotb.log.info(f"[Monitor] a: {dut.left.value}")
    #cocotb.log.info(f"[Monitor] left: {dut.left.value}")
    #cocotb.log.info(f"[Monitor] right: {dut.right.value}")
    #cocotb.log.info(f"[Monitor] r: {dut.r.value}")
    #cocotb.log.info(f"[Monitor] q: {dut.q.value}")

@cocotb.test()
async def sqrt_test(dut):
    """Test the sqrt root calculation in the sqrt_combinatorial module"""
    # TODO: Add num_test variable in makefile
    # Generate a set of random test cases

    input_bits = int(os.environ.get('INPUT_BITS', 32)) 
    num_test_values = int(os.environ.get('NUM_TEST_VALUES', 10))

    cocotb.log.info(
        f"[Test Start] Starting Combinatorial Square Root cocotb test "
    )

    # Adding random tests #
    test_cases = []
    for _ in range(num_test_values):
        random_value = random.randint(0, 2** dut.N.value)
        test_cases.append((random_value, int(np.sqrt(random_value))))
        
    cocotb.log.info("[Random Tests] Test cases generated.")

    random_tests_passed = 0
    for num, expected_sqrt in test_cases:
        cocotb.log.info(
            f"[Random Test Case] Testing with random input num = {num}")

        # Set input value #
        dut.num.value = num
        cocotb.log.info(f"[Input Set]Input num set to {num}.")

        # Wait for a 5 ns to apply the input #
        await Timer(5, units="ns")
        cocotb.log.info("[Delay] Input applied, waiting for result...")

        # Print internal variables #
        print_vars(dut)

        # Check the result #
        assert dut.result.value.integer == expected_sqrt, f"Test failed for num={num}: expected {expected_sqrt}, got {dut.result.value.integer}"
        random_tests_passed += 1
        cocotb.log.info(f"[Random Test Result] Test passed for num={num}: expected {expected_sqrt}, got {dut.result.value.integer}")
        cocotb.log.info("---------------------------------------------")
    
    cocotb.log.info(
        f"[Random Tests Summary] Passed {random_tests_passed} random tests")
    cocotb.log.info("All test cases passed!")

    # TODO: Fix this Warning 'sqrt_combinatorial.sv:15: sorry: constant selects in always_* processes are not currently supported (all bits will be included).'

    """
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/7/2 TH: Initial Creation   
 2024/7/5 TH: Quality of Life Changes
"""
