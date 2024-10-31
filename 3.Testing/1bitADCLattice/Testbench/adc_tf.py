import cocotb
from cocotb.triggers import RisingEdge, FallingEdge
from cocotb.clock import Clock
import cocotb.triggers

import random
import os
import numpy as np

# Constants
FULL_RANGE_BITS = 16
FULL_RANGE      = 2**FULL_RANGE_BITS

# Clock period in nanoseconds
#clock_value = 16    # --> 62.5 MHz
#clock_value = 12.5  # --> 80 MHz
clock_value = 40    # --> 25 MHz


shared_vars = {
    'analog_input': 0,
    'integrator': FULL_RANGE / 2,
    'analog_value': 0,
    'analog_value2': 0,
    'analog_value3': 0,
    'analog_value4': 0
}

async def generate_am_sine_wave(dut, carrier_frequency=1e6, modulation_frequency=5e3, modulation_index=1):
    """Generate an amplitude-modulated sine wave as analog input with given carrier and modulation frequencies."""
    
    # Calculate the clock period in seconds
    clock_period = clock_value * 1e-9  # Convert nanoseconds to seconds (40 ns)

    # Calculate the phase step per clock cycle for carrier and modulation
    carrier_step = 2 * np.pi * carrier_frequency * clock_period
    modulation_step = 2 * np.pi * modulation_frequency * clock_period

    carrier_phase = 0
    modulation_phase = 0

    while True:
        await RisingEdge(dut.clk_in)

        # Calculate the modulation signal (sinusoidal between 0 and 1)
        modulation_signal = (1 + modulation_index * np.sin(modulation_phase)) / 2

        # Calculate the AM sine wave (carrier * modulation)
        shared_vars['analog_input'] = int(modulation_signal * (np.sin(carrier_phase) + 1) * (FULL_RANGE // 2))

        # Clip the value if it goes beyond the allowable range
        if shared_vars['analog_input'] > 2**FULL_RANGE_BITS - 1:
            dut.analog_input.value = 2**FULL_RANGE_BITS - 1
        else:
            dut.analog_input.value = shared_vars['analog_input']

        # Increment phases for carrier and modulation
        carrier_phase += carrier_step
        modulation_phase += modulation_step

        # Reset phases if they exceed 2*pi
        if carrier_phase >= 2 * np.pi:
            carrier_phase -= 2 * np.pi
        if modulation_phase >= 2 * np.pi:
            modulation_phase -= 2 * np.pi

        cocotb.log.info(f"COROUTINE generate_am_sine_wave: analog_input = {shared_vars['analog_input']}")

async def generate_input_sine_wave(dut):
    """Generate a sine wave signal as analog input."""
    phase = 0
    step = 2 * np.pi / FULL_RANGE
    while True:
        await RisingEdge(dut.clk_in)
        shared_vars['analog_input'] = int((np.sin(phase) + 1) * (FULL_RANGE // 2))
        if(shared_vars['analog_input'] > 2**FULL_RANGE_BITS - 1):
            dut.analog_input.value = 2**FULL_RANGE_BITS - 1
        else:
            dut.analog_input.value = shared_vars['analog_input']
        phase += step
        if phase >= 2 * np.pi:
            phase -= 2 * np.pi
        cocotb.log.info(f"COROUTINE generate_input_sine_wave: analog_input = {shared_vars['analog_input']}")


async def generate_input_sawtooth_ramp(dut):
    """Generate a sawtooth ramp signal as analog input."""
    while True:
        await RisingEdge(dut.clk_in)
        shared_vars['analog_input'] = (shared_vars['analog_input'] + 1) % FULL_RANGE
        cocotb.log.info(f"COROUTINE generate_input_sawtooth_ramp: analog_input = {shared_vars['analog_input']}")
 
async def integrate_feedback(dut): # TODO: Figure out should I use '//' or '/' for division
    while True:
        await RisingEdge(dut.clk_in)
        increase = (FULL_RANGE - shared_vars['integrator']) // (2**(FULL_RANGE_BITS-5))
        decrease = (shared_vars['integrator']) // (2**(FULL_RANGE_BITS-5))
        
        cocotb.log.info(f"COROUTINE integrate_feedback : increase = {increase}, decrease = {decrease}")

        # Check if analog_out is valid
        if dut.analog_out.value.is_resolvable:
            cocotb.log.info(f"COROUTINE integrate_feedback: analog_out = {dut.analog_out.value}")
            if dut.analog_out.value.integer == 1:
                shared_vars['integrator'] += increase    
                cocotb.log.info(f"COROUTINE integrate_feedback: integrator - increase = {shared_vars['integrator']}")
            else:
                shared_vars['integrator'] -= decrease
                cocotb.log.info(f"COROUTINE integrate_feedback: integrator - decrease = {shared_vars['integrator']}")
        else:
            cocotb.log.info("COROUTINE integrate_feedback: analog_out is in high-impedance state ('z')")

async def comparator(dut):
    while True:
        await FallingEdge(dut.clk_in)
        if shared_vars['analog_input'] > shared_vars['integrator']:
            dut.analog_cmp.value = 1
        else:
            dut.analog_cmp.value = 0
        cocotb.log.info(f"COROUTINE comparator: analog_cmp = {dut.analog_cmp.value}")

async def analog_value_delay(dut):
    while True:
        await RisingEdge(dut.clk_in)
        if(shared_vars['analog_input'] == 512):
           shared_vars['analog_value']  = shared_vars['analog_value2']
           shared_vars['analog_value2'] = shared_vars['analog_value3']
           shared_vars['analog_value3'] = shared_vars['analog_value4']
           shared_vars['analog_value4'] = shared_vars['analog_input']
           cocotb.log.info(f"COROUTINE analog_value_delay")


@cocotb.test()
async def adc_tf(dut):
    """Testbench for the ADC."""

    # Initialize the variables
    dut.rstn.value = 0
    dut.analog_cmp.value = 0

    # Starting the clock
    cocotb.start_soon(Clock(dut.clk_in, clock_value, units="ns").start())

    #await RisingEdge(dut.clk_in)

    await cocotb.triggers.Timer(33, units='ns') # Wait for 33 ns

    cocotb.log.info(f"Asserting Reset")
    dut.rstn.value = 1

    await RisingEdge(dut.clk_in)
    
    # Start the sinewave generator
    #cocotb.start_soon(generate_input_sine_wave(dut))
    #dut.analog_input.value = 100
    cocotb.start_soon(generate_am_sine_wave(dut))

    # Start the sawtooth generator
    #cocotb.start_soon(generate_input_sawtooth_ramp(dut))

    # Start the integrate feedback
    cocotb.start_soon(integrate_feedback(dut))

    # Start the comparator
    cocotb.start_soon(comparator(dut))

    # Start the analog value delay
    cocotb.start_soon(analog_value_delay(dut))

    # Optionally add checks and validation here
    #await RisingEdge(dut.clk_in)  # Add a wait to let the simulation run for at least one clock cycle
    cocotb.log.info("Simulation started")
    #await cocotb.triggers.Timer(2199967, units='ns')  # Run simulation for a specified time
    await cocotb.triggers.Timer(4299967, units='ns')  # Run simulation for a specified time

    cocotb.log.info("Simulation completed")
