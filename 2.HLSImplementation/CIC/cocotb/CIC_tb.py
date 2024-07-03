import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import os

# TODO: Write Comments
# TODO: Try to write more concise functions with the use of lists
# TODO: Fix comb test 

signals = [
    'd_in', 'count', 'd1', 'd2', 'd3', 'd4', 'd5', 'd6', 'd7', 'd8',
    'd9', 'd10', 'd_d6', 'd_d7', 'd_d8', 'd_d9', 'd_tmp', 'd_d_tmp', 'v_comb',
    'd_clk_tmp', 'd_scaled', 'd_out', 'Gain'
]

def print_vars(dut):
    for signal in signals:
        dut._log.info(f"Monitor: {signal}={getattr(dut, signal).value}")

def initialize_dut(dut):
    for signal in signals:
        setattr(dut, signal, 0)

    dut.d_in.value = 1000
    dut.Gain.value = 1  # Ensure Gain is initialized to a valid value

def integrator(dut, d1, d2, d3, d4, d5):
    d_in = dut.d_in.value
    d5 = d4 + d5
    d4 = d3 + d4
    d3 = d2 + d3
    d2 = d1 + d2
    d1 = d_in + d1

    return d1, d2, d3, d4, d5

def check_signals(dut, expected_values, signals_to_check):
    for signal_name, expected_value in zip(signals_to_check, expected_values):
        actual_value = int(getattr(dut, signal_name).value)
        cocotb.log.info(f"Check: {signal_name}_actual={actual_value}, {signal_name}_expected={expected_value}")
        assert actual_value == expected_value, f"Assertion failed for {signal_name}: expected {expected_value}, got {actual_value}"

def integrator_check(dut, d1_e, d2_e, d3_e, d4_e, d5_e):
    expected_values = [d1_e, d2_e, d3_e, d4_e, d5_e]
    signals_to_check = ['d1', 'd2', 'd3', 'd4', 'd5']
    check_signals(dut, expected_values, signals_to_check)

def decimation(count, v_comb, d_tmp, d_clk_tmp, d5, decimation_ratio, save_d5):
    if(count == decimation_ratio - 2):
        save_d5 = d5
        count = count + 1
        v_comb = 0
    elif(count == decimation_ratio-1):
        count = 0
        d_clk_tmp = 1
        d_tmp = save_d5
        v_comb = 1
    elif(count == decimation_ratio // 2):  # use // for integer division
        d_clk_tmp = 0
        count = count + 1
        v_comb = 0
    else:
        count = count + 1
        v_comb = 0
    return count, v_comb, d_tmp, d_clk_tmp, save_d5

def decimation_check(dut, count_e, v_comb_e, d_tmp_e, d_clk_tmp_e):
    expected_values = [count_e, v_comb_e, d_tmp_e, d_clk_tmp_e]
    signals_to_check = ['count', 'v_comb', 'd_tmp', 'd_clk_tmp']
    check_signals(dut, expected_values, signals_to_check)

def comb(dut, v_comb_e, d_tmp_e, d_clk_tmp_e, d_d_tmp, d6, d_d6, d7, d_d7, d8, d_d8, d9, d_d9, d10, d_scaled, d_out, v_comb_sim):
    d_clk = d_clk_tmp_e
    if(v_comb_sim):
        d_out = d10 >> (64 - 12 - int(dut.Gain.value))  # Ensure Gain is an integer
        d_scaled = d10

        d10 = d9 - d_d9
        d_d9 = d9
        d9 = d8 - d_d8
        d_d8 = d8
        d8 = d7 - d_d7
        d_d7 = d7
        d7 = d6 - d_d6
        d_d6 = d6
        d6 = d_tmp_e - d_d_tmp
        d_d_tmp = d_tmp_e

        v_comb_sim = 0
    if(v_comb_e):
        v_comb_sim = 1

    return d_d_tmp, d6, d_d6, d7, d_d7, d8, d_d8, d9, d_d9, d10, d_scaled, d_out, v_comb_sim

def comb_check(dut, d_d_tmp_e, d6_e, d_d6_e, d7_e, d_d7_e, d8_e, d_d8_e, d9_e, d_d9_e, d10_e, d_scaled_e, d_out_e):
    expected_values = [d_d_tmp_e, d6_e, d_d6_e, d7_e, d_d7_e, d8_e, d_d8_e, d9_e, d_d9_e, d10_e, d_scaled_e, d_out_e]
    signals_to_check = ['d_d_tmp', 'd6', 'd_d6', 'd7', 'd_d7', 'd8', 'd_d8', 'd9', 'd_d9', 'd10', 'd_scaled', 'd_out']
    check_signals(dut, expected_values, signals_to_check)

@cocotb.coroutine
async def integrator_process(dut, shared_state, number_of_iterations):
    for _ in range(number_of_iterations):
        d1, d2, d3, d4, d5 = integrator(
            dut, shared_state['d1_e'], shared_state['d2_e'], shared_state['d3_e'], shared_state['d4_e'], shared_state['d5_e'])
        shared_state.update({
            'd1_e': d1,
            'd2_e': d2,
            'd3_e': d3,
            'd4_e': d4,
            'd5_e': d5
        })
        await RisingEdge(dut.clk)
        integrator_check(dut, d1, d2, d3, d4, d5)

@cocotb.coroutine
async def decimation_process(dut, shared_state, decimation_ratio, number_of_iterations):
    save_d5 = 0
    for _ in range(number_of_iterations):
        count, v_comb, d_tmp, d_clk_tmp, save_d5 = decimation(
            shared_state['count_e'], shared_state['v_comb_e'], shared_state['d_tmp_e'], shared_state['d_clk_tmp_e'], shared_state['d5_e'], decimation_ratio, save_d5)
        shared_state.update({
            'count_e': count,
            'v_comb_e': v_comb,
            'd_tmp_e': d_tmp,
            'd_clk_tmp_e': d_clk_tmp
        })
        await RisingEdge(dut.clk)
        decimation_check(dut, count, v_comb, d_tmp, d_clk_tmp)

@cocotb.coroutine
async def comb_process(dut, shared_state, number_of_iterations):
    v_comb_sim = 0
    for _ in range(number_of_iterations):
        d_d_tmp, d6, d_d6, d7, d_d7, d8, d_d8, d9, d_d9, d10, d_scaled, d_out, v_comb_sim = comb(
            dut, shared_state['v_comb_e'], shared_state['d_tmp_e'], shared_state['d_clk_tmp_e'], shared_state['d_d_tmp_e'], shared_state['d6_e'], shared_state['d_d6_e'], shared_state['d7_e'], shared_state['d_d7_e'], shared_state['d8_e'], shared_state['d_d8_e'], shared_state['d9_e'], shared_state['d_d9_e'], shared_state['d10_e'], shared_state['d_scaled_e'], shared_state['d_out_e'], v_comb_sim)
        shared_state.update({
            'd_d_tmp_e': d_d_tmp,
            'd6_e': d6,
            'd_d6_e': d_d6,
            'd7_e': d7,
            'd_d7_e': d_d7,
            'd8_e': d8,
            'd_d8_e': d_d8,
            'd9_e': d9,
            'd_d9_e': d_d9,
            'd10_e': d10,
            'd_scaled_e': d_scaled,
            'd_out_e': d_out,
            'v_comb_simulation': v_comb_sim
        })
        await RisingEdge(dut.clk)
        comb_check(dut, d_d_tmp, d6, d_d6, d7, d_d7, d8, d_d8, d9, d_d9, d10, d_scaled, d_out)

@cocotb.test()
async def CIC_test(dut):

    # Configuration from environment variables
    input_bits = int(os.environ.get("INPUT_BITS", 12))
    decimation_ratio = int(os.environ.get("DECIMATION_RATIO", 16))
    number_of_iterations = int(os.environ.get("ITERATIONS", 50))
    clock_value = float(os.environ.get("CLOCK_VALUE", 12.5))

    # Starting the clock
    cocotb.log.info(f"Test: Starting CIC cocotb test with clock_value = {clock_value} ns")
    cocotb.start_soon(Clock(dut.clk, clock_value, units="ns").start())

    # Initializing DUT signals
    initialize_dut(dut)

    await RisingEdge(dut.clk)

    cocotb.log.info("Test: Initialized variables")

    # Shared state dictionary
    shared_state = {
        'd1_e': 0,
        'd2_e': 0,
        'd3_e': 0,
        'd4_e': 0,
        'd5_e': 0,
        'count_e': 0,
        'v_comb_e': 0,
        'd_tmp_e': 0,
        'd_clk_tmp_e': 0,
        'd_d_tmp_e': 0,
        'd6_e': 0,
        'd_d6_e': 0,
        'd7_e': 0,
        'd_d7_e': 0,
        'd8_e': 0,
        'd_d8_e': 0,
        'd9_e': 0,
        'd_d9_e': 0,
        'd10_e': 0,
        'd_scaled_e': 0,
        'd_out_e': 0,
        'v_comb_simulation': 0
    }
    print_vars(dut)
    # Start coroutines for integrator, decimation, and comb processes
    cocotb.start_soon(integrator_process(dut, shared_state, number_of_iterations))
    cocotb.start_soon(decimation_process(dut, shared_state, decimation_ratio, number_of_iterations))
    cocotb.start_soon(comb_process(dut, shared_state, number_of_iterations))

    # Wait for all coroutines to complete
    await Timer(number_of_iterations * clock_value, units="ns")

    cocotb.log.info("Test: All values matched expected results")
