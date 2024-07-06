"""
-----------------------------------------------------------------------------
HLS Implementation for Square Root function(sequential)
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

top_name = "sqrt_sequential"


class sqrt_sequential(Elaboratable):
    def __init__(self, N=32):
        # Define the module's ports

        # Parameters
        self.N = N

        # Inputs
        self.num = Signal(N)  # Input: number to calculate the square root of
        self.reset = Signal()
        self.valid = Signal()

        # Outputs
        self.res = Signal(N // 2)  # Output: calculated square root
        self.ready = Signal()

         # Internal signals(Moverd here because of simulation)
        self.current_count = Signal(4) # TODO: Change to generic later
        self.sqrt_state = Signal(2)
        self.a = Signal(N)
        self.q = Signal(N // 2)
        self.left = Signal(N // 2 + 2)
        self.right = Signal(N // 2 + 2)
        self.r = Signal(N // 2 + 2)
        self.r_reg = Signal(N // 2 + 2)

    def elaborate(self, platform) -> Module:
        """Elaborate the hardware description for the square root function."""

        m = Module()
        N = self.N

        current_count = self.current_count
        sqrt_state = self.sqrt_state
        a = self.a
        q = self.q
        left = self.left
        right = self.right
        r = self.r
        r_reg = self.r_reg

        """
        
        # Internal signals
        current_count = Signal(4) # TODO: Change to generic later
        sqrt_state = Signal(2, reset=IDLE)
        a = Signal(N)
        q = Signal(N // 2)
        left = Signal(N // 2 + 2)
        right = Signal(N // 2 + 2)
        r = Signal(N // 2 + 2)
        r_reg = Signal(N // 2 + 2)
        """

        # Define states
        IDLE = 0
        COMP = 1
        FINISH = 2

        with m.If(self.reset == 0):
            m.d.sync += sqrt_state.eq(IDLE)
        with m.Else():
            with m.Switch(sqrt_state):
                with m.Case(IDLE):
                    #with m.If(self.valid):
                       m.d.sync += sqrt_state.eq(COMP)
                       #m.d.sync += a.eq(self.num)
                with m.Case(COMP):
                    with m.If(current_count.all()):
                        m.d.sync += [self.ready.eq(1), 
                                     sqrt_state.eq(FINISH)]
                with m.Case(FINISH):
                    m.d.sync += [
                        self.ready.eq(0),
                        q.eq(0),
                        r_reg.eq(0),
                        a.eq(0),
                        sqrt_state.eq(IDLE),
                        current_count.eq(0),
                    ]
                with m.Default():
                    m.d.sync += sqrt_state.eq(IDLE)

        with m.If(self.reset == 0):
            m.d.sync += [current_count.eq(0), 
                         q.eq(0), 
                         r_reg.eq(0), 
                         a.eq(0)]
        with m.Else():
            #with m.If(self.valid):
                #m.d.sync += a.eq(self.num)
            with m.If(sqrt_state == COMP):
                m.d.sync += [
                    current_count.eq(current_count + 1),
                    a.eq(a.shift_left(2)),
                    q.eq(Cat(~r[-1], 
                             q[0 : N // 2 - 1])),
                    r_reg.eq(r),
                ]

        with m.If(r_reg[-1]):
            m.d.comb += r.eq(left + right)
        with m.Else():
            m.d.comb += r.eq(left - right)

        m.d.comb += [
            right.eq(Cat(Const(1, 1), 
                         r_reg[-1], 
                         q)),
            left.eq(Cat(a[N - 2 : N], 
                        r_reg[0 : N // 2])),
            self.res.eq(q),
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
        "-n",
        "--num-bits",
        type=int,
        default=32,
        help="Number of bits for the input num variable",
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
        clock_frequency = (
            args.clock_frequency if args.clock_frequency is not None else 1.0
        )
        runtime = args.runtime if args.runtime is not None else 10
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
                    ctx.delay(10e-9)  # NOTE: Adjust the delay as needed

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
            dut = sqrt_sequential(input_bits)

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
            plat.build(sqrt_sequential(input_bits), do_program=do_program)

        elif args.verilog:
            # Generate Verilog code
            top = sqrt_sequential(input_bits)
            ports = [top.num, top.res, top.valid, top.ready, top.current_count, top. q, top.r, top.r_reg, top.left, top.right, top.a, top.sqrt_state]

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

