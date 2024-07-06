"""
-----------------------------------------------------------------------------
CocoTB Testbench for PWM.v module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import random
import os


async def init(dut, duration_ns):
    # Function to initialize DUT values #
    cocotb.log.info("[Initialization] Commencing input reset sequence...")
    
    dut.counter.value = 0
    dut.DataIn.value = 0

    await Timer(duration_ns, units="ns")

    cocotb.log.info(f"[Initialization] counter value set to {dut.counter.value}")
    cocotb.log.info(f"[Initialization] DataIn value set to {dut.DataIn.value}")

def print_vars(dut):
    # Log monitored variables #
    cocotb.log.info(f"[Monitor] counter = {dut.counter.value}, PWMOut = {dut.PWMOut.value}")

def calculate_expected_output(dut, counter, data_in_reg, bit_width):
    mask = (1 << bit_width) - 1  # Create a mask for the given bit width
    cocotb.log.info(f"[Monitor] important = {data_in_reg & mask}")
    return 1 if counter < (data_in_reg & mask) + 2 else 0  # Added 2 because of delay to enter the DataInValue to DataInReg and 1 more delay to pass the value to PWMOut

@cocotb.test()
async def PWM_test(dut):
    input_bits = int(os.environ.get('INPUT_BITS', 12))
    number_of_iterations = int(os.environ.get("ITERATIONS", 10))
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))
    counter_bits = int(os.environ.get('COUNTER_BITS', 10))

    cocotb.log.info(f"[Test Start] Starting PWM cocotb test with clock_value = {clock_value} ns")

    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initializing Input Variables to 0 #
    await init(dut, clock_value)

    # Printing to Monitor to check if the variable change is OK #
    print_vars(dut)

    # Generating test data including edge cases and random values #
    test_data = [random.randint(-2**(dut.DATA_WIDTH.value-1), 2**(dut.DATA_WIDTH.value-1)-1) for _ in range(number_of_iterations)]
    cocotb.log.info("[Test Data Generation] Generated test data with edge and random values")

    assertions_passed = 0
    for data in test_data:
        # Loading values into DUT #
        cocotb.log.info(f"[Test Execution] Applying input value {data}...")
        dut.DataIn.value = data
        await RisingEdge(dut.clk)
        await RisingEdge(dut.clk)
        dut.counter.value = 0

        # Monitoring variables after operation #
        await RisingEdge(dut.clk)
        print_vars(dut)

        for _ in range(2**dut.COUNTER_WIDTH.value - 1):
            await RisingEdge(dut.clk)
            expected_output = calculate_expected_output(dut, int(dut.counter.value), int(dut.DataInReg.value), counter_bits)

            # Checking the output against expected value #
            actual_output = int(dut.PWMOut.value)
            cocotb.log.info(f"[Check] counter = {int(dut.counter.value)}")
            cocotb.log.info(f"[Check] Expected {expected_output}, got {actual_output}")
            assert actual_output == expected_output, f"Assertion failed: DataIn = {data}, DataInReg = {int(dut.DataInReg.value)} counter = {int(dut.counter.value)}: expected {expected_output}, got {actual_output}"
            assertions_passed += 1
        
        cocotb.log.info("[Check] Assertion passed for current input set")

    cocotb.log.info("[Summary] All values matched expected results")
    cocotb.log.info(f"[Summary] Clock frequency of the simulation: {1/clock_value * 1000} MHz")
    cocotb.log.info(f"[Summary] Runtime of simulation: {number_of_iterations * clock_value * (2**dut.COUNTER_WIDTH.value - 1)} ns")
    cocotb.log.info(f"[Summary] Total number of assertions passed: {assertions_passed}")

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/22 TH: initial creation   
 2024/5/26 TH: revision 
 2024/5/26 TH: Fixed error when asserting, mismatch between expected and actual data for data over 512 -- Fixed (Only needed to look the bottom 10 bits of DataInReg)
 2024/6/11 TH: Added argument parser for variable inputs through terminal
 2024/7/6  TH: Added detailed comments and logging
"""
