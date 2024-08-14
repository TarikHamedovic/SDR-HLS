from amaranth import *
from amaranth.sim import *
from amaranth.back import verilog

import argparse
import subprocess
import importlib
import os
import shutil

import random

from AMDemod import AMDemod
from Mixer import Mixer
from sine_generator_lut import sine_generator_lut
from cosine_generator_lut import cosine_generator_lut
from PWM import PWM
from CIC import CIC
from UartRx import uart_rx

top_name = "top"

class Top(Elaboratable):
 def __init__(self):
    
    # Inputs #
    self.i_Rx_Serial    = Signal()
    self.RFIn           = Signal()
    # Outputs #
    self.leds            = Signal(8)
    self.PWMOut         = Signal()
    self.PWMOutP1       = Signal()
    self.PWMOutP2       = Signal()
    self.PWMOutP3       = Signal()
    self.PWMOutP4       = Signal()
    self.PWMOutN1       = Signal()
    self.PWMOutN2       = Signal()
    self.PWMOutN3       = Signal()
    self.PWMOutN4       = Signal()

    self.uart_rx  = uart_rx(CLKS_PER_BIT     = 217)

    self.CIC1     = CIC    (INPUT_BITS       = 12,
                            WIDTH            = 64,
                            DECIMATION_RATIO = 16)
    
    self.CIC2     = CIC    (INPUT_BITS       = 12,
                            WIDTH            = 64,
                            DECIMATION_RATIO = 16)
    
    self.AMDemod  = AMDemod(WIDTH            = 12)

    self.PWM      = PWM    (INPUT_BITS       = 12, 
                            COUNTER_BITS     = 10, 
                            OFFSET           = 512)
    self.sine_generator_lut = sine_generator_lut(SB=12, LB=8, PB=64)
    self.cosine_generator_lut = cosine_generator_lut(CB=12, LB=8, PB=64)

    self.Mixer = Mixer(INPUT_BITS=12)

 def elaborate(self, platform):

   m = Module()

   # Uart Reciever
   # i_Rx_Serial
   o_Rx_DV1 = Signal()
   o_Rx_Byte1 = Signal(8)
   
   if platform is not None:
       uart_pins = platform.request("uart", 0)
       m.d.comb +=  self.i_Rx_Serial.eq(uart_pins.rx.i)
       
       num_leds = 8
       self.leds = [platform.request("led", i) for i in range(num_leds)]
            
       for i in range(num_leds):
         m.d.comb += [
           self.leds[i].o.eq(o_Rx_Byte1[i]),
         ]


   m.submodules.uart_rx = self.uart_rx
   m.d.comb += [
     self.uart_rx.i_Rx_Serial.eq(self.i_Rx_Serial),
     o_Rx_DV1.eq(self.uart_rx.o_Rx_DV),
     o_Rx_Byte1.eq(self.uart_rx.o_Rx_Byte)
   ]

   # Sinusoid Generator
   phase_inc_carrGen = Signal(64)

   # Sine LO Generator
   sinewave = Signal(12)

   m.submodules.sine_generator_lut = self.sine_generator_lut
   m.d.comb += [
       self.sine_generator_lut.sample_clock_ce.eq(1),
       self.sine_generator_lut.rst.eq(0),
       self.sine_generator_lut.phase_inc_carrGen.eq(phase_inc_carrGen),
       sinewave.eq(self.sine_generator_lut.sinewave)
   ]
   # Cosine LO Generator
   cosinewave = Signal(12)

   m.submodules.cosine_generator_lut = self.cosine_generator_lut
   m.d.comb += [
       self.cosine_generator_lut.sample_clock_ce.eq(1),
       self.cosine_generator_lut.rst.eq(0),
       self.cosine_generator_lut.phase_inc_carrGen.eq(phase_inc_carrGen),
       cosinewave.eq(self.cosine_generator_lut.cosinewave)
   ]

   # Mixer
   MixerOutSin = Signal(12)
   MixerOutCos = Signal(12)
   DiffOut = Signal()

   m.submodules.Mixer = self.Mixer
   m.d.comb += [
       self.Mixer.RFIn.eq(self.RFIn),
       self.Mixer.sin_in.eq(sinewave),
       self.Mixer.cos_in.eq(cosinewave),
       DiffOut.eq(self.Mixer.RFOut),
       MixerOutSin.eq(self.Mixer.MixerOutSin),
       MixerOutCos.eq(self.Mixer.MixerOutCos)
   ]

   # CIC
   CICGain = Signal(8)
   
   # CIC Cosine
   CIC1_outSin = Signal(12)
   CIC1_out_clkSin = Signal()
   m.submodules.CIC1 = self.CIC1
   m.d.comb += [
       self.CIC1.Gain.eq(CICGain),
       self.CIC1.d_in.eq(MixerOutSin),
       CIC1_outSin.eq(self.CIC1.d_out),
       CIC1_out_clkSin.eq(self.CIC1.d_clk)
   ]

   # CIC Sine
   CIC1_outCos = Signal(12)
   CIC1_out_clkCos = Signal()
   m.submodules.CIC2 = self.CIC2
   m.d.comb += [
       self.CIC2.Gain.eq(CICGain),
       self.CIC2.d_in.eq(MixerOutCos),
       CIC1_outCos.eq(self.CIC2.d_out),
       CIC1_out_clkCos.eq(self.CIC2.d_clk)
   ]

   # AMDemodulator
   DemodOut = Signal(12)
   
   # Change Clock Domain to CIC1_out_clkSin
   m.submodules.AMDemod = self.AMDemod
   m.d.comb += [
       self.AMDemod.I_in.eq(CIC1_outSin),
       self.AMDemod.Q_in.eq(CIC1_outCos),
       DemodOut.eq(self.AMDemod.d_out)
   ]

   # PWM
   m.submodules.PWM = self.PWM
   m.d.comb += [
       self.PWM.DataIn.eq(DemodOut),
       self.PWMOut.eq(self.PWM.PWMOut)
   ]

   #if platform is not None:     
   # Add connectors for PWMOut signals

   m.d.comb += [
       self.PWMOutP1.eq(self.PWMOut),
       self.PWMOutP2.eq(self.PWMOut),
       self.PWMOutP3.eq(self.PWMOut),
       self.PWMOutP4.eq(self.PWMOut),
       self.PWMOutN1.eq(self.PWMOut),
       self.PWMOutN2.eq(~self.PWMOut),
       self.PWMOutN3.eq(~self.PWMOut),
       self.PWMOutN4.eq(~self.PWMOut),
   ]
   
   phase_inc_carrGen1 = Signal(64)
   o_Rx_DV = Signal()
   o_Rx_Byte = Signal()
   m.d.sync += [
       phase_inc_carrGen1.eq(phase_inc_carrGen),
       o_Rx_DV.eq(o_Rx_DV1),
       o_Rx_Byte.eq(o_Rx_Byte1)
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
        "-cf",
        "--clock-frequency",
        type=float,
        default=1.0,
        help="Clock frequency in MHz for simulation",
    )

    parser.add_argument(
        "-s", "--simulate", action="store_true", help="Simulate  Example"
    )
    parser.add_argument(
        "-gw", "--gtkwave", action="store_true", help="Open GTKWave after simulation"
    )
    parser.add_argument(
        "-b", "--build", action="store_true", help="Build The Example"
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
        default=10,
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
        clock_frequency = (
            args.clock_frequency if args.clock_frequency is not None else 1.0
        )
        runtime = args.runtime if args.runtime is not None else 10
        do_program = args.do_program

        if args.simulate:

            async def testbench(ctx):

                N = ctx.get(dut.N)

                print("Test: Starting Uart Top Amaranth Simulation")

            dut = Top()

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
            plat.build(Top(), do_program=do_program)

        elif args.verilog:
            # Generate Verilog code
            top = Top()
            ports = [top.i_Rx_Serial]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, name = "top", ports=ports))

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/7/10 TH: Initial Creation   
"""