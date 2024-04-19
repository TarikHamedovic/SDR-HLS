import cocotb
from cocotb.triggers import RisingEdge
from cocotb.binary import BinaryValue
import random
from cocotb.clock import Clock
import os



@cocotb.test()
async def test_CIC_behavior(dut):

    input_bits = int(os.environ.get("INPUT_BITS", 12))
    number_of_iterations = int(os.environ.get("ITERATIONS", 200))
    # Starting Clock #
    clock_value = float(os.environ.get("CLOCK_VALUE", 12.5))
    cocotb.log.info(f"Test: Starting CIC cocotb test with clock_value = {clock_value} ns")
    cocotb.start_soon(Clock(dut.clk, clock_value, units="ns").start())

    dut.d_in.value = 1000
    dut.count.value = 0
    dut.d1.value = 0
    dut.d2.value = 0
    dut.d3.value = 0
    dut.d4.value = 0
    dut.d5.value = 0
    dut.d6.value = 0
    dut.d7.value = 0
    dut.d8.value = 0
    dut.d9.value = 0
    dut.d10.value = 0
    dut.d_d6.value = 0
    dut.d_d7.value = 0
    dut.d_d8.value = 0
    dut.d_d9.value = 0
    dut.d_tmp.value = 0
    dut.d_d_tmp.value = 0

    for _ in range(number_of_iterations):
        await RisingEdge(dut.clk)

