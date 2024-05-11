from amaranth import *
from amaranth.back import verilog

class PWM(Elaboratable):
    def __init__(self):
        # Define the module's ports
        # Inputs
        self.clk = Signal()
        self.DataIn = Signal(12)

        # Outputs
        self.PWMOut = Signal()

        # Internal registers
        self.counter = Signal(10) # 10-bit counter
        self.DataInReg = Signal(12) # Register to store adjusted DataIn

    def elaborate(self, platform):
        m = Module()

        # Counter that increments on every positive edge of the clock
        m.d.sync += self.counter.eq(self.counter + 1),
        
        # Update DataInReg on counter rollover
        with m.If(self.counter == 0):
            m.d.sync += self.DataInReg.eq(self.DataIn + 512)

        # Compare the counter with the lower 10 bits of DataInReg to determine PWM output
        with m.If(self.counter > self.DataInReg[:10]):
            m.d.sync += self.PWMOut.eq(0)
        with m.Else():
            m.d.sync += self.PWMOut.eq(1)

        return m

# Instantiate the Mixer module
top = PWM()

# Define all the ports for the Mixer module
ports = [top.clk, top.DataIn, top.PWMOut, top.counter, top.DataInReg]
# Convert the design to Verilog and write it to a file
verilog_code = verilog.convert(top, ports=ports, name="PWM")  # Include ports explicitly
with open("PWM.v", "w") as f:
    f.write(verilog_code)
