import cocotb
from cocotb.triggers import RisingEdge
from cocotb.binary import BinaryValue
import random
from cocotb.clock import Clock


@cocotb.test()
async def test_mixer_behavior(dut):
    """Test the Mixer behavior."""

    cocotb.start_soon(Clock(dut.clk, 1, units="ns").start())

    # Initial Reset
    dut.RFIn.value = 0
    dut.sin_in.value = 0
    dut.cos_in.value = 0
    await RisingEdge(dut.clk)  # Wait for one clock cycle
    
   
    # Generate random inputs
    sin_val = random.randint(-2048, 2047)  # For a signed 12-bit range
    cos_val = random.randint(-2048, 2047)  # Same as above
    RFIn_val = random.randint(0, 1)

    
    # Apply inputs
    dut.sin_in.value = sin_val
    dut.cos_in.value = cos_val
    dut.RFIn.value = 0
    
    RFInR1_val =  dut.RFInR1.value 
    RFInR_val =  dut.RFInR.value

    dut._log.info("sin_in is %s", dut.sin_in.value)
    dut._log.info("cos_in is %s", dut.cos_in.value)
    dut._log.info("RFIn is %s", dut.RFIn.value)
    dut._log.info("RFInR1 is %s", dut.RFInR1.value)
    dut._log.info("RFInR is %s", dut.RFInR.value)
    dut._log.info("MixerOutSin is %s", dut.MixerOutSin.value)
    dut._log.info("MixerOutCos is %s", dut.MixerOutCos.value)

    await RisingEdge(dut.clk)  # Wait for the clock edge

    dut._log.info("Clock")
    dut._log.info("sin_in is %s", dut.sin_in.value)
    dut._log.info("cos_in is %s", dut.cos_in.value)
    dut._log.info("RFIn is %s", dut.RFIn.value)
    dut._log.info("RFInR1 is %s", dut.RFInR1.value)
    dut._log.info("RFInR is %s", dut.RFInR.value)
    dut._log.info("MixerOutSin is %s", dut.MixerOutSin.value)
    dut._log.info("MixerOutCos is %s", dut.MixerOutCos.value)

    await RisingEdge(dut.clk)  # Wait for the clock edge

    dut._log.info("Clock")
    dut._log.info("sin_in is %s", dut.sin_in.value)
    dut._log.info("cos_in is %s", dut.cos_in.value)
    dut._log.info("RFIn is %s", dut.RFIn.value)
    dut._log.info("RFInR1 is %s", dut.RFInR1.value)
    dut._log.info("RFInR is %s", dut.RFInR.value)
    dut._log.info("MixerOutSin is %s", dut.MixerOutSin.value)
    dut._log.info("MixerOutCos is %s", dut.MixerOutCos.value)


    await RisingEdge(dut.clk)  # Wait for the clock edge

    dut._log.info("Clock")
    dut._log.info("sin_in is %s", dut.sin_in.value)
    dut._log.info("cos_in is %s", dut.cos_in.value)
    dut._log.info("RFIn is %s", dut.RFIn.value)
    dut._log.info("RFInR1 is %s", dut.RFInR1.value)
    dut._log.info("RFInR is %s", dut.RFInR.value)
    dut._log.info("MixerOutSin is %s", dut.MixerOutSin.value)
    dut._log.info("MixerOutCos is %s", dut.MixerOutCos.value)

    await RisingEdge(dut.clk)  # Wait for the clock edge

    # Check the expected result
    expected_sin = sin_val if dut.RFInR.value == 0 else -sin_val
    expected_cos = cos_val if dut.RFInR.value == 0 else -cos_val

    # Convert expected values to binary string, taking care of 12-bit signed representation
    expected_sin_bin = BinaryValue(value=expected_sin, n_bits=12, bigEndian=False, binaryRepresentation=2)
    expected_cos_bin = BinaryValue(value=expected_cos, n_bits=12, bigEndian=False, binaryRepresentation=2)
        

    assert (dut.MixerOutSin.value).signed_integer == expected_sin_bin, f"Mixer output sin mismatch: expected {expected_sin_bin}, got {dut.MixerOutSin.value}"
    assert (dut.MixerOutCos.value).signed_integer == expected_cos_bin, f"Mixer output cos mismatch: expected {expected_cos_bin}, got {dut.MixerOutCos.value}"
