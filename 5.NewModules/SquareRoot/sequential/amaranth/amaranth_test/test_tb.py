
import cocotb
from cocotb.triggers import RisingEdge
from cocotb.clock import Clock
import os
import random
import numpy as np

def print_vars(dut):
    cocotb.log.info(f"a : {dut.a.value}")

@cocotb.test()
async def sqrt_test(dut):

    # Starting Clock #
    clock = Clock(dut.clk, 12.5, units="ns")
    cocotb.start_soon(clock.start())

    await RisingEdge(dut.clk)
    print_vars(dut)

    await RisingEdge(dut.clk)
    print_vars(dut)

    await RisingEdge(dut.clk)
    print_vars(dut)

    await RisingEdge(dut.clk)
    print_vars(dut)

    await RisingEdge(dut.clk)
    print_vars(dut)
    