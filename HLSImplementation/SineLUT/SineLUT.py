from amaranth import *
from amaranth.sim import *
import numpy as np


def sine_table_generator(lgtable, ow, pb):
    tbl_entries = (1 << lgtable)
    maxv = (1 << (ow - 1)) - 1

    dv_values = []
    dv_values_hex = []

    index_hex_digits = (lgtable + 3) // 4
    value_hex_digits = (ow + 3) // 4

    for k in range(tbl_entries):
        ph = 2.0 * np.pi * k / tbl_entries
        ph += np.pi / tbl_entries

        dv = int(maxv * np.sin(ph)) & ((1 << ow) - 1)
        dv_values.append(dv)

        # Dynamically format index and value based on their required digits
        index_hex = f"{k:0{index_hex_digits}x}".upper()
        signal_value_hex = f"{dv:0{value_hex_digits}x}".upper()

        dv_values_hex.append(signal_value_hex)

    return dv_values_hex


class SineLUT(Elaboratable):
    def __init__(self, SB=12, LB=8, PB=64):
        self.clk = Signal()
        self.rst = Signal()
        self.sample_clock_ce = Signal()
        self.phase_inc_carrGen = Signal(signed(PB))
        self.sinewave = Signal(signed(SB))

        self.SB = SB
        self.LB = LB
        self.PB = PB

    def elaborate(self, platform):
        m = Module()

        phase = Signal(self.PB)

        with m.If(self.rst):
            m.d.sync += phase.eq(0)
        with m.Elif(self.sample_clock_ce):
            m.d.sync += phase.eq(phase + self.phase_inc_carrGen)

        sinewave_lut = sine_table_generator(self.LB, self.SB, self.PB)
        lut_array = Array(Const(int(val, 16), signed(self.SB)) for val in sinewave_lut)

        m.d.sync += self.sinewave.eq(lut_array[phase[self.PB-self.LB : self.PB-1 ]])

        return m