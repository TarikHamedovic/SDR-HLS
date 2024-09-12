from amaranth import *
from amaranth.sim import *
from amaranth.build import *
from amaranth.back import verilog

import argparse
import subprocess
import importlib
import sys
import os
import shutil

import random

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))) # Needed for paths

from SineLUT.sine_cosine_generator_lut import SineCosineGeneratorLUT
from Mixer.mixer                       import Mixer
from CIC.cic                           import CIC
from AMDemod.amdemod                   import AMDemod
from PWM.pwm                           import PWM
from Uart.UartRX.uart_rx               import UartRX


top_name = "top"


class Top(Elaboratable):
    def __init__(self, DATA_WIDTH = 12, PHASE_WIDTH = 64, LUT_DEPTH = 8, 
                 CIC_REGISTER_WIDTH = 72, CIC_DECIMATION_RATIO = 4096, CIC_GAIN_WIDTH = 8,
                 PWM_COUNT_WIDTH = 10, PWM_OFFSET = 512):

        # Parameters #
        self.DATA_WIDTH           = DATA_WIDTH
        self.PHASE_WIDTH          = PHASE_WIDTH
        self.LUT_DEPTH            = LUT_DEPTH
        self.CIC_REGISTER_WIDTH   = CIC_REGISTER_WIDTH
        self.CIC_DECIMATION_RATIO = CIC_DECIMATION_RATIO
        self.CIC_GAIN_WIDTH       = CIC_GAIN_WIDTH
        self.PWM_COUNT_WIDTH      = PWM_COUNT_WIDTH
        self.PWM_OFFSET           = PWM_OFFSET

        # Inputs #
        self.rx_serial            = Signal()
        self.rf_in                = Signal()

        # Outputs #
        self.leds       = Signal(8)
        self.pwm_out    = Signal()
        self.pwm_out_p1 = Signal()
        self.pwm_out_p2 = Signal()
        self.pwm_out_p3 = Signal()
        self.pwm_out_p4 = Signal()
        self.pwm_out_n1 = Signal()
        self.pwm_out_n2 = Signal()
        self.pwm_out_n3 = Signal()
        self.pwm_out_n4 = Signal()

    def elaborate(self, platform):

        m = Module()

        #m.domains.sync = ClockDomain()
        
        # ============================================#
        #                    pll                      #
        # ============================================#
        
        clocks    = Signal(4)
        clk_80mhz = Signal()
        platform.add_file("ecp5pll.sv", open("ecp5pll.sv", "r").read())
        m.submodules.ecp5pll = Instance("ecp5pll",
            ("p", "in_hz",   25000000),
            ("p", "out0_hz", 80000000),
            ("i", "clk_i",   ClockSignal()),
            ("o", "clk_o",   clocks)
        )

        m.d.comb += [clk_80mhz.eq    (clocks[0]),
                     ClockSignal().eq(clk_80mhz)
        ]
        
        
        # ============================================#
        #         sine & cosine generator             #
        # ============================================#
        m.submodules.sine_cosine_generator = sine_cosine_generator = (
            SineCosineGeneratorLUT(DATA_WIDTH = self.DATA_WIDTH, LUT_DEPTH = self.LUT_DEPTH, PHASE_WIDTH = self.PHASE_WIDTH)
        )

        phase_increment = Signal(signed(self.PHASE_WIDTH))
        lo_sinewave     = Signal(signed(self.DATA_WIDTH))
        lo_cosinewave   = Signal(signed(self.DATA_WIDTH))

        m.d.comb += [
            # Inputs #
            sine_cosine_generator.sample_clock_ce.eq(1),
            sine_cosine_generator.rst.eq            (0),
            sine_cosine_generator.phase_increment.eq(phase_increment),
            # Outputs #
            lo_sinewave.eq                          (sine_cosine_generator.sinewave),
            lo_cosinewave.eq                        (sine_cosine_generator.cosinewave),
        ]

        # ============================================#
        #                  mixer                      #
        # ============================================#
        m.submodules.mixer = mixer = Mixer(DATA_WIDTH=self.DATA_WIDTH)

        mix_sinewave   = Signal(signed(self.DATA_WIDTH))
        mix_cosinewave = Signal(signed(self.DATA_WIDTH))
        diff_out       = Signal()

        m.d.comb += [
            # Inputs #
            mixer.rf_in.eq        (self.rf_in),
            mixer.sinewave_in.eq  (lo_sinewave),
            mixer.cosinewave_in.eq(lo_cosinewave),
            # Outputs #
            diff_out.eq           (mixer.rf_out),
            mix_sinewave.eq       (mixer.sinewave_out),
            mix_cosinewave.eq     (mixer.cosinewave_out),
        ]

        if platform is not None:
            antenna_resource = [
                Resource(
                    "antenna",
                    0,
                    Subsignal(
                        "rf_in",
                        Pins("18+", dir="i", conn=("gpio", 0)),
                        Attrs(
                            IO_TYPE="LVDS",
                            HYSTERESIS="NA",
                            DIFFRESISTOR="OFF",
                            PULLMODE="NONE",
                            OPENDRAIN="OFF",
                        ),
                    ),
                )
            ]

            platform.add_resources(antenna_resource)

            antenna   = platform.request("antenna")
            m.d.comb += self.rf_in.eq(antenna.rf_in.i)

        # ============================================#
        #                  cic filters                #
        # ============================================#

        m.submodules.cic_sine = cic_sine = CIC(
            DATA_WIDTH       = self.DATA_WIDTH,           REGISTER_WIDTH = self.CIC_REGISTER_WIDTH, 
            DECIMATION_RATIO = self.CIC_DECIMATION_RATIO, GAIN_WIDTH     = self.CIC_GAIN_WIDTH
        )
        cic_gain     = Signal(self.CIC_GAIN_WIDTH)

        cic_sine_out = Signal(signed(self.CIC_REGISTER_WIDTH))
        cic_sine_clk = Signal()

        m.d.comb += [
            # Inputs #
            cic_sine.gain.eq   (cic_gain),
            cic_sine.data_in.eq(mix_sinewave),
            # Outputs #
            cic_sine_out.eq    (cic_sine.data_out),
            cic_sine_clk.eq    (cic_sine.data_clk),
        ]

        m.submodules.cic_cosine = cic_cosine =  CIC(
            DATA_WIDTH       = self.DATA_WIDTH,           REGISTER_WIDTH = self.CIC_REGISTER_WIDTH, 
            DECIMATION_RATIO = self.CIC_DECIMATION_RATIO, GAIN_WIDTH     = self.CIC_GAIN_WIDTH
        )
        cic_cosine_out = Signal(signed(self.CIC_REGISTER_WIDTH))
        cic_cosine_clk = Signal()

        m.d.comb += [
            # Inputs #
            cic_cosine.gain.eq   (cic_gain),
            cic_cosine.data_in.eq(mix_cosinewave),
            # Outputs #
            cic_cosine_out.eq    (cic_cosine.data_out),
            cic_cosine_clk.eq    (cic_cosine.data_clk),
        ]

        # ============================================#
        #                  am demodulator             #
        # ============================================#
        m.submodules.amdemod = amdemod = AMDemod(DATA_WIDTH=self.DATA_WIDTH)

        amdemod_out = Signal(self.DATA_WIDTH)

        m.d.comb += [
            # Inputs #
            amdemod.enable.eq    (cic_sine_clk),
            amdemod.inphase.eq   (cic_sine_out),
            amdemod.quadrature.eq(cic_cosine_out),
            # Output #
            amdemod_out.eq       (amdemod.amdemod_out),
        ]

        # ============================================#
        #                     pwm                     #
        # ============================================#
        m.submodules.pwm = pwm = PWM(DATA_WIDTH=self.DATA_WIDTH, COUNT_WIDTH=self.PWM_COUNT_WIDTH, OFFSET=self.PWM_OFFSET)

        m.d.comb += [
            pwm.data_in.eq (amdemod_out), 
            self.pwm_out.eq(pwm.pwm_out)
        ]

        if platform is not None:
            pwm_resource = [
                Resource(
                    "pwm",
                    0,
                    Subsignal(
                        "pwm_out_p1",
                        Pins("0+", dir="o", conn=("gpio", 0)),
                        Attrs(
                            IO_TYPE="LVCMOS33",
                            PULLMODE="NONE",
                            DRIVE="4",
                        ),
                    ),
                    Subsignal(
                        "pwm_out_p2",
                        Pins("1+", dir="o", conn=("gpio", 0)),
                        Attrs(
                            IO_TYPE="LVCMOS33",
                            PULLMODE="NONE",
                            DRIVE="4",
                        ),
                    ),
                    Subsignal(
                        "pwm_out_p3",
                        Pins("2+", dir="o", conn=("gpio", 0)),
                        Attrs(
                            IO_TYPE="LVCMOS33",
                            PULLMODE="NONE",
                            DRIVE="4",
                        ),
                    ),
                    Subsignal(
                        "pwm_out_p4",
                        Pins("3+", dir="o", conn=("gpio", 0)),
                        Attrs(
                            IO_TYPE="LVCMOS33",
                            PULLMODE="NONE",
                            DRIVE="4",
                        ),
                    ),
                    Subsignal(
                        "pwm_out_n1",
                        Pins("4+", dir="o", conn=("gpio", 0)),
                        Attrs(
                            IO_TYPE="LVCMOS33",
                            PULLMODE="NONE",
                            DRIVE="4",
                        ),
                    ),
                    Subsignal(
                        "pwm_out_n2",
                        Pins("5+", dir="o", conn=("gpio", 0)),
                        Attrs(
                            IO_TYPE="LVCMOS33",
                            PULLMODE="NONE",
                            DRIVE="4",
                        ),
                    ),
                    Subsignal(
                        "pwm_out_n3",
                        Pins("6+", dir="o", conn=("gpio", 0)),
                        Attrs(
                            IO_TYPE="LVCMOS33",
                            PULLMODE="NONE",
                            DRIVE="4",
                        ),
                    ),
                    Subsignal(
                        "pwm_out_n4",
                        Pins("7+", dir="o", conn=("gpio", 0)),
                        Attrs(
                            IO_TYPE="LVCMOS33",
                            PULLMODE="NONE",
                            DRIVE="4",
                        ),
                    ),
                    Subsignal(
                        "pwm_out",
                        Pins("8+", dir="o", conn=("gpio", 0)),
                        Attrs(
                            IO_TYPE="LVCMOS33",
                            PULLMODE="NONE",
                            DRIVE="4",
                        ),
                    ),
                )
            ]

            platform.add_resources(pwm_resource)

            pwm_pins = platform.request("pwm", 0)
            m.d.comb += [
                pwm_pins.pwm_out_p1.o.eq(self.pwm_out_p1),
                pwm_pins.pwm_out_p2.o.eq(self.pwm_out_p2),
                pwm_pins.pwm_out_p3.o.eq(self.pwm_out_p3),
                pwm_pins.pwm_out_p4.o.eq(self.pwm_out_p4),
                pwm_pins.pwm_out_n1.o.eq(self.pwm_out_n1),
                pwm_pins.pwm_out_n2.o.eq(self.pwm_out_n2),
                pwm_pins.pwm_out_n3.o.eq(self.pwm_out_n3),
                pwm_pins.pwm_out_n4.o.eq(self.pwm_out_n4),
                pwm_pins.pwm_out.o.eq(self.pwm_out),                                
            ]

        
        # ============================================#
        #               uart reciever                #
        # ============================================#
        # 694
        # 217
        m.submodules.uart_rx = uart_rx = UartRX(CLKS_PER_BIT=217)

        rx_data_valid1 = Signal()
        rx_byte1       = Signal(8)

        m.d.comb += [
            # Input #
            uart_rx.i_Rx_Serial.eq(self.rx_serial),
            # Outputs #
            rx_data_valid1.eq     (uart_rx.o_Rx_DV),
            rx_byte1.eq           (uart_rx.o_Rx_Byte),
        ]

        if platform is not None:
            uart_pins = platform.request("uart", 0)
            m.d.comb += self.rx_serial.eq(uart_pins.rx.i)

            num_leds = 8
            self.leds = [platform.request("led", i) for i in range(num_leds)]

            for i in range(num_leds):
                m.d.comb += [self.leds[i].o.eq(rx_byte1[i])]

        return m

def clean():
    """Remove generated files and directories."""
    files_to_remove = [f"{top_name}.vcd", f"{top_name}.gtkw", f"{top_name}.v"]
    build_dir = "build"
    folders_to_clean = [
        "../top",
        "../SineLUT",
        "../Mixer",
        "../CIC",
        "../AMDemod",
        "../PWM",
        "../Uart/UartRX",
    ]

    # Remove specific files
    for file in files_to_remove:
        try:
            os.remove(file)
            print(f"Removed {file}")
        except FileNotFoundError:
            print(f"{file} not found, skipping")

    # Remove build directory
    if os.path.isdir(build_dir):
        try:
            shutil.rmtree(build_dir)
            print(f"Removed {build_dir} directory")
        except OSError as e:
            print(f"Error removing {build_dir}: {e}")

    # Remove __pycache__ directories in specified folders
    for folder in folders_to_clean:
        folder_path = os.path.abspath(os.path.join(os.path.dirname(__file__), folder))
        for root, dirs, files in os.walk(folder_path):
            if "__pycache__" in dirs:
                pycache_path = os.path.join(root, "__pycache__")
                try:
                    shutil.rmtree(pycache_path)
                    print(f"Removed {pycache_path} directory")
                except OSError as e:
                    print(f"Error removing {pycache_path}: {e}")


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
    parser.add_argument("-b", "--build", action="store_true", help="Build The Example")
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
            ports = [top.rx_serial]

            with open(f"{top_name}.v", "w") as f:
                f.write(verilog.convert(top, name="top", ports=ports))

"""
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/7/10 TH: Initial Creation   
"""
