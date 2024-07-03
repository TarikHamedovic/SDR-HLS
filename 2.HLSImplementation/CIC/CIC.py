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

import random


top_name = "CIC"

class CIC(Elaboratable):

    def __init__(self, INPUT_BITS = 12, WIDTH = 32, DECIMATION_RATIO = 16):
        # Define the module's ports

        # Parameters #
        self.WIDTH = WIDTH
        self.DECIMATION_RATIO = DECIMATION_RATIO
        self.INPUT_BITS = INPUT_BITS

        # Inputs #
        self.Gain = Signal(8)
        self.d_in = Signal(signed(INPUT_BITS))

        # Outputs #
        self.d_out = Signal(signed(INPUT_BITS))
        self.d_clk = Signal()

    def elaborate(self, platform):
        m = Module()

        WIDTH = self.WIDTH
        DECIMATION_RATIO = self.DECIMATION_RATIO

        d_tmp    = Signal(signed(WIDTH))
        d_d_tmp  = Signal(signed(WIDTH))

        # Integrator stage registers #
        d1       = Signal(signed(WIDTH))
        d2       = Signal(signed(WIDTH))
        d3       = Signal(signed(WIDTH))
        d4       = Signal(signed(WIDTH))
        d5       = Signal(signed(WIDTH))

        # Comb stage registers #
        d6       = Signal(signed(WIDTH))
        d_d6     = Signal(signed(WIDTH))
        d7       = Signal(signed(WIDTH))
        d_d7     = Signal(signed(WIDTH))
        d8       = Signal(signed(WIDTH))
        d_d8     = Signal(signed(WIDTH))
        d9       = Signal(signed(WIDTH))
        d_d9     = Signal(signed(WIDTH))
        d10      = Signal(signed(WIDTH))

        d_scaled = Signal(signed(WIDTH))
        count    = Signal(16)

        v_comb    = Signal()
        d_clk_tmp = Signal()


        # Integrator section #
        m.d.sync += [ 
            d1.eq(self.d_in + d1),
            d2.eq(d1 + d2),
            d3.eq(d2 + d3),
            d4.eq(d3 + d4),
            d5.eq(d4 + d5)
        ]

        # Decimation #
        with m.If(count == DECIMATION_RATIO -1):
            m.d.sync += [
                count.eq(0),
                d_tmp.eq(d5),
                d_clk_tmp.eq(1),
                v_comb.eq(1)
            ]
   
        with m.Elif(count == DECIMATION_RATIO >> 1):
            m.d.sync += [
                d_clk_tmp.eq(0),
                count.eq(count + 1),
                v_comb.eq(0)
            ]
        with m.Else():
            m.d.sync += [
                count.eq(count + 1),
                v_comb.eq(0)
            ]
        
        m.d.sync += self.d_clk.eq(d_clk_tmp)

        with m.If(v_comb):
            # Comb Section #
            m.d.sync += [
                d_d_tmp.eq(d_tmp),

                d6.eq(d_tmp - d_d_tmp),
                d_d6.eq(d6),

                d7.eq(d6 - d_d6),
                d_d7.eq(d7),

                d8.eq(d7 - d_d7),
                d_d8.eq(d8),

                d9.eq(d8 - d_d8),
                d_d9.eq(d9),

                d10.eq(d9 - d_d9),

                d_scaled.eq(d10),

                self.d_out.eq(d10 >> (WIDTH -12 - self.Gain).as_unsigned())
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
    parser.add_argument("-w", "--width", type=int, default=32, help="Width of register")
    parser.add_argument("-dr", "--decimation-ratio", type=int, default=16, help="Decimation Ratio")
    parser.add_argument("-s",  "--simulate", action="store_true", help="Simulate Blinky Example")
    parser.add_argument("-gw", "--gtkwave", action="store_true", help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency", type=float, default=80.0, help="Clock frequency in MHz for simulation")
    parser.add_argument("-b",  "--build", action="store_true", help="Build The Blinky Example")
    parser.add_argument("-dp", "--do-program", action="store_true", help="Program the device after building")
    parser.add_argument("-v",  "--verilog", action="store_true", help="Generate Verilog for Blinky Example")
    parser.add_argument("-p",  "--platform", type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime", type=int, default=1000, help="Testbench runtime in clock cycles")
    parser.add_argument("-c",  "--clean", action="store_true", help="Clean generated files and build directory")

    args = parser.parse_args()

    if args.clean:
        clean()

    else:
        input_bits = args.input_bits if args.input_bits is not None else 12
        width = args.width if args.width is not None else 32
        decimation_ratio = args.decimation_ratio if args.decimation_ratio is not None else 16
        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 1.0
        runtime = args.runtime if args.runtime is not None else 100
        do_program = args.do_program

        # NOTE: This simulation is just to see in a simulator, there are no checks for now
        # TODO: Make a better simulation with checks and random values
        if args.simulate:
            
            async def testbench(ctx):

                print(f"Test: Starting CIC Amaranth Simulation with clock frequency of {clock_frequency} MHz") # TODO:Make it generic
                ctx.set(dut.d_in, 1000)
                for _ in range(runtime):                    
                    await ctx.tick()
                
                    
            # Instantiate the Mixer module
            dut = CIC(width, decimation_ratio)

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
            plat.build(CIC(width, decimation_ratio), do_program=do_program)

        elif args.verilog:
            cic = CIC(width, decimation_ratio)
            ports = [cic.Gain, cic.d_in, cic.d_out, cic.d_clk]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(cic, ports=ports)) 


"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/4/24 TH: Initial Creation   
 2024/6/30 TH: Added all of the ArgumentParsers and tested the Verilog output with cocotb
"""
        






