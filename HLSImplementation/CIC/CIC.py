from amaranth import *

class CIC(Elaboratable):

    def __init__(self, width = 64, decimation_ratio = 16):
        # Parameters #
        self.width = width
        self.decimation_ratio = decimation_ratio

        # Inputs #
        self.clk = Signal()
        self.Gain = Signal(8)
        self.d_in = Signal(12, signed = True)
        # Outputs #
        self.d_out = Signal(12, signed = True)
        self.d_clk = Signal()

    def elaborate(self, platform):
        m = Module()

        d_tmp = Signal(self.width, signed = True)
        d_d_tmp = Signal(self.width, signed = True)

        # Integrator stage registers #
        d1 = Signal(self.width, signed = True)
        d2 = Signal(self.width, signed = True)
        d3 = Signal(self.width, signed = True)
        d4 = Signal(self.width, signed = True)
        d5 = Signal(self.width, signed = True)

        # Comb stage registers #
        d6 = Signal(self.width, signed = True)
        d_d6 = Signal(self.width, signed = True)
        d7 = Signal(self.width, signed = True)
        d_d7 = Signal(self.width, signed = True)
        d8 = Signal(self.width, signed = True)
        d_d8 = Signal(self.width, signed = True)
        d9 = Signal(self.width, signed = True)
        d_d9 = Signal(self.width, signed = True)
        d10 = Signal(self.width, signed = True)

        d_scaled = Signal(self.width, signed = True)
        count = Signal(16, signed = True)

        v_comb = Signal()
        d_clk_tmp = Signal()


        # Integrator section #
        m.d.sync += [ 
            d1.eq(self.d_in + d1),
            d2.eq(d1 + d2),
            d3.eq(d2 + d3),
            d4.eq(d3 + d4),
            d5.eq(d4 + d5)
        ]

        with m.If(count == self.decimation_ratio -1):
            m.d.sync += [
                count.eq(0),
                d_tmp.eq(d5),
                d_clk_tmp.eq(1),
                v_comb.eq(1)
            ]

        with m.Elif(count == self.decimation_ratio >> 1):
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

                d_out.eq(d10 >>> (width -12 - Gain))
            ]
        






