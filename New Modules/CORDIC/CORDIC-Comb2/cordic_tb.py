import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer
import math
import matplotlib.pyplot as plt


def print_vars(dut):
   # Log monitored variables #
    dut._log.info(f"Monitor: i_reset={dut.i_reset.value}")
    dut._log.info(f"Monitor: i_xval={dut.i_xval.value}, i_yval={dut.i_yval.value}, i_phase={dut.i_phase.value}, o_xval={dut.o_xval.value}, o_yval={dut.o_yval.value}")
    dut._log.info(f"Monitor: xv={dut.xv.value}, yv={dut.yv.value}, ph={dut.ph.value}")

@cocotb.test()
async def test_cordic_sine_cosine(dut):
    """ Test for checking the sine and cosine outputs of the CORDIC module """
    
    # Create a clock
    clock = Clock(dut.i_clk, 12.5, units="ns")  # 80MHz clock
    cocotb.start_soon(clock.start())

    dut._log.info("Starting Test")
    print_vars(dut)

    # Reset the DUT
    dut._log.info("Reset ON")
    dut.i_reset.value = 1
    await RisingEdge(dut.i_clk)
    print_vars(dut)

    dut._log.info("Reset OFF")
    dut.i_reset.value = 0
    await RisingEdge(dut.i_clk)
    print_vars(dut)


    dut._log.info("Input Values")
    #phase_increment = 19661 #for 80 MHz
    phase_increment = 16384 # for 1.25Mhz output frequency
    #phase_increment = 31520 # for 50 MHz
    dut.i_xval.value = 4095
    dut.i_yval.value = 0
    dut.i_phase.value = 0

    await RisingEdge(dut.i_clk)
    print_vars(dut)

    x_values = []
    y_values = []

# Repeat for 500 cycles
    for cycle in range(500):
        dut._log.info(f"Cycle {cycle}")
        # Log each iteration within the current cycle
        await RisingEdge(dut.i_clk)
        print_vars(dut)
        dut.i_phase.value = (dut.i_phase.value + phase_increment) % (1 << 20)  # assuming a 20-bit phase
        x_decimal = dut.o_xval.value.signed_integer
        y_decimal = dut.o_yval.value.signed_integer
        x_values.append(x_decimal)
        y_values.append(y_decimal)
    
    dut._log.info(f"Monitor: x_values = {x_values}")
    plt.plot(x_values)
    plt.plot(y_values)
    plt.show()

        




