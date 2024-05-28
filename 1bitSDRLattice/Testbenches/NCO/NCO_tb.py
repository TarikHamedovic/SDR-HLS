"""
-----------------------------------------------------------------------------
CocoTB Testbench for nco_sig.v module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import random
import os

NUM_TEST_VALUES = 100

async def init(phase_inc_carr, phase_accum, duration_ns):
    # Function to initialize phase_inc_carr and phase_accum values #
    cocotb.log.info("Initialization: Commencing input reset sequence...")
    
    original_phase_inc_carr = phase_inc_carr.value
    original_phase_accum = phase_accum.value

    phase_inc_carr.value = 0
    phase_accum.value = 0

    await Timer(duration_ns, units="ns")

    cocotb.log.info(f"Initialization: {phase_inc_carr._name} value changed from {original_phase_inc_carr} to {phase_inc_carr.value}")
    cocotb.log.info(f"Initialization: {phase_accum._name} value changed from {original_phase_accum} to {phase_accum.value}")

def print_vars(dut):
    # Log monitored variables #
    dut._log.info(f"Monitor: phase_inc_carr={dut.phase_inc_carr.value}, phase_accum={dut.phase_accum.value}, sin_out={dut.sin_out.value}, cos_out={dut.cos_out.value}")

@cocotb.test()
async def nco_sig_test(dut):
    clock_value = float(os.environ.get('CLOCK_VALUE', 10.0))  # Default clock period of 10 ns

    dut._log.info(f"Test: Starting NCO Signal Generator cocotb test with clock_value = {clock_value} ns")
    
    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initializing Input Variables to 0 #
    await init(dut.phase_inc_carr, dut.phase_accum, clock_value)

    # Printing to Monitor to check if the variable change is OK #
    print_vars(dut)

    # Generating test data including edge cases and random values #
    test_data = [0, 1, (1 << 63) - 1, (1 << 63), (1 << 64) - 1]
    test_data += [random.randint(0, (1 << 64) - 1) for _ in range(NUM_TEST_VALUES)]
    cocotb.log.info("Test: Generated test data with edge and random values")

    for phase_inc_carr in test_data:
        # Loading values into DUT #
        cocotb.log.info(f"Test: Applying input value phase_inc_carr={phase_inc_carr}...")
        dut.phase_inc_carr.value = phase_inc_carr
        await RisingEdge(dut.clk)  # Waiting to load phase_inc_carr value
        dut._log.info("----- Loaded Values -----")

        # Allow some time for the phase_accum to update #
        cocotb.log.info("Test: Waiting 1 clock cycle for the phase accumulation...")
        
        await RisingEdge(dut.clk)

        # Monitoring variables after operation #
        print_vars(dut)

        # Checking the sin_out and cos_out values #
        expected_sin_out = 0 if (dut.phase_accum.value >> 63) & 1 else 1
        expected_cos_out = 0 if ((dut.phase_accum.value >> 63) ^ (dut.phase_accum.value >> 62)) & 1 else 1
        actual_sin_out = int(dut.sin_out.value)
        actual_cos_out = int(dut.cos_out.value)
        
        cocotb.log.info(f"Check: Expected sin_out {expected_sin_out}, got {actual_sin_out}")
        assert actual_sin_out == expected_sin_out, f"Assertion failed: phase_inc_carr = {phase_inc_carr}: expected sin_out = {expected_sin_out}, got {actual_sin_out}"
        
        cocotb.log.info(f"Check: Expected cos_out {expected_cos_out}, got {actual_cos_out}")
        assert actual_cos_out == expected_cos_out, f"Assertion failed: phase_inc_carr = {phase_inc_carr}: expected cos_out = {expected_cos_out}, got {actual_cos_out}"

        cocotb.log.info("Test: Assertion passed for current input set")

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26: initial creation    
"""


