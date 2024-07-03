from amaranth import *
from amaranth.build import Platform

class Sqrt(Elaboratable):
    def __init__(self, N=32):
        self.N = N

        # Ports
        self.num = Signal(N)
        self.result = Signal(N // 2)

    def elaborate(self, platform: Platform) -> Module:
        m = Module()

        N = self.N
        a = Array([Signal(N) for _ in range(N // 2 + 1)])
        q = Array([Signal(N // 2) for _ in range(N // 2 + 1)])
        left = Array([Signal(N // 2 + 2) for _ in range(N // 2)])
        right = Array([Signal(N // 2 + 2) for _ in range(N // 2)])
        r = Array([Signal(N // 2 + 2) for _ in range(N // 2 + 1)])

        # Initialize the first element
        m.d.comb += [
            a[0].eq(self.num),
            q[0].eq(0),
            r[0].eq(0)
        ]

        # Generate the calculation steps
        for i in range(N // 2):
            m.d.comb += [
                right[i].eq(Cat(Const(1,1), r[i][N // 2 + 1], q[i])),
                left[i].eq(Cat(a[i][N - 1:N], r[i][0:N//2])),
                a[i + 1].eq(a[i].shift_left(2))
            ]

            with m.If(r[i][N // 2 + 1] == 1):
                m.d.comb += r[i + 1].eq(left[i] + right[i])
            with m.Else():
                m.d.comb += r[i + 1].eq(left[i] - right[i])

            m.d.comb += q[i + 1].eq(Cat(~(r[i + 1][N // 2 + 1]), q[i][0:N//2-1]))

        # Assign the final result
        m.d.comb += self.result.eq(q[N // 2])

        return m

# Example instantiation and simulation
if __name__ == "__main__":
    from amaranth.sim import Simulator
    from amaranth.back import verilog

    def testbench():
        yield sqrt.num.eq(144)
        yield
        yield
        result = yield sqrt.result
        print(f"Square root of 144 is: {result}")

    sqrt = Sqrt(N=16)
    ports = [sqrt.num, sqrt.result]
    with open("sqrt.v", "w") as f:
                f.write(verilog.convert(sqrt, ports=ports))
    #sim = Simulator(sqrt)
    #sim.add_clock(1e-6)  # 1 MHz clock
    #with sim.write_vcd("sqrt.vcd", "sqrt.gtkw"):
    #    sim.run()

