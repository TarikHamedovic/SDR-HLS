"""
-----------------------------------------------------------------------------
CocoTB Testbench for AMDemod.v module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import numpy as np
import random
import os

async def init(dut, I_in, Q_in):
    # Function to initialize I_in and Q_in values #
    original_I_in = I_in.value
    original_Q_in = Q_in.value

    I_in.value = 0
    Q_in.value = 0

    await RisingEdge(dut.clk)

    cocotb.log.info(f"[Initialization] {I_in._name} value changed from {original_I_in} to {I_in.value}")
    cocotb.log.info(f"[Initialization] {Q_in._name} value changed from {original_Q_in} to {Q_in.value}")

def print_vars(dut):
    # Log monitored variables #
    cocotb.log.info("----- Monitoring Variables -----")
    cocotb.log.info(f"[Monitor] I_in = {dut.I_in.value}, Q_in = {dut.Q_in.value}, d_out = {dut.d_out.value}")

@cocotb.test()
async def AMDemod_test(dut):
    input_bits = int(os.environ.get('INPUT_BITS', 12))
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))    
    num_test_values = int(os.environ.get('NUM_TEST_VALUES', 100))
    
    cocotb.log.info(f"[Test Start] Starting AMDemodulation cocotb test with clock_value = {clock_value} ns ({1/clock_value * 1e3} MHz)")

    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initializing Input Variables to 0 #
    cocotb.log.info("[Test Initialization] Initializing input variables I_in and Q_in to 0")
    await init(dut, dut.I_in, dut.Q_in)

    # Printing to monitor to check if the variable change is OK #
    print_vars(dut)

    # Generating test data including edge cases and random values #
    cocotb.log.info("[Test Data Generation] Generating test data")
    test_data = [
        [0, 0], 
        [2**(input_bits-1)-1, 2**(input_bits-1)-1], 
        [-2**(input_bits-1), -2**(input_bits-1)], 
        [2**(input_bits-1)-1, -2**(input_bits-1)], 
        [-2**(input_bits-1), 2**(input_bits-1)-1]
    ]
    test_data += [
        [random.randint(-2**(input_bits-1), 2**(input_bits-1)-1), 
         random.randint(-2**(input_bits-1), 2**(input_bits-1)-1)] 
        for _ in range(num_test_values)
    ]
    cocotb.log.info("[Test Data Generation] Generated test data with edge and random values")

    for I_in, Q_in in test_data:
        # Loading values into DUT #
        cocotb.log.info("[Test Execution] Applying input values...")
        dut.I_in.value = int(I_in)
        dut.Q_in.value = int(Q_in)
        await RisingEdge(dut.clk) # Waiting to load I_in and Q_in values
        cocotb.log.info("----- Loaded Values -----")

        # Doing operation sqrt(I_in^2 + Q_in^2)
        cocotb.log.info("[Test Execution] Calculating output...")
        wait_cycles = 5
        cocotb.log.info(f"----- Waiting {wait_cycles} clock cycles for the operation to finish -----")
        for _ in range(wait_cycles):
            await RisingEdge(dut.clk)

        # Monitoring variables after operation #
        print_vars(dut)

        # Checking the output against expected value #
        expected_output = int(np.sqrt(I_in**2 + Q_in**2))
        actual_output = int(dut.d_out.value)
        cocotb.log.info(f"[Check] Expected {expected_output}, got {actual_output}")
        assert actual_output == expected_output, f"Assertion failed: I_in = {I_in}, Q_in = {Q_in}: expected {expected_output}, got {actual_output}"
        cocotb.log.info("[Check] Assertion passed for current input set")
        
"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/18  TH: Initial Creation   
 2024/7/3   TH: Quality of Life changes 
"""
