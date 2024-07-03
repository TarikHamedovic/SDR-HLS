import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer


def print_vars(dut):
    cocotb.log.info(f"rad: {dut.rad.value}")
    cocotb.log.info(f"root: {dut.root.value}")
    cocotb.log.info(f"rem: {dut.rem.value}")
    cocotb.log.info(f"x: {dut.x.value}")
    cocotb.log.info(f"q: {dut.q.value}")
    cocotb.log.info(f"ac: {dut.ac.value}")
    cocotb.log.info(f"test_res: {dut.test_res.value}")
    cocotb.log.info(f"start: {dut.start.value}")
    cocotb.log.info(f"busy: {dut.busy.value}")
    cocotb.log.info(f"valid: {dut.valid.value}")


@cocotb.test()
async def test_sqrt_int(dut):
    # Create a 10ns period clock on the clk signal
    clock = Clock(dut.clk, 12.5, units="ns")
    cocotb.start_soon(clock.start())

    # Initialize inputs
    dut.start.value = 0
    dut.rad.value = 0
    dut.valid.value = 0
    await RisingEdge(dut.clk)
    print_vars(dut)

    # Set radicand to 121 and start the calculation
    dut.rad.value = 121
    dut.start.value = 1
    await RisingEdge(dut.clk)
    print_vars(dut)
    dut.start.value = 0

    # Wait for the calculation to complete
    while dut.valid.value == 0:
        await RisingEdge(dut.clk)
        cocotb.log.info(f"--i: {dut.i.value.integer}")
        print_vars(dut)

    # Check the results
    root = dut.root.value
    rem = dut.rem.value
    assert root == 11, f"Expected root to be 11, but got {root}"
    assert rem == 0, f"Expected remainder to be 0, but got {rem}"

    # Print the results
    cocotb.log.info(f"Square root of 121 is {root} with remainder {rem}")

