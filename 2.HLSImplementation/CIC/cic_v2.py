#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
HLS Implementation for CIC module
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

top_name = "CIC"

class CIC(Elaboratable):

    def __init__(self, DATA_WIDTH = 12, REGISTER_WIDTH = 32, DECIMATION_RATIO = 16, GAIN_WIDTH = 8, N_STAGES = 5):
        # Define the module's ports #

        # Parameters #
        self.DATA_WIDTH       = DATA_WIDTH
        self.REGISTER_WIDTH   = REGISTER_WIDTH
        self.DECIMATION_RATIO = DECIMATION_RATIO
        self.GAIN_WIDTH       = GAIN_WIDTH
        self.N_STAGES         = N_STAGES

        # Inputs #
        self.data_in          = Signal(signed(DATA_WIDTH))
        self.gain             = Signal(GAIN_WIDTH)

        # Outputs #
        self.data_out        = Signal(signed(DATA_WIDTH))
        self.data_clk        = Signal()

    def elaborate(self, platform):
        m = Module()

        DATA_WIDTH       = self.DATA_WIDTH
        REGISTER_WIDTH   = self.REGISTER_WIDTH
        DECIMATION_RATIO = self.DECIMATION_RATIO
        N_STAGES         = self.N_STAGES

        integrator = Array(Signal(signed(REGISTER_WIDTH)) for _ in range(N_STAGES))
        comb       = Array(Signal(signed(REGISTER_WIDTH)) for _ in range(N_STAGES))
        comb_delay = Array(Signal(signed(REGISTER_WIDTH)) for _ in range(N_STAGES))

        integrator_tmp   = Signal(signed(REGISTER_WIDTH))
        integrator_d_tmp = Signal(signed(REGISTER_WIDTH))

        count            = Signal(range(DECIMATION_RATIO))

        valid_comb       = Signal()
        decimation_clk   = Signal()

        #=============================================#
        #            Integrator section               #
        #=============================================#
        m.d.sync += integrator[0].eq(self.data_in + integrator[0])
        for i in range(1, N_STAGES):
            m.d.sync += integrator[i].eq(integrator[i-1] + integrator[i])

        #============================================#
        #                Decimation                  #
        #============================================#
        with m.If(count == DECIMATION_RATIO - 1):
            m.d.sync += [
                count.eq(0),
                integrator_tmp.eq(integrator[N_STAGES-1]),
                decimation_clk.eq(1),
                valid_comb.eq(1)
            ]
        with m.Elif(count == DECIMATION_RATIO >> 1):
            m.d.sync += [
                decimation_clk.eq(0),
                count.eq(count + 1),
                valid_comb.eq(0)
            ]
        with m.Else():
            m.d.sync += [
                count.eq(count + 1),
                valid_comb.eq(0)
            ]

        m.d.sync += self.data_clk.eq(decimation_clk)

        with m.If(valid_comb):
            #============================================#
            #               Comb Section                 #
            #============================================#
            m.d.sync += integrator_d_tmp.eq(integrator_tmp)

            m.d.sync += comb[0].eq(integrator_tmp - integrator_d_tmp)
            m.d.sync += comb_delay[0].eq(comb[0])
            # FIXME: comb_delay has N_STAGES-1 length
            for i in range(1, N_STAGES):
                m.d.sync += [
                    comb[i].eq(comb[i-1] - comb_delay[i-1]),
                    comb_delay[i].eq(comb[i])
                ]

            m.d.sync += self.data_out.eq(comb[N_STAGES-1] >> (REGISTER_WIDTH - DATA_WIDTH - self.gain).as_unsigned())

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
    parser.add_argument("-rw", "--register-width",                 type=int, default=32,     help="Width of register")
    parser.add_argument("-dr", "--decimation-ratio",               type=int, default=16,     help="Decimation Ratio")
    parser.add_argument("-gaw", "--gain-width",                    type=int, default=8,      help="Number of bits for input gain")
    parser.add_argument("-nst", "--n-stages",                      type=int, default=5,      help="Number of stages for the CIC filter")
    parser.add_argument("-s", "--simulate",    action="store_true",                          help="Simulate CIC Filter Implementation")
    parser.add_argument("-gw", "--gtkwave",    action="store_true",                          help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency",                type=float, default=80.0, help="Clock frequency in MHz for simulation")
    parser.add_argument("-b", "--build",       action="store_true",                          help="Build The CIC Filter")
    parser.add_argument("-dp", "--do-program", action="store_true",                          help="Program the device after building")
    parser.add_argument("-v", "--verilog",     action="store_true",                          help="Generate Verilog for CIC Filter")
    parser.add_argument("-p", "--platform",                        type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime",                        type=int, default=100,    help="Testbench runtime in clock cycles")
    parser.add_argument("-c", "--clean",       action="store_true",                          help="Clean generated files and build directory")

    args = parser.parse_args()

    if args.clean:
        clean()
    else:
        data_width       = args.data_width       if args.data_width       is not None else 12
        register_width   = args.register_width   if args.register_width   is not None else 32
        decimation_ratio = args.decimation_ratio if args.decimation_ratio is not None else 16
        gain_width       = args.gain_width       if args.gain_width       is not None else 8
        n_stages         = args.n_stages         if args.n_stages         is not None else 5
        clock_frequency  = args.clock_frequency  if args.clock_frequency  is not None else 1.0
        runtime          = args.runtime          if args.runtime          is not None else 100
        do_program       = args.do_program

        #==================================================================================#
        #                               Simulation                                         #
        #                                                                                 #
        # NOTE: This simulation is just to see in a simulator, there are no checks for now #
        # TODO: Make a better simulation with checks and random values                    #
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
                # Initialize inputs #
                print(f"[Test Start] Starting CIC Amaranth Simulation with clock frequency of {clock_frequency} MHz")
                signals_to_initialize = [
                    dut.gain, dut.data_out, dut.data_clk
                ]
                
                for signal in signals_to_initialize:
                    ctx.set(signal, 0)
                ctx.set(dut.data_in, 1000)

                print("[Test Initialization] Initialized input variables")

                for iteration in range(runtime):
                    await ctx.tick()

                    table_data = [
                        ["Variable", "Value"],
                        ["data_in",  ctx.get(dut.data_in)],
                        ["data_clk", ctx.get(dut.data_clk)],
                        ["data_out", ctx.get(dut.data_out)],
                        ["gain",     ctx.get(dut.gain)]
                    ]
                    table_title = f"Checking Table Iteration {iteration + 1}"
                    print("\n" + format_table(table_title, table_data))
                    print("==================================")

                summary_table = [
                    ["Metric",                      "Value"        ],
                    ["Data Width",                 data_width      ],
                    ["Register Width",             register_width  ],
                    ["Decimation Ratio",           decimation_ratio],
                    ["Gain Width",                 gain_width      ],
                    ["Clock frequency (MHz)",      clock_frequency ],
                    ["Runtime of simulation (ns)", runtime         ]
                ]
                print("\n" + format_table("Summary", summary_table))

            dut = CIC(data_width, register_width, decimation_ratio, gain_width, n_stages) # Instantiate the CIC module 
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
            plat.build(CIC(data_width, register_width, decimation_ratio, gain_width, n_stages), do_program=do_program)

        #============================#
        #     Generate Verilog       #  
        #============================#
        elif args.verilog:
            cic = CIC(data_width, register_width, decimation_ratio, gain_width, n_stages)
            ports = [cic.gain, cic.data_in, cic.data_out, cic.data_clk]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(cic, name="CIC", ports=ports))

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/24 TH: Initial Creation   
 2024/6/30 TH: Added all of the ArgumentParsers and tested the Verilog output with cocotb
 2024/8/22 TH: Modified code to use arrays for integrators and comb filters, 
               renamed comb_d to comb_delay and STAGES to N_STAGES
"""

