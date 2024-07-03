from amaranth import *
from amaranth.sim import Simulator, Settle

class SignalTest(Elaboratable):
    def __init__(self):
        self.test = Signal(4)
        self.slice = Signal(4)

        self.q = Signal(16)
        self.r = Signal(18)
        self.right = Signal(18)

    def elaborate(self, platform):
        m = Module()
        m.d.comb += [
            self.q.eq(9)
        ]

        m.d.comb += self.test.eq(14)
        m.d.comb += self.slice.eq(self.test[0:2])
        m.d.comb += self.right.eq(Cat(Const(1,1), self.r[17], self.q))
        return m

if __name__ == "__main__":


    for i in range(14):
        print(f"{i}")

    test_module = SignalTest()

    sim = Simulator(test_module)
    #sim.add_clock(1e-6)

    async def testbench(ctx):
        
        value = ctx.get(test_module.test)
        print(f"Value of test signal: {value}")
        print(f"Slice of test signal: {ctx.get(test_module.slice)}")
        print(f"Slice of right signal: {ctx.get(test_module.right)}")

    sim.add_testbench(testbench)
    with sim.write_vcd("test.vcd", "test.gtkw"):
        sim.run()
