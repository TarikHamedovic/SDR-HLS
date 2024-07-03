import cocotb
from cocotb.triggers import RisingEdge, Timer
from cocotb.clock import Clock
import math

def print_vars(dut):
    dut._log.info(f"Monitor: num = {dut.num.value}, start= {dut.start.value}, counter= {dut.counter.value.integer}")
    dut._log.info(f"Monitor: a= {dut.a.value}, q= {dut.q.value}, left= {dut.left.value}, right= {dut.right.value}, r={dut.r.value}, done= {dut.done.value}, result = {dut.result.value}")

@cocotb.test()
async def sqrt_test(dut):
    """Test the sqrt function in the sqrt_wrapper module"""
    
    clock = Clock(dut.clk, 12.5, units = "ns")
    cocotb.start_soon(clock.start())

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
        
        dut.reset.value = 1
        dut.num.value = num   
        await RisingEdge(dut.clk)
        #print_vars(dut)

        dut.reset.value = 0
        dut.start.value = 1   
        await RisingEdge(dut.clk)
        print_vars(dut)

        await RisingEdge(dut.clk)
        print_vars(dut)

        for _ in range(16):
            await RisingEdge(dut.clk)
            print_vars(dut)

        assert dut.result.value.integer == expected_sqrt, f"Test failed for num={num}: expected {expected_sqrt}, got {dut.result.value.integer}"
        cocotb.log.info(f"Test passed for num={num}: got {dut.result.value.integer}")

    cocotb.log.info("All test cases passed!")
