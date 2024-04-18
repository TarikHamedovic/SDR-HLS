from amaranth import *
from amaranth_boards.ulx3s import *
from mixer import Mixer

platform  = ULX3S_85F_Platform()

m = Module()

Mixer = Mixer()

m.submodules.mixer = Mixer

led0 = platform.request('led', 0)

m.d.comb += [
	led0.o.eq(Mixer.leds[0])
]

platform.build(m, do_program=False)
