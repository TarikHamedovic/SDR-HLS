import cocotb
from cocotb.triggers import RisingEdge, FallingEdge, Timer
from cocotb.binary import BinaryValue
from cocotb.clock import Clock
import numpy as np
import random
import os


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

