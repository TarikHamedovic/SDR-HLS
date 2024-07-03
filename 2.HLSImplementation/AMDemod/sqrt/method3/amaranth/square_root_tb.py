"""
-----------------------------------------------------------------------------
CocoTB Testbench for square_root module
-----------------------------------------------------------------------------
"""
import cocotb
from cocotb.triggers import RisingEdge
from cocotb.binary import BinaryValue
from cocotb.clock import Clock


def print_vars(dut):
    cocotb.log.info(f"reset: {dut.reset.value}, num_in: {dut.num_in.value}, done: {dut.done.value}, sq_root:{dut.sq_root.value}")
    cocotb.log.info(f"a: {dut.a.value}, left: {dut.left.value}, right: {dut.right.value}, r: {dut.r.value}, q: {dut.q.value}")


@cocotb.test()
async def square_root_test(dut):
   
    cocotb.log.info(f"Test: Starting AMDemodulation cocotb test with clock_value = 12.5 ns")
    cocotb.start_soon(Clock(dut.clk, 12.5, units="ns").start())
    cocotb.log.info("Test: Reset ON")
    dut.reset.value = 1
    await RisingEdge(dut.clk)
    print_vars(dut)
    cocotb.log.info("Test: Reset OFF and num_in = 121")
    dut.reset.value = 0
    dut.num_in.value = 121
    await RisingEdge(dut.clk)
    print_vars(dut)

    while dut.done.value == 0:
        cocotb.log.info(f"--i: {dut.i.value.integer}")
        print_vars(dut)
        await RisingEdge(dut.clk)
    cocotb.log.info("--Result")
    cocotb.log.info(f"Test: sq_root = {dut.sq_root.value}")
    cocotb.log.info("--Check")
    print_vars(dut)
    await RisingEdge(dut.clk)
    print_vars(dut)


    

