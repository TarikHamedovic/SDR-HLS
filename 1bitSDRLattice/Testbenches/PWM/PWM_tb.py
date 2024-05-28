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

NUM_TEST_VALUES = 10

async def init(dut, duration_ns):
    # Function to initialize DUT values #
    cocotb.log.info("Initialization: Commencing input reset sequence...")
    
    dut.counter.value = 0
    dut.DataIn.value = 0

    await Timer(duration_ns, units="ns")

    cocotb.log.info(f"Initialization: counter value set to {dut.counter.value}")
    cocotb.log.info(f"Initialization: DataIn value set to {dut.DataIn.value}")

def print_vars(dut):
    # Log monitored variables #
    dut._log.info(f"Monitor: counter={dut.counter.value}, PWMOut={dut.PWMOut.value}")

def calculate_expected_output(dut, counter, data_in_reg, bit_width):
    mask = (1 << bit_width) - 1  # Create a mask for the given bit width
    dut._log.info(f"Monitor: important={data_in_reg & mask}")
    return 1 if counter < (data_in_reg & mask) + 2 else 0 # Added 2 because of delay to enter the DataInValue to DataInReg and 1 more delay to pass the value to PWMOut

@cocotb.test()
async def PWM_test(dut):
    input_bits = int(os.environ.get('INPUT_BITS', 12))
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))
    counter_bits = int(os.environ.get('COUNTER_BITS', 10))

    dut._log.info(f"Test: Starting PWM cocotb test with clock_value = {clock_value} ns")
    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initializing Input Variables to 0 #
    await init(dut, clock_value)

    # Printing to Monitor to check if the variable change is OK #
    print_vars(dut)

    # Generating test data including edge cases and random values #
    test_data = [1022, 0, 1023, -512, -1023, 1024, 2000, 1]
    test_data += [random.randint(-2**(input_bits-1), 2**(input_bits-1)-1) for _ in range(NUM_TEST_VALUES)]
    cocotb.log.info("Test: Generated test data with edge and random values")

    for data in test_data:
        # Loading values into DUT #
        cocotb.log.info(f"Test: Applying input value {data}...")
        dut.DataIn.value = data
        await RisingEdge(dut.clk)
        await RisingEdge(dut.clk)
        dut.counter.value = 0

        # Monitoring variables after operation #
        await RisingEdge(dut.clk)
        print_vars(dut)

        for _ in range(1023):
            await RisingEdge(dut.clk)
            expected_output = calculate_expected_output(dut, int(dut.counter.value), int(dut.DataInReg.value), counter_bits)

            # Checking the output against expected value #
            actual_output = int(dut.PWMOut.value)
            cocotb.log.info(f"Check: counter {int(dut.counter.value)}")
            cocotb.log.info(f"Check: Expected {expected_output}, got {actual_output}")
            assert actual_output == expected_output, f"Assertion failed: DataIn = {data}, DataInReg = {int(dut.DataInReg.value)} counter = {int(dut.counter.value)}: expected {expected_output}, got {actual_output}"
        
        cocotb.log.info("Test: Assertion passed for current input set")

        """
        TODO: Fix error when asserting, mismatch between expected and actual data for data over 512 -- Fixed(Only needed to look the bottom 10 bits of DataInReg)
        TODO: Add maybe more test cases, edge cases?
        """

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/22 TH: initial creation   
 2024/5/26 TH: revision 
 2024/5/26 TH: fixed first TODO 
"""

