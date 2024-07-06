"""
-----------------------------------------------------------------------------
HLS Implementation for Square Root function(combinatorial)
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

top_name = "sqrt_combinatorial"


class sqrt_combinatorial(Elaboratable):
    def __init__(self, N=32):
        # Define the module's ports

        # Parameters
        self.N = N

        # Inputs
        self.num = Signal(N)         # Input: number to calculate the square root of

        # Outputs
        self.result = Signal(N // 2) # Output: calculated square root


    def elaborate(self, platform) -> Module:  # TODO: Check what this -> Module does?
        """Elaborate the hardware description for the square root function."""
        
        m = Module()
        N = self.N
        
        # Arrays to hold intermediate values
        a = Array([Signal(N) for _ in range(N // 2 + 1)])
        q = Array([Signal(N // 2) for _ in range(N // 2 + 1)])
        left = Array([Signal(N // 2 + 2) for _ in range(N // 2)])
        right = Array([Signal(N // 2 + 2) for _ in range(N // 2)])
        r = Array([Signal(N // 2 + 2) for _ in range(N // 2 + 1)])

        # Initialize the first element
        m.d.comb += [a[0].eq(self.num), 
                     q[0].eq(0), 
                     r[0].eq(0)]

        # Generate the calculation steps
        for i in range(N // 2):
            m.d.comb += [

                right[i].eq(Cat(Const(1, 1), 
                                r[i][-1], 
                                q[i])),
                                
                left[i].eq(Cat(a[i][N - 2 : N], 
                               r[i][0 : N // 2])),

                a[i + 1].eq(a[i].shift_left(2)),
            ]

            with m.If(r[i][-1] == 1):
                m.d.comb += r[i + 1].eq(left[i] + right[i])
            with m.Else():
                m.d.comb += r[i + 1].eq(left[i] - right[i])

            m.d.comb += q[i + 1].eq(Cat(~(r[i + 1][-1]), 
                                        q[i][0 : N // 2 - 1]))

        # Assign the final result
        m.d.comb += self.result.eq(q[N // 2])

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
        "-n",
        "--num-bits",
        type=int,
        default=32,
        help="Number of bits for the input num variable",
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
        default=100,
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
        input_bits = args.num_bits if args.num_bits is not None else 32
        runtime = args.runtime if args.runtime is not None else 100
        do_program = args.do_program

        if args.simulate:

            async def testbench(ctx):

                N = ctx.get(dut.N)

                print(
                    "Test: Starting Square Root(Combinatorial Version) Amaranth Simulation"
                )

                assertions_passed = 0

                for _ in range(runtime):

                    print("Test: Generating random inputs...")
                    # Generate random inputs #
                    random_value = random.randint(0, 2**N - 1)

                    # Loading values into DUT #
                    ctx.set(dut.num, random_value)

                    print("Test: Applying random inputs...")
                    ctx.delay(10e-9)
                    print("------ Loaded Values ------")

                    print("------ Waiting 1 For Sqrt Function To Finish ------")
                    ctx.delay(10e-9) # NOTE: Adjust the delay as needed

                    expected_result = int(np.sqrt(random_value))

                    actual_result = ctx.get(dut.result)

                    try:
                        assert (
                            actual_result == expected_result
                        ), f"Error: actual_result={actual_result} does not match expected={expected_result}"

                        print(
                            f"Check: actual_result == expected_result = {actual_result}"
                        )
                        print("------ Assertions passed for this set of inputs ------ ")
                        assertions_passed += 1
                    except AssertionError as e:
                        print(e)
                print(f"----Summary of {top_name} module ----")
                print(f"Summary: Input bit width: {ctx.get(dut.N)}")
                print(
                    f"Summary: Total number of assertions passed: {assertions_passed}"
                )
                print(f"Summary: Runtime of simulation in checks: {runtime}")

            # Instantiate the sqrt_combinatorial module
            dut = sqrt_combinatorial(input_bits)

            # Create a simulator
            sim = Simulator(dut)
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
            plat.build(sqrt_combinatorial(input_bits), do_program=do_program)

        elif args.verilog:
            # Generate Verilog code
            top = sqrt_combinatorial(input_bits)
            ports = [top.num, top.result]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, ports=ports))

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/7/2 TH: Initial Creation   
 2024/7/4 TH: Fixed the implementation so that it works
 2024/7/5 TH: Added Amaranth Simulation and Argument Parsers
"""
