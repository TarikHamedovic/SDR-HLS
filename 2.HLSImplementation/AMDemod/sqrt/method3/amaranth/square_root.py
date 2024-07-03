#!/usr/bin/env python3

"""
-----------------------------------------------------------------------------
HLS Implementation for square_root module
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

top_name = "square_root"

class square_root(Elaboratable):
   def __init__(self, N = 8):
      # Define the module's ports

      # Parameters

      self.N = N

      # Inputs
      self.reset = Signal()
      self.num_in = Signal(N)
      
      # Outputs
      self.done = Signal()
      self.sq_root = Signal(N//2)
      
   def elaborate(self, platform):
      
      m = Module()

      # Internal registers

      a = Signal(self.N)
      left = Signal(self.N//2 + 2)
      right = Signal(self.N//2 + 2)
      r = Signal(self.N//2 + 2)
      q = Signal(self.N//2)
      
      i = Signal(range(self.N//2 +1))

      with m.If(self.reset == 1):
         m.d.sync += [
            self.done.eq(0),
            self.sq_root.eq(0),
            i.eq(0),
            a.eq(0),
            left.eq(0),
            right.eq(0),
            r.eq(0),
            q.eq(0)
         ]
      with m.Else():
         with m.If(i == 0):
            m.d.sync += [
               a.eq(self.num_in),
               self.done.eq(0),
               i.eq(i+1)
            ]    
         with m.Elif(i < self.N//2):
            m.d.sync+= i.eq(i + 1)            

      m.d.sync += [
         right.eq(Cat(Const(1,1), r[self.N//2+1], q)),
         left.eq(Cat(a[self.N-2:self.N-1], r[0:self.N//2-1])),
         a.eq(Cat(a[0:self.N-3], Const(0b00, 2)))
      ]

      with m.If(r[self.N//2 + 1] == 1):
         m.d.sync += r.eq(left + right)
      with m.Else():
         m.d.sync += r.eq(left - right)
      
      m.d.sync += q.eq(Cat(~r[self.N//2+1], q[0:self.N//2-2]))

      with m.If(i == self.N//2):
         m.d.sync += [
            self.done.eq(1),
            i.eq(0),
            self.sq_root.eq(q),
            left.eq(0),
            right.eq(0),
            r.eq(0),
            q.eq(0)
         ]
      return m

if __name__ == "__main__":
    N = 8
    top = square_root(N)
    ports = [top.reset, top.num_in, top.done, top.sq_root]

    with open(f"{top_name}.v", "w") as f:
       f.write(verilog.convert(top, ports=ports))