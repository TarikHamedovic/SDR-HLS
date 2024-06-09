#!/usr/bin/env python3

from amaranth import *
from amaranth.sim import *
from amaranth.back import verilog

import argparse
import subprocess
import importlib
import os
import shutil

top_name = "Mixer"

class Mixer(Elaboratable):

    def __init__(self):
        # Define the module's ports

        # Inputs
        self.clk         = Signal() # Clock signal
        self.RFIn        = Signal() # RF input signal
        self.sin_in      = Signal(signed(12)) # Sine input
        self.cos_in      = Signal(signed(12)) # Cosine input

        # Outputs
        self.RFOut       = Signal()
        self.MixerOutSin = Signal(signed(12))
        self.MixerOutCos = Signal(signed(12))

        # Internal Registers
        self.RFInR1 = Signal(reset=1)
        self.RFInR  = Signal(reset=1)

    
    def elaborate(self, platform):

        m = Module()

        m.d.sync += [
            self.RFInR1.eq(self.RFIn),
            self.RFInR.eq (self.RFInR1)
        ]

        m.d.comb += self.RFOut.eq(self.RFInR1)
        
        with m.If(self.RFInR == 0):
            m.d.sync += [
                self.MixerOutSin.eq(self.sin_in),
                self.MixerOutCos.eq(self.cos_in) 
            ]
        with m.Else():
            m.d.sync += [
                self.MixerOutSin.eq(-self.sin_in),
                self.MixerOutCos.eq(-self.cos_in)
            ]
        return m

def clean():
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
    parser.add_argument("-s", "--simulate", action="store_true", help="Simulate Blinky Example")
    parser.add_argument("-b", "--build", action="store_true", help="Build The Blinky Example")
    parser.add_argument("-v", "--verilog", action="store_true", help="Generate Verilog for Blinky Example")
    parser.add_argument("-cf", "--clock-frequency", type=float, default=1.0, help="Clock frequency in MHz")
    parser.add_argument("-p", "--platform", type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime", type=int, default=30000, help="Testbench runtime in clock cycles")
    parser.add_argument("-c", "--clean", action="store_true", help="Clean generated files and build directory")
    parser.add_argument("-dp", "--do-program", action="store_true", help="Program the device after building")
    parser.add_argument("-gw", "--gtkwave", action="store_true", help="Open GTKWave after simulation")

    args = parser.parse_args()

    if args.clean:
        clean()

    else:

        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 1.0
        runtime = args.runtime if args.runtime is not None else 10000
        do_program = args.do_program

        if args.simulate:

            def testbench():
                for _ in range(10):  # Simulate for 10 clock cycles
                    yield Tick()

                # Test the RFIn functionality
                yield dut.sin_in.eq(2048)
                yield dut.cos_in.eq(1024)
                yield dut.RFIn.eq(1)
                yield Tick()
                print("MixerOutSin:", (yield dut.MixerOutSin))
                print("MixerOutCos:", (yield dut.MixerOutCos))

                yield dut.RFIn.eq(0)
                yield Tick()
                print("MixerOutSin:", (yield dut.MixerOutSin))
                print("MixerOutCos:", (yield dut.MixerOutCos))

            # Instantiate the Blinky module
            dut = Mixer()

            # Create a simulator
            sim = Simulator(dut)
            sim.add_clock(1e-6 / clock_frequency)
            sim.add_process(testbench)
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
            plat.build(Mixer(), do_program=do_program)

        elif args.verilog:
            top = Mixer()
            ports = [top.clk, top.RFIn, top.sin_in, top.cos_in, top.RFOut, top.MixerOutSin, top.MixerOutCos]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, ports=ports))
