import cocotb
from cocotb.triggers import RisingEdge, FallingEdge, Timer
from cocotb.binary import BinaryValue
from cocotb.clock import Clock
import numpy as np
import random
import os

"""
Beware of number of bits for input and output of accumulator, if there are too many iterations it can result in a overflow and the test fails
More iterations --> More output bits
"""

@cocotb.test()
async def integrator_test(dut):
	
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))	
    input_width = int(os.environ.get('INPUT_WIDTH', 5))
    output_width = int(os.environ.get('OUTPUT_WIDTH', 10))
    number_of_iterations = int(os.environ.get("ITERATIONS", 100))
    
    # Wait a few ns with clock at 0 for nicer gtkwave signals at beggining #
    duration_ns = 5
    await Timer(duration_ns, units="ns") 

    dut._log.info(f"Test: Starting Integrator cocotb test with clock_value = {clock_value} ns")
    # Starting Clock #
    clock = Clock(dut.i_clk, clock_value, units = "ns")
    cocotb.start_soon(clock.start())

    dut._log.info(f"Test: Initializing data...")
    dut.i_data.value = 0
    dut.i_ce.value = 0
    dut.i_reset.value = 1
    await RisingEdge(dut.i_clk)
    dut._log.info(f"Test: Input signed value i_data = {dut.i_data.value}")
    dut._log.info(f"Test: i_ce = {dut.i_ce.value}")
    dut._log.info(f"Test: i_reset = {dut.i_reset.value}")

    dut.i_reset.value = 0
    dut.i_ce.value = 1
    await RisingEdge(dut.i_clk)
    dut._log.info("Test: i_ce stays ON for the rest of simulation")
    dut._log.info("Test: i_reset off")

    dut._log.info(f"accumulator = {dut.accumulator.value}")
    dut._log.info(f"o_data = {dut.o_data.value}")
    accumulator_test = int(dut.i_data.value)
    i_data_random_value_vector =[]
    accum_test_vector =[]
    accum_dut_vector =[]

    for i in range(number_of_iterations):
        
        dut._log.info("Test: Asserting")
        accum_test_vector.append(accumulator_test)
        accum_dut_vector.append(dut.accumulator.value.signed_integer)
        assert accumulator_test == dut.accumulator.value.signed_integer, f"Integrator output mismatch: expected {accumulator_test}, got {dut.accumulator.value}"

        dut._log.info("Test: Generating random input for i_data...")
        i_data_random_value = random.randint(-(2 ** (input_width - 1)), 2 ** (input_width - 1) - 1)
        dut._log.info(f"Test: Random i_data={i_data_random_value}")
        dut.i_data.value = i_data_random_value
        i_data_random_value_vector.append(i_data_random_value)
        await RisingEdge(dut.i_clk)  
        
        if i > 0:
            accumulator_test += i_data_random_value_vector[i-1]
        
    dut._log.info(f"Check: accumulator_test={accum_test_vector}")    
    dut._log.info(f"Check: accumulator_dut={accum_dut_vector}")
    
