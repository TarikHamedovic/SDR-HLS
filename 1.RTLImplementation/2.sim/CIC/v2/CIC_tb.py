"""
-----------------------------------------------------------------------------
Cocotb Testbench for CIC Filter
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import os
import random
import numpy as np

signals = [
    'data_in', 'count', 'valid_comb', 'decimation_clk', 'data_out', 'gain',
    'integrator_tmp', 'integrator_d_tmp'
] + [f'integrator[{i}]' for i in range(5)] + [f'comb[{i}]' for i in range(5)] + [f'comb_delay[{i}]' for i in range(5)]

def initialize_dut(dut):
    for signal in signals:
        if hasattr(dut, signal):
            setattr(dut, signal, 0)

    dut.data_in.value = 1000
    dut.gain.value = 1  # Ensure gain is initialized to a valid value

def format_table(title, table_data):
    col_widths = [max(len(str(item)) for item in col) for col in zip(*table_data)]
    table_width = sum(col_widths) + 3 * len(col_widths) + 1
    title_str = '| ' + title.center(table_width - 4) + ' |'
    border = '+' + '+'.join('-' * (width + 2) for width in col_widths) + '+'
    title_border = '+' + '-' * (table_width - 2) + '+'
    table_str = [title_border, title_str, border]
    for row in table_data:
        row_str = '| ' + ' | '.join(str(item).ljust(width) for item, width in zip(row, col_widths)) + ' |'
        table_str.append(row_str)
        table_str.append(border)
    return '\n'.join(table_str)

def print_vars(dut):
    table_data = [
        ["Variable", "Value"]
    ] + [[signal, str(getattr(dut, signal).value)] for signal in signals if hasattr(dut, signal)]
    cocotb.log.info("\n" + format_table("Monitoring Variables", table_data))

def check_signals(dut, expected_values, signals_to_check, iteration):
    table_data = [["Signal", "Actual", "Expected", "Correct"]]
    all_correct = True
    
    for signal_name, expected_value in zip(signals_to_check, expected_values):
        actual_value = int(getattr(dut, signal_name).value)
        correct = actual_value == expected_value
        if not correct:
            all_correct = False
        result = '✓' if correct else '✗'
        table_data.append([signal_name, actual_value, expected_value, result])
    
    table_title = f"Checking Table Iteration {iteration}"
    cocotb.log.info("\n" + format_table(table_title, table_data))
    assert all_correct, "Some signals did not match expected values"

def integrator(dut, integrator_values):
    data_in = int(dut.data_in.value)
    
    for i in range(len(integrator_values) - 1, 0, -1):
        integrator_values[i] = integrator_values[i-1] + integrator_values[i]
    
    integrator_values[0] = data_in + integrator_values[0]

    return integrator_values

def integrator_check(dut, integrator_values, iteration):
    expected_values = integrator_values
    signals_to_check = [f'integrator[{i}]' for i in range(len(integrator_values))]
    cocotb.log.info("----------------Checking integrator signals---------------------")
    check_signals(dut, expected_values, signals_to_check, iteration)

def decimation(count, valid_comb, integrator_tmp, decimation_clk, integrator_final, decimation_ratio, save_integrator):
    if count == decimation_ratio - 2:
        save_integrator = integrator_final
        count += 1
        valid_comb = 0
    elif count == decimation_ratio - 1:
        count = 0
        decimation_clk = 1
        integrator_tmp = save_integrator
        valid_comb = 1
    elif count == decimation_ratio // 2:
        decimation_clk = 0
        count += 1
        valid_comb = 0
    else:
        count += 1
        valid_comb = 0
    return count, valid_comb, integrator_tmp, decimation_clk, save_integrator

def decimation_check(dut, count_e, valid_comb_e, integrator_tmp_e, decimation_clk_e, iteration):
    expected_values = [count_e, valid_comb_e, integrator_tmp_e, decimation_clk_e]
    signals_to_check = ['count', 'valid_comb', 'integrator_tmp', 'decimation_clk']
    cocotb.log.info("----------------Checking decimation signals---------------------")
    check_signals(dut, expected_values, signals_to_check, iteration)

def comb(dut, valid_comb_e, integrator_tmp_e, decimation_clk_e, comb_values, comb_delay_values, integrator_d_tmp, data_out, valid_comb_sim):
    num_stages = len(comb_values)
    
    if valid_comb_sim:
        data_out = comb_values[-1] >> (int(dut.REGISTER_WIDTH.value) - int(dut.DATA_WIDTH.value) - int(dut.gain.value))

        # Propagate comb values and delays
        for i in range(num_stages - 1, 0, -1):
            comb_values[i] = comb_values[i - 1] - comb_delay_values[i - 1]
            comb_delay_values[i - 1] = comb_values[i - 1]
        
        # Update the first stage
        comb_values[0] = integrator_tmp_e - integrator_d_tmp
        integrator_d_tmp = integrator_tmp_e

        valid_comb_sim = 0

    if valid_comb_e:
        valid_comb_sim = 1

    return integrator_d_tmp, comb_values, comb_delay_values, data_out, valid_comb_sim

def comb_check(dut, integrator_d_tmp_e, comb_values, comb_delay_values, data_out_e, iteration):
    expected_values = comb_values + comb_delay_values + [integrator_d_tmp_e, data_out_e]
    signals_to_check = [f'comb[{i}]' for i in range(len(comb_values))] + [f'comb_delay[{i}]' for i in range(len(comb_delay_values))] + ['integrator_d_tmp', 'data_out']
    cocotb.log.info("----------------Checking comb signals---------------------")
    check_signals(dut, expected_values, signals_to_check, iteration)

@cocotb.coroutine
async def integrator_process(dut, shared_state, number_of_iterations, n_stages):
    for iteration in range(number_of_iterations):
        integrator_values = integrator(dut, shared_state['integrator_values'])
        shared_state.update({
            'integrator_values': integrator_values
        })
        await RisingEdge(dut.clk)
        cocotb.log.info("================================================================")
        integrator_check(dut, integrator_values, iteration + 1)

@cocotb.coroutine
async def decimation_process(dut, shared_state, decimation_ratio, number_of_iterations):
    save_integrator = 0
    for iteration in range(number_of_iterations):
        count, valid_comb, integrator_tmp, decimation_clk, save_integrator = decimation(
            shared_state['count_e'], shared_state['valid_comb_e'], shared_state['integrator_tmp_e'], shared_state['decimation_clk_e'], shared_state['integrator_values'][-1], decimation_ratio, save_integrator)
        shared_state.update({
            'count_e': count,
            'valid_comb_e': valid_comb,
            'integrator_tmp_e': integrator_tmp,
            'decimation_clk_e': decimation_clk
        })
        await RisingEdge(dut.clk)
        decimation_check(dut, count, valid_comb, integrator_tmp, decimation_clk, iteration + 1)

@cocotb.coroutine
async def comb_process(dut, shared_state, number_of_iterations, n_stages):
    valid_comb_sim = 0
    for iteration in range(number_of_iterations):
        integrator_d_tmp, comb_values, comb_delay_values, data_out, valid_comb_sim = comb(
            dut, shared_state['valid_comb_e'], shared_state['integrator_tmp_e'], shared_state['decimation_clk_e'], shared_state['comb_values'], shared_state['comb_delay_values'], shared_state['integrator_d_tmp_e'], shared_state['data_out_e'], valid_comb_sim)
        shared_state.update({
            'integrator_d_tmp_e': integrator_d_tmp,
            'comb_values': comb_values,
            'comb_delay_values': comb_delay_values,
            'data_out_e': data_out,
            'valid_comb_simulation': valid_comb_sim
        })
        await RisingEdge(dut.clk)
        comb_check(dut, integrator_d_tmp, comb_values, comb_delay_values, data_out, iteration + 1)
        cocotb.log.info("================================================================")

@cocotb.test()
async def CIC_test(dut):
    # Configuration from environment variables
    data_width = dut.DATA_WIDTH.value
    register_width = dut.REGISTER_WIDTH.value
    decimation_ratio = dut.DECIMATION_RATIO.value
    n_stages = dut.N_STAGES.value
    number_of_iterations = int(os.environ.get("ITERATIONS", 50))
    clock_value = float(os.environ.get("CLOCK_VALUE", 12.5))
    cocotb.log.info(f"[Test Start] Starting CIC cocotb test with clock_value = {clock_value} ns")

    # Starting the clock
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    # Initializing DUT signals
    initialize_dut(dut)
    await RisingEdge(dut.clk)
    cocotb.log.info("[Test Initialization] Initialized input variables")

    # Shared state dictionary
    shared_state = {
        'integrator_values': [0] * n_stages,
        'count_e': 0,
        'valid_comb_e': 0,
        'integrator_tmp_e': 0,
        'decimation_clk_e': 0,
        'integrator_d_tmp_e': 0,
        'comb_values': [0] * n_stages,
        'comb_delay_values': [0] * n_stages,
        'data_out_e': 0,
        'valid_comb_simulation': 0
    }
    print_vars(dut)

    # Start coroutines for integrator, decimation, and comb processes
    cocotb.start_soon(integrator_process(dut, shared_state, number_of_iterations, n_stages))
    cocotb.start_soon(decimation_process(dut, shared_state, decimation_ratio, number_of_iterations))
    cocotb.start_soon(comb_process(dut, shared_state, number_of_iterations, n_stages))

    # Wait for all coroutines to complete
    await Timer(number_of_iterations * clock_value, units="ns")

    # Summary Table
    summary_table = [
        ["Metric", "Value"],
        ["Data Width", data_width],
        ["Register Width", register_width],
        ["Decimation Ratio", decimation_ratio],
        ["Number of stages", n_stages],
        ["Clock frequency (MHz)", f"{1/clock_value * 1000}"],
        ["Runtime of simulation (ns)", f"{number_of_iterations * clock_value}"],
        ["Total number of iterations", number_of_iterations]
    ]
    cocotb.log.info("\n" + format_table("Summary", summary_table))
    
    cocotb.log.info("[Summary] All values matched expected results")

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/18  TH: Initial Creation   
 2024/7/6   TH: Added detailed comments and logging
 2024/8/5   TH: Added formatted tables for monitoring and checking with titles and outlines
 2024/8/5   TH: Added summary table and iteration count in checking table
 2024/8/20  TH: Updated to support modified CIC filter with parameterized N_STAGES
"""
