import cocotb
from cocotb.triggers import RisingEdge, FallingEdge, Timer
from cocotb.clock import Clock
import numpy as np
import random


@cocotb.test()
async def simpleSine_test(dut):
    dut._log.info("Test: Starting simpleSine cocotb test")
    # Starting Clock #
    clock = Clock(dut.clk, 12.5, units = "ns") # 80Mhz

    
    cocotb.start_soon(clock.start())
    
    # phase_inc_carrGen = (f_desired / f_clk) * 2^N 
    dut.sample_clock_ce.setimmediatevalue(1)
    #dut.phase_inc_carrGen.setimmediatevalue(346568204284818201) # 1503 kHz
    #dut.phase_inc_carrGen.setimmediatevalue(345876451382054092) # 1500 kHz
    dut.phase_inc_carrGen.setimmediatevalue(288230376151711744) # 1.25 MHz


    for _ in range(200):
        await RisingEdge(dut.clk)

    #dut.phase_inc_carrGen.setimmediatevalue(124515522497539473) # 540 kHz

    #for _ in range(600):
    #    await RisingEdge(dut.clk)
        
    #dut.phase_inc_carrGen.setimmediatevalue(184467440737095516) # 800 kHz


    #for _ in range(600):
    #    await RisingEdge(dut.clk)


    
