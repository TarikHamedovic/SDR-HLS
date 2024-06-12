from amaranth import *
from amaranth.sim import *

class SqrtCalculator(Elaboratable):
    def __init__(self):
        # Input
        self.num = Signal(32)
        # Output
        self.sqrt_result = Signal(16)
        
        self.counter = Signal(20)

        # Intermediate signals
        self.a = Signal(32)
        self.q = Signal(16)
        self.left = Signal(18)  # Input to adder/sub
        self.right = Signal(18)  # Input to adder/sub
        self.r = Signal(18)  # Remainder

    def elaborate(self, platform):
        m = Module()

        # Main iterative loop for sqrt calculation
        for i in range(16):  # Adjust this range as needed for the precision required
           m.d.comb += [
              self.right.eq(Cat(1, self.r[17], self.q)),
              self.left.eq(Cat(self.a[30:31], self.r[0:15])),
              self.a.eq(Cat(0, 0, self.a[0:29]))
           ]

           with m.If(self.r[17]):
              m.d.comb += self.r.eq(self.left + self.right)
           with m.Else():
              m.d.comb += [
                 self.r.eq(self.left - self.right),
                 self.q.eq(Cat(~self.r[17], self.q[0:15]))
              ]

        m.d.comb += self.sqrt_result.eq(self.q)


        return m

def test_sqrt_calculator():
    dut = SqrtCalculator()

    def testbench():
        yield dut.num.eq(25)  # Set input to 25
        yield Tick()
        assert (yield dut.sqrt_result) == 5, f"Test failed: sqrt_result is {(yield dut.sqrt_result)} but expected 5"
        print(f"Test passed: sqrt_result is {(yield dut.sqrt_result)}")

    sim = Simulator(dut)
    sim.add_clock(1e-6)  # 1 MHz clock
    sim.add_process(testbench)
    with sim.write_vcd("sqrt_calculator.vcd", "sqrt_calculator.gtkw"):
        sim.run()

if __name__ == "__main__":
    test_sqrt_calculator()

