from amaranth import *

class test(Elaboratable):

   def __init__(self):
      
      self.a = Signal(2)
      
   def elaborate(self, platform):
   
      m = Module()
      
      with m.FSM():
         with m.State("STATE1"):
            m.d.sync += self.a.eq(1)
            m.next = "STATE2"
         with m.State("STATE2"):
            m.d.sync += self.a.eq(2)
            m.next = "STATE3"
         with m.State("STATE3"):
            m.d.sync += self.a.eq(3)
            m.next = "STATE1"
     
      return m

if __name__ == "__main__":
   from amaranth.back import verilog

   top = test()
   ports = [top.a]

   with open(f"test.v", "w") as f:
      f.write(verilog.convert(top, ports=ports))
