import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer
import math
import matplotlib.pyplot as plt


def print_vars(dut):
   # Log monitored variables #
    dut._log.info(f"Monitor: i_reset={dut.i_reset.value}, i_ce={dut.i_ce.value}")
    dut._log.info(f"Monitor: i_xval={dut.i_xval.value}, i_yval={dut.i_yval.value}, i_phase={dut.i_phase.value}, o_xval={dut.o_xval.value}, o_yval={dut.o_yval.value}")
    #dut._log.info(f"Monitor: xv={dut.xv.value}, yv={dut.yv.value}, ph={dut.ph.value}")

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
    phase_increment = 19661
    dut.i_ce.value = 1
    dut.i_xval.value = 4095
    dut.i_yval.value = 0
    dut.i_phase.value = 0

    await RisingEdge(dut.i_clk)
    print_vars(dut)

    x_values = []
    y_values = []

# Repeat for 100 cycles of 18 iterations each
    for cycle in range(1000):
        dut._log.info(f"Cycle {cycle}")
        for i in range(19):
            # Log each iteration within the current cycle
            dut._log.info(f"Iteration {i}")
            await RisingEdge(dut.i_clk)
            print_vars(dut)
            # On every 19th iteration, increment i_phase
            if (i == 18):
                dut.i_phase.value = (dut.i_phase.value + phase_increment) % (1 << 20)  # assuming a 20-bit phase
                x_decimal = dut.o_xval.value.signed_integer
                y_decimal = dut.o_yval.value.signed_integer
                x_values.append(x_decimal)
                y_values.append(y_decimal)
    
    dut._log.info(f"Monitor: x_values = {x_values}")
    plt.plot(x_values)
    plt.plot(y_values)
    plt.show()

        




