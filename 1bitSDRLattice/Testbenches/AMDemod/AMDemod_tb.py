"""
-----------------------------------------------------------------------------
CocoTB Testbench for AMDemod.v module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, FallingEdge, Timer
from cocotb.clock import Clock
import numpy as np
import random
import os

NUM_TEST_VALUES = 100

async def init(I_in, Q_in, duration_ns):
    # Function to initialize I_in and Q_in values #
    cocotb.log.info("Initialization: Commencing input reset sequence...")
    
    original_I_in = I_in.value
    original_Q_in = Q_in.value

    I_in.value = 0
    Q_in.value = 0

    await Timer(duration_ns, units="ns")

    cocotb.log.info(f"Initialization: {I_in._name} value changed from {original_I_in} to {I_in.value}")
    cocotb.log.info(f"Initialization: {Q_in._name} value changed from {original_Q_in} to {Q_in.value}")

def print_vars(dut):
   # Log monitored variables #
    dut._log.info(f"Monitor: I_in={dut.I_in.value}, Q_in={dut.Q_in.value}, d_out={dut.d_out.value}")

@cocotb.test()
async def AMDemod_test(dut):
	
    input_bits = int(os.environ.get('INPUT_BITS', 12))
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))	
    
    dut._log.info(f"Test: Starting AMDemodulation cocotb test with clock_value = {clock_value} ns")
    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units = "ns")
    cocotb.start_soon(clock.start())

    # Initializing Input Variables to 0 #
    await init(dut.I_in, dut.Q_in, clock_value)

    # Printing to Monitor to check if the variable change is OK #
    print_vars(dut)

    # Generating test data including edge cases and random values #
    test_data = [[0, 0], [2**(input_bits-1)-1, 2**(input_bits-1)-1 ], [-2**(input_bits-1), -2**(input_bits-1)], [2*(input_bits-1)-1, -2**(input_bits-1)], [-2**(input_bits-1), 2**(input_bits-1)-1]]
    test_data += [[random.randint(-2**(input_bits-1), 2**(input_bits-1)-1), random.randint(-2**(input_bits-1), 2**(input_bits-1)-1)] for _ in range(NUM_TEST_VALUES)]
    cocotb.log.info("Test: Generated test data with edge and random values")

    for I_in, Q_in in test_data:
        # Loading values into DUT #
        cocotb.log.info("Test: Applying input values...")
        dut.I_in.value = int(I_in)
        dut.Q_in.value = int(Q_in)
        await RisingEdge(dut.clk) # Waiting to load I_in and Q_in values
        dut._log.info("----- Loaded Values -----")

        # Doing operation sqrt(I_in^2 + Q_in^2)
        cocotb.log.info("Test: Calculating output...")
        cocotb.log.info("----- Waiting 5 clock cycles for the operation to finish -----")
        for _ in range(5):
            await RisingEdge(dut.clk)

        # Monitoring variables after operation #
        print_vars(dut)

        # Checking the output against expected value #
        expected_output = int(np.sqrt(I_in**2 + Q_in**2))
        actual_output = int(dut.d_out.value)
        cocotb.log.info(f"Check: Expected {expected_output}, got {actual_output}")
        assert actual_output == expected_output, f"Assertion failed: I_in = {I_in}, Q_in = {Q_in}: expected {expected_output}, got {actual_output}"
        cocotb.log.info("Test: Assertion passed for current input set")
        
"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/18 TH: initial creation    
"""
