from amaranth import *
from amaranth.sim import *
from SineLUT import SineLUT

def testbench():
    dut = SineLUT()
    sim = Simulator(dut)
    sim.add_clock(1e-6)

    def process():
        yield dut.rst.eq(1)
        yield Tick()
        yield dut.rst.eq(0)
        yield dut.sample_clock_ce.eq(1)
        for _ in range(256):
            yield dut.phase_inc_carrGen.eq(1)
            yield Tick()
            print((yield dut.sinewave))

    sim.add_process(process)
    with sim.write_vcd("simpleSine_waves.vcd", "simpleSine_waves.gtkw"): 
        sim.run()
    

if __name__ == "__main__":
    testbench()
