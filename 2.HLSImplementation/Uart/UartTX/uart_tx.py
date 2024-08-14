"""
-----------------------------------------------------------------------------
HLS Implementation for Uart Transmitter
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

top_name = "uart_tx"

class uart_tx(Elaboratable):
    def __init__(self, CLKS_PER_BIT=217):
        # Parameters
        self.CLKS_PER_BIT = CLKS_PER_BIT
        # Inputs
        self.i_Tx_DV = Signal()
        self.i_Tx_Byte = Signal(8)
        # Outputs
        self.o_Tx_Active = Signal()
        self.o_Tx_Serial = Signal()
        self.o_Tx_Done = Signal()

    def elaborate(self, platform):

        m = Module()

        s_IDLE = Const(0, 3)
        s_TX_START_BIT = Const(1, 3)
        s_TX_DATA_BITS = Const(2, 3)
        s_TX_STOP_BIT = Const(3, 3)
        s_CLEANUP = Const(4, 3)

        r_SM_Main = Signal(3, init=0)
        r_Clock_Count = Signal(16, init=0)
        r_Bit_Index = Signal(3, init=0)  # 8 bits total
        r_Tx_Data = Signal(8, init=0)
        r_Tx_Done = Signal(1, init=0)
        r_Tx_Active = Signal(1, init=0)
        UartClk = Signal(8, init=0)

        m.d.sync += UartClk.eq(UartClk + 1)

        # Purpose: Double-register the incoming data.
        # This allows it to be used in the UART RX Clock Domain.
        # (It removes problems caused by metastability)

        with m.Switch(r_SM_Main):
            with m.Case(s_IDLE):
                m.d.sync += [
                    self.o_Tx_Serial.eq(1),
                    r_Tx_Done.eq(0),
                    r_Clock_Count.eq(0),
                    r_Bit_Index.eq(0),
                ]
                with m.If(self.i_Tx_DV == 1):
                    m.d.sync += [
                        r_Tx_Active.eq(1),
                        r_Tx_Data.eq(self.i_Tx_Byte),
                        r_SM_Main.eq(s_TX_START_BIT),
                    ]
                with m.Else():
                    m.d.sync += r_SM_Main.eq(s_IDLE)

            with m.Case(s_TX_START_BIT):
                m.d.sync += self.o_Tx_Serial.eq(0)

                # WAIT CLKS_PER_BIT-1 clock cylces for start bit to finish
                with m.If(r_Clock_Count < Const(self.CLKS_PER_BIT - 1)):
                    m.d.sync += [
                        r_Clock_Count.eq(r_Clock_Count + 1),
                        r_SM_Main.eq(s_TX_START_BIT),
                    ]
                with m.Else():
                    m.d.sync += [r_Clock_Count.eq(0), r_SM_Main.eq(s_TX_DATA_BITS)]

            # Wait CLKS_PER_BIT-1 clock cycles for data bits to finish
            with m.Case(s_TX_DATA_BITS):
                m.d.sync += self.o_Tx_Serial.eq(r_Tx_Data.bit_select(r_Bit_Index, 1))

                with m.If(r_Clock_Count < Const(self.CLKS_PER_BIT - 1)):
                    m.d.sync += [
                        r_Clock_Count.eq(r_Clock_Count + 1),
                        r_SM_Main.eq(s_TX_DATA_BITS),
                    ]
                with m.Else():
                    m.d.sync += r_Clock_Count.eq(0)
                    # Check if we have sent out all bits

                    with m.If(r_Bit_Index < Const(7)):
                        m.d.sync += [
                            r_Bit_Index.eq(r_Bit_Index + 1),
                            r_SM_Main.eq(s_TX_DATA_BITS),
                        ]
                    with m.Else():
                        m.d.sync += [r_Bit_Index.eq(0), r_SM_Main.eq(s_TX_STOP_BIT)]
            # Send out Stop bit.  Stop bit = 1
            with m.Case(s_TX_STOP_BIT):
                m.d.sync += self.o_Tx_Serial.eq(1)

                # Wait CLKS_PER_BIT-1 clock cycles for Stop bit to finish
                with m.If(r_Clock_Count < Const(self.CLKS_PER_BIT - 1)):
                    m.d.sync += [
                        r_Clock_Count.eq(r_Clock_Count + 1),
                        r_SM_Main.eq(s_TX_STOP_BIT),
                    ]
                with m.Else():
                    m.d.sync += [
                        r_Tx_Done.eq(1),
                        r_Clock_Count.eq(0),
                        r_SM_Main.eq(s_CLEANUP),
                        r_Tx_Active.eq(0),
                    ]

            # Stay here 1 clock
            with m.Case(s_CLEANUP):
                m.d.sync += [r_Tx_Done.eq(1), r_SM_Main.eq(s_IDLE)]

            with m.Default():
                m.d.sync += [r_SM_Main.eq(s_IDLE)]

        m.d.comb += [self.o_Tx_Active.eq(r_Tx_Active), self.o_Tx_Done.eq(r_Tx_Done)]

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
        default=217,
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

            async def testbench(ctx):

                N = ctx.get(dut.N)

                print("Test: Starting Uarttx Amaranth Simulation")

            dut = uart_tx(clks_per_bit)

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
            plat.build(uart_tx(clks_per_bit), do_program=do_program)

        elif args.verilog:
            # Generate Verilog code
            top = uart_tx(clks_per_bit)
            ports = [top.i_Tx_Byte, top.i_Tx_DV, top.o_Tx_Serial, top.o_Tx_Done, top.o_Tx_Active]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, ports=ports))

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/7/10 TH: Initial Creation   
"""
