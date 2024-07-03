"""
-----------------------------------------------------------------------------
HLS Implementation for CORDIC Sinewave Generator 
Based on: https://zipcpu.com/dsp/2017/08/30/cordic.html
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

top_name = "sine_generator_cordic"

class sine_generator_cordic(Elaboratable):
   def __init__(self, input_bits = 13, output_bits = 13, word_bits = 16, phase_bits = 20):
      # Define the module's ports

      # Parameters
      self.input_bits  = input_bits
      self.output_bits = output_bits
      self.word_bits   = word_bits
      self.phase_bits  = phase_bits

      # Inputs
      self.i_reset = Signal()
      self.i_xval  = Signal(signed(input_bits))
      self.i_yval  = Signal(signed(input_bits))
      self.i_phase = Signal(phase_bits)

      # Outputs
      self.o_xval  = Signal(signed(output_bits))
      self.o_yval  = Signal(signed(output_bits))
      self.o_phval = Signal(phase_bits)

      # For Simulation (place in elaborate later)
      self.xv0 = Signal(self.word_bits)
      self.yv0 = Signal(self.word_bits)
      self.xv1 = Signal(self.word_bits)
      self.yv1 = Signal(self.word_bits)
      self.xv2 = Signal(self.word_bits)
      self.yv2 = Signal(self.word_bits)
      self.xv3 = Signal(self.word_bits)
      self.yv3 = Signal(self.word_bits)
      self.xv4 = Signal(self.word_bits)
      self.yv4 = Signal(self.word_bits)
      self.xv5 = Signal(self.word_bits)
      self.yv5 = Signal(self.word_bits)
      self.xv6 = Signal(self.word_bits)
      self.yv6 = Signal(self.word_bits)
      self.xv7 = Signal(self.word_bits)
      self.yv7 = Signal(self.word_bits)
      self.xv8 = Signal(self.word_bits)
      self.yv8 = Signal(self.word_bits)
      self.xv9 = Signal(self.word_bits)
      self.yv9 = Signal(self.word_bits)
      self.xv10 = Signal(self.word_bits)
      self.yv10 = Signal(self.word_bits)
      self.xv11 = Signal(self.word_bits)
      self.yv11 = Signal(self.word_bits)
      self.xv12 = Signal(self.word_bits)
      self.yv12 = Signal(self.word_bits)
      self.xv13 = Signal(self.word_bits)
      self.yv13 = Signal(self.word_bits)
      self.xv14 = Signal(self.word_bits)
      self.yv14 = Signal(self.word_bits)
      self.xv15 = Signal(self.word_bits)
      self.yv15 = Signal(self.word_bits)
      self.xv16 = Signal(self.word_bits)
      self.yv16 = Signal(self.word_bits)

      self.ph0 = Signal(self.phase_bits)
      self.ph1 = Signal(self.phase_bits)
      self.ph2 = Signal(self.phase_bits)
      self.ph3 = Signal(self.phase_bits)
      self.ph4 = Signal(self.phase_bits)
      self.ph5 = Signal(self.phase_bits)
      self.ph6 = Signal(self.phase_bits)
      self.ph7 = Signal(self.phase_bits)
      self.ph8 = Signal(self.phase_bits)
      self.ph9 = Signal(self.phase_bits)
      self.ph10 = Signal(self.phase_bits)
      self.ph11 = Signal(self.phase_bits)
      self.ph12 = Signal(self.phase_bits)
      self.ph13 = Signal(self.phase_bits)
      self.ph14 = Signal(self.phase_bits)
      self.ph15 = Signal(self.phase_bits)
      self.ph16 = Signal(self.phase_bits)

      self.e_xval = Signal(self.word_bits)
      self.e_yval = Signal(self.word_bits)
      self.pre_xval = Signal(self.word_bits)
      self.pre_yval = Signal(self.word_bits)

   def elaborate(self, platform):
      m = Module()

      # Local Parameter
      NSTAGES = 16

      xv = Array(Signal(signed(self.word_bits)) for _ in range(NSTAGES + 1))
      yv = Array(Signal(signed(self.word_bits)) for _ in range(NSTAGES + 1))
      pre_xval = self.pre_xval
      pre_yval = self.pre_yval
      e_xval = self.e_xval
      e_yval = self.e_yval
      ph = Array(Signal(self.phase_bits) for _ in range(NSTAGES + 1))

      # Mapping xv and yv signals to corresponding xv0, xv1, ..., xv16 and yv0, yv1, ..., yv16
      for i in range(NSTAGES + 1):
         m.d.comb += [
            getattr(self, f"xv{i}").eq(xv[i]),
            getattr(self, f"yv{i}").eq(yv[i]),
            getattr(self, f"ph{i}").eq(ph[i])
        ]
      # Internal registers
      # Declare variables for all of the separate stages
      #e_xval = Signal(signed(self.word_bits))
      #e_yval = Signal(signed(self.word_bits))

      #xv = Array(Signal(signed(self.word_bits)) for _ in range(NSTAGES + 1))
      #yv = Array(Signal(signed(self.word_bits)) for _ in range(NSTAGES + 1))
      #yv = Array.like(xv) TODO: Try .like

      #ph = Array(Signal(self.phase_bits) for _ in range(NSTAGES + 1))

      #pre_xval = Signal(self.word_bits)
      #pre_yval = Signal(self.word_bits)

      # CORDIC Comb Stage

      #-- Step1: Sign extend our inputs
      # In Amaranth Cat() function automatically sign extends if the input is signed
      m.d.comb += [
         e_xval.eq(Cat(Const(0, self.word_bits-self.input_bits-1), self.i_xval)),
         e_yval.eq(Cat(Const(0, self.word_bits-self.input_bits-1), self.i_yval))
      ]

      #-- Step2: Pre-CORDIC rotation
      with m.Switch(self.i_phase[self.phase_bits - 3:]):
         # TODO: Shorten the cases under one case like with m.Case(1,2)
         with m.Case(0): # 0 .. 45, No change
            m.d.comb += [
               xv[0].eq(e_xval),
               yv[0].eq(e_xval),
               ph[0].eq(self.i_phase),
            ]
         with m.Case(1): # 45 .. 90
            m.d.comb += [
               xv[0].eq(-e_yval),
               yv[0].eq(e_xval),
               ph[0].eq(self.i_phase - 0x40000) 
            ]  
         with m.Case(2): # 90 .. 135
            m.d.comb += [
               xv[0].eq(-e_yval),
               yv[0].eq(e_xval),
               ph[0].eq(self.i_phase - 0x80000)
            ]
         with m.Case(3): # 135 .. 180
            m.d.comb += [
               xv[0].eq(-e_xval),
               yv[0].eq(-e_yval),
               ph[0].eq(self.i_phase - 0x80000)
            ]
         with m.Case(4): # 180 .. 225
            m.d.comb += [
               xv[0].eq(-e_xval),
               yv[0].eq(-e_yval),
               ph[0].eq(self.i_phase - 0x80000)   
            ]
         with m.Case(5): # 225 .. 270
            m.d.comb += [
               xv[0].eq(e_yval),
               yv[0].eq(-e_xval),
               ph[0].eq(self.i_phase - 0xc0000)
            ]
         with m.Case(6): # 270 .. 315
            m.d.comb += [
               xv[0].eq(e_yval),
               yv[0].eq(-e_xval),
               ph[0].eq(self.i_phase - 0xc0000)
            ]
         with m.Case(7): # 315 .. 360, No change
            m.d.comb += [
               xv[0].eq(e_xval),
               yv[0].eq(e_yval),
               ph[0].eq(self.i_phase)
            ]

         with m.Default():
            m.d.comb += [
               xv[0].eq(e_xval),
               yv[0].eq(e_yval),
               ph[0].eq(self.i_phase)
            ]
    # --Step3: CORDIC rotations
    # TODO: Make function that generates CORDIC angles
      cordic_angle = [
            0x12e40, 0x09fb3, 0x05111, 0x028b0, 0x0145d, 0x00a2f, 0x00517, 0x0028b,
            0x00145, 0x000a2, 0x00051, 0x00028, 0x00014, 0x0000a, 0x00005, 0x00002
      ]

      for i in range(NSTAGES):
         
         # Do nothing but move our outputs forward one stage
         with m.If(cordic_angle[i] == 0 or i > self.word_bits):
            m.d.comb += [
               xv[i+1].eq(xv[i]),
               xv[i+1].eq(yv[i]),
               ph[i+1].eq(ph[i])
            ]
         # if phase is negative, rotate clockwise
         with m.Elif(ph[i][self.phase_bits-1] == 1):
            m.d.comb += [
               xv[i+1].eq(xv[i] + (yv[i] >> (i+1))),
               xv[i+1].eq(yv[i] - (xv[i] >> (i+1))),
               ph[i+1].eq(ph[i] + cordic_angle[i])
            ]
         # if phase is positive, rotate counter-clockwise
         with m.Else():
            m.d.comb += [
               xv[i+1].eq(xv[i] - (yv[i] >> (i+1))),
               xv[i+1].eq(yv[i] + (xv[i] >> (i+1))),
               ph[i+1].eq(ph[i] - cordic_angle[i])
            ]
       
       # --Step4: Round our result towards even
      m.d.comb += [
         pre_xval.eq(
            xv[NSTAGES] + 
            Cat(
               (~xv[NSTAGES][self.word_bits - self.output_bits]).replicate(self.word_bits - self.output_bits - 1), 
               xv[NSTAGES][self.word_bits - self.output_bits], 
               Const(0, self.output_bits)
            )
         ),
         pre_yval.eq(
            yv[NSTAGES] + 
            Cat(
               (~yv[NSTAGES][self.word_bits - self.output_bits]).replicate(self.word_bits - self.output_bits - 1), 
               yv[NSTAGES][self.word_bits - self.output_bits], 
               Const(0, self.output_bits)
            )
         )
      ]

      # --Step5: Output registers
      with m.If(self.i_reset):
         m.d.sync += [
            self.o_xval.eq(0),
            self.o_yval.eq(0)
         ]
      with m.Else():
         m.d.sync += [
            self.o_xval.eq(pre_xval >> (self.word_bits - self.output_bits)),
            self.o_yval.eq(pre_yval >> (self.word_bits - self.output_bits))
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
    parser.add_argument("-ib", "--input-bits", type=int, default=13, help="Number of input bits")
    parser.add_argument("-ob", "--output-bits", type=int, default=13, help="Number of output bits")
    parser.add_argument("-wb", "--word-bits", type=int, default=16, help="Number of word bits")
    parser.add_argument("-pb", "--phase-bits", type=int, default=20, help="Number of phase bits")
    parser.add_argument("-s",  "--simulate", action="store_true", help="Simulate Blinky Example")
    parser.add_argument("-gw", "--gtkwave", action="store_true", help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency", type=float, default=80.0, help="Clock frequency in MHz for simulation")
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
        
        input_bits = args.input_bits if args.input_bits is not None else 13
        output_bits = args.output_bits if args.output_bits is not None else 13
        word_bits = args.word_bits if args.word_bits is not None else 16
        phase_bits = args.phase_bits if args.phase_bits is not None else 20
        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 80.0
        runtime = args.runtime if args.runtime is not None else 100
        do_program = args.do_program

    if args.simulate:
            
            def testbench():

                print(f"Test: Starting Sine Generator CORDIC Amaranth Simulation with clock frequency of {clock_frequency} MHz") # TODO:Make it generic

                print("Test: Initializing inputs to 0")
                # Initializing Inputs to 0 #

                print("------ Waiting 1 cycle so all inputs are defined ------")

                yield Tick()

                assertions_passed = 0
                assertions_failed = 0

                for _ in range(runtime):
                  yield Tick() 

                print("------ Assertions passed for this input ------ ")
                print(f"----Summary of {top_name} module ----")
                print(f"Summary: Clock frequency of simulation: {clock_frequency} MHz")
                print(f"Summary: Input bit width: {input_bits}")
                print(f"Summary: Output bit width: {output_bits}")
                print(f"Summary: Word bit width: {word_bits}")
                print(f"Summary: Phase bit width: {phase_bits}")
                print(f"Summary: Total number of assertions passed: {assertions_passed}")
                print(f"Summary: Total number of assertions failed: {assertions_failed}")
                print(f"Summary: Runtime of simulation in checks: {runtime}")

            # Instantiate the PWM module
            dut = sine_generator_cordic(input_bits, output_bits, word_bits, phase_bits)

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
            plat.build(sine_generator_cordic(input_bits, output_bits, word_bits, phase_bits), do_program=do_program)

    elif args.verilog: # TODO: Maybe change from top ---> mixer for clarity?
            top = sine_generator_cordic(input_bits, output_bits, word_bits, phase_bits)
            ports = []

            # Adding xv0 to xv16 and yv0 to yv16 ports
            for i in range(17):
               ports.append(getattr(top, f'xv{i}'))
               ports.append(getattr(top, f'yv{i}'))
               ports.append(getattr(top, f'ph{i}'))

            # Adding other ports
            ports.extend([
               top.i_reset,
               top.i_xval,
               top.i_yval,
               top.i_phase,
               top.o_xval,
               top.o_yval,
               top.o_phval,
               top.pre_xval,
               top.pre_yval,
               top.e_xval,
               top.e_yval
            ])

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, ports=ports))

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/6/04 TH: Initial Creation   
 2024/7/01 TH: Revision 
"""