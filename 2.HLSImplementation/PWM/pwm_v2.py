#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
HLS Implementation for PWM.v module
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
    def __init__(self, input_bits = 12, counter_bits = 10):
        # Define the module's ports

        # Parameters
        self.input_bits = input_bits
        self.counter_bits = counter_bits

        # Inputs
        self.DataIn    = Signal(self.input_bits)

        # Outputs
        self.PWMOut    = Signal()

    def elaborate(self, platform):

        m = Module()

        # Internal registers        
        self.DataInReg = Signal(self.input_bits) # Register to store adjusted DataIn
        self.counter   = Signal(self.counter_bits) # n-bit counter

        # Counter that increments on every positive edge of the clock
        m.d.sync += self.counter.eq(self.counter + 1),
        
        # Update DataInReg on counter rollover
        with m.If(self.counter == 0):
            m.d.sync += self.DataInReg.eq(self.DataIn + 512)

        # Compare the counter with the lower 10 bits of DataInReg to determine PWM output
        with m.If(self.counter > self.DataInReg[:10]):
            m.d.sync += self.PWMOut.eq(0)
        with m.Else():
            m.d.sync += self.PWMOut.eq(1)

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
    parser.add_argument("-cb", "--counter-bits", type=int, default=10, help="Number of counter bits")
    parser.add_argument("-s",  "--simulate", action="store_true", help="Simulate Blinky Example")
    parser.add_argument("-gw", "--gtkwave", action="store_true", help="Open GTKWave after simulation")
    parser.add_argument("-cf", "--clock-frequency", type=float, default=1.0, help="Clock frequency in MHz for simulation")
    parser.add_argument("-b",  "--build", action="store_true", help="Build The Blinky Example")
    parser.add_argument("-dp", "--do-program", action="store_true", help="Program the device after building")
    parser.add_argument("-v",  "--verilog", action="store_true", help="Generate Verilog for Blinky Example")
    parser.add_argument("-p",  "--platform", type=str, required=False, help="Platform module (e.g., amaranth_boards.ulx3s.ULX3S_85F_Platform)")
    parser.add_argument("-rt", "--runtime", type=int, default=4, help="Testbench runtime in clock cycles")
    parser.add_argument("-c",  "--clean", action="store_true", help="Clean generated files and build directory")

    args = parser.parse_args()

    if args.clean:
        clean()

    else:
        
        input_bits = args.input_bits if args.input_bits is not None else 12
        counter_bits = args.counter_bits if args.counter_bits is not None else 10
        clock_frequency = args.clock_frequency if args.clock_frequency is not None else 1.0
        runtime = args.runtime if args.runtime is not None else 4
        do_program = args.do_program

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


            def calculate_expected_output(counter, data_in_reg, counter_bits):
                mask = (1 << counter_bits) - 1  # Create a mask for the given bit width
                return 1 if counter < (data_in_reg & mask) + 2 else 0 # Added 2 because of delay to enter the DataInValue to DataInReg and 1 more delay to pass the value to PWMOut

            # NOTE: Testbench sometimes fails...
            # But cocotb testbench of the verilog file works fine
            async def testbench(ctx):
                print(f"Test: Starting PWM Amaranth Simulation with clock frequency of {clock_frequency} MHz")

                print("Test: Initializing inputs to 0")
                ctx.set(dut.DataIn, 0)
                ctx.set(dut.counter, 0)

                print("------ Waiting 1 cycle so all inputs are defined ------")
                await ctx.tick()

                assertions_passed = 0
                assertions_failed = 0

                for iteration in range(runtime):
                    print(f"Test: Generating random inputs for iteration {iteration + 1}")
                    DataIn_random_value = random.randint(-2**(input_bits-1), 2**(input_bits-1)-1)
                    ctx.set(dut.DataIn, DataIn_random_value)

                    print(f"Test: Applying random input value {DataIn_random_value}...")
                    await ctx.tick()
                    await ctx.tick()
                    print("------ Loaded Values ------")

                    ctx.set(dut.counter, 0)
                    await ctx.tick()

                    for _ in range(2**counter_bits - 1):
                        await ctx.tick()
                        counter_value = ctx.get(dut.counter)
                        data_in_reg_value = ctx.get(dut.DataInReg)
                        expected_output = calculate_expected_output(counter_value, data_in_reg_value, counter_bits)
                        actual_output = ctx.get(dut.PWMOut)

                        try:
                            assert actual_output == expected_output, f"Assertion failed: DataIn = {ctx.get(dut.DataIn)}, DataInReg = {data_in_reg_value}, counter = {counter_value}: expected {expected_output}, got {actual_output}"
                            assertions_passed += 1
                        except AssertionError as e:
                            print(e)
                            assertions_failed += 1

                        table_data = [
                            ["Variable", "Actual", "Expected", "Correct"],
                            ["counter", counter_value, "-", "-"],
                            ["DataIn", DataIn_random_value, DataIn_random_value, "✓"],
                            ["PWMOut", actual_output, expected_output, "✓" if actual_output == expected_output else "✗"]
                        ]
                        table_title = f"Checking Table Iteration {iteration + 1}"
                        print("\n" + format_table(table_title, table_data))

                    print("------ Assertions passed for this input ------ ")

                summary_table = [
                    ["Metric", "Value"],
                    ["Clock frequency (MHz)", clock_frequency],
                    ["Input bit width", input_bits],
                    ["Counter bit width", counter_bits],
                    ["Total number of assertions passed", assertions_passed],
                    ["Total number of assertions failed", assertions_failed],
                    ["Runtime of simulation in checks", runtime]
                ]
                print("\n" + format_table("Summary", summary_table))

            # Instantiate the PWM module
            dut = PWM(input_bits, counter_bits)

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
            plat.build(PWM(input_bits, counter_bits), do_program=do_program)

    elif args.verilog: 
            top = PWM(input_bits, counter_bits)
            ports = [top.DataIn, top.PWMOut]

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
 2024/6/01 TH: Revision 
 2024/6/10 TH: Added ArgumentParsers
"""
