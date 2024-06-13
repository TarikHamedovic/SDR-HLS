"""
-----------------------------------------------------------------------------
HLS Implementation for CORDIC Sinewave Generator 
Based on: https://zipcpu.com/dsp/2017/08/30/cordic.html
-----------------------------------------------------------------------------
"""

from amaranth import *
from amaranth.sim import *
from amaranth.back import verilog

import argparse
import subprocess
import importlib
import os
import shutil

import random

top_name = "sine_generator_cordic"

class sine_generator_cordic(Elaboratable):
   def __init__(self, input_bits = 13, output_bits = 13, word_bits = 16, phase_bits = 20):
      # Define the module's ports

      # Parameters
      self.input_bits = input_bits
      self.output_bits = output_bits
      self. word_bits = word_bits
      self.phase_bits = phase_bits

      # Inputs
      self.i_reset = Signal()
      self.i_xval  = Signal(signed(input_bits))
      self.i_yval  = Signal(signed(input_bits))
      self.i_phase = Signal(phase_bits)

      # Outputs
      self.o_xval  = Signal(signed(output_bits))
      self.o_yval  = Signal(signed(output_bits))
      self.o_phval = Signal(phase_bits)

   def elaborate(self, platform):
      m = Module()

      # Local Parameter
      NSTAGES = Const(16)
      # Internal registers
      # Declare variables for all of the separate stages
      e_xval = Signal(signed(self.word_bits))
      e_yval = Signal(signed(self.word_bits))

      xv = Array(Signal(signed(self.word_bits)) for _ in range(NSTAGES + 1))
      yv = Array(Signal(signed(self.word_bits)) for _ in range(NSTAGES + 1))
      #yv = Array.like(xv) TODO: Try .like

      ph = Array(Signal(self.phase_bits) for _ in range(NSTAGES))

      pre_xval = Signal(self.word_bits)
      pre_yval = Signal(self.word_bits)

      # CORDIC Comb Stage

      #-- Step1: Sign extend our inputs
      # In Amaranth Cat() function automatically sign extends if the input is signed
      m.d.comb += [
         e_xval.eq(Cat(Const(0, self.word_bits-self.input_bits), self.i_xval)),
         e_yval.eq(Cat(Const(0, self.word_bits-self.input_bits), self.i_yval))
      ]

      #-- Step2: Pre-CORDIC rotation
      with m.Switch(self.i_phase[self.phase_bits - 3:]):
         # TODO: Shorten the cases under one case like with m.Case(1,2)
         with m.Case(0): # 0 .. 45, No change
            m.d.comb += [
               xv[0].eq(e_xval),
               yv[0].eq(e_xval),
               ph[0].eq(self.i_phase),
            ]
         with m.Case(1): # 45 .. 90
            m.d.comb += [
               xv[0].eq(-e_yval),
               yv[0].eq(e_xval),
               ph[0].eq(self.i_phase - 0x40000) 
            ]  
         with m.Case(2): # 90 .. 135
            m.d.comb += [
               xv[0].eq(-e_yval),
               yv[0].eq(e_xval),
               ph[0].eq(self.i_phase - 0x80000)
            ]
         with m.Case(3): # 135 .. 180
            m.d.comb += [
               xv[0].eq(-e_xval),
               yv[0].eq(-e_yval),
               ph[0].eq(self.i_phase - 0x80000)
            ]
         with m.Case(4): # 180 .. 225
            m.d.comb += [
               xv[0].eq(-e_xval),
               yv[0].eq(-e_yval),
               ph[0].eq(self.i_phase - 0x80000)   
            ]
         with m.Case(5): # 225 .. 270
            m.d.comb += [
               xv[0].eq(e_yval),
               yv[0].eq(-e_xval),
               ph[0].eq(self.i_phase - 0xc0000)
            ]
         with m.Case(6): # 270 .. 315
            m.d.comb += [
               xv[0].eq(e_yval),
               yv[0].eq(-e_xval),
               ph[0].eq(self.i_phase - 0xc0000)
            ]
         with m.Case(7): # 315 .. 360, No change
            m.d.comb += [
               xv[0].eq(e_xval),
               yv[0].eq(e_yval),
               ph[0].eq(self.i_phase)
            ]

         with m.Default():
            m.d.comb += [
               xv[0].eq(e_xval),
               yv[0].eq(e_yval),
               ph[0].eq(self.i_phase)
            ]
    # --Step3: CORDIC rotations
    # TODO: Make function that generates CORDIC angles
      cordic_angle = [
            0x12e40, 0x09fb3, 0x05111, 0x028b0, 0x0145d, 0x00a2f, 0x00517, 0x0028b,
            0x00145, 0x000a2, 0x00051, 0x00028, 0x00014, 0x0000a, 0x00005, 0x00002
      ]

      for i in range(NSTAGES):
         
         # Do nothing but move our outputs forward one stage
         with m.If(cordic_angle[i] == 0 or i > self.word_bits):
            m.d.comb += [
               xv[i+1].eq(xv[i]),
               xv[i+1].eq(yv[i]),
               ph[i+1].eq(ph[i])
            ]
         # if phase is negative, rotate clockwise
         with m.Elif(ph[i][self.phase_bits-1] == 1):
            m.d.comb += [
               xv[i+1].eq(xv[i] + (yv[i] >> (i+1))),
               xv[i+1].eq(yv[i] - (xv[i] >> (i+1))),
               ph[i+1].eq(ph[i] + cordic_angle[i])
            ]
         # if phase is positive, rotate counter-clockwise
         with m.Else():
            m.d.comb += [
               xv[i+1].eq(xv[i] - (yv[i] >> (i+1))),
               xv[i+1].eq(yv[i] + (xv[i] >> (i+1))),
               ph[i+1].eq(ph[i] - cordic_angle[i])
            ]
       
       # --Step4: Round our result towards even
      m.d.comb += [
         pre_xval.eq(xv[NSTAGES] + Cat())    
      ]