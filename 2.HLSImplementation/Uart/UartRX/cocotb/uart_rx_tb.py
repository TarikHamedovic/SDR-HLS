"""
-----------------------------------------------------------------------------
CocoTB Testbench for UartRx module
-----------------------------------------------------------------------------
"""

import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import random
import os

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

@cocotb.test()
async def UartRx_test(dut):

    clock_value = float(os.environ.get('CLOCK_VALUE', 40.0))
    clocks_per_bit = int(os.environ.get('CLOCKS_PER_BIT', 217))
    baud_rate = int(os.environ.get('BAUD_RATE', 115200))
    number_of_iterations = int(os.environ.get('ITERATIONS', 50))

    cocotb.log.info(f"[Test Start] Starting Uart cocotb test with clock_value = {clock_value} ns")

    # Starting Clock #
    clock = Clock(dut.clk, clock_value, units="ns")
    cocotb.start_soon(clock.start())

    assertions_passed = 0

    for iteration in range(number_of_iterations):

        # Keep i_Rx_Serial value at 1 for init_cycles = 3 clocks
        dut.i_Rx_Serial.value = 1 
        init_cycles = 3
        cocotb.log.info(f"[Waiting] Keep i_Rx_Serial value at 1 for {init_cycles} clock cycles")

        for _ in range(init_cycles):
            await RisingEdge(dut.clk)

        # Change i_Rx_Serial value to 0 which is signalizing the start of sending data
        dut.i_Rx_Serial.value = 0 # Start bit = 0

        # Wait for half of the clock_per_bit so that you get the value of i_Rx_Serial in the middle of the interval
        # + 2 is added because i_Rx_Data is delayed by 2 clock cycles
        clocks_per_bit_half = int((clocks_per_bit-1)//2)
        cocotb.log.info(f"[Waiting] Waiting for {clocks_per_bit_half + 2} clock cycles and checking if the start bit is really 0")
        for _ in range(clocks_per_bit_half + 2): 
            await RisingEdge(dut.clk)

        if(dut.r_SM_Main == 2):
            cocotb.log.info(f"[Next Stage] The start bit is 0, so we are receiving a byte of data")
        else:
            cocotb.log.info("[Previous Stage] The start bit is not 0, so we are returning to the previous stage and waiting for the start bit again")

        # Receiving 8 bits of data
        receiving_data = 0 # Used for checking the output
        data_list = []

        for i in range(8):
            # Generating random i_Rx_Serial data
            random_data = random.randint(0, 1)
            data_list.append(random_data)
            dut.i_Rx_Serial.value = random_data
            receiving_data += random_data * (2 ** i)

            for j in range(clocks_per_bit-1 + 2):
                await RisingEdge(dut.clk)

        dut.i_Rx_Serial.value = 1 # Stop bit = 1
        while dut.o_Rx_DV.value == 0:
            await RisingEdge(dut.clk)

        await RisingEdge(dut.clk)
        actual_output = dut.o_Rx_Byte.value.integer

        result = '✓' if actual_output == receiving_data else '✗'

        table_data = [
            ["Variable", "Expected", "Actual", "Correct"],
            ["Data list", str(data_list) + " (LSB -> MSB)", "-", "-"],
            ["o_Rx_Byte", receiving_data, actual_output, result]
        ]
        cocotb.log.info("\n" + format_table(f"Checking Table Iteration {iteration + 1}", table_data))

        assert actual_output == receiving_data, f"Assertion failed: Data list = {data_list} (LSB -> MSB), expected {receiving_data}, got {actual_output}"
        cocotb.log.info("[Check] Assertion passed for current input set")
        assertions_passed += 1

    # Summary Table
    summary_table = [
        ["Metric", "Value"],
        ["Clock frequency (MHz)", f"{1/clock_value * 1000}"],
        ["Runtime of simulation (ns)", f"{number_of_iterations * clock_value * (clocks_per_bit * 10)}"],
        ["Total number of assertions passed", f"{assertions_passed}"]
    ]
    cocotb.log.info("\n" + format_table("Summary", summary_table))

    cocotb.log.info("[Summary] All values matched expected results")

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26: initial creation   
 2024/7/6 : Added detailed comments and logging
 2024/8/5 : Added formatted tables for monitoring and checking with titles and outlines
 2024/8/5 : Added iteration count from environment variables
 2024/8/5 : Added summary table at the end
"""
