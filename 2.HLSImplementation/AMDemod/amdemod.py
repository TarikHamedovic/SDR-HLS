#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
HLS Implementation for AMDemod module
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

    def __init__(self, DATA_WIDTH = 12):
        # Define the module's ports #

        # Parameter #
        self.DATA_WIDTH  = DATA_WIDTH
        
        # Inputs #
        self.inphase     = Signal(signed(DATA_WIDTH))
        self.quadrature  = Signal(signed(DATA_WIDTH))
        self.enable      = Signal() # Added as EnableInserter for cic_clk
        
        # Output #
        self.amdemod_out = Signal(DATA_WIDTH)

    def elaborate(self, platform):

        m = Module()

        m = EnableInserter({"sync" : self.enable})(m)

        DATA_WIDTH = self.DATA_WIDTH

        # Internal Registers #
        mult_result_i = Signal(signed(2 * DATA_WIDTH))
        mult_result_q = Signal(signed(2 * DATA_WIDTH))
        square_sum    = Signal(signed(2 * DATA_WIDTH + 1))
        amdemod_d = Signal(DATA_WIDTH)

        # Initialization of square root module # 
        # NOTE: The parameter N MUST be even!  #
        m.submodules.sqrt = sqrt_combinatorial(2 * DATA_WIDTH + 2) # TODO: Check if this is okay?
        
        m.d.sync += [
            mult_result_i.eq(self.inphase    * self.inphase),
            mult_result_q.eq(self.quadrature * self.quadrature),

            square_sum.eq   (mult_result_i   + mult_result_q),    
            amdemod_d.eq    (m.submodules.sqrt.result)    
        ]

        m.d.comb += [
            m.submodules.sqrt.num.eq(square_sum),
            self.amdemod_out.eq     (amdemod_d)
        ]
        
        return m

#===============================================================================#
#                Simulation and commands via argumentparsers                    #
#===============================================================================#

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
    parser.add_argument("-dw", "--data-width",                      type=int,   default=12,   help="Number of input bits")
    parser.add_argument("-s",  "--simulate",   action="store_true",                           help="Simulate Blinky Example")
    parser.add_argument("-gw", "--gtkwave",    action="store_true",                           help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency",                 type=float, default=1.0,  help="Clock frequency in MHz for simulation")
    parser.add_argument("-b",  "--build",      action="store_true",                           help="Build The AM Demodulator Implementation")
    parser.add_argument("-dp", "--do-program", action="store_true",                           help="Program the device after building")
    parser.add_argument("-v",  "--verilog",    action="store_true",                           help="Generate Verilog for AM Demodulator")
    parser.add_argument("-p",  "--platform",                        type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime",                         type=int,   default=100,  help="Testbench runtime in clock cycles")
    parser.add_argument("-c",  "--clean",      action="store_true",                           help="Clean generated files and build directory")

    args = parser.parse_args()

    if args.clean:
        clean()

    else:
        data_width      = args.data_width      if args.data_width      is not None else 12
        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 1.0
        runtime         = args.runtime         if args.runtime         is not None else 10
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
                print(f"[Test Start]: Starting AMDemod Amaranth Simulation with clock frequency of {clock_frequency} MHz")

                print("[Initialization]: Initializing inputs to 0")
                ctx.set(dut.inphase,    0)
                ctx.set(dut.quadrature, 0)
                print("[Enable]: Setting enable to 1")
                ctx.set(dut.enable, 1)

                print("------ Waiting 1 cycle so all inputs are defined ------")
                await ctx.tick()

                assertions_passed = 0

                for iteration in range(runtime):
                    print("===============================================================================")
                    print(f"[Test Data Generation]: Generating random inputs... Iteration {iteration + 1}")

                    # Generate random inputs #
                    test_data = [random.randint(-2**(data_width-1), 2**(data_width-1)-1), 
                                 random.randint(-2**(data_width-1), 2**(data_width-1)-1)] 

                    inphase_random_value    = test_data[0]
                    quadrature_random_value = test_data[1]

                    # Loading values into DUT #
                    ctx.set(dut.inphase,    inphase_random_value)
                    ctx.set(dut.quadrature, quadrature_random_value)

                    print("[Test Execution]: Applying random inputs...")
                    print(f"[Monitor]: I_in = {inphase_random_value} Q_in = {quadrature_random_value}")
                    await ctx.tick()
                    print("------ Loaded Values ------")

                    # Doing operation sqrt(I_in^2 + Q_in^2) #
                    print("[Test Execution]: Calculating output...")
                    print("[Operation]: sqrt(I_in^2 + Q_in^2)")
                    wait_cycles = 4
                    print(f"----- Waiting {wait_cycles} clock cycles for the operation to finish -----")
                    await ctx.tick().repeat(wait_cycles)

                    # Checking the output against expected value #
                    expected_output = int(np.sqrt(inphase_random_value**2 + quadrature_random_value**2))
                    actual_output = ctx.get(dut.amdemod_out)

                    result = '✓' if actual_output == expected_output else '✗'
                    table_data = [
                        ["Variable", "Actual",             "Expected",   "Result"],
                        ["I_in",     inphase_random_value,    "-",         "-"   ],
                        ["Q_in",   quadrature_random_value,   "-",         "-"   ],
                        ["d_out",     actual_output,     expected_output, result ]
                    ]
                    print("\n" + format_table(f"Checking Table Iteration {iteration + 1}", table_data))

                    try:
                        assert actual_output == expected_output, f"Error: d_out={actual_output} does not match expected={expected_output}"
                        print("------ Assertions passed for this set of inputs ------")
                        assertions_passed += 1
                    except AssertionError as e:
                        print(e)
                    print("===============================================================================")

                summary_table = [
                    ["Metric",                                "Value"],
                    ["Clock frequency of simulation (MHz)", clock_frequency  ],
                    ["Data Width",                          data_width       ],
                    ["Total number of test cases",          runtime          ],
                    ["Total number of assertions passed",   assertions_passed]
                ]
                print("\n" + format_table(f"Summary of {top_name} module", summary_table))

            dut = AMDemod(data_width) # Instantiate the AMDemod module

            sim = Simulator(dut) # Create a simulator
            sim.add_clock(1e-6 / clock_frequency)
            sim.add_testbench(testbench)
            with sim.write_vcd(f"{top_name}.vcd", f"{top_name}.gtkw", traces=[]):
                sim.run()
            # Open GTKWave with the generated VCD file if --gtkwave is set #
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
            plat.build(AMDemod(data_width), do_program=do_program)

        #============================#
        #     Generate Verilog       #  
        #============================#
        elif args.verilog:
            top = AMDemod(data_width)
            ports = [top.inphase, top.quadrature, top.enable, top.amdemod_out]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, name="AMDemodulator", ports=ports))

        
"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/20 TH: Initial Creation   
 2024/6/9  TH: Added ArgumentParsers and cleaned up the module
 2024/7/5  TH: Added sqrt_combinatorial module to calculate the square root
 2024/8/3  TH: Updated simulation to look nicer
"""