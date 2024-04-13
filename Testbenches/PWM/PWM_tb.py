import cocotb
from cocotb.triggers import RisingEdge, FallingEdge, Timer
from cocotb.clock import Clock
import numpy as np
from cocotb.binary import BinaryRepresentation, BinaryValue



@cocotb.test()
async def PWM_test(dut):
    dut._log.info("Test: Starting PWM cocotb test")
    # Starting Clock #
    clock = Clock(dut.clk, 5, units = "ns")
    cocotb.start_soon(clock.start())

    dut.counter.value = 0

    await RisingEdge(dut.clk)

    test_data = [-512, 511, 0, 1023, 1024, 512, 511, 1534, 2000, 200, 58, 900, 309]

    for i in range(len(test_data)):
        
        dut.counter.value = 0
        counter_value = dut.counter.value
        counter_value = counter_value.integer

        dut.DataIn.value = test_data[i]

        await RisingEdge(dut.clk)

        for j in range(1024):
            
            counter_value = counter_value + 1

            await RisingEdge(dut.clk)




