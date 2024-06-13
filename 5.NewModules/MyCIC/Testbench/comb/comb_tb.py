import cocotb
from cocotb.triggers import RisingEdge, FallingEdge, Timer
from cocotb.binary import BinaryValue
from cocotb.clock import Clock
import numpy as np
import random
import os


def print_vars(dut):
    dut._log.info(f"Monitor: delay= {dut.delay.value}")
    dut._log.info(f"Monitor i_ce = {dut.i_ce.value}")
    dut._log.info(f"Monitor: i_reset = {dut.i_reset.value}")

@cocotb.test()
async def comb_test(dut):
	
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))	
    input_width = int(os.environ.get('INPUT_WIDTH', 4))
    output_width = int(os.environ.get('OUTPUT_WIDTH', 12))
    N = int(os.environ.get('N', 7))
    number_of_iterations = int(os.environ.get("ITERATIONS", 100))
    
    # Wait a few ns with clock at 0 for nicer gtkwave signals at beggining #
    duration_ns = 5
    await Timer(duration_ns, units="ns") 

    dut._log.info(f"Test: Starting Integrator cocotb test with clock_value = {clock_value} ns")
    # Starting Clock #
    clock = Clock(dut.i_clk, clock_value, units = "ns")
    cocotb.start_soon(clock.start())

    # Stage 1: Initilaizing data with setting reset to 1 #
    dut._log.info(f"Test: Initializing data...")
    dut.i_ce.value = 0
    dut.i_reset.value = 1
    await RisingEdge(dut.i_clk)

    # Stage 2: Setting reset to 0, and the clock enable signal to 1 so that the simulation starts #
    dut.i_data.value = 0
    dut.i_reset.value = 0
    dut.i_ce.value = 1
    await RisingEdge(dut.i_clk)

    # Intermediate values used for checking the correct outputs #
    delay_vector = [0,0] # Two zeros are put into it because of the simulation, it had 2 clock cylces already...
    data_random_value_vector = []
    M = 0 # counter used to get (i-N)th element of delay

    for i in range(number_of_iterations):

        dut._log.info("Test: Generating random input for i_data...")
        i_data_random_value = random.randint(-(2 ** (input_width - 1)), 2 ** (input_width - 1) - 1)
        dut._log.info(f"Test: Random i_data={i_data_random_value}")
        dut.i_data.value = i_data_random_value
        delay_vector.append(i_data_random_value)
        data_random_value_vector.append(i_data_random_value)

        await RisingEdge(dut.i_clk)  

        if i > N - 2:
            dut._log.info("Test: Asserting")
            assert (data_random_value_vector[i-1]-delay_vector[M]) == dut.o_data.value.signed_integer, f"Integrator output mismatch: expected {data_random_value_vector[i-1]-delay_vector[M]}, got {dut.o_data.value.signed_integer}"
            M += 1