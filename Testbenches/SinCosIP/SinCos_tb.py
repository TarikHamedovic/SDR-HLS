import cocotb
from cocotb.triggers import RisingEdge, FallingEdge, Timer
from cocotb.clock import Clock
import numpy as np
import random


@cocotb.test()
async def SinCos_test(dut):
    dut._log.info("Test: Starting SinCos cocotb test")
    # Starting Clock #
    clock = Clock(dut.clk, 12.5, units = "ns") # 80Mhz

    
    cocotb.start_soon(clock.start())
    
    dut.Reset.value = 1;


    
