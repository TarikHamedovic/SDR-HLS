#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
HLS Implementation for Mixer module
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
        self.RFIn        = Signal() # RF input signal
        self.sin_in      = Signal(signed(self.INPUT_BITS)) # Sine input
        self.cos_in      = Signal(signed(self.INPUT_BITS)) # Cosine input

        # Outputs
        self.RFOut       = Signal()
        self.MixerOutSin = Signal(signed(self.INPUT_BITS))
        self.MixerOutCos = Signal(signed(self.INPUT_BITS))

        # Internal Registers # TODO:Check if this needs to be here or in elaborate function?
        self.RFInR1 = Signal(reset=1) # TODO: Check reset?
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

            async def testbench(ctx):

                print(f"Test: Starting Mixer Amaranth Simulation with clock frequency of {clock_frequency} MHz") # TODO:Make it generic

                print("Test: Initializing inputs to 0, and RFIn to 0")

                ctx.set(dut.sin_in, 0)
                ctx.set(dut.cos_in, 0)
                ctx.set(dut.RFIn, 0)

                print("------ Waiting 3 cycles so all inputs are defined ------")

                for _ in range(3):
                    await ctx.tick()

                assertions_passed = 0
                
                for _ in range(runtime):

                    print("Test: Generating random inputs...")
                    # Generate random inputs # 
                    sin_random_value  = random.randint(-(2 ** (input_bits - 1)), 2 ** (input_bits - 1) - 1)
                    cos_random_value  = random.randint(-(2 ** (input_bits - 1)), 2 ** (input_bits - 1) - 1)
                    RFIn_random_value = random.randint(0, 1)

                    # Loading values into DUT #
                    ctx.set(dut.sin_in, sin_random_value)
                    ctx.set(dut.cos_in, cos_random_value)
                    ctx.set(dut.RFIn, RFIn_random_value)

                    print("Test: Applying random inputs...")
                    await ctx.tick()
                    print("------ Loaded Values ------")
                    
                    print("------ Waiting 1 Clock Cycle ------")
                    await ctx.tick()

                    RFInR_value = ctx.get(dut.RFInR)
                    expected_sin = sin_random_value if RFInR_value == 0 else -sin_random_value
                    expected_cos = cos_random_value if RFInR_value == 0 else -cos_random_value

                    actual_sin = ctx.get(dut.MixerOutSin)
                    actual_cos = ctx.get(dut.MixerOutCos)

                    print(f"Check: expected_sin_bin={expected_sin}")
                    print(f"Check: expected_cos_bin={expected_cos}")
                    print(f"Check: MixerOutSin={actual_sin}")
                    print(f"Check: MixerOutCos={actual_cos}")
                    
                
                    try:
                        assert actual_sin == expected_sin, f"Error: MixerOutSin={actual_sin} does not match expected={expected_sin}"
                        assert actual_cos == expected_cos, f"Error: MixerOutCos={actual_cos} does not match expected={expected_cos}"

                        print(f"Check: MixerOutSin == expected_sin = {actual_sin}")
                        print(f"Check: MixerOutCos == expected_cos = {actual_cos}")
                        print("------ Assertions passed for this set of inputs ------ ")
                        assertions_passed += 2  # Counting both sin and cos assertions
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
            plat.build(Mixer(input_bits), do_program=do_program)

        elif args.verilog: # TODO: Maybe change from top ---> mixer for clarity?
            top = Mixer(input_bits)
            ports = [top.RFIn, top.sin_in, top.cos_in, top.RFOut, top.MixerOutSin, top.MixerOutCos]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, ports=ports)) # Append simulation-only lines to the Verilog file
                        # Read the generated Verilog file and insert the simulation code before the endmodule
            with open(f"{top_name}.v", "r") as f:
                lines = f.readlines()

            # Find the line with endmodule
            with open(f"{top_name}.v", "w") as f:
                for line in lines:
                    if line.strip() == "endmodule":
                        f.write(f"""
  //----------------------------- 
  // For simulation only
  //----------------------------- 
  initial begin
    $dumpfile("{top_name}_waves.vcd");
    $dumpvars;
  end
""")
                    f.write(line)

# TODO: Figure out why cocoTB .vcd files won't generate after running make 

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/20 TH: Initial Creation   
 2024/6/9 TH: Added ArgumentParsers and cleaned up the module
"""

