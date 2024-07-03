#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
HLS Implementation for square root function 
-----------------------------------------------------------------------------
"""

from amaranth import *
from amaranth.sim import *
from amaranth.back import verilog
from amaranth.lib.memory import Memory

import argparse
import subprocess
import importlib
import os
import shutil

import numpy as np

top_name = "sqrt_int"

class sqrt_int(Elaboratable):

    def __init__(self, width):
        # Define the module's ports

        # Parameter
        self.width = width # width of radicand

        # Inputs
        self.start = Signal() # start signal
        self.busy  = Signal() # calculation in progress
        self.rad   = Signal(width) # radicand

        # Outputs
        self.valid = Signal() # root and rem are valid
        self.root  = Signal(width) # root
        self.rem   = Signal(width) # remainder

        # Internal registers
        self.x        = Signal(width) # radicand copy
        self.q        = Signal(width) # intermediate root (quotient)
        self.ac       = Signal(width + 2) # accumulator (2 bits wider)
        self.test_res = Signal(width + 2) # sign test result (2 bits wider)
        self.i        = Signal(range(width >> 1)) # iterations counter

    def elaborate(self, platform):
        m = Module()
        
        x_next  = Signal(self.width)
        q_next  = Signal(self.width)
        ac_next = Signal(self.width)

        iter_count = self.width >> 1

        m.d.comb += self.test_res.eq(self.ac - Cat(Const(1, 2), self.q))

        with m.If(self.test_res[-1] == 0):
            m.d.comb += [
                Cat(x_next, ac_next).eq(Cat(Const(0, 2), self.x, self.test_res[:-2])),
                q_next.eq(Cat(Const(1, 1), self.q[:-1]))
            ]
        with m.Else():
            m.d.comb += [
                Cat(x_next, ac_next).eq(Cat(Const(0, 2), self.x, self.ac[:-2])),
                q_next.eq(self.q << 1)
            ]
        
        with m.If(self.start):
            m.d.sync += [
                self.busy.eq(1),
                self.valid.eq(0),
                self.i.eq(0),
                self.q.eq(0),
                Cat(self.x, self.ac).eq(Cat(self.rad, Const(0, 2), Const(0, self.width)))
            ]

        with m.Elif(self.busy):
            with m.If(self.i == iter_count - 1):
                m.d.sync += [
                    self.busy.eq(0),
                    self.valid.eq(1),
                    self.root.eq(q_next),
                    self.rem.eq(ac_next[:-2])
                ]
            with m.Else():
                m.d.sync += [
                    self.i.eq(self.i + 1),
                    self.x.eq(x_next),
                    self.ac.eq(ac_next),
                    self.q.eq(q_next)
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
    parser.add_argument("-w", "--width", type=int, default=8, help="Width of radicand")
    parser.add_argument("-s",  "--simulate", action="store_true", help="Simulate the example")
    parser.add_argument("-gw", "--gtkwave", action="store_true", help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency", type=float, default=80.0, help="Clock frequency in MHz for simulation")
    parser.add_argument("-b",  "--build", action="store_true", help="Build the example")
    parser.add_argument("-dp", "--do-program", action="store_true", help="Program the device after building")
    parser.add_argument("-v",  "--verilog", action="store_true", help="Generate Verilog for the example")
    parser.add_argument("-p",  "--platform", type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime", type=int, default=1000, help="Testbench runtime in clock cycles")
    parser.add_argument("-c",  "--clean", action="store_true", help="Clean generated files and build directory")

    args = parser.parse_args()

    if args.clean:
        clean()
    
    else:

        width = args.width if args.width is not None else 8
        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 80.0
        runtime = args.runtime if args.runtime is not None else 1000
        do_program = args.do_program

    # NOTE: Simulation isn't working in Amaranth, but it works in cocoTB
    if args.simulate:

        async def testbench(ctx):

            def print_vars(dut):
                print(f"rad: {ctx.get(dut.rad)}")
                print(f"root: {ctx.get(dut.root)}")
                print(f"rem: {ctx.get(dut.rem)}")
                print(f"x: {ctx.get(dut.x)}")
                print(f"q: {ctx.get(dut.q)}")
                print(f"ac: {ctx.get(dut.ac)}")
                print(f"test_res: {ctx.get(dut.test_res)}")
                print(f"start:{ctx.get(dut.start)}")
                print(f"busy: {ctx.get(dut.busy)}")
                print(f"valid: {ctx.get(dut.valid)}")

            print(f"Test: Starting Square Root Calculator Amaranth Simulation with clock frequency of {clock_frequency} MHz")

            # Initialize inputs and valid signal
            ctx.set(dut.start, 0)
            ctx.set(dut.rad, 0)
            await ctx.tick()
            print_vars(dut)

            # Set radicand to 121 and start the calculation
            ctx.set(dut.rad, 121)
            ctx.set(dut.start, 1)
            await ctx.tick()
            print_vars(dut)

            ctx.set(dut.start, 0)
            # Wait for the calculation to complete
            while ctx.get(dut.valid) == 0:
                await ctx.tick()
                print(f"--i: {ctx.get(dut.i)}")
                print_vars(dut)

            # Check the results
            root = ctx.get(dut.root)
            rem = ctx.get(dut.rem)
            print(f"Result: root = {root}, remainder = {rem}")

        # Instantiate the sqrt_int module
        dut = sqrt_int(width)

        # Create a simulator
        sim = Simulator(dut)
        sim.add_clock(12.5e-9)  # 80 MHz clock period
        sim.add_testbench(testbench)
        with sim.write_vcd(f"{top_name}.vcd", f"{top_name}.gtkw", traces=[dut.start, dut.rad, dut.valid, dut.root, dut.rem]):
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
        plat.build(sqrt_int(width), do_program=do_program)

    elif args.verilog:
        top = sqrt_int(width)
        with open(f"{top_name}.v", "w") as f:
            f.write(verilog.convert(top, ports=[top.start, top.busy, top.rad, top.valid, top.root, top.rem]))


# TODO: The simulation isnt working because in Verilog 'ac' is not defined so it is 'x'
#       while in Amaranth at the beginning it is 0 so that the subtraction happens

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/6/30 TH: Initial Creation   
"""



