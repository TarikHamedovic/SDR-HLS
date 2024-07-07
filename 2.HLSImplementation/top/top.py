from amaranth import *

from PWM import PWM
from Mixer import Mixer
from AMDemod import AMDemod
from sine_generator_lut import sine_generator_lut
from ecp5pll import ECP5PLL
from CIC import CIC

class top(Elaboratable):
 def __init__(self):
    
    # Inputs #
    self.i_Rx_Serial    = Signal()
    self.RFIn           = Signal()

    # Outputs #
    self.o_Tx_Serial    = Signal()
    self.led            = Signal(8)
    self.DiffOut        = Signal()
    self.PWMOut         = Signal()
    self.PMWOutP1       = Signal()
    self.PMWOutP2       = Signal()
    self.PMWOutP3       = Signal()
    self.PMWOutP4       = Signal()
    self.PMWOutN1       = Signal()
    self.PMWOutN2       = Signal()
    self.PMWOutN3       = Signal()
    self.PMWOutN4       = Signal()
    self.sinGen         = Signal()
    self.CIC_out_clkSin = Signal()

 def elaboratable(self, platform):

   # Internal registers #
   # Uart Reciever
   o_Rx_DV = Signal()
   o_Rx_DV1 = Signal()
   o_Rx_Byte = Signal(8)
   o_Rx_Byte1 = Signal(8)

   # NCO Signals
   phase_inc_carr = Signal(64)
   phase_inc_carrGen = Signal(64)
   phase_inc_carrGen1 = Signal(64)
   phase_accum = Signal(64)
   cosGen = Signal()
   sinGen = Signal()

   # Mixer Signals
   MixerOutSin = Signal(12)
   MixerOutCos = Signal(12)
   LOSine = Signal(13)
   LOCosine = Signal(13)

   # CIC Signals
   CIC1_outSin = Signal(12)
   CIC1_outCos = Signal(12)
   CIC1_out_clkCos = Signal(12)
   CIC1_out_clkSin = Signal(12)
   CICGain = Signal(8)

   # AMDemodulator Signals
   DemodOut = Signal(12)

   m = Module()

   m.d.comb += [
     self.PWMOutP1.eq(self.PWMOut),
     self.PWMOutP2.eq(self.PWMOut),
     self.PWMOutP3.eq(self.PWMOut),
     self.PWMOutP4.eq(self.PWMOut),
     self.PWMOutN1.eq(~self.PWMOut),
     self.PWMOutN2.eq(~self.PWMOut),
     self.PWMOutN3.eq(~self.PWMOut),
     self.PWMOutN4.eq(~self.PWMOut)
   ]

   Mixer = Mixer(INPUT_BITS = 12)
   m.submodules.Mixer = Mixer

   m.d.comb += [
        
   ]


   return m
