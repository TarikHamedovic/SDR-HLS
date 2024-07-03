import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import math


@cocotb.test()
async def sqrt_test(dut):
    """Test the sqrt function in the sqrt_wrapper module"""

    # Define a set of test cases (input, expected output)
    test_cases = [
        (121, 11),
        (1, 1),
        (4, 2),
        (9, 3),
        (16, 4),
        (25, 5),
        (36, 6),
        (49, 7),
        (64, 8),
        (81, 9),
        (100, 10),
        (121, 11),
        (144, 12),
        (169, 13),
        (196, 14),
        (225, 15),
        (256, 16),
        (289, 17),
        (324, 18),
        (361, 19),
        (400, 20),
        (441, 21),
        (484, 22),
        (529, 23),
        (576, 24),
        (625, 25),
        (676, 26),
        (729, 27),
        (784, 28),
        (841, 29),
        (900, 30),
        (961, 31),
        (1000, 31)
    ]

    for num, expected_sqrt in test_cases:
        
        dut.num.value = num
        
        await Timer(10, units = "ns")

        await Timer(100, units="ns")
        
        assert dut.result.value.integer == expected_sqrt, f"Test failed for num={num}: expected {expected_sqrt}, got {dut.result.value.integer}"
        cocotb.log.info(f"Test passed for num={num}: got {dut.result.value.integer}")

    cocotb.log.info("All test cases passed!")
