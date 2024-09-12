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

    def __init__(self, DATA_WIDTH = 12):
        # Define the module's ports #

        # Parameter # 
        self.DATA_WIDTH    = DATA_WIDTH

        # Inputs #
        self.rf_in         = Signal()
        self.sinewave_in   = Signal(signed(self.DATA_WIDTH))  
        self.cosinewave_in = Signal(signed(self.DATA_WIDTH))

        # Outputs #
        self.rf_out         = Signal()
        self.sinewave_out   = Signal(signed(self.DATA_WIDTH))
        self.cosinewave_out = Signal(signed(self.DATA_WIDTH))

        # Internal signals #
        # NOTE: They are declared here because of cocotb simulation of generated Verilog file
        #       Otherwise it is maybe clearer to declare them i elaborate instead
        self.rf_in_d_1      = Signal()
        self.rf_in_d_2      = Signal()
    
    def elaborate(self, platform):

        m = Module()

        m.d.sync += [
            self.rf_in_d_1.eq(self.rf_in),
            self.rf_in_d_2.eq(self.rf_in_d_1)
        ]

        m.d.comb += self.rf_out.eq(self.rf_in_d_1)
        
        with m.If(~self.rf_in_d_2):
            m.d.sync += [
                self.sinewave_out.eq  (self.sinewave_in),
                self.cosinewave_out.eq(self.cosinewave_in)
            ]
        with m.Else():
            m.d.sync += [
                self.sinewave_out.eq  (-self.sinewave_in),
                self.cosinewave_out.eq(-self.cosinewave_in)
            ]
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
    parser.add_argument("-dw", "--data-width",                     type=int, default=12,     help="Number of input bits")
    parser.add_argument("-s",  "--simulate",   action="store_true",                          help="Simulate Mixer Implementation")
    parser.add_argument("-gw", "--gtkwave",    action="store_true",                          help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency",                type=float, default=1.0,  help="Clock frequency in MHz for simulation")
    parser.add_argument("-b",  "--build",      action="store_true",                          help="Build the Mixer")
    parser.add_argument("-dp", "--do-program", action="store_true",                          help="Program the device after building")
    parser.add_argument("-v",  "--verilog",    action="store_true",                          help="Generate Verilog for Mixer")
    parser.add_argument("-p",  "--platform",                       type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime",                        type=int, default=100,    help="Testbench runtime in clock cycles")
    parser.add_argument("-c",  "--clean",     action="store_true",                           help="Clean generated files and build directory")

    args = parser.parse_args()

    if args.clean:
        clean()

    else:
        data_width      = args.data_width      if args.data_width      is not None else 12
        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 1.0
        runtime         = args.runtime         if args.runtime         is not None else 100
        do_program      = args.do_program

        #==================================================================================#
        #                               Simulation                                         #  
        #==================================================================================#
        if args.simulate:
            def format_table(title, table_data):
                col_widths = [max(len(str(item)) for item in col) for col in zip(*table_data)]
                table_width = sum(col_widths) + 3 * len(col_widths) + 1
                title_str = '| ' + title.center(table_width - 4) + ' |'
                border = '+' + '+'.join('-' * (width + 2) for width in col_widths) + '+'
                title_border = '+' + '-' * (table_width - 2) + '+'
                table_str = [title_border, title_str, border]
                for row in table_data:
                    row_str = '| ' + ' | '.join(str(item).ljust(width) for item, width in zip(row, col_widths)) + ' |'
                    table_str.append(row_str)
                    table_str.append(border)
                return '\n'.join(table_str)

            async def testbench(ctx):

                print(f"Test: Starting Mixer Amaranth Simulation with clock frequency of {clock_frequency} MHz")

                print("Test: Initializing inputs to 0, and rf_in to 0")

                ctx.set(dut.sinewave_in,   0)
                ctx.set(dut.cosinewave_in, 0)
                ctx.set(dut.rf_in,         0)

                print("------ Waiting 3 cycles so all inputs are defined ------")
                await ctx.tick().repeat(3)

                assertions_passed = 0
                
                for iteration in range(runtime):

                    print(f"Test: Generating random inputs... Iteration {iteration + 1}")
                    # Generate random inputs # 
                    sinewave_random_value   = random.randint(-(2 ** (data_width - 1)), 2 ** (data_width - 1) - 1)
                    cosinewave_random_value = random.randint(-(2 ** (data_width - 1)), 2 ** (data_width - 1) - 1)
                    rf_in_random_value      = random.randint(0, 1)

                    # Loading values into DUT #
                    ctx.set(dut.sinewave_in,   sinewave_random_value)
                    ctx.set(dut.cosinewave_in, cosinewave_random_value)
                    ctx.set(dut.rf_in,         rf_in_random_value)

                    print("Test: Applying random inputs...")
                    await ctx.tick().repeat(2)
                    print("------ Loaded Values ------")
                    
                    print("------ Waiting 1 Clock Cycle ------")
                    await ctx.tick()

                    rf_in_d_2_value     = ctx.get(dut.rf_in_d_2)
                    expected_sinewave   = sinewave_random_value   if rf_in_d_2_value == 0 else -sinewave_random_value
                    expected_cosinewave = cosinewave_random_value if rf_in_d_2_value == 0 else -cosinewave_random_value

                    actual_sinewave     = ctx.get(dut.sinewave_out)
                    actual_cosinewave   = ctx.get(dut.cosinewave_out)
                    table_data = [  ["Variable",       "Actual",             "Expected"      ],
                                    ["sinewave_out",   actual_sinewave,   expected_sinewave  ],
                                    ["cosinewave_out", actual_cosinewave, expected_cosinewave],
                                 ]
                    table_title = f"Checking Table Iteration {iteration + 1}"
                    print("\n" + format_table(table_title, table_data))
                    print("==================================")
                                    
                    try:
                        assert actual_sinewave   == expected_sinewave,   f"Error: sinewave_out={actual_sinewave} does not match expected={expected_sinewave}"
                        assert actual_cosinewave == expected_cosinewave, f"Error: cosinewave_out={actual_cosinewave} does not match expected={expected_cosinewave}"
                        assertions_passed += 2  # Counting both sinewave and cosinewave assertions
                        print("------ Assertions passed for this set of inputs ------ ")
                    except AssertionError as e:
                        print(e)
                        
                summary_table = [
                    ["Metric",                              "Value"        ],
                    ["Data Width",                        data_width       ],
                    ["Clock frequency (MHz)",             clock_frequency  ],
                    ["Total number of assertions passed", assertions_passed],
                    ["Runtime of simulation in checks",   runtime          ],
                ]
                print("\n" + format_table("Summary", summary_table))

            dut = Mixer(data_width) # Instantiate the Mixer module

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
            plat.build(Mixer(data_width), do_program=do_program)

        #============================#
        #     Generate Verilog       #  
        #============================#
        elif args.verilog:
            top = Mixer(data_width)
            ports = [top.rf_in, top.sinewave_in, top.cosinewave_in, top.rf_out, top.sinewave_out, top.cosinewave_out]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, name = "Mixer", ports=ports)) 

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/20 TH: Initial Creation   
 2024/6/9 TH: Added ArgumentParsers and cleaned up the module
"""