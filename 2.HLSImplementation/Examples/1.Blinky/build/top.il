# Automatically generated by Amaranth 0.5.1.dev3. Do not edit.
attribute \generator "Amaranth"
attribute \src "/home/user/SDR-HLS/2.HLSImplementation/Examples/1.Blinky/Blinky.py:24"
attribute \top 1
module \top

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_0__o

  attribute \src "/home/user/SDR-HLS/2.HLSImplementation/Examples/1.Blinky/Blinky.py:20"
  attribute \init 8'00000000
  wire width 8 \leds

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_1__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_2__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_3__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_4__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_5__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_6__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_7__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:1009"
  wire width 1 \clk

  attribute \src "/home/user/SDR-HLS/2.HLSImplementation/Examples/1.Blinky/Blinky.py:27"
  attribute \init 21'000000000000000000000
  wire width 21 \count

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:218"
  wire width 1 input 0  \clk25_0__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:218"
  wire width 1 output 1  \led_0__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:218"
  wire width 1 output 2  \led_1__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:218"
  wire width 1 output 3  \led_2__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:218"
  wire width 1 output 4  \led_3__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:218"
  wire width 1 output 5  \led_4__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:218"
  wire width 1 output 6  \led_5__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:218"
  wire width 1 output 7  \led_6__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:218"
  wire width 1 output 8  \led_7__io

  wire width 22 $1

  wire width 1 $2

  wire width 8 $3

  wire width 21 $4

  wire width 8 $5

  cell \top.cd_sync \cd_sync
    connect \clk \clk [0]
    connect \clk25_0__io \clk25_0__io [0]
  end

  cell \top.pin_led_0 \pin_led_0
    connect \o \leds [0]
    connect \led_0__io \led_0__io [0]
  end

  cell \top.pin_led_1 \pin_led_1
    connect \o \leds [1]
    connect \led_1__io \led_1__io [0]
  end

  cell \top.pin_led_2 \pin_led_2
    connect \o \leds [2]
    connect \led_2__io \led_2__io [0]
  end

  cell \top.pin_led_3 \pin_led_3
    connect \o \leds [3]
    connect \led_3__io \led_3__io [0]
  end

  cell \top.pin_led_4 \pin_led_4
    connect \o \leds [4]
    connect \led_4__io \led_4__io [0]
  end

  cell \top.pin_led_5 \pin_led_5
    connect \o \leds [5]
    connect \led_5__io \led_5__io [0]
  end

  cell \top.pin_led_6 \pin_led_6
    connect \o \leds [6]
    connect \led_6__io \led_6__io [0]
  end

  cell \top.pin_led_7 \pin_led_7
    connect \o \leds [7]
    connect \led_7__io \led_7__io [0]
  end

  attribute \src "/home/user/SDR-HLS/2.HLSImplementation/Examples/1.Blinky/Blinky.py:36"
  cell $add $6
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 21
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 22
    connect \A \count [20:0]
    connect \B 1'1
    connect \Y $1
  end

  attribute \src "/home/user/SDR-HLS/2.HLSImplementation/Examples/1.Blinky/Blinky.py:37"
  cell $eq $7
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 21
    parameter \B_WIDTH 21
    parameter \Y_WIDTH 1
    connect \A \count [20:0]
    connect \B 21'111111111111111111111
    connect \Y $2
  end

  attribute \src "/home/user/SDR-HLS/2.HLSImplementation/Examples/1.Blinky/Blinky.py:39"
  cell $not $8
    parameter \A_SIGNED 0
    parameter \A_WIDTH 8
    parameter \Y_WIDTH 8
    connect \A \leds [7:0]
    connect \Y $3
  end

  attribute \src "/home/user/SDR-HLS/2.HLSImplementation/Examples/1.Blinky/Blinky.py:27"
  process $9
    assign $4 [20:0] \count [20:0]
    assign $4 [20:0] $1 [20:0]
    switch $2 [0]
      case 1'1
        assign $4 [20:0] 21'000000000000000000000
    end
  end

  attribute \src "/home/user/SDR-HLS/2.HLSImplementation/Examples/1.Blinky/Blinky.py:27"
  cell $dff $10
    parameter \WIDTH 21
    parameter \CLK_POLARITY 1
    connect \D $4 [20:0]
    connect \CLK \clk [0]
    connect \Q \count
  end

  attribute \src "/home/user/SDR-HLS/2.HLSImplementation/Examples/1.Blinky/Blinky.py:20"
  process $11
    assign $5 [7:0] \leds [7:0]
    switch $2 [0]
      case 1'1
        assign $5 [7:0] $3 [7:0]
    end
  end

  attribute \src "/home/user/SDR-HLS/2.HLSImplementation/Examples/1.Blinky/Blinky.py:20"
  cell $dff $12
    parameter \WIDTH 8
    parameter \CLK_POLARITY 1
    connect \D $5 [7:0]
    connect \CLK \clk [0]
    connect \Q \leds
  end

connect \led_0__o \leds [0]
connect \led_1__o \leds [1]
connect \led_2__o \leds [2]
connect \led_3__o \leds [3]
connect \led_4__o \leds [4]
connect \led_5__o \leds [5]
connect \led_6__o \leds [6]
connect \led_7__o \leds [7]

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:918"
module \top.cd_sync

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \i

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:970"
  wire width 1 \gsr0

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:971"
  wire width 1 \gsr1

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 output 0  \clk

  wire width 1 input 1  \clk25_0__io

  wire width 1 $1

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:960"
  cell \top.cd_sync.clk_buf \clk_buf
    connect \i \clk [0]
    connect \clk25_0__io \clk25_0__io [0]
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:999"
  cell $not $2
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A 1'0
    connect \Y $1
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:999"
  cell \FD1S3AX \U$1
    parameter \GSR "DISABLED"
    connect \CK \clk [0]
    connect \D $1 [0]
    connect \Q \gsr0
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:1000"
  cell \FD1S3AX \U$2
    parameter \GSR "DISABLED"
    connect \CK \clk [0]
    connect \D \gsr0 [0]
    connect \Q \gsr1
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:1004"
  cell \SGSR \U$3
    connect \CLK \clk [0]
    connect \GSR \gsr1 [0]
  end

connect \i \clk [0]

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:66"
module \top.cd_sync.clk_buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \i$1

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 output 0  \i

  wire width 1 input 1  \clk25_0__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:68"
  cell \top.cd_sync.clk_buf.buf \buf
    connect \i \i$1 [0]
    connect \clk25_0__io \clk25_0__io [0]
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:72"
  cell $xor $1
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \i$1 [0]
    connect \B 1'0
    connect \Y \i
  end

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:29"
module \top.cd_sync.clk_buf.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 output 0  \i

  wire width 1 input 1  \clk25_0__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:41"
  cell \IB \buf0
    connect \O \i
    connect \I \clk25_0__io [0]
  end

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:37"
module \top.pin_led_0

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_0__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 input 0  \o

  wire width 1 output 1  \led_0__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:56"
  cell \top.pin_led_0.buf \buf
    connect \o$1 \o [0]
    connect \led_0__io \led_0__io [0]
  end

connect \led_0__o \o [0]

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:66"
module \top.pin_led_0.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \t

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \oe

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o$1

  wire width 1 output 1  \led_0__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:68"
  cell \top.pin_led_0.buf.buf \buf
    connect \o \o [0]
    connect \t \t [0]
    connect \led_0__io \led_0__io [0]
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:75"
  cell $xor $1
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \o$1 [0]
    connect \B 1'0
    connect \Y \o
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:76"
  cell $not $2
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A 1'1
    connect \Y \t
  end

connect \oe 1'1

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:29"
module \top.pin_led_0.buf.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 1  \t

  wire width 1 output 2  \led_0__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:46"
  cell \OBZ \buf0
    connect \T \t [0]
    connect \I \o [0]
    connect \O \led_0__io [0]
  end

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:37"
module \top.pin_led_1

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_1__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 input 0  \o

  wire width 1 output 1  \led_1__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:56"
  cell \top.pin_led_1.buf \buf
    connect \o$1 \o [0]
    connect \led_1__io \led_1__io [0]
  end

connect \led_1__o \o [0]

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:66"
module \top.pin_led_1.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \t

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \oe

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o$1

  wire width 1 output 1  \led_1__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:68"
  cell \top.pin_led_1.buf.buf \buf
    connect \o \o [0]
    connect \t \t [0]
    connect \led_1__io \led_1__io [0]
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:75"
  cell $xor $1
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \o$1 [0]
    connect \B 1'0
    connect \Y \o
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:76"
  cell $not $2
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A 1'1
    connect \Y \t
  end

connect \oe 1'1

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:29"
module \top.pin_led_1.buf.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 1  \t

  wire width 1 output 2  \led_1__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:46"
  cell \OBZ \buf0
    connect \T \t [0]
    connect \I \o [0]
    connect \O \led_1__io [0]
  end

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:37"
module \top.pin_led_2

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_2__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 input 0  \o

  wire width 1 output 1  \led_2__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:56"
  cell \top.pin_led_2.buf \buf
    connect \o$1 \o [0]
    connect \led_2__io \led_2__io [0]
  end

connect \led_2__o \o [0]

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:66"
module \top.pin_led_2.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \t

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \oe

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o$1

  wire width 1 output 1  \led_2__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:68"
  cell \top.pin_led_2.buf.buf \buf
    connect \o \o [0]
    connect \t \t [0]
    connect \led_2__io \led_2__io [0]
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:75"
  cell $xor $1
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \o$1 [0]
    connect \B 1'0
    connect \Y \o
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:76"
  cell $not $2
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A 1'1
    connect \Y \t
  end

connect \oe 1'1

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:29"
module \top.pin_led_2.buf.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 1  \t

  wire width 1 output 2  \led_2__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:46"
  cell \OBZ \buf0
    connect \T \t [0]
    connect \I \o [0]
    connect \O \led_2__io [0]
  end

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:37"
module \top.pin_led_3

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_3__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 input 0  \o

  wire width 1 output 1  \led_3__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:56"
  cell \top.pin_led_3.buf \buf
    connect \o$1 \o [0]
    connect \led_3__io \led_3__io [0]
  end

connect \led_3__o \o [0]

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:66"
module \top.pin_led_3.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \t

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \oe

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o$1

  wire width 1 output 1  \led_3__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:68"
  cell \top.pin_led_3.buf.buf \buf
    connect \o \o [0]
    connect \t \t [0]
    connect \led_3__io \led_3__io [0]
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:75"
  cell $xor $1
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \o$1 [0]
    connect \B 1'0
    connect \Y \o
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:76"
  cell $not $2
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A 1'1
    connect \Y \t
  end

connect \oe 1'1

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:29"
module \top.pin_led_3.buf.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 1  \t

  wire width 1 output 2  \led_3__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:46"
  cell \OBZ \buf0
    connect \T \t [0]
    connect \I \o [0]
    connect \O \led_3__io [0]
  end

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:37"
module \top.pin_led_4

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_4__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 input 0  \o

  wire width 1 output 1  \led_4__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:56"
  cell \top.pin_led_4.buf \buf
    connect \o$1 \o [0]
    connect \led_4__io \led_4__io [0]
  end

connect \led_4__o \o [0]

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:66"
module \top.pin_led_4.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \t

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \oe

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o$1

  wire width 1 output 1  \led_4__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:68"
  cell \top.pin_led_4.buf.buf \buf
    connect \o \o [0]
    connect \t \t [0]
    connect \led_4__io \led_4__io [0]
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:75"
  cell $xor $1
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \o$1 [0]
    connect \B 1'0
    connect \Y \o
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:76"
  cell $not $2
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A 1'1
    connect \Y \t
  end

connect \oe 1'1

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:29"
module \top.pin_led_4.buf.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 1  \t

  wire width 1 output 2  \led_4__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:46"
  cell \OBZ \buf0
    connect \T \t [0]
    connect \I \o [0]
    connect \O \led_4__io [0]
  end

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:37"
module \top.pin_led_5

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_5__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 input 0  \o

  wire width 1 output 1  \led_5__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:56"
  cell \top.pin_led_5.buf \buf
    connect \o$1 \o [0]
    connect \led_5__io \led_5__io [0]
  end

connect \led_5__o \o [0]

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:66"
module \top.pin_led_5.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \t

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \oe

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o$1

  wire width 1 output 1  \led_5__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:68"
  cell \top.pin_led_5.buf.buf \buf
    connect \o \o [0]
    connect \t \t [0]
    connect \led_5__io \led_5__io [0]
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:75"
  cell $xor $1
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \o$1 [0]
    connect \B 1'0
    connect \Y \o
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:76"
  cell $not $2
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A 1'1
    connect \Y \t
  end

connect \oe 1'1

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:29"
module \top.pin_led_5.buf.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 1  \t

  wire width 1 output 2  \led_5__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:46"
  cell \OBZ \buf0
    connect \T \t [0]
    connect \I \o [0]
    connect \O \led_5__io [0]
  end

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:37"
module \top.pin_led_6

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_6__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 input 0  \o

  wire width 1 output 1  \led_6__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:56"
  cell \top.pin_led_6.buf \buf
    connect \o$1 \o [0]
    connect \led_6__io \led_6__io [0]
  end

connect \led_6__o \o [0]

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:66"
module \top.pin_led_6.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \t

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \oe

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o$1

  wire width 1 output 1  \led_6__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:68"
  cell \top.pin_led_6.buf.buf \buf
    connect \o \o [0]
    connect \t \t [0]
    connect \led_6__io \led_6__io [0]
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:75"
  cell $xor $1
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \o$1 [0]
    connect \B 1'0
    connect \Y \o
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:76"
  cell $not $2
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A 1'1
    connect \Y \t
  end

connect \oe 1'1

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:29"
module \top.pin_led_6.buf.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 1  \t

  wire width 1 output 2  \led_6__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:46"
  cell \OBZ \buf0
    connect \T \t [0]
    connect \I \o [0]
    connect \O \led_6__io [0]
  end

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:37"
module \top.pin_led_7

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 \led_7__o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/io.py:1101"
  wire width 1 input 0  \o

  wire width 1 output 1  \led_7__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/build/res.py:56"
  cell \top.pin_led_7.buf \buf
    connect \o$1 \o [0]
    connect \led_7__io \led_7__io [0]
  end

connect \led_7__o \o [0]

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:66"
module \top.pin_led_7.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \t

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 \oe

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o$1

  wire width 1 output 1  \led_7__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:68"
  cell \top.pin_led_7.buf.buf \buf
    connect \o \o [0]
    connect \t \t [0]
    connect \led_7__io \led_7__io [0]
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:75"
  cell $xor $1
    parameter \A_SIGNED 0
    parameter \B_SIGNED 0
    parameter \A_WIDTH 1
    parameter \B_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A \o$1 [0]
    connect \B 1'0
    connect \Y \o
  end

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:76"
  cell $not $2
    parameter \A_SIGNED 0
    parameter \A_WIDTH 1
    parameter \Y_WIDTH 1
    connect \A 1'1
    connect \Y \t
  end

connect \oe 1'1

end

attribute \generator "Amaranth"
attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:29"
module \top.pin_led_7.buf.buf

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 0  \o

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:167"
  wire width 1 input 1  \t

  wire width 1 output 2  \led_7__io

  attribute \src "/home/user/.local/lib/python3.10/site-packages/amaranth/vendor/_lattice.py:46"
  cell \OBZ \buf0
    connect \T \t [0]
    connect \I \o [0]
    connect \O \led_7__io [0]
  end

end

