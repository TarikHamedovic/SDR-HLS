#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
Amaranth Implementation for sine and cosine generator using LUT
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
import matplotlib.pyplot as plt

top_name = "sine_cosine_generator_lut"

def phase_increment_generator(clock_frequency, desired_frequency, PHASE_WIDTH):
    # Calculate phase increment and ensure it fits within the PHASE_WIDTH range
    phase_increment = (desired_frequency / clock_frequency) * 2**PHASE_WIDTH
    max_phase_increment = 2**PHASE_WIDTH - 1
    clamped_phase_increment = min(phase_increment, max_phase_increment)
    print(f"Calculated phase increment: {phase_increment}, Clamped phase increment: {clamped_phase_increment}")
    return int(clamped_phase_increment)

def sine_table_generator(LUT_WIDTH, SINE_WIDTH, PHASE_WIDTH):
    tbl_entries = (1 << LUT_WIDTH)
    maxv = (1 << (SINE_WIDTH - 1)) - 1

    dv_values = []

    for k in range(tbl_entries):
        ph = 2.0 * np.pi * k / tbl_entries
        ph += np.pi / tbl_entries

        dv = int(maxv * np.sin(ph)) & ((1 << SINE_WIDTH) - 1)
        dv_values.append(dv)

    return dv_values

class SineCosineGeneratorLUT(Elaboratable):
    def __init__(self, SINE_WIDTH=12, LUT_WIDTH=8, PHASE_WIDTH=64):
        # Define the module's ports

        # Parameters
        self.SINE_WIDTH = SINE_WIDTH
        self.LUT_WIDTH = LUT_WIDTH
        self.PHASE_WIDTH = PHASE_WIDTH

        # Inputs
        self.rst = Signal()
        self.sample_clock_ce = Signal()
        self.phase_increment = Signal(signed(PHASE_WIDTH))

        # Outputs
        self.sinewave = Signal(signed(SINE_WIDTH))
        self.cosinewave = Signal(signed(SINE_WIDTH))

    def elaborate(self, platform):
        m = Module()

        # Internal registers 
        phase_accumulator = Signal(self.PHASE_WIDTH)

        # TODO: Use ResetInserter instead of rst signal
        with m.If(self.rst):
            m.d.sync += phase_accumulator.eq(0)
        # Clock Enable signal
        with m.Elif(self.sample_clock_ce):
            m.d.sync += phase_accumulator.eq(phase_accumulator + self.phase_increment)

        sinewave_lut = sine_table_generator(self.LUT_WIDTH, self.SINE_WIDTH, self.PHASE_WIDTH)
        # Initializing memory
        m.submodules.memory = memory = Memory(shape=self.SINE_WIDTH, depth=2**self.LUT_WIDTH, init=sinewave_lut)
        rd_port_sine = memory.read_port()
        rd_port_cosine = memory.read_port()
        
        # Sine wave output
        m.d.comb += rd_port_sine.addr.eq(phase_accumulator[self.PHASE_WIDTH-self.LUT_WIDTH:])
        m.d.comb += self.sinewave.eq(rd_port_sine.data)

        # Cosine wave output
        m.d.comb += rd_port_cosine.addr.eq((phase_accumulator[self.PHASE_WIDTH-self.LUT_WIDTH:] + (1 << (self.LUT_WIDTH-2))) % (1 << self.LUT_WIDTH))
        m.d.comb += self.cosinewave.eq(rd_port_cosine.data)

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
    parser.add_argument("-sw", "--sine-width", type=int, default=12, help="Number of sinewave bits")
    parser.add_argument("-lw", "--lut-width", type=int, default=8, help="Number of lookup table bits")
    parser.add_argument("-pw", "--phase-width", type=int, default=64, help="Number of phase bits")
    parser.add_argument("-df", "--desired-frequency", type=float, default=1.25, help="Desired frequency of generated sinewave in MHz")
    parser.add_argument("-s",  "--simulate", action="store_true", help="Simulate Blinky Example")
    parser.add_argument("-gw", "--gtkwave", action="store_true", help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency", type=float, default=80.0, help="Clock frequency in MHz for simulation")
    parser.add_argument("-b",  "--build", action="store_true", help="Build The Program")
    parser.add_argument("-dp", "--do-program", action="store_true", help="Program the device after building")
    parser.add_argument("-v",  "--verilog", action="store_true", help="Generate Verilog for sine_cosine_generator_lut")
    parser.add_argument("-p",  "--platform", type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime", type=int, default=1000, help="Testbench runtime in clock cycles")
    parser.add_argument("-c",  "--clean", action="store_true", help="Clean generated files and build directory")
    parser.add_argument("-pt",  "--plot", action="store_true", help="Plot the generated wave using matplotlib")

    args = parser.parse_args()


    if args.clean:
        clean()
    
    else:

        SINE_WIDTH = args.sine_width if args.sine_width is not None else 12
        LUT_WIDTH = args.lut_width if args.lut_width is not None else 8
        PHASE_WIDTH = args.phase_width if args.phase_width is not None else 64
        desired_frequency = args.desired_frequency if args.desired_frequency is not None else 1.25
        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 80.0
        runtime = args.runtime if args.runtime is not None else 1000
        do_program = args.do_program

    if args.plot:
        def convert_to_signed(values, bit_width):
            signed_values = []
            for value in values:
                if value >= (1 << (bit_width - 1)):
                    signed_value = value - (1 << bit_width)
                else:
                    signed_value = value
                signed_values.append(signed_value)
            return signed_values

        sinewave_values = sine_table_generator(LUT_WIDTH, SINE_WIDTH, PHASE_WIDTH)
        signed_sinewave_values = convert_to_signed(sinewave_values, SINE_WIDTH)
    
        # Cosine wave values (shifted by 90 degrees)
        cosinewave_values = [sinewave_values[(i + (1 << (LUT_WIDTH-2))) % (1 << LUT_WIDTH)] for i in range(len(sinewave_values))]
        signed_cosinewave_values = convert_to_signed(cosinewave_values, SINE_WIDTH)
        
        plt.figure()
        plt.plot(signed_sinewave_values, label="Sine Wave")
        plt.plot(signed_cosinewave_values, label="Cosine Wave")
        plt.title("Generated Sine and Cosine Waves")
        plt.xlabel("Sample")
        plt.ylabel("Amplitude")
        plt.legend()
        plt.grid(True)
        plt.show()


    if args.simulate:

        async def testbench(ctx):
            print(f"Test: Starting Sinewave LUT Amaranth Simulation with clock frequency of {clock_frequency} MHz")
            # TODO: Write a better simulation

            # Reset Signal as initialization 
            ctx.set (dut.rst, 1)
            await ctx.tick()
            ctx.set (dut.rst, 0)
            await ctx.tick()

            # Clock enable signal High Until the end of the simulation
            ctx.set(dut.sample_clock_ce, 1)
            #ctx.set(dut.phase_increment, phase_increment_generator(desired_frequency, clock_frequency/1e-6, PHASE_WIDTH))
            ctx.set(dut.phase_increment, 288230376151711744) # 1.25 MHz # TODO: Figure out how to limit the output of the phase_increment_generator function because it is too large for Amaranth to use
            for _ in range(runtime):
                await ctx.tick()

        # Instantiate the SineCosineGeneratorLUT module
        dut = SineCosineGeneratorLUT(SINE_WIDTH, LUT_WIDTH, PHASE_WIDTH)

        # Create a simulator
        sim = Simulator(dut)
        sim.add_clock(1/clock_frequency * 1e-6)
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
        platform_class = getattr(platform_module, platform_class)

        plat = platform_class()
        plat.build(SineCosineGeneratorLUT(SINE_WIDTH, LUT_WIDTH, PHASE_WIDTH), do_program=do_program)
    elif args.verilog: 
        top = SineCosineGeneratorLUT(SINE_WIDTH, LUT_WIDTH, PHASE_WIDTH)
        ports = [top.rst, top.sample_clock_ce, top.phase_increment, top.sinewave, top.cosinewave]

        with open(f"{top_name}.v", "w") as f:
            f.write(verilog.convert(top, ports=ports)) # Append simulation-only lines to the Verilog file


"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/20 TH: Initial Creation   
 2024/6/01 TH: Revision 
 2024/6/10 TH: Added ArgumentParsers
"""

