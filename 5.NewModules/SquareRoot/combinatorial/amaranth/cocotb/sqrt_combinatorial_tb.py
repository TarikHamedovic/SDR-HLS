import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import random
import numpy as np

def print_vars(dut):
    cocotb.log.info(f"[Monitor] num: {dut.num.value} result: {dut.result.value}")

@cocotb.test()
async def sqrt_test(dut):
    """Test the sqrt function in the sqrt_wrapper module"""
    # TODO: Add num_test variable in makefile
    
    # Generate a set of random test cases
    num_tests = 20  # Define the number of random tests
    max_value = 2 ** 8 # TODO: Figure out how to get parameter N 
    test_cases = []
    for _ in range(num_tests):
        random_value = random.randint(0, max_value)
        test_cases.append((random_value, int(np.sqrt(random_value))))

    cocotb.log.info("Test cases generated.")

    for num, expected_sqrt in test_cases:
        cocotb.log.info(f"Starting test for num={num} (expected sqrt={expected_sqrt}).")

        # Set input value
        dut.num.value = num
        cocotb.log.info(f"Input num set to {num}.")

        # Wait for a clock cycle to apply the input
        await Timer(5, units="ns")
        cocotb.log.info("Input applied, waiting for result...")

        # Print internal variables
        print_vars(dut)

        # Check the result
        assert dut.result.value.integer == expected_sqrt, f"Test failed for num={num}: expected {expected_sqrt}, got {dut.result.value.integer}"
        
        # Log the success
        cocotb.log.info(f"Test passed for num={num}: expected {expected_sqrt}, got {dut.result.value.integer}")
        cocotb.log.info("---------------------------------------------")

    cocotb.log.info("All test cases passed!")