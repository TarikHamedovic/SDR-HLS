#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
HLS Implementation for AMDemod.v module
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
import numpy as np

from sqrt_combinatorial import sqrt_combinatorial

top_name = "AMDemod"

class AMDemod(Elaboratable):

    def __init__(self, WIDTH=12):
        # Define the module's ports

        # Parameters 
        self.WIDTH = WIDTH
        
        # Inputs 
        self.I_in = Signal(signed(WIDTH))
        self.Q_in = Signal(signed(WIDTH))
        
        # Outputs 
        self.d_out = Signal(signed(2 * WIDTH + 1))

    def elaborate(self, platform):

        m = Module()

        WIDTH = self.WIDTH

        # Initialization of square root module
        # NOTE: The parameter N MUST be even!
        # TODO: Maybe add a test for that
        m.submodules.sqrt = sqrt_combinatorial(2 * WIDTH + 2)

        # Internal Registers

        MultDataA = Signal(signed(WIDTH))
        MultDataB = Signal(signed(WIDTH))
        MultResult1 = Signal(signed(2 * WIDTH))

        MultDataC = Signal(signed(WIDTH))
        MultDataD = Signal(signed(WIDTH))
        MultResult2 = Signal(signed(2 * WIDTH))

        SquareSum = Signal(signed(2 * WIDTH + 1))
        d_out_d = Signal(WIDTH)

        m.d.sync += [
            MultDataA.eq(self.I_in),
            MultDataB.eq(self.I_in),
            MultDataC.eq(self.Q_in),
            MultDataD.eq(self.Q_in),
            MultResult1.eq(MultDataA * MultDataB),
            MultResult2.eq(MultDataC * MultDataD),
            SquareSum.eq(MultResult1 + MultResult2)        
        ]

        m.d.comb += [
            m.submodules.sqrt.num.eq(SquareSum),
            d_out_d.eq(m.submodules.sqrt.result)
        ]

        m.d.sync += self.d_out.eq(d_out_d)
        
        return m


def clean():
    files_to_remove = [f"{top_name}.vcd", f"{top_name}.gtkw", f"{top_name}.v"]
    directories_to_remove = ["build", "__pycache__"]

    for file in files_to_remove:
        try:
            os.remove(file)
            print(f"Removed {file}")
        except FileNotFoundError:
            print(f"{file} not found, skipping")

    for directory in directories_to_remove:
        if os.path.isdir(directory):
            try:
                shutil.rmtree(directory)
                print(f"Removed {directory} directory")
            except OSError as e:
                print(f"Error removing {directory}: {e}")


if __name__ == "__main__":
    
    parser = argparse.ArgumentParser()
    parser.add_argument("-w", "--width", type=int, default=12, help="Number of input bits")
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
        width = args.width if args.width is not None else 12
        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 1.0
        runtime = args.runtime if args.runtime is not None else 10
        do_program = args.do_program

        if args.simulate:

            def testbench():

                print(f"Test: Starting AMDemod Amaranth Simulation with clock frequency of {clock_frequency} MHz")

                print("Test: Initializing inputs to 0")

                yield dut.I_in.eq(0)
                yield dut.Q_in.eq(0)

                print("------ Waiting 1 cycle so all inputs are defined ------")

                yield Tick()

                assertions_passed = 0
                
                for _ in range(runtime):
                    print("----------------------------------")
                    print("Test: Generating random inputs...")

                    # Generate random inputs # 
                    test_data = [random.randint(-2**(width-1), 2**(width-1)-1), 
                                 random.randint(-2**(width-1), 2**(width-1)-1)] 

                    I_in_random_value = test_data[0]
                    Q_in_random_value = test_data[1]

                    # Loading values into DUT #
                    yield dut.I_in.eq(I_in_random_value)
                    yield dut.Q_in.eq(Q_in_random_value)

                    print("Test: Applying random inputs...")
                    print(f"Test: I_in = {I_in_random_value} Q_in = {Q_in_random_value}")
                    yield Tick()
                    print("------ Loaded Values ------")

                    # Doing operation sqrt(I_in^2 + Q_in^2)
                    print("Test: Calculating output...")
                    print("Operation: sqrt(I_in^2 + Q_in^2)")
                    wait_cycles = 4
                    print(f"----- Waiting {wait_cycles} clock cycles for the operation to finish -----")
                    for _ in range(wait_cycles):
                        yield Tick()

                    # Checking the output against expected value #
                    expected_output = int(np.sqrt(I_in_random_value**2 + Q_in_random_value**2))
                    actual_output = (yield dut.d_out)
                    
                    try:
                        assert actual_output == expected_output, f"Error: d_put={actual_output} does not match expected={expected_output}"

                        print(f"Check: d_out == expected_output = {actual_output}")
                        print("------ Assertions passed for this set of inputs ------ ")
                        assertions_passed += 1  # Counting both sin and cos assertions
                    except AssertionError as e:
                        print(e)
                print(f"----Summary of {top_name} module ----")
                print(f"Summary: Clock frequency of simulation: {clock_frequency} MHz")
                print(f"Summary: Width: {width}")
                print(f"Summary: Runtime of simulation in checks: {runtime}")
                print(f"Summary: Total number of assertions passed: {assertions_passed}")

            # Instantiate the Mixer module
            dut = AMDemod(width)

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
            plat.build(AMDemod(width), do_program=do_program)

        elif args.verilog:
            top = AMDemod(width)
            ports = [top.I_in, top.Q_in, top.d_out]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, ports=ports))

        
"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/20 TH: Initial Creation   
 2024/6/9  TH: Added ArgumentParsers and cleaned up the module
 2024/7/5  TH: Added sqrt_combinatorial module to calculate the square root
"""