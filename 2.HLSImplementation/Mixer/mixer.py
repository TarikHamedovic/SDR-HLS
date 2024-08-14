#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
Amaranth Implementation for Mixer module
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


top_name = "Mixer"

class Mixer(Elaboratable): 

    def __init__(self, INPUT_BITS=12):
        # Define the module's ports

        # Parameters 
        self.INPUT_BITS = INPUT_BITS

        # Inputs
        self.rf_in = Signal()  # RF input signal
        self.sinewave_in = Signal(signed(self.INPUT_BITS))  # Sine input
        self.cosinewave_in = Signal(signed(self.INPUT_BITS))  # Cosine input

        # Outputs
        self.rf_out = Signal()
        self.sinewave_out = Signal(signed(self.INPUT_BITS))
        self.cosinewave_out = Signal(signed(self.INPUT_BITS))

        # Internal Registers # TODO: Check if this needs to be here or in elaborate function?
        self.rf_in_delayed_1 = Signal(reset=1)  # TODO: Check reset?
        self.rf_in_delayed_2 = Signal(reset=1)
    
    def elaborate(self, platform):

        m = Module()

        m.d.sync += [
            self.rf_in_delayed_1.eq(self.rf_in),
            self.rf_in_delayed_2.eq(self.rf_in_delayed_1)
        ]

        m.d.comb += self.rf_out.eq(self.rf_in_delayed_1)
        
        with m.If(self.rf_in_delayed_2 == 0):
            m.d.sync += [
                self.sinewave_out.eq(self.sinewave_in),
                self.cosinewave_out.eq(self.cosinewave_in)
            ]
        with m.Else():
            m.d.sync += [
                self.sinewave_out.eq(-self.sinewave_in),
                self.cosinewave_out.eq(-self.cosinewave_in)
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
    parser.add_argument("-ib", "--input-bits", type=int, default=12, help="Number of input bits")
    parser.add_argument("-s",  "--simulate", action="store_true", help="Simulate Blinky Example")
    parser.add_argument("-gw", "--gtkwave", action="store_true", help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency", type=float, default=1.0, help="Clock frequency in MHz for simulation")
    parser.add_argument("-b",  "--build", action="store_true", help="Build The Blinky Example")
    parser.add_argument("-dp", "--do-program", action="store_true", help="Program the device after building")
    parser.add_argument("-v",  "--verilog", action="store_true", help="Generate Verilog for Blinky Example")
    parser.add_argument("-p",  "--platform", type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime", type=int, default=100, help="Testbench runtime in clock cycles")
    parser.add_argument("-c",  "--clean", action="store_true", help="Clean generated files and build directory")

    args = parser.parse_args()

    if args.clean:
        clean()

    else:
        input_bits = args.input_bits if args.input_bits is not None else 12
        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 1.0
        runtime = args.runtime if args.runtime is not None else 100
        do_program = args.do_program

        if args.simulate:

            def testbench():

                print(f"Test: Starting Mixer Amaranth Simulation with clock frequency of {clock_frequency} MHz")

                print("Test: Initializing inputs to 0, and rf_in to 0")

                yield dut.sinewave_in.eq(0)
                yield dut.cosinewave_in.eq(0)
                yield dut.rf_in.eq(0)

                print("------ Waiting 3 cycles so all inputs are defined ------")

                for _ in range(3):  # TODO: Write function?
                    yield Tick()

                assertions_passed = 0
                
                for _ in range(runtime):

                    print("Test: Generating random inputs...")
                    # Generate random inputs # 
                    sinewave_random_value = random.randint(-(2 ** (input_bits - 1)), 2 ** (input_bits - 1) - 1)
                    cosinewave_random_value = random.randint(-(2 ** (input_bits - 1)), 2 ** (input_bits - 1) - 1)
                    rf_in_random_value = random.randint(0, 1)

                    # Loading values into DUT #
                    yield dut.sinewave_in.eq(sinewave_random_value)
                    yield dut.cosinewave_in.eq(cosinewave_random_value)
                    yield dut.rf_in.eq(rf_in_random_value)

                    print("Test: Applying random inputs...")
                    yield Tick()
                    print("------ Loaded Values ------")
                    
                    print("------ Waiting 1 Clock Cycle ------")
                    yield Tick()

                    rf_in_delayed_2_value = (yield dut.rf_in_delayed_2)
                    expected_sinewave = sinewave_random_value if rf_in_delayed_2_value == 0 else -sinewave_random_value
                    expected_cosinewave = cosinewave_random_value if rf_in_delayed_2_value == 0 else -cosinewave_random_value

                    actual_sinewave = yield dut.sinewave_out
                    actual_cosinewave = yield dut.cosinewave_out

                    print(f"Check: expected_sinewave={expected_sinewave}")
                    print(f"Check: expected_cosinewave={expected_cosinewave}")
                    print(f"Check: sinewave_out={actual_sinewave}")
                    print(f"Check: cosinewave_out={actual_cosinewave}")
                    
                
                    try:
                        assert actual_sinewave == expected_sinewave, f"Error: sinewave_out={actual_sinewave} does not match expected={expected_sinewave}"
                        assert actual_cosinewave == expected_cosinewave, f"Error: cosinewave_out={actual_cosinewave} does not match expected={expected_cosinewave}"

                        print(f"Check: sinewave_out == expected_sinewave = {actual_sinewave}")
                        print(f"Check: cosinewave_out == expected_cosinewave = {actual_cosinewave}")
                        print("------ Assertions passed for this set of inputs ------ ")
                        assertions_passed += 2  # Counting both sinewave and cosinewave assertions
                    except AssertionError as e:
                        print(e)
                print(f"----Summary of {top_name} module ----")
                print(f"Summary: Clock frequency of simulation: {clock_frequency} MHz")
                print(f"Summary: Input bit width: {input_bits}")
                print(f"Summary: Total number of assertions passed: {assertions_passed}")
                print(f"Summary: Runtime of simulation in checks: {runtime}")

            # Instantiate the Mixer module
            dut = Mixer(input_bits)

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
            plat.build(Mixer(input_bits), do_program=do_program)

        elif args.verilog:
            top = Mixer(input_bits)
            ports = [top.rf_in, top.sinewave_in, top.cosinewave_in, top.rf_out, top.sinewave_out, top.cosinewave_out]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, ports=ports))  # Append simulation-only lines to the Verilog file

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/20 TH: Initial Creation   
 2024/6/9 TH: Added ArgumentParsers and cleaned up the module
"""
