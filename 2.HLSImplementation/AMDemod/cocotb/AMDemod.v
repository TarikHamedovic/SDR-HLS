/* Generated by Yosys 0.42+40 (git sha1 a739e21a5, clang++ 14.0.0-1ubuntu1.1 -fPIC -Os) */

(* top =  1  *)
(* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:43" *)
(* generator = "Amaranth" *)
module top(Q_in, clk, rst, d_out, I_in);
  reg \$auto$verilog_backend.cc:2352:dump_module$1  = 0;
  wire [23:0] \$1 ;
  reg [24:0] \$10 ;
  reg [24:0] \$11 ;
  wire \$12 ;
  wire \$13 ;
  wire \$14 ;
  wire \$15 ;
  wire \$16 ;
  wire \$17 ;
  wire \$18 ;
  wire \$19 ;
  wire [23:0] \$2 ;
  wire \$20 ;
  wire \$21 ;
  wire \$22 ;
  wire \$23 ;
  wire \$24 ;
  wire [24:0] \$3 ;
  reg [11:0] \$4 ;
  reg [11:0] \$5 ;
  reg [11:0] \$6 ;
  reg [11:0] \$7 ;
  reg [23:0] \$8 ;
  reg [23:0] \$9 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:35" *)
  input [11:0] I_in;
  wire [11:0] I_in;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:51" *)
  reg [11:0] MultDataA = 12'h000;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:52" *)
  reg [11:0] MultDataB = 12'h000;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:55" *)
  reg [11:0] MultDataC = 12'h000;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:56" *)
  reg [11:0] MultDataD = 12'h000;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:53" *)
  reg [23:0] MultResult1 = 24'h000000;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:57" *)
  reg [23:0] MultResult2 = 24'h000000;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:36" *)
  input [11:0] Q_in;
  wire [11:0] Q_in;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:59" *)
  reg [24:0] SquareSum = 25'h0000000;
  (* src = "/home/user/FPGA/tools/amaranth/amaranth/hdl/_ir.py:215" *)
  input clk;
  wire clk;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:39" *)
  output [24:0] d_out;
  reg [24:0] d_out = 25'h0000000;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:60" *)
  wire [11:0] d_out_d;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:31" *)
  wire [25:0] num;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:34" *)
  wire [12:0] result;
  (* src = "/home/user/FPGA/tools/amaranth/amaranth/hdl/_ir.py:215" *)
  input rst;
  wire rst;
  assign \$1  = $signed(MultDataA) * (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:67" *) $signed(MultDataB);
  assign \$2  = $signed(MultDataC) * (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:68" *) $signed(MultDataD);
  assign \$3  = $signed(MultResult1) + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:69" *) $signed(MultResult2);
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:51" *)
  always @(posedge clk)
    MultDataA <= \$4 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:52" *)
  always @(posedge clk)
    MultDataB <= \$5 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:55" *)
  always @(posedge clk)
    MultDataC <= \$6 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:56" *)
  always @(posedge clk)
    MultDataD <= \$7 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:53" *)
  always @(posedge clk)
    MultResult1 <= \$8 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:57" *)
  always @(posedge clk)
    MultResult2 <= \$9 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:59" *)
  always @(posedge clk)
    SquareSum <= \$10 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:39" *)
  always @(posedge clk)
    d_out <= \$11 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/AMDemod.py:47" *)
  \top.sqrt  sqrt (
    .\port$15$0 (\$13 ),
    .\port$21$0 (\$14 ),
    .\port$27$0 (\$15 ),
    .\port$33$0 (\$16 ),
    .\port$39$0 (\$17 ),
    .\port$45$0 (\$18 ),
    .\port$51$0 (\$19 ),
    .\port$57$0 (\$20 ),
    .\port$63$0 (\$21 ),
    .\port$69$0 (\$22 ),
    .\port$75$0 (\$23 ),
    .\port$81$0 (\$24 ),
    .\port$9$0 (\$12 ),
    .\port$97$0 (SquareSum)
  );
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$4  = I_in;
    if (rst) begin
      \$4  = 12'h000;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$5  = I_in;
    if (rst) begin
      \$5  = 12'h000;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$6  = Q_in;
    if (rst) begin
      \$6  = 12'h000;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$7  = Q_in;
    if (rst) begin
      \$7  = 12'h000;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$8  = \$1 ;
    if (rst) begin
      \$8  = 24'h000000;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$9  = \$2 ;
    if (rst) begin
      \$9  = 24'h000000;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$10  = \$3 ;
    if (rst) begin
      \$10  = 25'h0000000;
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$1 ) begin end
    \$11  = { 13'h0000, \$13 , \$14 , \$15 , \$16 , \$17 , \$18 , \$19 , \$20 , \$21 , \$22 , \$23 , \$24  };
    if (rst) begin
      \$11  = 25'h0000000;
    end
  end
  assign d_out_d = { \$13 , \$14 , \$15 , \$16 , \$17 , \$18 , \$19 , \$20 , \$21 , \$22 , \$23 , \$24  };
  assign num = { SquareSum[24], SquareSum };
  assign result = { \$12 , \$13 , \$14 , \$15 , \$16 , \$17 , \$18 , \$19 , \$20 , \$21 , \$22 , \$23 , \$24  };
endmodule

(* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:40" *)
(* generator = "Amaranth" *)
module \top.sqrt (\port$15$0 , \port$21$0 , \port$27$0 , \port$33$0 , \port$39$0 , \port$45$0 , \port$51$0 , \port$57$0 , \port$63$0 , \port$69$0 , \port$75$0 , \port$81$0 , \port$97$0 , \port$9$0 );
  reg \$auto$verilog_backend.cc:2352:dump_module$2  = 0;
  wire \$1 ;
  wire [15:0] \$10 ;
  wire [15:0] \$11 ;
  wire \$12 ;
  wire \$13 ;
  wire [15:0] \$14 ;
  wire [15:0] \$15 ;
  wire \$16 ;
  wire \$17 ;
  wire [15:0] \$18 ;
  wire [15:0] \$19 ;
  wire [15:0] \$2 ;
  wire \$20 ;
  wire \$21 ;
  wire [15:0] \$22 ;
  wire [15:0] \$23 ;
  wire \$24 ;
  wire \$25 ;
  wire [15:0] \$26 ;
  wire [15:0] \$27 ;
  wire \$28 ;
  wire \$29 ;
  wire [15:0] \$3 ;
  wire [15:0] \$30 ;
  wire [15:0] \$31 ;
  wire \$32 ;
  wire \$33 ;
  wire [15:0] \$34 ;
  wire [15:0] \$35 ;
  wire \$36 ;
  wire \$37 ;
  wire [15:0] \$38 ;
  wire [15:0] \$39 ;
  wire \$4 ;
  wire \$40 ;
  wire \$41 ;
  wire [15:0] \$42 ;
  wire [15:0] \$43 ;
  wire \$44 ;
  wire \$45 ;
  wire [15:0] \$46 ;
  wire [15:0] \$47 ;
  wire \$48 ;
  wire \$49 ;
  wire \$5 ;
  wire [15:0] \$50 ;
  wire [15:0] \$51 ;
  wire \$52 ;
  wire [15:0] \$6 ;
  wire [15:0] \$7 ;
  wire \$8 ;
  wire \$9 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$10 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$11 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$12 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$13 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$14 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$15 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$16 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$17 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$18 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$19 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$2 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$20 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$21 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$22 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$23 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$24 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$25 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$26 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$27 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$28 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$29 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  wire [14:0] \$signal$3 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$30 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$31 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$32 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$33 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$34 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$35 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$36 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$37 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$38 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$39 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$4 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$40 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$41 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$42 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$43 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$44 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$45 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$46 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$47 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$48 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$49 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$5 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$50 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$51 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$52 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$53 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$54 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$55 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$56 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$57 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$58 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$59 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$6 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$60 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$61 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$62 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$63 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$64 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:46" *)
  wire [14:0] \$signal$65 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:44" *)
  wire [25:0] \$signal$66 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$67 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$68 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:48" *)
  reg [14:0] \$signal$7 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:45" *)
  wire [12:0] \$signal$8 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:47" *)
  wire [14:0] \$signal$9 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:31" *)
  wire [25:0] num;
  output \port$15$0 ;
  wire \port$15$0 ;
  output \port$21$0 ;
  wire \port$21$0 ;
  output \port$27$0 ;
  wire \port$27$0 ;
  output \port$33$0 ;
  wire \port$33$0 ;
  output \port$39$0 ;
  wire \port$39$0 ;
  output \port$45$0 ;
  wire \port$45$0 ;
  output \port$51$0 ;
  wire \port$51$0 ;
  output \port$57$0 ;
  wire \port$57$0 ;
  output \port$63$0 ;
  wire \port$63$0 ;
  output \port$69$0 ;
  wire \port$69$0 ;
  output \port$75$0 ;
  wire \port$75$0 ;
  output \port$81$0 ;
  wire \port$81$0 ;
  output \port$9$0 ;
  wire \port$9$0 ;
  input [24:0] \port$97$0 ;
  wire [24:0] \port$97$0 ;
  (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:34" *)
  wire [12:0] result;
  assign \$48  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$62 [14];
  assign \$50  = { \$signal$62 [12:0], \port$97$0 [1:0] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$44 , \$48 , \$signal$62 [14], 1'h1 };
  assign \$51  = { \$signal$62 [12:0], \port$97$0 [1:0] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$44 , \$48 , \$signal$62 [14], 1'h1 };
  assign \$52  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$67 [14];
  assign \$2  = { \port$97$0 [24], \port$97$0 [24] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) 1'h1;
  assign \$3  = { \port$97$0 [24], \port$97$0 [24] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) 1'h1;
  assign \$4  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$7 [14];
  assign \$6  = { \$signal$7 [12:0], \port$97$0 [23:22] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$signal$7 [14], 1'h1 };
  assign \$7  = { \$signal$7 [12:0], \port$97$0 [23:22] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$signal$7 [14], 1'h1 };
  assign \$8  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$12 [14];
  assign \$10  = { \$signal$12 [12:0], \port$97$0 [21:20] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$signal$12 [14], 1'h1 };
  assign \$11  = { \$signal$12 [12:0], \port$97$0 [21:20] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$signal$12 [14], 1'h1 };
  assign \$12  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$17 [14];
  assign \$14  = { \$signal$17 [12:0], \port$97$0 [19:18] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$12 , \$signal$17 [14], 1'h1 };
  assign \$15  = { \$signal$17 [12:0], \port$97$0 [19:18] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$12 , \$signal$17 [14], 1'h1 };
  assign \$16  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$22 [14];
  assign \$18  = { \$signal$22 [12:0], \port$97$0 [17:16] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$12 , \$16 , \$signal$22 [14], 1'h1 };
  assign \$19  = { \$signal$22 [12:0], \port$97$0 [17:16] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$12 , \$16 , \$signal$22 [14], 1'h1 };
  assign \$20  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$27 [14];
  assign \$22  = { \$signal$27 [12:0], \port$97$0 [15:14] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$signal$27 [14], 1'h1 };
  assign \$23  = { \$signal$27 [12:0], \port$97$0 [15:14] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$signal$27 [14], 1'h1 };
  assign \$24  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$32 [14];
  assign \$26  = { \$signal$32 [12:0], \port$97$0 [13:12] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$signal$32 [14], 1'h1 };
  assign \$27  = { \$signal$32 [12:0], \port$97$0 [13:12] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$signal$32 [14], 1'h1 };
  assign \$28  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$37 [14];
  assign \$30  = { \$signal$37 [12:0], \port$97$0 [11:10] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$signal$37 [14], 1'h1 };
  assign \$31  = { \$signal$37 [12:0], \port$97$0 [11:10] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$signal$37 [14], 1'h1 };
  assign \$32  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$42 [14];
  assign \$34  = { \$signal$42 [12:0], \port$97$0 [9:8] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$signal$42 [14], 1'h1 };
  assign \$35  = { \$signal$42 [12:0], \port$97$0 [9:8] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$signal$42 [14], 1'h1 };
  assign \$36  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$47 [14];
  assign \$38  = { \$signal$47 [12:0], \port$97$0 [7:6] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$signal$47 [14], 1'h1 };
  assign \$39  = { \$signal$47 [12:0], \port$97$0 [7:6] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$signal$47 [14], 1'h1 };
  assign \$40  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$52 [14];
  assign \$42  = { \$signal$52 [12:0], \port$97$0 [5:4] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$signal$52 [14], 1'h1 };
  assign \$43  = { \$signal$52 [12:0], \port$97$0 [5:4] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$signal$52 [14], 1'h1 };
  assign \$44  = ~ (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:74" *) \$signal$57 [14];
  assign \$46  = { \$signal$57 [12:0], \port$97$0 [3:2] } + (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:70" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$44 , \$signal$57 [14], 1'h1 };
  assign \$47  = { \$signal$57 [12:0], \port$97$0 [3:2] } - (* src = "/home/user/SDR-HLS/2.HLSImplementation/AMDemod/sqrt_combinatorial.py:72" *) { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$44 , \$signal$57 [14], 1'h1 };
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$1 ) begin
      \$signal$7  = \$2 [14:0];
    end else begin
      \$signal$7  = \$3 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$5 ) begin
      \$signal$12  = \$6 [14:0];
    end else begin
      \$signal$12  = \$7 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$9 ) begin
      \$signal$17  = \$10 [14:0];
    end else begin
      \$signal$17  = \$11 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$13 ) begin
      \$signal$22  = \$14 [14:0];
    end else begin
      \$signal$22  = \$15 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$17 ) begin
      \$signal$27  = \$18 [14:0];
    end else begin
      \$signal$27  = \$19 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$21 ) begin
      \$signal$32  = \$22 [14:0];
    end else begin
      \$signal$32  = \$23 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$25 ) begin
      \$signal$37  = \$26 [14:0];
    end else begin
      \$signal$37  = \$27 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$29 ) begin
      \$signal$42  = \$30 [14:0];
    end else begin
      \$signal$42  = \$31 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$33 ) begin
      \$signal$47  = \$34 [14:0];
    end else begin
      \$signal$47  = \$35 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$37 ) begin
      \$signal$52  = \$38 [14:0];
    end else begin
      \$signal$52  = \$39 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$41 ) begin
      \$signal$57  = \$42 [14:0];
    end else begin
      \$signal$57  = \$43 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$45 ) begin
      \$signal$62  = \$46 [14:0];
    end else begin
      \$signal$62  = \$47 [14:0];
    end
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2352:dump_module$2 ) begin end
    (* full_case = 32'd1 *)
    if (\$49 ) begin
      \$signal$67  = \$50 [14:0];
    end else begin
      \$signal$67  = \$51 [14:0];
    end
  end
  assign \$signal  = { \port$97$0 [24], \port$97$0  };
  assign num = { \port$97$0 [24], \port$97$0  };
  assign \$signal$2  = 13'h0000;
  assign \$signal$3  = 15'h0000;
  assign \$signal$4  = 15'h0001;
  assign \$signal$5  = { 13'h0000, \port$97$0 [24], \port$97$0 [24] };
  assign \$signal$6  = { \port$97$0 [23:0], 2'h0 };
  assign \$signal$8  = { 12'h000, \$4  };
  assign \$signal$9  = { 12'h000, \$4 , \$signal$7 [14], 1'h1 };
  assign \$signal$10  = { \$signal$7 [12:0], \port$97$0 [23:22] };
  assign \$signal$11  = { \port$97$0 [21:0], 4'h0 };
  assign \$signal$13  = { 11'h000, \$4 , \$8  };
  assign \$signal$14  = { 11'h000, \$4 , \$8 , \$signal$12 [14], 1'h1 };
  assign \$signal$15  = { \$signal$12 [12:0], \port$97$0 [21:20] };
  assign \$signal$16  = { \port$97$0 [19:0], 6'h00 };
  assign \$signal$18  = { 10'h000, \$4 , \$8 , \$12  };
  assign \$signal$19  = { 10'h000, \$4 , \$8 , \$12 , \$signal$17 [14], 1'h1 };
  assign \$signal$20  = { \$signal$17 [12:0], \port$97$0 [19:18] };
  assign \$signal$21  = { \port$97$0 [17:0], 8'h00 };
  assign \$signal$23  = { 9'h000, \$4 , \$8 , \$12 , \$16  };
  assign \$signal$24  = { 9'h000, \$4 , \$8 , \$12 , \$16 , \$signal$22 [14], 1'h1 };
  assign \$signal$25  = { \$signal$22 [12:0], \port$97$0 [17:16] };
  assign \$signal$26  = { \port$97$0 [15:0], 10'h000 };
  assign \$signal$28  = { 8'h00, \$4 , \$8 , \$12 , \$16 , \$20  };
  assign \$signal$29  = { 8'h00, \$4 , \$8 , \$12 , \$16 , \$20 , \$signal$27 [14], 1'h1 };
  assign \$signal$30  = { \$signal$27 [12:0], \port$97$0 [15:14] };
  assign \$signal$31  = { \port$97$0 [13:0], 12'h000 };
  assign \$signal$33  = { 7'h00, \$4 , \$8 , \$12 , \$16 , \$20 , \$24  };
  assign \$signal$34  = { 7'h00, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$signal$32 [14], 1'h1 };
  assign \$signal$35  = { \$signal$32 [12:0], \port$97$0 [13:12] };
  assign \$signal$36  = { \port$97$0 [11:0], 14'h0000 };
  assign \$signal$38  = { 6'h00, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28  };
  assign \$signal$39  = { 6'h00, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$signal$37 [14], 1'h1 };
  assign \$signal$40  = { \$signal$37 [12:0], \port$97$0 [11:10] };
  assign \$signal$41  = { \port$97$0 [9:0], 16'h0000 };
  assign \$signal$43  = { 5'h00, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32  };
  assign \$signal$44  = { 5'h00, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$signal$42 [14], 1'h1 };
  assign \$signal$45  = { \$signal$42 [12:0], \port$97$0 [9:8] };
  assign \$signal$46  = { \port$97$0 [7:0], 18'h00000 };
  assign \$signal$48  = { 4'h0, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36  };
  assign \$signal$49  = { 4'h0, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$signal$47 [14], 1'h1 };
  assign \$signal$50  = { \$signal$47 [12:0], \port$97$0 [7:6] };
  assign \$signal$51  = { \port$97$0 [5:0], 20'h00000 };
  assign \$signal$53  = { 3'h0, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40  };
  assign \$signal$54  = { 3'h0, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$signal$52 [14], 1'h1 };
  assign \$signal$55  = { \$signal$52 [12:0], \port$97$0 [5:4] };
  assign \$signal$56  = { \port$97$0 [3:0], 22'h000000 };
  assign \$signal$58  = { 2'h0, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$44  };
  assign \$signal$59  = { 2'h0, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$44 , \$signal$57 [14], 1'h1 };
  assign \$signal$60  = { \$signal$57 [12:0], \port$97$0 [3:2] };
  assign \$signal$61  = { \port$97$0 [1:0], 24'h000000 };
  assign \$signal$63  = { 1'h0, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$44 , \$48  };
  assign \$signal$64  = { 1'h0, \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$44 , \$48 , \$signal$62 [14], 1'h1 };
  assign \$signal$65  = { \$signal$62 [12:0], \port$97$0 [1:0] };
  assign \$signal$66  = 26'h0000000;
  assign \$signal$68  = { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$44 , \$48 , \$52  };
  assign result = { \$4 , \$8 , \$12 , \$16 , \$20 , \$24 , \$28 , \$32 , \$36 , \$40 , \$44 , \$48 , \$52  };
  assign \port$9$0  = \$4 ;
  assign \port$15$0  = \$8 ;
  assign \port$21$0  = \$12 ;
  assign \port$27$0  = \$16 ;
  assign \port$33$0  = \$20 ;
  assign \port$39$0  = \$24 ;
  assign \port$45$0  = \$28 ;
  assign \port$51$0  = \$32 ;
  assign \port$57$0  = \$36 ;
  assign \port$63$0  = \$40 ;
  assign \port$69$0  = \$44 ;
  assign \port$75$0  = \$48 ;
  assign \port$81$0  = \$52 ;
  assign \$1  = 1'h0;
  assign \$5  = \$signal$7 [14];
  assign \$9  = \$signal$12 [14];
  assign \$13  = \$signal$17 [14];
  assign \$17  = \$signal$22 [14];
  assign \$21  = \$signal$27 [14];
  assign \$25  = \$signal$32 [14];
  assign \$29  = \$signal$37 [14];
  assign \$33  = \$signal$42 [14];
  assign \$37  = \$signal$47 [14];
  assign \$41  = \$signal$52 [14];
  assign \$45  = \$signal$57 [14];
  assign \$49  = \$signal$62 [14];
endmodule