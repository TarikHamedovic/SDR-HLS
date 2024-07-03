from amaranth import *
from amaranth.sim import *

class Sqrt(Elaboratable):
    def __init__(self):
        self.num = Signal(32)     # Input signal
        self.sqrt = Signal(16)    # Output signal
        self.a = Signal(32, init=0)       # Internal signals for debugging
        self.q = Signal(16)
        self.left = Signal(signed(18))
        self.right = Signal(signed(18))
        self.r = Signal(signed(18))

    def elaborate(self, platform):
        m = Module()

        a = Signal(32)
        q = Signal(16)
        left = Signal(signed(18))
        right = Signal(signed(18))
        r = Signal(signed(18))

        m.d.comb += [
            a.eq(self.num),
            q.eq(0),
            r.eq(0),
        ]

        for i in range(16):
            m.d.comb += [
                right.eq(Cat(1, r[17], q)),
                left.eq(Cat(a[30:32], r[0:16])),
                a.eq(a << 2)  # Left shift by 2 bits
            ]
            with m.If(r[17] == 1):  # Add if r is negative
                m.d.comb += r.eq(left + right)
            with m.Else():  # Subtract if r is positive
                m.d.comb += r.eq(left - right)
            m.d.comb += [
                q.eq(Cat(~r[17], q[0:15])),
            ]

        m.d.comb += self.sqrt.eq(q)

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
    from amaranth.back import verilog

    top = Top()

    ports = []
    with open(f"sqrt.v", "w") as f:
                f.write(verilog.convert(Top(), ports= []))

    async def testbench(ctx):
        ctx.set(top.num, 121)
        await ctx.delay(10e-6)
        a = ctx.get(top.sqrt_module.a)
        q = ctx.get(top.sqrt_module.q)
        left = ctx.get(top.sqrt_module.left)
        right = ctx.get(top.sqrt_module.right)
        r = ctx.get(top.sqrt_module.r)
        result = ctx.get(top.sqrt)
        print(f"a={a}, q={q}, left={left}, right={right}, r={r}")
        print(f"Square root: {result}")

    sim = Simulator(top)
    sim.add_testbench(testbench)
    with sim.write_vcd("sqrt.vcd", "sqrt.gtkw"):
        sim.run()
