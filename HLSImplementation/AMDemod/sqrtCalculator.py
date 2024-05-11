from amaranth import *
from amaranth.back import verilog

class SqrtCalculator(Elaboratable):

 def __init__(self):
     # Input
     self.num = Signal(32)
     # Output
     self.sqrt_result = Signal(16)

     # Intermediate signals
     self.a = Signal(32)
     self.q = Signal(16)
     self.left = Signal(18) # Input to adder/sub
     self.right = Signal(18) # Input to adder/sub
     self.r = Signal(18) # Remainder
 
 def elaborate(self, platform):
     m = Module()

     """
     # Intermediate signals
     a = Signal(32)
     q = Signal(16)
     left = Signal(18) # Input to adder/sub
     right = Signal(18) # Input to adder/sub
     r = Signal(18) # Remainder """

     with m.If(ResetSignal()):
         self.a.eq(self.num)
         self.q.eq(0)
         self.left.eq(0)
         self.right.eq(0)
         self.r.eq(0)
     with m.Else():
             # Main iterative loop for sqrt calculation
             for i in range(1):
                 
                 m.d.comb += self.right.eq(Cat(1, self.r[17], self.q))
                 m.d.comb += self.left.eq(Cat(self.a[30:32], self.r[0:16]))
                 m.d.comb += self.a.eq(Cat(0, 0, self.a[0:30]))
                 
             
                 with m.If(self.r[17]):
                     m.d.comb += self.r.eq(self.left + self.right)
                 with m.Else():
                     m.d.comb += self.r.eq(self.left - self.right)
                     m.d.comb += self.q.eq(Cat(~self.r[17], self.q[0:15]))

             m.d.comb += self.sqrt_result.eq(self.q)
 
     return m
 
 # Instantiate the Mixer module
#top = SqrtCalculator()

# Define all the ports for the Mixer module
#ports = [top.num, top.sqrt_result]

# Convert the design to Verilog and write it to a file
#verilog_code = verilog.convert(top, ports=ports, name="sqrtCalculator")  # Include ports explicitly
#with open("SqrtCalculator.v", "w") as f:
#    f.write(verilog_code)