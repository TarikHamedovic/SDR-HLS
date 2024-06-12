from amaranth import *
from amaranth.sim import *

class Sqrt(Elaboratable):
    def __init__(self):
        self.num = Signal(32)     # Input signal
        self.sqrt = Signal(16)    # Output signal
        self.a = Signal(32, init = 127)       # Internal signals for debugging
        self.q = Signal(16)
        self.left = Signal(signed(18))
        self.right = Signal(signed(18))
        self.r = Signal(signed(18))
        self.i = Signal(4)        # For loop counter

    def elaborate(self, platform):
        m = Module()

        with m.If(self.i < 16):
            m.d.comb += [
                self.right.eq(Cat(1, self.r[17], self.q)),
                self.left.eq(Cat(self.a[30:32], self.r[0:16])),
                self.a.eq(self.a << 2)  # Left shift by 2 bits
            ]
            with m.If(self.r[17] == 1):  # Add if r is negative
                m.d.comb += self.r.eq(self.left + self.right)
            with m.Else():  # Subtract if r is positive
                m.d.comb += self.r.eq(self.left - self.right)
            m.d.comb += [
                self.q.eq(Cat(~self.r[17], self.q[0:15])),
                self.i.eq(self.i + 1)
            ]
        with m.Else():
            m.d.comb += self.sqrt.eq(self.q)

        return m

class Top(Elaboratable):
    def __init__(self):
        self.num = Signal(32)
        self.sqrt = Signal(16)

    def elaborate(self, platform):
        m = Module()

        self.sqrt_module = Sqrt()
        m.submodules.sqrt_module = self.sqrt_module

        m.d.comb += [
            self.sqrt_module.num.eq(self.num),
            self.sqrt.eq(self.sqrt_module.sqrt)
        ]

        return m

# Simulate the top-level module
if __name__ == "__main__":
    from amaranth.sim import Simulator

    top = Top()

    sim = Simulator(top)

    async def testbench(ctx):
        ctx.set(top.num, 127)
        await ctx.delay(1e-6)
        for _ in range(17):
            await ctx.delay(1e-6)
            a = ctx.get(top.sqrt_module.a)
            q = ctx.get(top.sqrt_module.q)
            left = ctx.get(top.sqrt_module.left)
            right = ctx.get(top.sqrt_module.right)
            r = ctx.get(top.sqrt_module.r)
            i = ctx.get(top.sqrt_module.i)
            print(f"Iteration {i}: a={a}, q={q}, left={left}, right={right}, r={r}")

        result = ctx.get(top.sqrt)
        print(f"Square root: {result}")

    sim.add_testbench(testbench)
    with sim.write_vcd("sqrt.vcd", "sqrt.gtkw"):
        sim.run()
