from amaranth import *
from amaranth.sim import *
from mixer import Mixer

def test_mixer():
    mixer = Mixer()
    sim = Simulator(mixer)
    sim.add_clock(12.5e-9)  # 80 MHz clock frequency

    def process():
        for _ in range(10):  # Simulate for 10 clock cycles
            yield Tick()

        # Test the RFIn functionality
        yield mixer.sin_in.eq(2048)
        yield mixer.cos_in.eq(1024)
        yield mixer.RFIn.eq(1)
        yield Tick()
        print("MixerOutSin:", (yield mixer.MixerOutSin))
        print("MixerOutCos:", (yield mixer.MixerOutCos))

        yield mixer.RFIn.eq(0)
        yield Tick()
        print("MixerOutSin:", (yield mixer.MixerOutSin))
        print("MixerOutCos:", (yield mixer.MixerOutCos))

    sim.add_process(process)

    with sim.write_vcd('bench.vcd', 'bench.gtkw'):
        # Let's run for a quite long time
        sim.run_until(2, )

if __name__ == "__main__":
    test_mixer()