"""
-----------------------------------------------------------------------------
CocoTB Testbench for integrator.sv module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import random
import os

"""
Beware of the number of bits for input and output of the accumulator. If there are too many iterations, it can result in an overflow, and the test fails.
More iterations --> More output bits
"""

async def init(dut):
    # Function to initialize input values #
    original_i_data = dut.i_data.value
    original_i_ce = dut.i_ce.value
    original_i_reset = dut.i_reset.value

    dut.i_data.value = 0
    dut.i_ce.value = 0
    dut.i_reset.value = 1
    await RisingEdge(dut.i_clk)

    cocotb.log.info(f"[Initialization] {dut.i_data._name} value changed from {original_i_data} to {dut.i_data.value}")
    cocotb.log.info(f"[Initialization] {dut.i_ce._name} value changed from {original_i_ce} to {dut.i_ce.value}")
    cocotb.log.info(f"[Initialization] {dut.i_reset._name} value changed from {original_i_reset} to {dut.i_reset.value}")

@cocotb.test()
async def integrator_test(dut):
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))    
    input_width = int(os.environ.get('INPUT_WIDTH', 5))
    output_width = int(os.environ.get('OUTPUT_WIDTH', 10))
    number_of_iterations = int(os.environ.get("ITERATIONS", 100))
    
    # Wait a few ns with clock at 0 for nicer gtkwave signals at the beginning #
    duration_ns = 5
    await Timer(duration_ns, units="ns")

    dut._log.info(f"[Test Start] Integrator cocotb test initiated.")
    dut._log.info(f"[Clock Setup] Clock period set to {clock_value} ns ({1/clock_value * 1000} MHz).")
    
    # Starting Clock #
    clock = Clock(dut.i_clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    cocotb.log.info("[Test Initialization] Initializing data...")
    await init(dut)

    cocotb.log.info("[Test Initialization] De-asserting i_reset and asserting i_ce.")
    cocotb.log.info("[Test Initialization] i_ce will remain high for the rest of the simulation.")
    dut.i_reset.value = 0
    dut.i_ce.value = 1
    await RisingEdge(dut.i_clk)

    cocotb.log.info(f"[Initial State] Accumulator = {dut.accumulator.value}")
    cocotb.log.info(f"[Initial State] o_data = {dut.o_data.value}")

    accumulator_test = int(dut.i_data.value)
    i_data_random_value_vector = []
    accum_test_vector = []
    accum_dut_vector = []

    for i in range(number_of_iterations):
        cocotb.log.info(f"[Iteration {i}] Asserting accumulator values...")
        accum_test_vector.append(accumulator_test)
        accum_dut_vector.append(dut.accumulator.value.signed_integer)
        assert accumulator_test == dut.accumulator.value.signed_integer, f"[ERROR] Integrator output mismatch: expected {accumulator_test}, got {dut.accumulator.value}"

        cocotb.log.info(f"[Iteration {i}] Generating random input for i_data...")
        i_data_random_value = random.randint(-(2 ** (input_width - 1)), 2 ** (input_width - 1) - 1)
        dut._log.info(f"[Iteration {i}] Random i_data generated: {i_data_random_value}")
        dut.i_data.value = i_data_random_value
        i_data_random_value_vector.append(i_data_random_value)
        await RisingEdge(dut.i_clk)
        cocotb.log.info("----------")

        if i > 0:
            accumulator_test += i_data_random_value_vector[i-1]
        
    cocotb.log.info(f"[Final Check] Accumulator test values: {accum_test_vector}")
    cocotb.log.info(f"[Final Check] Accumulator DUT values: {accum_dut_vector}")

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/7/1  TH: Initial Creation   
 2024/7/3  TH: Quality of Life changes 
"""