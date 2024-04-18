from amaranth import *
from amaranth.back import verilog

class Mixer(Elaboratable):

    def __init__(self):
        # Define the module's ports
        # Inputs
        self.clk = Signal() # Clock signal
        self.RFIn = Signal() # RF input signal
        self.sin_in = Signal(signed(12)) # Sine input
        self.cos_in = Signal(signed(12)) # Cosine input

        # Outputs
        self.RFOut = Signal()
        self.MixerOutSin = Signal(signed(12))
        self.MixerOutCos = Signal(signed(12))
        self.leds = Signal()

        # Internal Registers
        self.RFInR1 = Signal(reset=1)
        self.RFInR = Signal(reset=1)

    
    def elaborate(self, platform):
        m = Module()

        m.d.sync += [
            self.RFInR1.eq(self.RFIn),
            self.RFInR.eq(self.RFInR1)
        ]

        m.d.comb += self.RFOut.eq(self.RFInR1)
        
        m.d.comb += self.leds.eq(1)

        with m.If(self.RFInR == 0):
            m.d.sync += [
                self.MixerOutSin.eq(self.sin_in),
                self.MixerOutCos.eq(self.cos_in) 
            ]
        with m.Else():
            m.d.sync += [
                self.MixerOutSin.eq(-self.sin_in),
                self.MixerOutCos.eq(-self.cos_in)
            ]
        return m

# Instantiate the Mixer module
top = Mixer()

# Define all the ports for the Mixer module
ports = [top.clk, top.RFIn, top.sin_in, top.cos_in, top.RFOut, top.MixerOutSin, top.MixerOutCos, top.leds]

# Convert the design to Verilog and write it to a file
verilog_code = verilog.convert(top, ports=ports, name="Mixer")  # Include ports explicitly
with open("mixer.v", "w") as f:
    f.write(verilog_code)
