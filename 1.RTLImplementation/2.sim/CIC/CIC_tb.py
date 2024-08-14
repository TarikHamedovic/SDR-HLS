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
    'data_in', 'count', 'integrator1', 'integrator2', 'integrator3', 'integrator4', 'integrator5',
    'comb6', 'comb7', 'comb8', 'comb9', 'comb10', 'comb_d6', 'comb_d7', 'comb_d8', 'comb_d9',
    'integrator_tmp', 'integrator_d_tmp', 'valid_comb', 'decimation_clk', 'scaled_output', 'data_out', 'gain'
]

def initialize_dut(dut):
    for signal in signals:
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
        ["Variable", "Value"],
        ["data_in", str(dut.data_in.value)],
        ["count", str(dut.count.value)],
        ["integrator1", str(dut.integrator1.value)],
        ["integrator2", str(dut.integrator2.value)],
        ["integrator3", str(dut.integrator3.value)],
        ["integrator4", str(dut.integrator4.value)],
        ["integrator5", str(dut.integrator5.value)],
        ["comb6", str(dut.comb6.value)],
        ["comb7", str(dut.comb7.value)],
        ["comb8", str(dut.comb8.value)],
        ["comb9", str(dut.comb9.value)],
        ["comb10", str(dut.comb10.value)],
        ["comb_d6", str(dut.comb_d6.value)],
        ["comb_d7", str(dut.comb_d7.value)],
        ["comb_d8", str(dut.comb_d8.value)],
        ["comb_d9", str(dut.comb_d9.value)],
        ["integrator_tmp", str(dut.integrator_tmp.value)],
        ["integrator_d_tmp", str(dut.integrator_d_tmp.value)],
        ["valid_comb", str(dut.valid_comb.value)],
        ["decimation_clk", str(dut.decimation_clk.value)],
        ["scaled_output", str(dut.scaled_output.value)],
        ["data_out", str(dut.data_out.value)],
        ["gain", str(dut.gain.value)]
    ]
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

def integrator(dut, integrator1, integrator2, integrator3, integrator4, integrator5):
    data_in = dut.data_in.value
    integrator5 = integrator4 + integrator5
    integrator4 = integrator3 + integrator4
    integrator3 = integrator2 + integrator3
    integrator2 = integrator1 + integrator2
    integrator1 = data_in + integrator1

    return integrator1, integrator2, integrator3, integrator4, integrator5

def integrator_check(dut, integrator1_e, integrator2_e, integrator3_e, integrator4_e, integrator5_e, iteration):
    expected_values = [integrator1_e, integrator2_e, integrator3_e, integrator4_e, integrator5_e]
    signals_to_check = ['integrator1', 'integrator2', 'integrator3', 'integrator4', 'integrator5']
    cocotb.log.info("----------------Checking integrator signals---------------------")
    check_signals(dut, expected_values, signals_to_check, iteration)

def decimation(count, valid_comb, integrator_tmp, decimation_clk, integrator5, decimation_ratio, save_integrator5):
    if count == decimation_ratio - 2:
        save_integrator5 = integrator5
        count += 1
        valid_comb = 0
    elif count == decimation_ratio - 1:
        count = 0
        decimation_clk = 1
        integrator_tmp = save_integrator5
        valid_comb = 1
    elif count == decimation_ratio // 2:
        decimation_clk = 0
        count += 1
        valid_comb = 0
    else:
        count += 1
        valid_comb = 0
    return count, valid_comb, integrator_tmp, decimation_clk, save_integrator5

def decimation_check(dut, count_e, valid_comb_e, integrator_tmp_e, decimation_clk_e, iteration):
    expected_values = [count_e, valid_comb_e, integrator_tmp_e, decimation_clk_e]
    signals_to_check = ['count', 'valid_comb', 'integrator_tmp', 'decimation_clk']
    cocotb.log.info("----------------Checking decimation signals---------------------")
    check_signals(dut, expected_values, signals_to_check, iteration)

def comb(dut, valid_comb_e, integrator_tmp_e, decimation_clk_e, integrator_d_tmp, comb6, comb_d6, comb7, comb_d7, comb8, comb_d8, comb9, comb_d9, comb10, scaled_output, data_out, valid_comb_sim):
    if valid_comb_sim:
        data_out = comb10 >> (64 - 12 - int(dut.gain.value))
        scaled_output = comb10

        comb10 = comb9 - comb_d9
        comb_d9 = comb9
        comb9 = comb8 - comb_d8
        comb_d8 = comb8
        comb8 = comb7 - comb_d7
        comb_d7 = comb7
        comb7 = comb6 - comb_d6
        comb_d6 = comb6
        comb6 = integrator_tmp_e - integrator_d_tmp
        integrator_d_tmp = integrator_tmp_e

        valid_comb_sim = 0
    if valid_comb_e:
        valid_comb_sim = 1

    return integrator_d_tmp, comb6, comb_d6, comb7, comb_d7, comb8, comb_d8, comb9, comb_d9, comb10, scaled_output, data_out, valid_comb_sim

def comb_check(dut, integrator_d_tmp_e, comb6_e, comb_d6_e, comb7_e, comb_d7_e, comb8_e, comb_d8_e, comb9_e, comb_d9_e, comb10_e, scaled_output_e, data_out_e, iteration):
    expected_values = [integrator_d_tmp_e, comb6_e, comb_d6_e, comb7_e, comb_d7_e, comb8_e, comb_d8_e, comb9_e, comb_d9_e, comb10_e, scaled_output_e, data_out_e]
    signals_to_check = ['integrator_d_tmp', 'comb6', 'comb_d6', 'comb7', 'comb_d7', 'comb8', 'comb_d8', 'comb9', 'comb_d9', 'comb10', 'scaled_output', 'data_out']
    cocotb.log.info("----------------Checking comb signals---------------------")
    check_signals(dut, expected_values, signals_to_check, iteration)

@cocotb.coroutine
async def integrator_process(dut, shared_state, number_of_iterations):
    for iteration in range(number_of_iterations):
        integrator1, integrator2, integrator3, integrator4, integrator5 = integrator(
            dut, shared_state['integrator1_e'], shared_state['integrator2_e'], shared_state['integrator3_e'], shared_state['integrator4_e'], shared_state['integrator5_e'])
        shared_state.update({
            'integrator1_e': integrator1,
            'integrator2_e': integrator2,
            'integrator3_e': integrator3,
            'integrator4_e': integrator4,
            'integrator5_e': integrator5
        })
        await RisingEdge(dut.clk)
        cocotb.log.info("================================================================")
        integrator_check(dut, integrator1, integrator2, integrator3, integrator4, integrator5, iteration + 1)

@cocotb.coroutine
async def decimation_process(dut, shared_state, decimation_ratio, number_of_iterations):
    save_integrator5 = 0
    for iteration in range(number_of_iterations):
        count, valid_comb, integrator_tmp, decimation_clk, save_integrator5 = decimation(
            shared_state['count_e'], shared_state['valid_comb_e'], shared_state['integrator_tmp_e'], shared_state['decimation_clk_e'], shared_state['integrator5_e'], decimation_ratio, save_integrator5)
        shared_state.update({
            'count_e': count,
            'valid_comb_e': valid_comb,
            'integrator_tmp_e': integrator_tmp,
            'decimation_clk_e': decimation_clk
        })
        await RisingEdge(dut.clk)
        decimation_check(dut, count, valid_comb, integrator_tmp, decimation_clk, iteration + 1)

@cocotb.coroutine
async def comb_process(dut, shared_state, number_of_iterations):
    valid_comb_sim = 0
    for iteration in range(number_of_iterations):
        integrator_d_tmp, comb6, comb_d6, comb7, comb_d7, comb8, comb_d8, comb9, comb_d9, comb10, scaled_output, data_out, valid_comb_sim = comb(
            dut, shared_state['valid_comb_e'], shared_state['integrator_tmp_e'], shared_state['decimation_clk_e'], shared_state['integrator_d_tmp_e'], shared_state['comb6_e'], shared_state['comb_d6_e'], shared_state['comb7_e'], shared_state['comb_d7_e'], shared_state['comb8_e'], shared_state['comb_d8_e'], shared_state['comb9_e'], shared_state['comb_d9_e'], shared_state['comb10_e'], shared_state['scaled_output_e'], shared_state['data_out_e'], valid_comb_sim)
        shared_state.update({
            'integrator_d_tmp_e': integrator_d_tmp,
            'comb6_e': comb6,
            'comb_d6_e': comb_d6,
            'comb7_e': comb7,
            'comb_d7_e': comb_d7,
            'comb8_e': comb8,
            'comb_d8_e': comb_d8,
            'comb9_e': comb9,
            'comb_d9_e': comb_d9,
            'comb10_e': comb10,
            'scaled_output_e': scaled_output,
            'data_out_e': data_out,
            'valid_comb_simulation': valid_comb_sim
        })
        await RisingEdge(dut.clk)
        comb_check(dut, integrator_d_tmp, comb6, comb_d6, comb7, comb_d7, comb8, comb_d8, comb9, comb_d9, comb10, scaled_output, data_out, iteration + 1)
        cocotb.log.info("================================================================")

@cocotb.test()
async def CIC_test(dut):
    # Configuration from environment variables
    input_bits = dut.INPUT_WIDTH.value
    register_width = dut.REGISTER_WIDTH.value
    decimation_ratio = dut.DECIMATION_RATIO.value
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
        'integrator1_e': 0,
        'integrator2_e': 0,
        'integrator3_e': 0,
        'integrator4_e': 0,
        'integrator5_e': 0,
        'count_e': 0,
        'valid_comb_e': 0,
        'integrator_tmp_e': 0,
        'decimation_clk_e': 0,
        'integrator_d_tmp_e': 0,
        'comb6_e': 0,
        'comb_d6_e': 0,
        'comb7_e': 0,
        'comb_d7_e': 0,
        'comb8_e': 0,
        'comb_d8_e': 0,
        'comb9_e': 0,
        'comb_d9_e': 0,
        'comb10_e': 0,
        'scaled_output_e': 0,
        'data_out_e': 0,
        'valid_comb_simulation': 0
    }
    print_vars(dut)

    # Start coroutines for integrator, decimation, and comb processes
    cocotb.start_soon(integrator_process(dut, shared_state, number_of_iterations))
    cocotb.start_soon(decimation_process(dut, shared_state, decimation_ratio, number_of_iterations))
    cocotb.start_soon(comb_process(dut, shared_state, number_of_iterations))

    # Wait for all coroutines to complete
    await Timer(number_of_iterations * clock_value, units="ns")

    # Summary Table
    summary_table = [
        ["Metric", "Value"],
        ["Input Width", input_bits],
        ["Register Width", register_width],
        ["Decimation Ratio", decimation_ratio],
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
"""
