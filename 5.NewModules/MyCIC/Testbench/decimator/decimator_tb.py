"""
-----------------------------------------------------------------------------
CocoTB Testbench for decimator.sv module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
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

    cocotb.log.info(f"[Initialization] {dut.i_data._name} value changed from {original_i_data} to {dut.i_data.value}")
    cocotb.log.info(f"[Initialization] {dut.i_ce._name} value changed from {original_i_ce} to {dut.i_ce.value}")
    cocotb.log.info(f"[Initialization] {dut.i_reset._name} value changed from {original_i_reset} to {dut.i_reset.value}")

def print_vars(dut):
    # Log monitored variables #
    cocotb.log.info("----- Monitoring Variables -----")
    cocotb.log.info(f"[Monitor] i_reset = {dut.i_reset.value}, i_ce = {dut.i_ce.value}")
    cocotb.log.info(f"[Monitor] i_data = {dut.i_data.value}, o_data = {dut.o_data.value}")
    cocotb.log.info(f"[Monitor] o_ready = {dut.o_ready.value}, decimator_counter = {dut.decimator_counter.value}")

@cocotb.test()
async def decimator_test(dut):
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))
    
    cocotb.log.info(f"[Test Start] Starting decimator module cocotb test with clock_value = {clock_value} ns ({1/clock_value * 1e3} MHz)")

    # Starting Clock #
    clock = Clock(dut.i_clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    cocotb.log.info("[Initialization] Initializing data...")
    await init(dut)
    print_vars(dut)

    dut.i_reset.value = 0
    dut.i_data.value = 5
    dut.i_ce.value = 1
    cocotb.log.info(f"[Test Initialization] Reset is Low, i_ce is High, and i_data = {dut.i_data.value}")

    for i in range(30):
        dut._log.info(f"------ Cycle: {i} ------")
        await RisingEdge(dut.i_clk)
        print_vars(dut)

        # Apply some data and control inputs
        dut.i_data.value = (i % 32) - 16  # Example data pattern

    # TODO: Add more specific tests here

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
2024/7/3  TH: Initial Creation   
"""
