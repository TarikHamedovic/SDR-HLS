/* Generated by Amaranth Yosys 0.40 (PyPI ver 0.40.0.0.post93, git sha1 a1bb0255d) */

(* top =  1  *)
(* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:26" *)
(* generator = "Amaranth" *)
module Mixer(RFIn, sin_in, cos_in, \clk$8 , rst, RFOut, MixerOutSin, MixerOutCos, leds, clk);
  reg \$auto$verilog_backend.cc:2352:dump_module$1  = 0;
  wire \$1 ;
  wire [12:0] \$2 ;
  wire [12:0] \$3 ;
  reg \$4 ;
  reg \$5 ;
  reg [11:0] \$6 ;
  reg [11:0] \$7 ;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:17" *)
  output [11:0] MixerOutCos;
  reg [11:0] MixerOutCos = 12'h000;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:16" *)
  output [11:0] MixerOutSin;
  reg [11:0] MixerOutSin = 12'h000;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:10" *)
  input RFIn;
  wire RFIn;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:22" *)
  reg RFInR = 1'h1;
  (* init = 1'h1 *)
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:21" *)
  wire RFInR1;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:21" *)
  output RFOut;
  reg RFOut = 1'h1;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:9" *)
  input clk;
  wire clk;
  (* src = "/home/user/.local/lib/python3.10/site-packages/amaranth/hdl/_ir.py:270" *)
  wire \clk$10 ;
  (* src = "/home/user/.local/lib/python3.10/site-packages/amaranth/hdl/_ir.py:270" *)
  input \clk$8 ;
  wire \clk$8 ;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:12" *)
  input [11:0] cos_in;
  wire [11:0] cos_in;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:18" *)
  output leds;
  wire leds;
  (* src = "/home/user/.local/lib/python3.10/site-packages/amaranth/hdl/_ir.py:270" *)
  input rst;
  wire rst;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:11" *)
  input [11:0] sin_in;
  wire [11:0] sin_in;
  assign \$3  = - (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:45" *) $signed(cos_in);
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:21" *)
  always @(posedge \clk$8 )
    RFOut <= \$4 ;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:22" *)
  always @(posedge \clk$8 )
    RFInR <= \$5 ;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:16" *)
  always @(posedge \clk$8 )
    MixerOutSin <= \$6 ;
  (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:17" *)
  always @(posedge \clk$8 )
    MixerOutCos <= \$7 ;
  assign \$1  = ! (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:37" *) RFInR;
  assign \$2  = - (* src = "/home/user/SDR-HLS/HLSImplementation/Mixer/mixer.py:44" *) $signed(sin_in);
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$4  = RFIn;
    if (rst) begin
      \$4  = 1'h1;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$5  = RFOut;
    if (rst) begin
      \$5  = 1'h1;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    (* full_case = 32'd1 *)
    if (\$1 ) begin
      \$6  = sin_in;
    end else begin
      \$6  = \$2 [11:0];
    end
    if (rst) begin
      \$6  = 12'h000;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    (* full_case = 32'd1 *)
    if (\$1 ) begin
      \$7  = cos_in;
    end else begin
      \$7  = \$3 [11:0];
    end
    if (rst) begin
      \$7  = 12'h000;
    end
  end
  assign \clk$10  = \clk$8 ;
  assign RFInR1 = RFOut;
  assign leds = 1'h1;
endmodule