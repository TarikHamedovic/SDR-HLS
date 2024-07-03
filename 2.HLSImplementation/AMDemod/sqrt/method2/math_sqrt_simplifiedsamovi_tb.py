import cocotb
from cocotb.triggers import Timer
from cocotb.result import TestFailure

@cocotb.test()
async def math_sqrt_simplifiedsamovi_tb(dut):
    xWIDTH = 8
    yWIDTH = 4

    await Timer(100, units='ns')  # wait 100 ns for global reset to finish

    # Loop through all possible values of x and y
    for x in range(2**xWIDTH):
        for y in range(1, 2**yWIDTH):  # y starts from 1 to avoid division by zero
            # Set input values
            dut.x.value = x
            dut.y.value = y

            # Wait for some time to simulate
            await Timer(100, units='ns')

            # Read output values
            q = dut.q.value.integer
            r = dut.r.value.integer

            # Check the division result
            expected_q = x // y
            expected_r = x % y

            if q != expected_q or r != expected_r:
                raise TestFailure(f"{x} / {y} != {q} r{r}, expected {expected_q} r{expected_r}")

    dut._log.info("EOT")

