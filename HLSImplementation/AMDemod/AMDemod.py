#!/usr/bin/env python3

import argparse

from amaranth import *
from amaranth.sim import Simulator, Delay
from amaranth_boards.ulx3s import *

class AMDemodulator(Elaboratable):

    def __init__(self, WIDTH=12):
        # Parameter #
        self.WIDTH = WIDTH
        
        # Inputs #
        self.I_in = Signal(signed(WIDTH))
        self.Q_in = Signal(signed(WIDTH))
        
        # Output #
        self.d_out = Signal(signed(2 * WIDTH + 1))

    def elaborate(self, platform):
        m = Module()

        WIDTH = self.WIDTH

        MultDataA = Signal(signed(WIDTH))
        MultDataB = Signal(signed(WIDTH))
        MultResult1 = Signal(signed(2 * WIDTH))

        MultDataC = Signal(signed(WIDTH))
        MultDataD = Signal(signed(WIDTH))
        MultResult2 = Signal(signed(2 * WIDTH))

        SquareSum = Signal(signed(2 * WIDTH + 1))

        m.d.sync += [
            MultDataA.eq(self.I_in),
            MultDataB.eq(self.I_in),
            MultDataC.eq(self.Q_in),
            MultDataD.eq(self.Q_in),
            MultResult1.eq(MultDataA * MultDataB),
            MultResult2.eq(MultDataC * MultDataD),
            SquareSum.eq(MultResult1 + MultResult2)
        ]

        m.d.comb += self.d_out.eq(SquareSum.as_signed())
        
        return m

if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("-s", action="store_true", help="Simulate AMDemodulator")
    
    args = parser.parse_args()
    
    if args.s:
        dut = AMDemodulator()
        sim = Simulator(dut)
        sim.add_clock(1e-6)

        def testbench():
            yield Delay(1e-6)  # Add a small delay for initialization
            for i in range(-2048, 2048, 512):
                for q in range(-2048, 2048, 512):
                    yield dut.I_in.eq(i)
                    yield dut.Q_in.eq(q)
                    yield Delay(1e-6)  # Wait for the next clock cycle
                    print(f"I_in={i}, Q_in={q}, d_out={yield dut.d_out}")

        sim.add_sync_process(testbench)
        with sim.write_vcd("drv.vcd", "drv.gtkw", traces=[dut.I_in, dut.Q_in, dut.d_out]):
            sim.run()
    else:
        platform = ULX3S_85F_Platform()
        platform.build(AMDemodulator())
