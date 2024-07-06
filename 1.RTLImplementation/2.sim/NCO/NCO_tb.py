"""
-----------------------------------------------------------------------------
CocoTB Testbench for nco_sig.v module
-----------------------------------------------------------------------------
"""

# TODO: Add clock variable to MakeFile for changing simulation in terminal

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import random
import os



async def init(phase_inc_carr, phase_accum, duration_ns):
    # Function to initialize phase_inc_carr and phase_accum values #
    cocotb.log.info("[Initialization] Commencing input reset sequence...")
    
    original_phase_inc_carr = phase_inc_carr.value
    original_phase_accum = phase_accum.value

    phase_inc_carr.value = 0
    phase_accum.value = 0

    await Timer(duration_ns, units="ns")

    cocotb.log.info(f"[Initialization] {phase_inc_carr._name} value changed from {original_phase_inc_carr} to {phase_inc_carr.value}")
    cocotb.log.info(f"[Initialization] {phase_accum._name} value changed from {original_phase_accum} to {phase_accum.value}")

def print_vars(dut):
    # Log monitored variables #
    cocotb.log.info(f"[Monitor] phase_inc_carr = {dut.phase_inc_carr.value}, phase_accum = {dut.phase_accum.value}, sin_out = {dut.sin_out.value}, cos_out = {dut.cos_out.value}")

assertions_passed = 0
@cocotb.test()
async def nco_test(dut):

    width = int(os.environ.get('WIDTH', 64))
    clock_value = float(os.environ.get('CLOCK_VALUE', 12.5))    
    num_test_values = int(os.environ.get('NUM_TEST_VALUES', 10))
    cocotb.log.info(f"[Test Start] Starting NCO Signal Generator cocotb test with clock_value = {clock_value} ns")
    
    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initializing Input Variables to 0 #
    await init(dut.phase_inc_carr, dut.phase_accum, clock_value)

    # Printing to Monitor to check if the variable change is OK #
    print_vars(dut)

    # Generating test data including edge cases and random values #
    test_data = [0, 1, (1 << width-1) - 1, (1 << width-1), (1 << width) - 1]
    test_data += [random.randint(0, (1 << width) - 1) for _ in range(num_test_values)]
    cocotb.log.info("[Test Data Generation] Generated test data with edge and random values")

    assertions_passed = 0
    for phase_inc_carr in test_data:
        # Loading values into DUT #
        cocotb.log.info(f"[Test Execution] Applying input value phase_inc_carr = {phase_inc_carr}...")
        dut.phase_inc_carr.value = phase_inc_carr
        await RisingEdge(dut.clk)  # Waiting to load phase_inc_carr value
        cocotb.log.info("----- Loaded Values -----")

        # Allow some time for the phase_accum to update #
        cocotb.log.info("[Test Execution] Waiting 1 clock cycle for the phase accumulation...")
        
        await RisingEdge(dut.clk)

        # Monitoring variables after operation #
        print_vars(dut)

        # Checking the sin_out and cos_out values #
        expected_sin_out = 0 if (dut.phase_accum.value >> width-1) & 1 else 1
        expected_cos_out = 0 if ((dut.phase_accum.value >> width-1) ^ (dut.phase_accum.value >> width-2)) & 1 else 1
        actual_sin_out = int(dut.sin_out.value)
        actual_cos_out = int(dut.cos_out.value)
        
        cocotb.log.info(f"[Check] Expected sin_out {expected_sin_out}, got {actual_sin_out}")
        assert actual_sin_out == expected_sin_out, f"Assertion failed: phase_inc_carr = {phase_inc_carr}: expected sin_out = {expected_sin_out}, got {actual_sin_out}"
        assertions_passed += 1
        
        cocotb.log.info(f"[Check] Expected cos_out {expected_cos_out}, got {actual_cos_out}")
        assert actual_cos_out == expected_cos_out, f"Assertion failed: phase_inc_carr = {phase_inc_carr}: expected cos_out = {expected_cos_out}, got {actual_cos_out}"
        assertions_passed += 1
        cocotb.log.info("[Check] Assertion passed for current input set")

    cocotb.log.info("[Summary] All values matched expected results")
    cocotb.log.info(f"[Summary] Clock frequency of the simulation: {1/clock_value * 1000} MHz")
    cocotb.log.info(f"[Summary] Runtime of simulation: {num_test_values * clock_value} ns")
    cocotb.log.info(f"[Summary] Runtime of simulation in checks: {num_test_values * clock_value} ns")
    cocotb.log.info(f"[Summary] Total number of assertions passed: {assertions_passed}(+10 is because of added edge cases)")

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26: initial creation    
 2024/7/6 : Added detailed comments and logging
"""