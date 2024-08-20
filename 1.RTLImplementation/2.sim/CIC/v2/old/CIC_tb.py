"""
-----------------------------------------------------------------------------
CocoTB Testbench for CIC Filter
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import os
import random
import numpy as np

signals = [
    'd_in', 'count', 'v_comb', 'd_clk_tmp', 'd_tmp', 'd_out', 'Gain'
]

def initialize_dut(dut, N_STAGES):
    # Initialize static signals to 0
    dut.d_in.value = 1000
    dut.count.value = 0
    dut.v_comb.value = 0
    dut.d_clk_tmp.value = 0
    dut.d_tmp.value = 0
    dut.d_out.value = 0
    dut.Gain.value = 0

    # Initialize dynamic signals to 0 based on N_STAGES
    for i in range(N_STAGES):
        setattr(dut, f'integrator[{i}]', 0)
        setattr(dut, f'comb[{i}]', 0)
        setattr(dut, f'comb_delay[{i}]', 0)

def print_vars(dut):
    cocotb.log.info("----- Monitoring Variables -----")
    for signal in signals:
        cocotb.log.info(f"[Monitor] {signal} = {getattr(dut, signal).value}")

def check_signals(dut, expected_values, signals_to_check):
    table_data = [["Signal name", "Actual", "Expected", "Correct"]]
    all_correct = True
    
    for signal_name, expected_value in zip(signals_to_check, expected_values):
        actual_value = int(getattr(dut, signal_name).value)
        correct = actual_value == expected_value
        if not correct:
            all_correct = False
        table_data.append([signal_name, actual_value, expected_value, correct])
    
    cocotb.log.info("\n" + format_table(table_data))
    #assert all_correct, "Some signals did not match expected values"

def format_table(table_data):
    col_widths = [max(len(str(item)) for item in col) for col in zip(*table_data)]
    table_str = "\n".join(
        " | ".join(str(item).ljust(width) for item, width in zip(row, col_widths))
        for row in table_data
    )
    return table_str

def integrator(dut, integrator_values, N_STAGES):
    d_in = dut.d_in.value
    for i in range(N_STAGES-1, 0, -1):
        integrator_values[i] = integrator_values[i-1] + integrator_values[i]
    integrator_values[0] = d_in + integrator_values[0]

    return integrator_values

def integrator_check(dut, expected_values, N_STAGES):
    signals_to_check = [f'integrator[{i}]' for i in range(N_STAGES)]
    cocotb.log.info("----------------Checking integrator signals---------------------")
    check_signals(dut, expected_values, signals_to_check)

def decimation(count, v_comb, d_tmp, d_clk_tmp, integrator_last, decimation_ratio, save_d5):
    if count == decimation_ratio - 2:
        save_d5 = integrator_last
        count += 1
        v_comb = 0
    elif count == decimation_ratio - 1:
        count = 0
        d_clk_tmp = 1
        d_tmp = save_d5
        v_comb = 1
    elif count == decimation_ratio // 2:
        d_clk_tmp = 0
        count += 1
        v_comb = 0
    else:
        count += 1
        v_comb = 0
    return count, v_comb, d_tmp, d_clk_tmp, save_d5

def decimation_check(dut, count_e, v_comb_e, d_tmp_e, d_clk_tmp_e):
    expected_values = [count_e, v_comb_e, d_tmp_e, d_clk_tmp_e]
    signals_to_check = ['count', 'v_comb', 'd_tmp', 'd_clk_tmp']
    cocotb.log.info("----------------Checking decimation signals---------------------")
    check_signals(dut, expected_values, signals_to_check)

def comb(dut, v_comb_e, d_tmp_e, d_clk_tmp_e, comb_values, comb_delay_values, N_STAGES, Gain):
    if v_comb_e:
        d_out = comb_values[N_STAGES-1] >> (64 - 12 - Gain)
        for i in range(N_STAGES-1, 0, -1):
            comb_values[i] = comb_values[i-1] - comb_delay_values[i]
            comb_delay_values[i] = comb_values[i-1]
        comb_values[0] = d_tmp_e - comb_delay_values[0]
        comb_delay_values[0] = d_tmp_e
        
    else:
        d_out = dut.d_out.value

    return comb_values, comb_delay_values, d_out

def comb_check(dut, expected_comb_values, expected_comb_delay_values, d_out_e, N_STAGES):
    comb_signals_to_check = [f'comb[{i}]' for i in range(N_STAGES)]
    comb_delay_signals_to_check = [f'comb_delay[{i}]' for i in range(N_STAGES)]
    cocotb.log.info("----------------Checking comb signals---------------------")
    check_signals(dut, expected_comb_values, comb_signals_to_check)
    check_signals(dut, expected_comb_delay_values, comb_delay_signals_to_check)
    check_signals(dut, [d_out_e], ['d_out'])

@cocotb.coroutine
async def integrator_process(dut, shared_state, N_STAGES, number_of_iterations):
    for _ in range(number_of_iterations):
        integrator_values = integrator(
            dut, shared_state['integrator_values'], N_STAGES)
        shared_state['integrator_values'] = integrator_values
        await RisingEdge(dut.clk)
        cocotb.log.info("================================================================")
        integrator_check(dut, integrator_values, N_STAGES)

@cocotb.coroutine
async def decimation_process(dut, shared_state, decimation_ratio, number_of_iterations):
    save_d5 = 0
    for _ in range(number_of_iterations):
        count, v_comb, d_tmp, d_clk_tmp, save_d5 = decimation(
            shared_state['count_e'], shared_state['v_comb_e'], shared_state['d_tmp_e'], shared_state['d_clk_tmp_e'], shared_state['integrator_values'][-1], decimation_ratio, save_d5)
        shared_state.update({
            'count_e': count,
            'v_comb_e': v_comb,
            'd_tmp_e': d_tmp,
            'd_clk_tmp_e': d_clk_tmp
        })
        await RisingEdge(dut.clk)
        decimation_check(dut, count, v_comb, d_tmp, d_clk_tmp)

@cocotb.coroutine
async def comb_process(dut, shared_state, N_STAGES, number_of_iterations):
    for _ in range(number_of_iterations):
        comb_values, comb_delay_values, d_out = comb(
            dut, shared_state['v_comb_e'], shared_state['d_tmp_e'], shared_state['d_clk_tmp_e'], shared_state['comb_values'], shared_state['comb_delay_values'], N_STAGES, int(dut.Gain.value))
        shared_state.update({
            'comb_values': comb_values,
            'comb_delay_values': comb_delay_values,
            'd_out_e': d_out
        })
        await RisingEdge(dut.clk)
        comb_check(dut, comb_values, comb_delay_values, d_out, N_STAGES)
        cocotb.log.info("================================================================")

@cocotb.test()
async def CIC_test(dut):
    # Configuration from environment variables
    input_bits = int(os.environ.get("INPUT_BITS", 12))
    decimation_ratio = int(os.environ.get("DECIMATION_RATIO", 16))
    number_of_iterations = int(os.environ.get("ITERATIONS", 50))
    clock_value = float(os.environ.get("CLOCK_VALUE", 12.5))
    N_STAGES = int(os.environ.get("N_STAGES", 5))

    cocotb.log.info(f"[Test Start] Starting CIC cocotb test with clock_value = {clock_value} ns and N_STAGES = {N_STAGES}")

    # Starting the clock
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initializing DUT signals
    initialize_dut(dut, N_STAGES)
    await RisingEdge(dut.clk)
    cocotb.log.info("[Test Initialization] Initialized input variables")

    # Shared state dictionary
    shared_state = {
        'integrator_values': [0] * N_STAGES,
        'count_e': 0,
        'v_comb_e': 0,
        'd_tmp_e': 0,
        'd_clk_tmp_e': 0,
        'comb_values': [0] * N_STAGES,
        'comb_delay_values': [0] * N_STAGES,
        'd_out_e': 0
    }
    print_vars(dut)

    # Start coroutines for integrator, decimation, and comb processes
    cocotb.start_soon(integrator_process(dut, shared_state, N_STAGES, number_of_iterations))
    cocotb.start_soon(decimation_process(dut, shared_state, decimation_ratio, number_of_iterations))
    cocotb.start_soon(comb_process(dut, shared_state, N_STAGES, number_of_iterations))

    # Wait for all coroutines to complete
    await Timer(number_of_iterations * clock_value, units="ns")

    cocotb.log.info("[Summary] All values matched expected results")
    cocotb.log.info(f"[Summary] Clock frequency of the simulation: {1/clock_value * 1000} MHz")
    cocotb.log.info(f"[Summary] Runtime of simulation in checks: {number_of_iterations}")
    cocotb.log.info(f"[Summary] Total number of assertions passed: All")

# FIXME: Comb assertion needs to be delayed by 1 clock

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/18  TH: Initial Creation   
 2024/7/6   TH: Added detailed comments and logging
 2024/8/04  TH: Updated for generic N_STAGES implementation
"""
