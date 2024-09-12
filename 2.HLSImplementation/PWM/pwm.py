#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
Amaranth Implementation for PWM module
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

top_name = "PWM"

class PWM(Elaboratable):
    def __init__(self, DATA_WIDTH = 12, COUNT_WIDTH = 10, OFFSET = 512):
        # Define the module's ports #

        # Parameters #
        self.DATA_WIDTH    = DATA_WIDTH
        self.COUNT_WIDTH   = COUNT_WIDTH
        self.OFFSET        = OFFSET

        # Input #
        self.data_in       = Signal(DATA_WIDTH)

        # Output #
        self.pwm_out       = Signal()

        # Internal registers #
        # NOTE: They are declared here because of cocotb simulation of generated Verilog file
        #       Otherwise it is maybe clearer to declare them i elaborate instead
        self.data_in_reg   = Signal(self.DATA_WIDTH)  # Register to store adjusted data_in
        self.count         = Signal(self.COUNT_WIDTH)  

    def elaborate(self, platform):

        m = Module()

        m.d.sync += self.count.eq(self.count + 1),
        
        with m.If(self.count == 0):
            m.d.sync += self.data_in_reg.eq(self.data_in + self.OFFSET)

        with m.If(self.count > self.data_in_reg[:self.COUNT_WIDTH]):
            m.d.sync += self.pwm_out.eq(0)
        with m.Else():
            m.d.sync += self.pwm_out.eq(1)

        return m
    
#===============================================================================#
#                Simulation and commands via argumentparsers                    #
#===============================================================================#

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
    parser.add_argument("-dw", "--data-width",                      type=int, default=12,     help="Number of input bits")
    parser.add_argument("-cw", "--counter-width",                   type=int, default=10,     help="Number of counter bits")
    parser.add_argument("-of", "--offset",                          type=int, default=512,    help="Offset value")
    parser.add_argument("-s",  "--simulate",   action="store_true",                           help="Simulate PWM Implementation")
    parser.add_argument("-gw", "--gtkwave",    action="store_true",                           help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency",                 type=float, default=1.0,  help="Clock frequency in MHz for simulation")
    parser.add_argument("-b",  "--build",      action="store_true",                           help="Build the PWM")
    parser.add_argument("-dp", "--do-program", action="store_true",                           help="Program the device after building")
    parser.add_argument("-v",  "--verilog",    action="store_true",                           help="Generate Verilog for PWM Example")
    parser.add_argument("-p",  "--platform",                        type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime",                         type=int, default=4,      help="Testbench runtime in clock cycles")
    parser.add_argument("-c",  "--clean",      action="store_true",                           help="Clean generated files and build directory")

    args = parser.parse_args()

    if args.clean:
        clean()

    else:
        
        data_width      = args.data_width      if args.data_width      is not None else 12
        counter_width   = args.counter_width   if args.counter_width   is not None else 10
        offset          = args.offset          if args.offset          is not None else 512
        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 1.0
        runtime         = args.runtime         if args.runtime         is not None else 4
        do_program      = args.do_program

        if args.simulate:

            def calculate_expected_output(count, data_in_reg, counter_width):
                mask = (1 << counter_width) - 1  # Create a mask for the given bit width
                return 1 if count < (data_in_reg & mask) + 2 else 0  # Added 2 because of delay to enter the data_in value to data_in_reg and 1 more delay to pass the value to pwm_out

            #==================================================================================#
            #                               Simulation                                         #
            # NOTE: Testbench sometimes fails...
            #       But cocotb testbench of the verilog file works fine  
            #==================================================================================#
            async def testbench(ctx):

                print(f"Test: Starting PWM Amaranth Simulation with clock frequency of {clock_frequency} MHz")

                print("Test: Initializing inputs to 0")
                # Initializing Inputs to 0 #

                ctx.set(dut.data_in, 0)
                ctx.set(dut.count,   0) 

                print("------ Waiting 1 cycle so all inputs are defined ------")

                await ctx.tick()

                assertions_passed = 0
                assertions_failed = 0

                for _ in range(runtime):

                    print("Test: Generating random inputs...")
                    # Generate random inputs #
                    data_in_random_value = random.randint(-2**(data_width-1), 2**(data_width-1)-1)

                    # Loading values into DUT #
                    ctx.set(dut.data_in, data_in_random_value)

                    print(f"Test: Applying random input value {data_in_random_value}...")
                    await ctx.tick().repeat(2)
            
                    print("------ Loaded Values ------")
                    
                    ctx.set(dut.count, 0)

                    await ctx.tick()

                    for _ in range(2**counter_width-1):

                        await ctx.tick()
                        try:
                            count_value       = ctx.get(dut.count)
                            data_in_reg_value = ctx.get(dut.data_in_reg)
                            expected_output   = calculate_expected_output(count_value, data_in_reg_value, counter_width)
                            actual_output     = ctx.get(dut.pwm_out)

                            print(f"Check: count {ctx.get(dut.count)}")
                            print(f"Check: Expected {expected_output}, got {actual_output}")
                            assert actual_output == expected_output, f"Assertion failed: data_in = {ctx.get(dut.data_in)}, data_in_reg = {data_in_reg_value} count = {count_value}: expected {expected_output}, got {actual_output}"
                            assertions_passed += 1  # Counting every counter iteration
                        except AssertionError as e:
                            print(e)
                            assertions_failed += 1
                print("------ Assertions passed for this input ------ ")
                print(f"----Summary of {top_name} module ----")
                print(f"Summary: Clock frequency of simulation: {clock_frequency} MHz")
                print(f"Summary: Data width: {data_width}")
                print(f"Summary: Counter bit width: {counter_width}")
                print(f"Summary: Total number of assertions passed: {assertions_passed}")
                print(f"Summary: Total number of assertions failed: {assertions_failed}")
                print(f"Summary: Runtime of simulation in checks: {runtime}")

            dut = PWM(data_width, counter_width, offset) # Instantiate the PWM module

            sim = Simulator(dut) # Create a simulator
            sim.add_clock(1e-6 / clock_frequency)
            sim.add_testbench(testbench)
            with sim.write_vcd(f"{top_name}.vcd", f"{top_name}.gtkw", traces=[]):
                sim.run()
            # Open GTKWave with the generated VCD file if --gtkwave is set
            if args.gtkwave:
                subprocess.run(["gtkwave", f"{top_name}.vcd"])

        #============================#
        #           Build            #  
        #============================#
        elif args.build:
            if args.platform is None:
                raise ValueError("Platform must be specified for building")
            platform_module_name, platform_class_name = args.platform.rsplit(".", 1)
            platform_module = importlib.import_module(platform_module_name)
            platform_class = getattr(platform_module, platform_class_name)

            plat = platform_class()
            
            plat.build(PWM(data_width, counter_width, offset), do_program=do_program)
        #============================#
        #     Generate Verilog       #  
        #============================#
        elif args.verilog:
            top = PWM(data_width, counter_width, offset)
            ports = [top.data_in, top.pwm_out]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, name="PWM", ports=ports))

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/20 TH: Initial Creation   
 2024/6/01 TH: Revision 
 2024/6/10 TH: Added ArgumentParsers
"""
