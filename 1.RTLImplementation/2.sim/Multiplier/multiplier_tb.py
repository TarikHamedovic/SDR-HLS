import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer
import random

@cocotb.test()
async def test_multiplier(dut):
    """ Test the Multiplier Top Module """

    # Generate clock
    clock = Clock(dut.Clock, 10, units="ns")  # 100 MHz clock
    cocotb.start_soon(clock.start())

    # Initialize inputs
    dut.ClkEn.value = 0
    dut.Aclr.value = 0
    dut.DataA.value = 0
    dut.DataB.value = 0

    # Wait for a few clock cycles
    await RisingEdge(dut.Clock)
    await RisingEdge(dut.Clock)

    # Enable the clock and apply input values
    dut.ClkEn.value = 1

    # Test cases
    test_data = [
        (0, 0),
        (1, 1),
        (1234, 5678),
        (2047, 2047),  # Maximum values for 12-bit signed numbers
        (-1024, 1024),
        (random.randint(0, 2047), random.randint(0, 2047))  # Random test
    ]

    for dataA, dataB in test_data:
        # Apply inputs
        dut.DataA.value = dataA
        dut.DataB.value = dataB

        await RisingEdge(dut.Clock)

        # Wait for output to stabilize
        await Timer(10, units="ns")

        # Compute expected result
        expected_result = (dataA * dataB) & ((1 << 24) - 1)

        # Check the result
        assert dut.Result.value == expected_result, f"Test failed with DataA={dataA}, DataB={dataB}. Expected Result={expected_result}, got {dut.Result.value}"

        # Print result for each test case
        print(f"Test passed with DataA={dataA}, DataB={dataB}. Result={dut.Result.value}")
