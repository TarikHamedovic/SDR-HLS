#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
Amaranth Implementation for sine generator using LUT
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

top_name = "sine_generator_lut"

def phase_increment_generator(clock_frequency, desired_frequency, phase_bits):
    # Calculate phase increment and ensure it fits within the phase_bits range
    phase_increment = (desired_frequency / clock_frequency) * 2**phase_bits
    max_phase_increment = 2**phase_bits - 1
    clamped_phase_increment = min(phase_increment, max_phase_increment)
    print(f"Calculated phase increment: {phase_increment}, Clamped phase increment: {clamped_phase_increment}")
    return int(clamped_phase_increment)


def sine_table_generator(lgtable, ow, pb):
    tbl_entries = (1 << lgtable)
    maxv = (1 << (ow - 1)) - 1

    dv_values = []

    for k in range(tbl_entries):
        ph = 2.0 * np.pi * k / tbl_entries
        ph += np.pi / tbl_entries

        dv = int(maxv * np.sin(ph)) & ((1 << ow) - 1)
        dv_values.append(dv)

    return dv_values

class sine_generator_lut(Elaboratable):
    def __init__(self, SB=12, LB=8, PB=64):
        # Define the module's ports

        # Parameters
        # SB -> Sine Bits , LB -> LUT Bits, PB -> Phase Bits
        self.SB = SB
        self.LB = LB
        self.PB = PB

        # Inputs
        self.rst = Signal()
        self.sample_clock_ce = Signal()
        self.phase_inc_carrGen = Signal(signed(PB))

        # Outputs
        self.sinewave = Signal(signed(SB))

    def elaborate(self, platform):
        m = Module()

        # Internal registers 
        phase = Signal(self.PB)

        # TODO: Use ResetInserter instead of rst signal
        with m.If(self.rst):
            m.d.sync += phase.eq(0)
        # Clock Enable signal
        with m.Elif(self.sample_clock_ce):
            m.d.sync += phase.eq(phase + self.phase_inc_carrGen)

        sinewave_lut = sine_table_generator(self.LB, self.SB, self.PB)
        # Initializing memory
        m.submodules.memory = memory = Memory(shape=self.SB, depth=2**self.LB, init=sinewave_lut)
        rd_port = memory.read_port()

        m.d.comb += rd_port.addr.eq(phase[self.PB-self.LB:])
        m.d.comb += self.sinewave.eq(rd_port.data)

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
    parser.add_argument("-sb", "--sine-bits", type=int, default=12, help="Number of sinewave bits")
    parser.add_argument("-lb", "--lut-bits", type=int, default=8, help="Number of lookup table bits")
    parser.add_argument("-pb", "--phase-bits", type=int, default=64, help="Number of phase bits")
    parser.add_argument("-df", "--desired-frequency", type=float, default=1.25, help="Desired frequency of generated sinewave in MHz")
    parser.add_argument("-s",  "--simulate", action="store_true", help="Simulate Blinky Example")
    parser.add_argument("-gw", "--gtkwave", action="store_true", help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency", type=float, default=80.0, help="Clock frequency in MHz for simulation")
    parser.add_argument("-b",  "--build", action="store_true", help="Build The Program")
    parser.add_argument("-dp", "--do-program", action="store_true", help="Program the device after building")
    parser.add_argument("-v",  "--verilog", action="store_true", help="Generate Verilog for sine_generator_lut")
    parser.add_argument("-p",  "--platform", type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime", type=int, default=1000, help="Testbench runtime in clock cycles")
    parser.add_argument("-c",  "--clean", action="store_true", help="Clean generated files and build directory")
    parser.add_argument("-pt",  "--plot", action="store_true", help="Plot the generated wave using matplotlib")

    args = parser.parse_args()


    if args.clean:
        clean()
    
    else:

        sine_bits = args.sine_bits if args.sine_bits is not None else 12
        lut_bits = args.lut_bits if args.lut_bits is not None else 8
        phase_bits = args.phase_bits if args.phase_bits is not None else 64
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

        sinewave_values = sine_table_generator(lut_bits, sine_bits, phase_bits)
        signed_sinewave_values = convert_to_signed(sinewave_values, sine_bits)
        plt.figure()
        plt.plot(signed_sinewave_values)
        plt.title("Generated Sine Wave")
        plt.xlabel("Sample")
        plt.ylabel("Amplitude")
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
            #ctx.set(dut.phase_inc_carrGen, phase_increment_generator(desired_frequency, clock_frequency/1e-6, phase_bits))
            ctx.set(dut.phase_inc_carrGen, 288230376151711744) # 1.25 MHz # TODO: Figure out how to limit the output of the phase_increment_generator function because it is too large for Amaranth to use
            for _ in range(runtime):
                await ctx.tick()

        # Instantiate the sine_generator_lut module
        dut = sine_generator_lut(sine_bits, lut_bits, phase_bits)

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
        platform_class = getattr(platform_module, platform_class_name)

        plat = platform_class()
        plat.build(sine_generator_lut(sine_bits, lut_bits, phase_bits), do_program=do_program)
    elif args.verilog: 
        top = sine_generator_lut(sine_bits, lut_bits, phase_bits)
        ports = [top.DataIn, top.PWMOut]

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
