import cocotb
from cocotb.triggers import RisingEdge, FallingEdge
from cocotb.clock import Clock
import random

def print_vars(dut):
   # Log monitored variables #
    dut._log.info(f"Monitor: i_xval={dut.i_xval.value}, i_yval={dut.i_yval.value}, i_phase={dut.i_phase.value}")
    dut._log.info(f"Monitor: o_xval={dut.o_xval.value}, o_yval={dut.o_yval.value}, o_phval={dut.o_phval.value}")
    dut._log.info(f"Monitor: xv = {dut.xv.value}, yv = {dut.yv.value}, ph = {dut.ph.value}")

@cocotb.test()
async def cordic_basic_test(dut):
    """ Test for basic CORDIC functionality """
    
    # Start the clock
    clock = Clock(dut.i_clk, 12.5, units="ns")
    cocotb.start_soon(clock.start())
    
    dut._log.info("Starting Testbench")
    print_vars(dut)
    
    # Prepare input data
    test_data = [
        (100, 200, 0x00000),  # Example input set 1
        (-150, 150, 0x10000), # Example input set 2, should rotate by 90 degrees
        (50, -50, 0x30000),   # Example input set 3, should rotate by 180 degrees
        (0, 0, 0x20000)       # Example input set 4, should rotate by 135 degrees
    ]
    
    dut._log.info("Running Test")
    for xval, yval, phase in test_data:
        dut.i_xval.value = xval
        dut.i_yval.value = yval
        dut.i_phase.value = phase
        
        # Wait for the output to be stable
        await RisingEdge(dut.i_clk)
        await RisingEdge(dut.i_clk)  # Ensure enough cycles pass for changes
        
        print_vars(dut)

