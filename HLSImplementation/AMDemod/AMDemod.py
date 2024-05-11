from amaranth import *
from amaranth.sim import Simulator, Delay, Settle

class AMDemodulator(Elaboratable):

  def __init__(self):
    self.I_in = Signal(signed(12))
    self.Q_in = Signal(signed(12))
    self.d_out = Signal(signed(25))

  def elaborate(self, platform):
    m = Module()

    MultDataA = Signal(signed(12))
    MultDataB = Signal(signed(12))
    MultResult1 = Signal(signed(24))

    MultDataC = Signal(signed(12))
    MultDataD = Signal(signed(12))
    MultResult2 = Signal(signed(24))

    SquareSum = Signal(signed(25))

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
    
def testbench():
    yield Delay(1e-6)  # Add a small delay for initialization
    yield Delay(1e-6)  # Add a small delay for initialization
    yield Delay(1e-6)  # Add a small delay for initialization
    for i in range(-2048, 2048, 512):
        for q in range(-2048, 2048, 512):
            yield dut.I_in.eq(i)
            yield dut.Q_in.eq(q)
            yield Delay(1e-6)  # Wait for the next clock cycle
            yield Delay(1e-6)  # Add a small delay for initialization
            yield Delay(1e-6)  # Add a small delay for initialization
            print(f"I_in={i}, Q_in={q}, d_out={yield dut.d_out}")

dut = AMDemodulator()
sim = Simulator(dut)
sim.add_clock(1e-6)  # Add a 1 MHz clock
sim.add_sync_process(testbench)

sim.run()
    
