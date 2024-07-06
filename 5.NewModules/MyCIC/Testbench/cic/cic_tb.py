"""
-----------------------------------------------------------------------------
CocoTB Testbench for cic.sv module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import random
import os

async def init(dut):
    # Function to initialize input values #
    original_i_data = dut.i_data.value
    original_i_ce = dut.i_ce.value
    original_i_reset = dut.i_reset.value

    dut.i_data.value = 0
    dut.i_ce.value = 0
    dut.i_reset.value = 1
    await RisingEdge(dut.i_clk)
    await RisingEdge(dut.i_clk)

    cocotb.log.info(f"[Initialization] {dut.i_data._name} value changed from {original_i_data} to {dut.i_data.value}")
    cocotb.log.info(f"[Initialization] {dut.i_ce._name} value changed from {original_i_ce} to {dut.i_ce.value}")
    cocotb.log.info(f"[Initialization] {dut.i_reset._name} value changed from {original_i_reset} to {dut.i_reset.value}")

def print_vars(dut):
    # Log monitored variables #
    cocotb.log.info("----- Monitoring Variables -----")
    cocotb.log.info(f"[Monitor] i_data = {dut.i_data.value}, o_data = {dut.o_data.value}, o_ready = {dut.o_ready.value}")
    cocotb.log.info(f"[Monitor] i_data = ")
@cocotb.test()
async def cic_test(dut):
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))
    num_test_values = int(os.environ.get('NUM_TEST_VALUES', 100))
    
    cocotb.log.info(f"[Test Start] Starting CIC filter cocotb test with clock_value = {clock_value} ns ({1/clock_value * 1e3} MHz)")

    # Starting Clock #
    clock = Clock(dut.i_clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    await init(dut)
    
    cocotb.log.info("[Test Initialization] De-asserting reset and asserting ce")
    dut.i_reset.value = 0
    dut.i_ce.value = 1
    await RisingEdge(dut.i_clk)

    # Generating test data including edge cases and random values #
    cocotb.log.info("[Test Data Generation] Generating test data")
    input_bits = dut.IW.value
    test_data = [
        0, 
        2**(input_bits-1)-1, 
        -2**(input_bits-1), 
        2**(input_bits-1)-1, 
        -2**(input_bits-1)
    ]
    test_data += [
        random.randint(-2**(input_bits-1), 2**(input_bits-1)-1) 
        for _ in range(num_test_values)
    ]
    cocotb.log.info("[Test Data Generation] Generated test data with edge and random values")

    for i, data in enumerate(test_data):
        # Loading values into DUT #
        cocotb.log.info(f"[Test Execution] Applying input value: {data}")
        dut.i_data.value = data
        await RisingEdge(dut.i_clk) # Waiting to load i_data value
        cocotb.log.info(f"----- Cycle {i} -----")

        # Monitoring variables after operation #
        print_vars(dut)
        
        # You can add checks for expected output if the expected behavior is known
        # Example:
        # expected_output = some_expected_value
        # actual_output = int(dut.o_data.value)
        # cocotb.log.info(f"[Check] Expected {expected_output}, got {actual_output}")
        # assert actual_output == expected_output, f"Assertion failed: i_data = {data}: expected {expected_output}, got {actual_output}"
        # cocotb.log.info("[Check] Assertion passed for current input set")
        
"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/7/3  TH: Initial Creation   
"""
