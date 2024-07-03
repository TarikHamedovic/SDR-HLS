"""
-----------------------------------------------------------------------------
CocoTB Testbench for comb.sv module
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
    cocotb.log.info(f"[Monitor] delay = {dut.delay.value}, o_data = {dut.o_data.value}")

async def reset_dut(dut):
    cocotb.log.info("[Reset] Reset is High")
    dut.i_reset.value = 1
    await RisingEdge(dut.i_clk)
    dut.i_reset.value = 0
    cocotb.log.info("[Reset] Reset is Low")

@cocotb.test()
async def comb_test(dut):
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))
    
    cocotb.log.info(f"[Test Start] Starting comb module cocotb test with clock_value = {clock_value} ns ({1/clock_value * 1e3} MHz)")

    # Starting Clock #
    clock = Clock(dut.i_clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    await reset_dut(dut)
    cocotb.log.info("[Initialization] Initializing data...")
    await init(dut)
    print_vars(dut)

    dut.i_data.value = 5
    dut.i_ce.value = 1
    cocotb.log.info(f"[Test Initialization] Reset is Low, i_ce is High, and i_data = {dut.i_data.value}")

    i = 0
    cocotb.log.info("[Test] Starting loop to monitor the values of the module")
    for _ in range(10):
        dut._log.info(f"------ Counter: {i} ------")
        await RisingEdge(dut.i_clk)
        print_vars(dut)
        i += 1

    # TODO: Add more specific tests here

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
2024/7/1  TH: Initial Creation   
2024/7/3  TH: Quality of Life changes 
"""
