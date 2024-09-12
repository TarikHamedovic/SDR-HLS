"""
-----------------------------------------------------------------------------
HLS Implementation for Uart Reciever
Based on Nandland's UART Module: http://www.nandland.com
-----------------------------------------------------------------------------
"""

from amaranth import *
from amaranth.sim import *
from amaranth.back import verilog

import argparse
import subprocess
import importlib
import os
import shutil

import random

top_name = "uart_rx"

class UartRX(Elaboratable):
    def __init__(self, CLKS_PER_BIT=217):
        # Parameters
        self.CLKS_PER_BIT = CLKS_PER_BIT
        # Inputs
        self.i_Rx_Serial = Signal()
        # Outputs
        self.o_Rx_DV = Signal()
        self.o_Rx_Byte = Signal(8)

    def elaborate(self, platform):

        m = Module()

        s_IDLE = Const(0, 3)
        s_RX_START_BIT = Const(1, 3)
        s_RX_DATA_BITS = Const(2, 3)
        s_RX_STOP_BIT = Const(3, 3)
        s_CLEANUP = Const(4, 3)

        r_Rx_Data_R = Signal(1, init=1)
        r_Rx_Data = Signal(1, init=1)
        UartClk = Signal(8, init=0)

        r_Clock_Count = Signal(16, init=0)
        r_Bit_Index = Signal(3, init=0)  # 8 bits total
        r_Rx_Byte = Signal(8, init=0)
        r_Rx_DV = Signal(1, init=0)
        r_SM_Main = Signal(3, init=0)
        r_Rx_DV_last = Signal()

        m.d.sync += [
            UartClk.eq(UartClk + 1),
            self.o_Rx_DV.eq(r_Rx_DV & ~r_Rx_DV_last),  # Check this
            r_Rx_DV_last.eq(r_Rx_DV),
        ]

        # Purpose: Double-register the incoming data.
        # This allows it to be used in the UART RX Clock Domain.
        # (It removes problems caused by metastability)

        # Add the UartClk domain
        m.d.sync += [
            r_Rx_Data_R.eq(self.i_Rx_Serial), 
            r_Rx_Data.eq(r_Rx_Data_R)
        ]

        # Purpose: Control RX state machine

        with m.Switch(r_SM_Main):
            with m.Case(s_IDLE):
                m.d.sync += [
                    r_Rx_DV.eq(0), 
                    r_Clock_Count.eq(0), 
                    r_Bit_Index.eq(0)
                ]

                with m.If(r_Rx_Data == 0):  # Start bit detected
                    m.d.sync += r_SM_Main.eq(s_RX_START_BIT)
                with m.Else():
                    m.d.sync += r_SM_Main.eq(s_IDLE)

            # Check middle of start bit to make sure it's still low
            with m.Case(s_RX_START_BIT):
                with m.If(r_Clock_Count == Const((self.CLKS_PER_BIT - 1) // 2)):
                    with m.If(r_Rx_Data == 0):
                        m.d.sync += [
                            r_Clock_Count.eq(0), 
                            r_SM_Main.eq(s_RX_DATA_BITS)
                        ]
                    with m.Else():
                        m.d.sync += r_SM_Main.eq(s_IDLE)
                with m.Else():
                    m.d.sync += [
                        r_Clock_Count.eq(r_Clock_Count + 1),
                        r_SM_Main.eq(s_RX_START_BIT),
                    ]
            # Wait CLKS_PER_BIT-1 clock cycles to sample serial data
            with m.Case(s_RX_DATA_BITS):
                with m.If(r_Clock_Count < Const(self.CLKS_PER_BIT - 1)):
                    m.d.sync += [
                        r_Clock_Count.eq(r_Clock_Count + 1),
                        r_SM_Main.eq(s_RX_DATA_BITS),
                    ]
                with m.Else():
                    m.d.sync += [
                        r_Clock_Count.eq(0),
                        r_Rx_Byte.bit_select(r_Bit_Index, 1).eq(r_Rx_Data), #Check this
                    ]
                    with m.If(r_Bit_Index < Const(7)):
                        m.d.sync += [
                            r_Bit_Index.eq(r_Bit_Index + 1),
                            r_SM_Main.eq(s_RX_DATA_BITS),
                        ]
                    with m.Else():
                        m.d.sync += [r_Bit_Index.eq(0), r_SM_Main.eq(s_RX_STOP_BIT)]

            # Receive Stop bit.  Stop bit = 1
            with m.Case(s_RX_STOP_BIT):
                # Wait CLKS_PER_BIT-1 clock cycles for Stop bit to finish
                with m.If(r_Clock_Count < Const(self.CLKS_PER_BIT - 1)):
                    m.d.sync += [
                        r_Clock_Count.eq(r_Clock_Count + 1),
                        r_SM_Main.eq(s_RX_STOP_BIT),
                    ]
                with m.Else():
                    m.d.sync += [
                        r_Rx_DV.eq(1),
                        self.o_Rx_Byte.eq(r_Rx_Byte),
                        r_Clock_Count.eq(0),
                        r_SM_Main.eq(s_CLEANUP),
                    ]
            # Stay here 1 clock
            with m.Case(s_CLEANUP):
                m.d.sync += [r_SM_Main.eq(s_IDLE), r_Rx_DV.eq(0)]
            
            with m.Default():
                m.d.sync += r_SM_Main.eq(s_IDLE)

            return m

def clean():
    """Remove generated files and directories."""
    files_to_remove = [f"{top_name}.vcd", f"{top_name}.gtkw", f"{top_name}.v"]
    build_dir = "build"

    for file in files_to_remove:
        try:
            os.remove(file)
            print(f"Removed {file}")
        except FileNotFoundError:
            print(f"{file} not found, skipping")

    if os.path.isdir(build_dir):
        try:
            shutil.rmtree(build_dir)
            print(f"Removed {build_dir} directory")
        except OSError as e:
            print(f"Error removing {build_dir}: {e}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "-cpb",
        "--clks-per-bit",
        type=int,
        default= 217,
        help="Clocks per bit",
    )
    parser.add_argument(
        "-cf",
        "--clock-frequency",
        type=float,
        default=1.0,
        help="Clock frequency in MHz for simulation",
    )

    parser.add_argument(
        "-s", "--simulate", action="store_true", help="Simulate Blinky Example"
    )
    parser.add_argument(
        "-gw", "--gtkwave", action="store_true", help="Open GTKWave after simulation"
    )
    parser.add_argument(
        "-b", "--build", action="store_true", help="Build The Blinky Example"
    )
    parser.add_argument(
        "-dp",
        "--do-program",
        action="store_true",
        help="Program the device after building",
    )
    parser.add_argument(
        "-v",
        "--verilog",
        action="store_true",
        help="Generate Verilog for Blinky Example",
    )
    parser.add_argument(
        "-p",
        "--platform",
        type=str,
        required=False,
        help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)",
    )
    parser.add_argument(
        "-rt",
        "--runtime",
        type=int,
        default=10,
        help="Testbench runtime in clock cycles",
    )
    parser.add_argument(
        "-c",
        "--clean",
        action="store_true",
        help="Clean generated files and build directory",
    )

    args = parser.parse_args()

    if args.clean:
        clean()

    else:
        clks_per_bit = args.clks_per_bit if args.clks_per_bit is not None else 217
        clock_frequency = (
            args.clock_frequency if args.clock_frequency is not None else 1.0
        )
        runtime = args.runtime if args.runtime is not None else 10
        do_program = args.do_program

        if args.simulate:

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

            async def testbench(ctx):

                print(f"[Test Start] Starting Amaranth Uart simulation with clock frequency of {clock_frequency} MHz)")
                assertions_passed = 0
                for iteration in range(runtime):                
                    ctx.set(dut.i_Rx_Serial, 1)
                    init_cycles = 3
                    print(f"[Waiting] Keep i_Rx_Serial value at 1 for {init_cycles} clock cycles")
                    await ctx.tick().repeat(init_cycles)
                    
                    # Change i_Rx_Serial value to 0 which is signalizing the start of sending data
                    ctx.set(dut.i_Rx_Serial, 0) # Start bit = 0

                    # Wait for half of the clock_per_bit so that you get the value of i_Rx_Serial in the middle of the interval
                    # + 2 is added because i_Rx_Data is delayed by 2 clock cycles
                    clock_per_bit_half = int((clks_per_bit-1)//2)
                    print(f"[Waiting] Waiting for {clock_per_bit_half + 2} clock cycles")
                    await ctx.tick().repeat(clock_per_bit_half + 2)

                    # Receiving 8 bits of data
                    receiving_data = 0 # Used for checking the output
                    data_list = []
                    print(f"[Recieving] Recieving data")

                    for i in range(8):
                        # Generating random i_Rx_Serial data
                        random_data = random.randint(0, 1)
                        data_list.append(random_data)
                        ctx.set(dut.i_Rx_Serial, random_data)
                        receiving_data += random_data * (2 ** i)
                        await ctx.tick().repeat(clks_per_bit-1 + 2)

                    ctx.set(dut.i_Rx_Serial, 1) # Stop bit = 1
                    while ctx.get(dut.o_Rx_DV) == 0:
                        await ctx.tick()
                    print(f"[Recieved] Recieved Data")

                    await ctx.tick()
                    actual_output = ctx.get(dut.o_Rx_Byte)

                    result = '✓' if actual_output == receiving_data else '✗'

                    table_data = [
                        ["Variable", "Expected", "Actual", "Correct"],
                        ["Data list", str(data_list) + " (LSB -> MSB)", "-", "-"],
                        ["o_Rx_Byte", receiving_data, actual_output, result]
                    ]
                    print("\n" + format_table(f"Checking Table Iteration {iteration + 1}", table_data))

                    assert actual_output == receiving_data, f"Assertion failed: Data list = {data_list} (LSB -> MSB), expected {receiving_data}, got {actual_output}"
                    print("[Check] Assertion passed for current input set")
                    assertions_passed += 1

                # Summary Table
                summary_table = [
                    ["Metric", "Value"],
                    ["Clock frequency (MHz)", f"{clock_frequency}"],
                    ["Total number of iterations (ns)", f"{runtime}"],
                    ["Total number of assertions passed", f"{assertions_passed}"]
                ]
                print("\n" + format_table("Summary", summary_table))

                print("[Summary] All values matched expected results")


                    

            dut = UartRX(clks_per_bit)

            # Create a simulator
            sim = Simulator(dut)
            sim.add_clock(1e-6 / clock_frequency)
            sim.add_testbench(testbench)
            with sim.write_vcd(f"{top_name}.vcd", f"{top_name}.gtkw", traces=[]):
                sim.run()
            # Open GTKWave with the generated VCD file if --gtkwave is set
            if args.gtkwave:
                subprocess.run(["gtkwave", f"{top_name}.vcd"])

        elif args.build:
            if args.platform is None:
                raise ValueError("Platform must be specified for building")
            platform_module_name, platform_class_name = args.platform.rsplit(".", 1)
            platform_module = importlib.import_module(platform_module_name)
            platform_class = getattr(platform_module, platform_class_name)

            plat = platform_class()
            plat.build(UartRX(clks_per_bit), do_program=do_program)

        elif args.verilog:
            # Generate Verilog code
            top = UartRX(clks_per_bit)
            ports = [top.i_Rx_Serial, top.o_Rx_Byte, top.o_Rx_DV]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, name = "uart_rx", ports=ports))

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/7/10 TH: Initial Creation   
"""


