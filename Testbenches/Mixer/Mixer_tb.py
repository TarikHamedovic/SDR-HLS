import cocotb
from cocotb.triggers import RisingEdge
from cocotb.binary import BinaryValue
import random
from cocotb.clock import Clock

def twos_complement(value, bit_width):
    """Compute the two's complement of int value assuming it's of bit_width."""
    if value >= 2**bit_width:
        # This catches when someone tries to give a value that is out of range
        raise ValueError("value out of range")
    if value & (1 << (bit_width - 1)):
        # If the sign bit is set, compute the negative value
        value -= 1 << bit_width
    return value

def invert_twos_complement(value, bit_width=12):
    """Invert a number in two's complement form within a given bit width."""
    # Step 1: Invert all bits
    inverted = ~value
    # Step 2: Mask to bit width to discard extended bits beyond bit_width
    masked_inverted = inverted & ((1 << bit_width) - 1)
    # Step 3: Add 1 to complete the two's complement
    result = (masked_inverted + 1) & ((1 << bit_width) - 1)
    return result


def print_vars(dut):
   # Log monitored variables #
    dut._log.info(f"Monitor: sin_in={dut.sin_in.value}, cos_in={dut.cos_in.value}, RFIn={dut.RFIn.value}, RFInR1={dut.RFInR1.value}, RFInR={dut.RFInR.value}, MixerOutSin={dut.MixerOutSin.value}, MixerOutCos={dut.MixerOutCos.value}")

@cocotb.test()
async def test_mixer_behavior(dut):
   
    cocotb.start_soon(Clock(dut.clk, 1, units="ns").start())

    result = invert_twos_complement(2046, 12)
    result = ~2046
    dut._log.info(f"Result: {result}")

    dut._log.info("Generating random inputs")
    # Generate random inputs
    sin_val = random.randint(-2048, 2047)  # For a signed 12-bit range
    cos_val = random.randint(-2048, 2047)  # Same as above
    RFIn_val = random.randint(0, 1)
    
    # Apply inputs
    dut.sin_in.value = 2047
    dut.cos_in.value = cos_val
    dut.RFIn.value = RFIn_val

    dut._log.info("Applying random inputs")
    await RisingEdge(dut.clk) 
    dut._log.info("Clock cycle")
    print_vars(dut)
    
    await RisingEdge(dut.clk) 
    dut._log.info("Clock Cycle")
    print_vars(dut)

    await RisingEdge(dut.clk) 
    dut._log.info("Clock cycle")
    print_vars(dut)

    await RisingEdge(dut.clk) 
    dut._log.info("Clock cycle")
    print_vars(dut)
    
    expected_sin = sin_val if dut.RFInR.value == 0 else invert_twos_complement(sin_val, 12)
    expected_cos = cos_val if dut.RFInR.value == 0 else invert_twos_complement(cos_val, 12)


    expected_sin_bin = BinaryValue(value=expected_sin, n_bits=12, bigEndian=False, binaryRepresentation=2)
    expected_cos_bin = BinaryValue(value=expected_cos, n_bits=12, bigEndian=False, binaryRepresentation=2)
        

    assert dut.MixerOutSin.value == expected_sin_bin, f"Mixer output sin mismatch: expected {expected_sin_bin}, got {dut.MixerOutSin.value}"
    assert dut.MixerOutCos.value == expected_cos_bin, f"Mixer output cos mismatch: expected {expected_cos_bin}, got {dut.MixerOutCos.value}"
