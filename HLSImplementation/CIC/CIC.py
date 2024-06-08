from amaranth import *

class CIC(Elaboratable):

    def __init__(self, WIDTH = 64, DECIMATION_RATIO = 16):
        # Parameters #
        self.WIDTH = WIDTH
        self.DECIMATION_RATIO = DECIMATION_RATIO

        # Inputs #
        self.clk  = Signal()
        self.gain = Signal(8)
        self.d_in = Signal(signed(12))
        # Outputs #
        self.d_out = Signal(signed(12))
        self.d_clk = Signal()

    def elaborate(self, platform):
        m = Module()

        WIDTH = self.WIDTH
        DECIMATION_RATIO = self.DECIMATION_RATIO

        d_tmp    = Signal(signed(WIDTH))
        d_d_tmp  = Signal(signed(WIDTH))

        # Integrator stage registers #
        d1       = Signal(signed(WIDTH))
        d2       = Signal(signed(WIDTH))
        d3       = Signal(signed(WIDTH))
        d4       = Signal(signed(WIDTH))
        d5       = Signal(signed(WIDTH))

        # Comb stage registers #
        d6       = Signal(signed(WIDTH))
        d_d6     = Signal(signed(WIDTH))
        d7       = Signal(signed(WIDTH))
        d_d7     = Signal(signed(WIDTH))
        d8       = Signal(signed(WIDTH))
        d_d8     = Signal(signed(WIDTH))
        d9       = Signal(signed(WIDTH))
        d_d9     = Signal(signed(WIDTH))
        d10      = Signal(signed(WIDTH))

        d_scaled = Signal(signed(WIDTH))
        count    = Signal(16)

        v_comb    = Signal()
        d_clk_tmp = Signal()


        # Integrator section #
        m.d.sync += [ 
            d1.eq(self.d_in + d1),
            d2.eq(d1 + d2),
            d3.eq(d2 + d3),
            d4.eq(d3 + d4),
            d5.eq(d4 + d5)
        ]

        # Decimation #
        with m.If(count == DECIMATION_RATIO -1):
            m.d.sync += [
                count.eq(0),
                d_tmp.eq(d5),
                d_clk_tmp.eq(1),
                v_comb.eq(1)
            ]
   
        with m.Elif(count == DECIMATION_RATIO >> 1):
            m.d.sync += [
                d_clk_tmp.eq(0),
                count.eq(count + 1),
                v_comb.eq(0)
            ]
        with m.Else():
            m.d.sync += [
                count.eq(count + 1),
                v_comb.eq(0)
            ]
        
        m.d.sync += self.d_clk.eq(d_clk_tmp)

        with m.If(v_comb):
            # Comb Section #
            m.d.sync += [
                d_d_tmp.eq(d_tmp),

                d6.eq(d_tmp - d_d_tmp),
                d_d6.eq(d6),

                d7.eq(d6 - d_d6),
                d_d7.eq(d7),

                d8.eq(d7 - d_d7),
                d_d8.eq(d8),

                d9.eq(d8 - d_d8),
                d_d9.eq(d9),

                d10.eq(d9 - d_d9),

                d_scaled.eq(d10),

                self.d_out.eq(d10 >> (WIDTH -12 - self.gain).as_unsigned())
            ]
        return m

if __name__ == "__main__":
    from amaranth.back import verilog

    cic = CIC()
    ports = [cic.clk, cic.gain, cic.d_in, cic.d_out, cic.d_clk]
    verilog_code = verilog.convert(cic, ports=ports)
    with open("cic.v", "w") as f:
        f.write(verilog_code)
        






