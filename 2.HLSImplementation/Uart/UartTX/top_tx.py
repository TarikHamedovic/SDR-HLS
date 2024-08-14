"""
-----------------------------------------------------------------------------
HLS Implementation for top_tx Module of Uart Reciever-Transmitter
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

from UartTx import uart_tx

top_name = "top_tx"

# TODO: Maybe add parameter baud_rate and with that automatiacally calculate clks per bit?

class Top_Tx(Elaboratable):
    def __init__(self, CLKS_PER_BIT=217):
        # Parameters
        self.CLKS_PER_BIT = CLKS_PER_BIT

        # Outputs
        self.o_Tx_Serial = Signal()
        
        # uart reciever instantation
        self.uart_tx = uart_tx(CLKS_PER_BIT = 217)

    def elaborate(self, platform):

        m = Module()

        # Intermediate signals for UART Tx
        i_Tx_DV = Signal()
        i_Tx_Byte = Signal(8)
        o_Tx_Active = Signal()
        o_Tx_Done = Signal()

        ascii_zero = Signal()

        m.submodules.uart_tx = self.uart_tx
        m.d.comb += [
           self.uart_tx.i_Tx_DV.eq(i_Tx_DV),
           self.uart_tx.i_Tx_Byte.eq(i_Tx_Byte),
           o_Tx_Active.eq(self.uart_tx.o_Tx_Active),
           o_Tx_Done.eq(self.uart_tx.o_Tx_Done)
        ]

        m.d.sync += [
            ascii_zero.eq(48),
            i_Tx_Byte.eq(ascii_zero)
        ]

        with m.If(o_Tx_Done == 0):
            m.d.sync += i_Tx_DV.eq(1) # Start Transmission
        with m.Else():
            m.d.sync += i_Tx_DV.eq(0) # End Transmission          

        # If the platform is not defined then it is simulation
        if platform is not None:

            uart_pins = platform.request("uart", 0)
            m.d.comb += uart_pins.tx.o.eq(self.o_Tx_Serial)

            num_leds = 8
            leds = [platform.request("led", i) for i in range(num_leds)]
            
            for i in range(num_leds):
                m.d.comb += [
                    leds[i].o.eq(i_Tx_Byte[i]),
                ]

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

                print("Test: Starting Uart Top Amaranth Simulation")

            dut = Top_Tx(clks_per_bit)

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
            plat.build(Top_Tx(clks_per_bit), do_program=do_program)

        elif args.verilog:
            # Generate Verilog code
            top = Top_Tx(clks_per_bit)
            ports = [top.o_Tx_Serial]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, name = "top_rx", ports=ports))

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/7/10 TH: Initial Creation   
"""
