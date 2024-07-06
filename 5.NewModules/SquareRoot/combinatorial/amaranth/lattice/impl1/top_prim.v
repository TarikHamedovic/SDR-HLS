// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sat Jul  6 03:41:21 2024
//
// Verilog Description of module top
//

module top (result, num) /* synthesis top=1, src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:40", generator="Amaranth", syn_module_defined=1 */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(6[8:11])
    output [15:0]result;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    input [31:0]num;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    
    wire GND_net /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(8[8:12])
    wire VCC_net /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:47" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(227[15:27])
    wire \$signal_c_31  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_30  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_29  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_28  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_27  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_26  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_25  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_24  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_23  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_22  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_21  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_20  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_19  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_18  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_17  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_16  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_15  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_14  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_13  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_12  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_11  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_10  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_9  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_8  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_7  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_6  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_5  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_4  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_3  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_2  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_1  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire \$signal_c_0  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:44" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(73[15:24])
    wire [17:0]\$signal$11  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:46" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(77[15:27])
    wire [17:0]\$signal$13  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(81[14:26])
    wire [17:0]\$signal$18  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(91[14:26])
    wire [17:0]\$signal$23  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(101[14:26])
    wire [17:0]\$signal$28  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(111[14:26])
    wire [17:0]\$signal$33  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(123[14:26])
    wire [17:0]\$signal$38  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(133[14:26])
    wire [17:0]\$signal$43  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(145[14:26])
    wire [17:0]\$signal$45  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:47" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(149[15:27])
    wire [17:0]\$signal$48  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(155[14:26])
    wire [17:0]\$signal$50  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:47" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(161[15:27])
    wire [17:0]\$signal$53  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(167[14:26])
    wire [17:0]\$signal$55  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:47" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(171[15:27])
    wire [17:0]\$signal$58  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(177[14:26])
    wire [17:0]\$signal$60  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:47" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(183[15:27])
    wire [17:0]\$signal$63  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(189[14:26])
    wire [17:0]\$signal$65  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:47" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(193[15:27])
    wire [17:0]\$signal$68  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(199[14:26])
    wire [17:0]\$signal$70  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:47" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(205[15:27])
    wire [17:0]\$signal$73  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(211[14:26])
    wire [17:0]\$signal$75  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:47" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(215[15:27])
    wire [17:0]\$signal$78  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(221[14:26])
    wire [17:0]\$signal$80  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:47" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(227[15:27])
    wire [17:0]\$signal$83  /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:48" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(233[14:26])
    wire result_c_15 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_14 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_13 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_12 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_11 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_10 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_9 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_8 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_7 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_6 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_5 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_4 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_3 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_2 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    wire result_c_1 /* synthesis src="/home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/sqrt_combinatorial.py:45" */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    
    wire n3990, n3989, n3988, n3987, n3986, n3980, n3979, n3978, 
        n3977, n3976;
    wire [18:0]\$62 ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(66[15:20])
    wire [18:0]\$63 ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(67[15:20])
    
    wire n3975, n3974, n3973, n3972, n3966, n3965, n3964, n3963, 
        n4026, n4076, n3962, n3961, n3960, n3959, n3958, n3952, 
        n3951, n3950, n3949, n3948, n3947, n3946, n3945, n3944, 
        n3938, n3937, n3936, n3935, n3934, n3933, n3932, n3931, 
        n3930, n3924, n3923, n3922, n3921, n3920, n3915, n3914, 
        n3913, n3912, n3911, n3910, n3909, n3908, n3907, n4098, 
        n4097, n4096, n4095, n4094, n4093, n4092, n4091, n4089, 
        n4088, n4087, n4086, n4085, n4084, n4083, n4082, n3991, 
        n3992, n3993, n3994, n4000, n4001, n4002, n4003, n4004, 
        n4005, n4006, n4012, n4013, n4014, n4015, n4021, n4022, 
        n4023, n4024, n4025, n4075, n4074, n4073, n4072, n4071, 
        n4070, n4069, n4068, n4062, n4061, n4060, n4054, n4053, 
        n4052, n4051, n4050, n4049, n4048, n4047, n4046, n4040, 
        n4039, n4038, n4037, n4036, n4035, n4034, n4033, n4032;
    
    VHI i2 (.Z(VCC_net));
    CCU2C add_1062_17 (.A0(\$signal$45 [1]), .B0(\$signal$43 [12]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$45 [1]), .B1(\$signal$43 [13]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3979), .COUT(n3980), .S0(\$signal$48 [13]), 
          .S1(\$signal$48 [14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam add_1062_17.INIT0 = 16'h9995;
    defparam add_1062_17.INIT1 = 16'h9995;
    defparam add_1062_17.INJECT1_0 = "NO";
    defparam add_1062_17.INJECT1_1 = "NO";
    CCU2C add_1060_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$38 [14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3986));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam add_1060_1.INIT0 = 16'h0000;
    defparam add_1060_1.INIT1 = 16'haaaf;
    defparam add_1060_1.INJECT1_0 = "NO";
    defparam add_1060_1.INJECT1_1 = "NO";
    CCU2C add_1060_5 (.A0(\$signal$38 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$33 [12]), .B1(\$signal$38 [14]), 
          .C1(\$signal$38 [1]), .D1(VCC_net), .CIN(n3987), .COUT(n3988), 
          .S0(\$signal$43 [1]), .S1(\$signal$43 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam add_1060_5.INIT0 = 16'haaa0;
    defparam add_1060_5.INIT1 = 16'h9696;
    defparam add_1060_5.INJECT1_0 = "NO";
    defparam add_1060_5.INJECT1_1 = "NO";
    IB \$signal_pad_0  (.I(num[0]), .O(\$signal_c_0 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1060_9 (.A0(\$signal$18 [6]), .B0(\$signal$38 [14]), .C0(\$signal$38 [4]), 
          .D0(VCC_net), .A1(\$signal$13 [4]), .B1(\$signal$38 [14]), .C1(\$signal$38 [5]), 
          .D1(VCC_net), .CIN(n3989), .COUT(n3990), .S0(\$signal$43 [5]), 
          .S1(\$signal$43 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam add_1060_9.INIT0 = 16'h9696;
    defparam add_1060_9.INIT1 = 16'h9696;
    defparam add_1060_9.INJECT1_0 = "NO";
    defparam add_1060_9.INJECT1_1 = "NO";
    CCU2C add_1060_13 (.A0(\$signal$38 [14]), .B0(\$signal$38 [8]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$38 [14]), .B1(\$signal$38 [9]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3991), .COUT(n3992), .S0(\$signal$43 [9]), 
          .S1(\$signal$43 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam add_1060_13.INIT0 = 16'h9995;
    defparam add_1060_13.INIT1 = 16'h9995;
    defparam add_1060_13.INJECT1_0 = "NO";
    defparam add_1060_13.INJECT1_1 = "NO";
    LUT4 i522_1_lut (.A(\$signal$28 [10]), .Z(result_c_11)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(342[14] 344[8])
    defparam i522_1_lut.init = 16'h5555;
    CCU2C add_1070_7 (.A0(result_c_15), .B0(\$signal$18 [6]), .C0(\$signal$18 [2]), 
          .D0(VCC_net), .A1(\$signal$18 [6]), .B1(\$signal$18 [3]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3922), .COUT(n3923), .S0(\$signal$23 [3]), 
          .S1(\$signal$23 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(324[14] 326[8])
    defparam add_1070_7.INIT0 = 16'h6969;
    defparam add_1070_7.INIT1 = 16'h9995;
    defparam add_1070_7.INJECT1_0 = "NO";
    defparam add_1070_7.INJECT1_1 = "NO";
    CCU2C add_1060_17 (.A0(\$signal$38 [14]), .B0(\$signal$38 [12]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$38 [14]), .B1(\$signal$38 [13]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3993), .COUT(n3994), .S0(\$signal$43 [13]), 
          .S1(\$signal$43 [14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam add_1060_17.INIT0 = 16'h9995;
    defparam add_1060_17.INIT1 = 16'h9995;
    defparam add_1060_17.INJECT1_0 = "NO";
    defparam add_1060_17.INJECT1_1 = "NO";
    IB \$signal_pad_1  (.I(num[1]), .O(\$signal_c_1 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1069_3 (.A0(\$signal$23 [8]), .B0(\$signal_c_22 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_23 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4021), .COUT(n4022), .S1(\$signal$28 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(333[14] 335[8])
    defparam add_1069_3.INIT0 = 16'h666a;
    defparam add_1069_3.INIT1 = 16'h555f;
    defparam add_1069_3.INJECT1_0 = "NO";
    defparam add_1069_3.INJECT1_1 = "NO";
    CCU2C add_1065_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$70 [1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4046));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam add_1065_1.INIT0 = 16'h0000;
    defparam add_1065_1.INIT1 = 16'haaaf;
    defparam add_1065_1.INJECT1_0 = "NO";
    defparam add_1065_1.INJECT1_1 = "NO";
    IB \$signal_pad_2  (.I(num[2]), .O(\$signal_c_2 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1058_5 (.A0(\$signal$28 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$23 [8]), .B1(\$signal$28 [10]), .C1(\$signal$28 [1]), 
          .D1(VCC_net), .CIN(n4001), .COUT(n4002), .S0(\$signal$33 [1]), 
          .S1(\$signal$33 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(342[14] 344[8])
    defparam add_1058_5.INIT0 = 16'haaa0;
    defparam add_1058_5.INIT1 = 16'h9696;
    defparam add_1058_5.INJECT1_0 = "NO";
    defparam add_1058_5.INJECT1_1 = "NO";
    CCU2C add_1070_5 (.A0(\$signal$18 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$13 [4]), .B1(\$signal$18 [6]), .C1(\$signal$18 [1]), 
          .D1(VCC_net), .CIN(n3921), .COUT(n3922), .S0(\$signal$23 [1]), 
          .S1(\$signal$23 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(324[14] 326[8])
    defparam add_1070_5.INIT0 = 16'haaa0;
    defparam add_1070_5.INIT1 = 16'h9696;
    defparam add_1070_5.INJECT1_0 = "NO";
    defparam add_1070_5.INJECT1_1 = "NO";
    CCU2C add_1058_9 (.A0(result_c_15), .B0(\$signal$28 [10]), .C0(\$signal$28 [4]), 
          .D0(VCC_net), .A1(\$signal$28 [10]), .B1(\$signal$28 [5]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4003), .COUT(n4004), .S0(\$signal$33 [5]), 
          .S1(\$signal$33 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(342[14] 344[8])
    defparam add_1058_9.INIT0 = 16'h6969;
    defparam add_1058_9.INIT1 = 16'h9995;
    defparam add_1058_9.INJECT1_0 = "NO";
    defparam add_1058_9.INJECT1_1 = "NO";
    CCU2C add_1058_13 (.A0(\$signal$28 [10]), .B0(\$signal$28 [8]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$28 [10]), .B1(\$signal$28 [9]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4005), .COUT(n4006), .S0(\$signal$33 [9]), 
          .S1(\$signal$33 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(342[14] 344[8])
    defparam add_1058_13.INIT0 = 16'h9995;
    defparam add_1058_13.INIT1 = 16'h9995;
    defparam add_1058_13.INJECT1_0 = "NO";
    defparam add_1058_13.INJECT1_1 = "NO";
    CCU2C add_1071_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$13 [4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4012));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(315[14] 317[8])
    defparam add_1071_1.INIT0 = 16'h0000;
    defparam add_1071_1.INIT1 = 16'haaaf;
    defparam add_1071_1.INJECT1_0 = "NO";
    defparam add_1071_1.INJECT1_1 = "NO";
    IB \$signal_pad_3  (.I(num[3]), .O(\$signal_c_3 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1071_9 (.A0(result_c_14), .B0(\$signal$13 [4]), .C0(GND_net), 
          .D0(VCC_net), .A1(result_c_14), .B1(\$signal$13 [4]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4015), .S0(\$signal$18 [5]), .S1(\$signal$18 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(315[14] 317[8])
    defparam add_1071_9.INIT0 = 16'h666a;
    defparam add_1071_9.INIT1 = 16'h666a;
    defparam add_1071_9.INJECT1_0 = "NO";
    defparam add_1071_9.INJECT1_1 = "NO";
    CCU2C add_1062_5 (.A0(\$signal$43 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$38 [14]), .B1(\$signal$45 [1]), .C1(\$signal$43 [1]), 
          .D1(VCC_net), .CIN(n3973), .COUT(n3974), .S0(\$signal$48 [1]), 
          .S1(\$signal$48 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam add_1062_5.INIT0 = 16'haaa0;
    defparam add_1062_5.INIT1 = 16'h9696;
    defparam add_1062_5.INJECT1_0 = "NO";
    defparam add_1062_5.INJECT1_1 = "NO";
    IB \$signal_pad_4  (.I(num[4]), .O(\$signal_c_4 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1069_7 (.A0(\$signal$13 [4]), .B0(\$signal$23 [8]), .C0(\$signal$23 [2]), 
          .D0(VCC_net), .A1(result_c_15), .B1(\$signal$23 [8]), .C1(\$signal$23 [3]), 
          .D1(VCC_net), .CIN(n4023), .COUT(n4024), .S0(\$signal$28 [3]), 
          .S1(\$signal$28 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(333[14] 335[8])
    defparam add_1069_7.INIT0 = 16'h9696;
    defparam add_1069_7.INIT1 = 16'h6969;
    defparam add_1069_7.INJECT1_0 = "NO";
    defparam add_1069_7.INJECT1_1 = "NO";
    CCU2C add_1069_11 (.A0(\$signal$23 [8]), .B0(\$signal$23 [6]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$23 [8]), .B1(\$signal$23 [7]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4025), .COUT(n4026), .S0(\$signal$28 [7]), 
          .S1(\$signal$28 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(333[14] 335[8])
    defparam add_1069_11.INIT0 = 16'h9995;
    defparam add_1069_11.INIT1 = 16'h9995;
    defparam add_1069_11.INJECT1_0 = "NO";
    defparam add_1069_11.INJECT1_1 = "NO";
    IB \$signal_pad_5  (.I(num[5]), .O(\$signal_c_5 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1070_3 (.A0(\$signal$18 [6]), .B0(\$signal_c_24 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_25 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3920), .COUT(n3921), .S1(\$signal$23 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(324[14] 326[8])
    defparam add_1070_3.INIT0 = 16'h666a;
    defparam add_1070_3.INIT1 = 16'h555f;
    defparam add_1070_3.INJECT1_0 = "NO";
    defparam add_1070_3.INJECT1_1 = "NO";
    IB \$signal_pad_6  (.I(num[6]), .O(\$signal_c_6 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1067_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$75 [1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4032));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam add_1067_1.INIT0 = 16'h0000;
    defparam add_1067_1.INIT1 = 16'haaaf;
    defparam add_1067_1.INJECT1_0 = "NO";
    defparam add_1067_1.INJECT1_1 = "NO";
    CCU2C add_1067_17 (.A0(\$signal$13 [4]), .B0(\$signal$75 [1]), .C0(\$signal$73 [12]), 
          .D0(VCC_net), .A1(result_c_15), .B1(\$signal$75 [1]), .C1(\$signal$73 [13]), 
          .D1(VCC_net), .CIN(n4039), .COUT(n4040), .S0(\$signal$78 [13]), 
          .S1(\$signal$78 [14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam add_1067_17.INIT0 = 16'h9696;
    defparam add_1067_17.INIT1 = 16'h6969;
    defparam add_1067_17.INJECT1_0 = "NO";
    defparam add_1067_17.INJECT1_1 = "NO";
    IB \$signal_pad_7  (.I(num[7]), .O(\$signal_c_7 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1070_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$18 [6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3920));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(324[14] 326[8])
    defparam add_1070_1.INIT0 = 16'h0000;
    defparam add_1070_1.INIT1 = 16'haaaf;
    defparam add_1070_1.INJECT1_0 = "NO";
    defparam add_1070_1.INJECT1_1 = "NO";
    CCU2C add_1059_17 (.A0(result_c_10), .B0(\$signal$33 [12]), .C0(GND_net), 
          .D0(VCC_net), .A1(result_c_10), .B1(\$signal$33 [12]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4089), .S0(\$signal$38 [13]), .S1(\$signal$38 [14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(351[14] 353[8])
    defparam add_1059_17.INIT0 = 16'h666a;
    defparam add_1059_17.INIT1 = 16'h666a;
    defparam add_1059_17.INJECT1_0 = "NO";
    defparam add_1059_17.INJECT1_1 = "NO";
    CCU2C add_1067_5 (.A0(\$signal$73 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$70 [1]), .B1(\$signal$75 [1]), .C1(\$signal$73 [1]), 
          .D1(VCC_net), .CIN(n4033), .COUT(n4034), .S0(\$signal$78 [1]), 
          .S1(\$signal$78 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam add_1067_5.INIT0 = 16'haaa0;
    defparam add_1067_5.INIT1 = 16'h9696;
    defparam add_1067_5.INJECT1_0 = "NO";
    defparam add_1067_5.INJECT1_1 = "NO";
    CCU2C add_1067_9 (.A0(\$signal$55 [1]), .B0(\$signal$75 [1]), .C0(\$signal$73 [4]), 
          .D0(VCC_net), .A1(\$signal$50 [1]), .B1(\$signal$75 [1]), .C1(\$signal$73 [5]), 
          .D1(VCC_net), .CIN(n4035), .COUT(n4036), .S0(\$signal$78 [5]), 
          .S1(\$signal$78 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam add_1067_9.INIT0 = 16'h9696;
    defparam add_1067_9.INIT1 = 16'h9696;
    defparam add_1067_9.INJECT1_0 = "NO";
    defparam add_1067_9.INJECT1_1 = "NO";
    IB \$signal_pad_8  (.I(num[8]), .O(\$signal_c_8 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1067_13 (.A0(\$signal$33 [12]), .B0(\$signal$75 [1]), .C0(\$signal$73 [8]), 
          .D0(VCC_net), .A1(\$signal$28 [10]), .B1(\$signal$75 [1]), .C1(\$signal$73 [9]), 
          .D1(VCC_net), .CIN(n4037), .COUT(n4038), .S0(\$signal$78 [9]), 
          .S1(\$signal$78 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam add_1067_13.INIT0 = 16'h9696;
    defparam add_1067_13.INIT1 = 16'h9696;
    defparam add_1067_13.INJECT1_0 = "NO";
    defparam add_1067_13.INJECT1_1 = "NO";
    IB \$signal_pad_9  (.I(num[9]), .O(\$signal_c_9 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1065_5 (.A0(\$signal$68 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$65 [1]), .B1(\$signal$70 [1]), .C1(\$signal$68 [1]), 
          .D1(VCC_net), .CIN(n4047), .COUT(n4048), .S0(\$signal$73 [1]), 
          .S1(\$signal$73 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam add_1065_5.INIT0 = 16'haaa0;
    defparam add_1065_5.INIT1 = 16'h9696;
    defparam add_1065_5.INJECT1_0 = "NO";
    defparam add_1065_5.INJECT1_1 = "NO";
    IB \$signal_pad_10  (.I(num[10]), .O(\$signal_c_10 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1058_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$28 [10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4000));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(342[14] 344[8])
    defparam add_1058_1.INIT0 = 16'h0000;
    defparam add_1058_1.INIT1 = 16'haaaf;
    defparam add_1058_1.INJECT1_0 = "NO";
    defparam add_1058_1.INJECT1_1 = "NO";
    CCU2C add_1065_9 (.A0(\$signal$50 [1]), .B0(\$signal$70 [1]), .C0(\$signal$68 [4]), 
          .D0(VCC_net), .A1(\$signal$45 [1]), .B1(\$signal$70 [1]), .C1(\$signal$68 [5]), 
          .D1(VCC_net), .CIN(n4049), .COUT(n4050), .S0(\$signal$73 [5]), 
          .S1(\$signal$73 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam add_1065_9.INIT0 = 16'h9696;
    defparam add_1065_9.INIT1 = 16'h9696;
    defparam add_1065_9.INJECT1_0 = "NO";
    defparam add_1065_9.INJECT1_1 = "NO";
    CCU2C add_1064_17 (.A0(\$signal$50 [1]), .B0(\$signal$48 [12]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$50 [1]), .B1(\$signal$48 [13]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3965), .COUT(n3966), .S0(\$signal$53 [13]), 
          .S1(\$signal$53 [14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam add_1064_17.INIT0 = 16'h9995;
    defparam add_1064_17.INIT1 = 16'h9995;
    defparam add_1064_17.INJECT1_0 = "NO";
    defparam add_1064_17.INJECT1_1 = "NO";
    CCU2C add_1065_13 (.A0(\$signal$28 [10]), .B0(\$signal$70 [1]), .C0(\$signal$68 [8]), 
          .D0(VCC_net), .A1(\$signal$23 [8]), .B1(\$signal$70 [1]), .C1(\$signal$68 [9]), 
          .D1(VCC_net), .CIN(n4051), .COUT(n4052), .S0(\$signal$73 [9]), 
          .S1(\$signal$73 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam add_1065_13.INIT0 = 16'h9696;
    defparam add_1065_13.INIT1 = 16'h9696;
    defparam add_1065_13.INJECT1_0 = "NO";
    defparam add_1065_13.INJECT1_1 = "NO";
    CCU2C add_1061_13 (.A0(\$signal$23 [8]), .B0(\$signal$65 [1]), .C0(\$signal$63 [8]), 
          .D0(VCC_net), .A1(\$signal$18 [6]), .B1(\$signal$65 [1]), .C1(\$signal$63 [9]), 
          .D1(VCC_net), .CIN(n4073), .COUT(n4074), .S0(\$signal$68 [9]), 
          .S1(\$signal$68 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam add_1061_13.INIT0 = 16'h9696;
    defparam add_1061_13.INIT1 = 16'h9696;
    defparam add_1061_13.INJECT1_0 = "NO";
    defparam add_1061_13.INJECT1_1 = "NO";
    IB \$signal_pad_11  (.I(num[11]), .O(\$signal_c_11 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1059_15 (.A0(\$signal$33 [12]), .B0(\$signal$33 [10]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$33 [12]), .B1(\$signal$33 [11]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n4088), .COUT(n4089), .S0(\$signal$38 [11]), 
          .S1(\$signal$38 [12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(351[14] 353[8])
    defparam add_1059_15.INIT0 = 16'h9995;
    defparam add_1059_15.INIT1 = 16'h9995;
    defparam add_1059_15.INJECT1_0 = "NO";
    defparam add_1059_15.INJECT1_1 = "NO";
    CCU2C _add_1_650_add_4_20 (.A0(\$signal$78 [15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3915), .S0(\$63 [17]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam _add_1_650_add_4_20.INIT0 = 16'h555f;
    defparam _add_1_650_add_4_20.INIT1 = 16'h0000;
    defparam _add_1_650_add_4_20.INJECT1_0 = "NO";
    defparam _add_1_650_add_4_20.INJECT1_1 = "NO";
    CCU2C add_1063_5 (.A0(\$signal_c_30 ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_31 ), .B1(\$signal_c_30 ), .C1(result_c_15), 
          .D1(VCC_net), .CIN(n4061), .COUT(n4062), .S0(\$signal$13 [1]), 
          .S1(\$signal$13 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(306[14] 308[8])
    defparam add_1063_5.INIT0 = 16'h5550;
    defparam add_1063_5.INIT1 = 16'h6969;
    defparam add_1063_5.INJECT1_0 = "NO";
    defparam add_1063_5.INJECT1_1 = "NO";
    CCU2C add_1063_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal_c_31 ), .B1(\$signal_c_30 ), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4060));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(306[14] 308[8])
    defparam add_1063_1.INIT0 = 16'h0000;
    defparam add_1063_1.INIT1 = 16'h111e;
    defparam add_1063_1.INJECT1_0 = "NO";
    defparam add_1063_1.INJECT1_1 = "NO";
    IB \$signal_pad_12  (.I(num[12]), .O(\$signal_c_12 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1061_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$65 [1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4068));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam add_1061_1.INIT0 = 16'h0000;
    defparam add_1061_1.INIT1 = 16'haaaf;
    defparam add_1061_1.INJECT1_0 = "NO";
    defparam add_1061_1.INJECT1_1 = "NO";
    IB \$signal_pad_13  (.I(num[13]), .O(\$signal_c_13 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    LUT4 i549_1_lut (.A(\$signal$45 [1]), .Z(result_c_8)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam i549_1_lut.init = 16'h5555;
    CCU2C _add_1_650_add_4_18 (.A0(\$signal$13 [4]), .B0(\$signal$78 [13]), 
          .C0(GND_net), .D0(VCC_net), .A1(\$signal_c_31 ), .B1(\$signal_c_30 ), 
          .C1(\$signal$78 [14]), .D1(VCC_net), .CIN(n3914), .COUT(n3915));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam _add_1_650_add_4_18.INIT0 = 16'h666a;
    defparam _add_1_650_add_4_18.INIT1 = 16'he1e1;
    defparam _add_1_650_add_4_18.INJECT1_0 = "NO";
    defparam _add_1_650_add_4_18.INJECT1_1 = "NO";
    CCU2C add_1061_9 (.A0(\$signal$45 [1]), .B0(\$signal$65 [1]), .C0(\$signal$63 [4]), 
          .D0(VCC_net), .A1(\$signal$38 [14]), .B1(\$signal$65 [1]), .C1(\$signal$63 [5]), 
          .D1(VCC_net), .CIN(n4071), .COUT(n4072), .S0(\$signal$68 [5]), 
          .S1(\$signal$68 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam add_1061_9.INIT0 = 16'h9696;
    defparam add_1061_9.INIT1 = 16'h9696;
    defparam add_1061_9.INJECT1_0 = "NO";
    defparam add_1061_9.INJECT1_1 = "NO";
    CCU2C add_1062_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$45 [1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3972));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam add_1062_1.INIT0 = 16'h0000;
    defparam add_1062_1.INIT1 = 16'haaaf;
    defparam add_1062_1.INJECT1_0 = "NO";
    defparam add_1062_1.INJECT1_1 = "NO";
    LUT4 i541_1_lut (.A(\$signal$38 [14]), .Z(result_c_9)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam i541_1_lut.init = 16'h5555;
    IB \$signal_pad_14  (.I(num[14]), .O(\$signal_c_14 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    IB \$signal_pad_15  (.I(num[15]), .O(\$signal_c_15 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C _add_1_650_add_4_16 (.A0(\$signal$23 [8]), .B0(\$signal$78 [11]), 
          .C0(GND_net), .D0(VCC_net), .A1(\$signal$18 [6]), .B1(\$signal$78 [12]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3913), .COUT(n3914));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam _add_1_650_add_4_16.INIT0 = 16'h666a;
    defparam _add_1_650_add_4_16.INIT1 = 16'h666a;
    defparam _add_1_650_add_4_16.INJECT1_0 = "NO";
    defparam _add_1_650_add_4_16.INJECT1_1 = "NO";
    CCU2C add_1059_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$33 [12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4082));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(351[14] 353[8])
    defparam add_1059_1.INIT0 = 16'h0000;
    defparam add_1059_1.INIT1 = 16'haaaf;
    defparam add_1059_1.INJECT1_0 = "NO";
    defparam add_1059_1.INJECT1_1 = "NO";
    LUT4 i511_1_lut (.A(\$signal$18 [6]), .Z(result_c_13)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(324[14] 326[8])
    defparam i511_1_lut.init = 16'h5555;
    IB \$signal_pad_16  (.I(num[16]), .O(\$signal_c_16 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1059_11 (.A0(\$signal$33 [12]), .B0(\$signal$33 [6]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$33 [12]), .B1(\$signal$33 [7]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4086), .COUT(n4087), .S0(\$signal$38 [7]), 
          .S1(\$signal$38 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(351[14] 353[8])
    defparam add_1059_11.INIT0 = 16'h9995;
    defparam add_1059_11.INIT1 = 16'h9995;
    defparam add_1059_11.INJECT1_0 = "NO";
    defparam add_1059_11.INJECT1_1 = "NO";
    CCU2C add_1059_7 (.A0(\$signal$23 [8]), .B0(\$signal$33 [12]), .C0(\$signal$33 [2]), 
          .D0(VCC_net), .A1(\$signal$18 [6]), .B1(\$signal$33 [12]), .C1(\$signal$33 [3]), 
          .D1(VCC_net), .CIN(n4084), .COUT(n4085), .S0(\$signal$38 [3]), 
          .S1(\$signal$38 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(351[14] 353[8])
    defparam add_1059_7.INIT0 = 16'h9696;
    defparam add_1059_7.INIT1 = 16'h9696;
    defparam add_1059_7.INJECT1_0 = "NO";
    defparam add_1059_7.INJECT1_1 = "NO";
    CCU2C _add_1_650_add_4_14 (.A0(\$signal$33 [12]), .B0(\$signal$78 [9]), 
          .C0(GND_net), .D0(VCC_net), .A1(\$signal$28 [10]), .B1(\$signal$78 [10]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3912), .COUT(n3913));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam _add_1_650_add_4_14.INIT0 = 16'h666a;
    defparam _add_1_650_add_4_14.INIT1 = 16'h666a;
    defparam _add_1_650_add_4_14.INJECT1_0 = "NO";
    defparam _add_1_650_add_4_14.INJECT1_1 = "NO";
    IB \$signal_pad_17  (.I(num[17]), .O(\$signal_c_17 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    IB \$signal_pad_18  (.I(num[18]), .O(\$signal_c_18 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1059_5 (.A0(\$signal$33 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$28 [10]), .B1(\$signal$33 [12]), 
          .C1(\$signal$33 [1]), .D1(VCC_net), .CIN(n4083), .COUT(n4084), 
          .S0(\$signal$38 [1]), .S1(\$signal$38 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(351[14] 353[8])
    defparam add_1059_5.INIT0 = 16'haaa0;
    defparam add_1059_5.INIT1 = 16'h9696;
    defparam add_1059_5.INJECT1_0 = "NO";
    defparam add_1059_5.INJECT1_1 = "NO";
    CCU2C add_1064_5 (.A0(\$signal$48 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$45 [1]), .B1(\$signal$50 [1]), .C1(\$signal$48 [1]), 
          .D1(VCC_net), .CIN(n3959), .COUT(n3960), .S0(\$signal$53 [1]), 
          .S1(\$signal$53 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam add_1064_5.INIT0 = 16'haaa0;
    defparam add_1064_5.INIT1 = 16'h9696;
    defparam add_1064_5.INJECT1_0 = "NO";
    defparam add_1064_5.INJECT1_1 = "NO";
    IB \$signal_pad_19  (.I(num[19]), .O(\$signal_c_19 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C _add_1_650_add_4_12 (.A0(\$signal$45 [1]), .B0(\$signal$78 [7]), 
          .C0(GND_net), .D0(VCC_net), .A1(\$signal$38 [14]), .B1(\$signal$78 [8]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3911), .COUT(n3912));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam _add_1_650_add_4_12.INIT0 = 16'h666a;
    defparam _add_1_650_add_4_12.INIT1 = 16'h666a;
    defparam _add_1_650_add_4_12.INJECT1_0 = "NO";
    defparam _add_1_650_add_4_12.INJECT1_1 = "NO";
    CCU2C add_1066_13 (.A0(\$signal$18 [6]), .B0(\$signal$60 [1]), .C0(\$signal$58 [8]), 
          .D0(VCC_net), .A1(\$signal$13 [4]), .B1(\$signal$60 [1]), .C1(\$signal$58 [9]), 
          .D1(VCC_net), .CIN(n3949), .COUT(n3950), .S0(\$signal$63 [9]), 
          .S1(\$signal$63 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam add_1066_13.INIT0 = 16'h9696;
    defparam add_1066_13.INIT1 = 16'h9696;
    defparam add_1066_13.INJECT1_0 = "NO";
    defparam add_1066_13.INJECT1_1 = "NO";
    CCU2C add_1062_9 (.A0(\$signal$23 [8]), .B0(\$signal$45 [1]), .C0(\$signal$43 [4]), 
          .D0(VCC_net), .A1(\$signal$18 [6]), .B1(\$signal$45 [1]), .C1(\$signal$43 [5]), 
          .D1(VCC_net), .CIN(n3975), .COUT(n3976), .S0(\$signal$48 [5]), 
          .S1(\$signal$48 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam add_1062_9.INIT0 = 16'h9696;
    defparam add_1062_9.INIT1 = 16'h9696;
    defparam add_1062_9.INJECT1_0 = "NO";
    defparam add_1062_9.INJECT1_1 = "NO";
    LUT4 sub_107_inv_0_i17_1_lut_2_lut (.A(\$signal_c_31 ), .B(\$signal_c_30 ), 
         .Z(\$signal$11 [4])) /* synthesis lut_function=(!(A+(B))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam sub_107_inv_0_i17_1_lut_2_lut.init = 16'h1111;
    CCU2C add_1059_3 (.A0(\$signal$33 [12]), .B0(\$signal_c_18 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_19 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4082), .COUT(n4083), .S1(\$signal$38 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(351[14] 353[8])
    defparam add_1059_3.INIT0 = 16'h666a;
    defparam add_1059_3.INIT1 = 16'h555f;
    defparam add_1059_3.INJECT1_0 = "NO";
    defparam add_1059_3.INJECT1_1 = "NO";
    CCU2C add_1061_19 (.A0(\$signal$65 [1]), .B0(\$signal$63 [14]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$65 [1]), .B1(\$signal$63 [15]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4076), .S0(\$signal$68 [15]), .S1(\$signal$70 [1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam add_1061_19.INIT0 = 16'h9995;
    defparam add_1061_19.INIT1 = 16'h9995;
    defparam add_1061_19.INJECT1_0 = "NO";
    defparam add_1061_19.INJECT1_1 = "NO";
    CCU2C add_1059_13 (.A0(\$signal$33 [12]), .B0(\$signal$33 [8]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$33 [12]), .B1(\$signal$33 [9]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4087), .COUT(n4088), .S0(\$signal$38 [9]), 
          .S1(\$signal$38 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(351[14] 353[8])
    defparam add_1059_13.INIT0 = 16'h9995;
    defparam add_1059_13.INIT1 = 16'h9995;
    defparam add_1059_13.INJECT1_0 = "NO";
    defparam add_1059_13.INJECT1_1 = "NO";
    IB \$signal_pad_20  (.I(num[20]), .O(\$signal_c_20 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    IB \$signal_pad_21  (.I(num[21]), .O(\$signal_c_21 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    IB \$signal_pad_22  (.I(num[22]), .O(\$signal_c_22 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1059_9 (.A0(\$signal$13 [4]), .B0(\$signal$33 [12]), .C0(\$signal$33 [4]), 
          .D0(VCC_net), .A1(result_c_15), .B1(\$signal$33 [12]), .C1(\$signal$33 [5]), 
          .D1(VCC_net), .CIN(n4085), .COUT(n4086), .S0(\$signal$38 [5]), 
          .S1(\$signal$38 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(351[14] 353[8])
    defparam add_1059_9.INIT0 = 16'h9696;
    defparam add_1059_9.INIT1 = 16'h6969;
    defparam add_1059_9.INJECT1_0 = "NO";
    defparam add_1059_9.INJECT1_1 = "NO";
    IB \$signal_pad_23  (.I(num[23]), .O(\$signal_c_23 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    LUT4 i506_1_lut (.A(\$signal$13 [4]), .Z(result_c_14)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(315[14] 317[8])
    defparam i506_1_lut.init = 16'h5555;
    CCU2C add_1061_15 (.A0(\$signal$13 [4]), .B0(\$signal$65 [1]), .C0(\$signal$63 [10]), 
          .D0(VCC_net), .A1(result_c_15), .B1(\$signal$65 [1]), .C1(\$signal$63 [11]), 
          .D1(VCC_net), .CIN(n4074), .COUT(n4075), .S0(\$signal$68 [11]), 
          .S1(\$signal$68 [12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam add_1061_15.INIT0 = 16'h9696;
    defparam add_1061_15.INIT1 = 16'h6969;
    defparam add_1061_15.INJECT1_0 = "NO";
    defparam add_1061_15.INJECT1_1 = "NO";
    CCU2C add_1061_11 (.A0(\$signal$33 [12]), .B0(\$signal$65 [1]), .C0(\$signal$63 [6]), 
          .D0(VCC_net), .A1(\$signal$28 [10]), .B1(\$signal$65 [1]), .C1(\$signal$63 [7]), 
          .D1(VCC_net), .CIN(n4072), .COUT(n4073), .S0(\$signal$68 [7]), 
          .S1(\$signal$68 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam add_1061_11.INIT0 = 16'h9696;
    defparam add_1061_11.INIT1 = 16'h9696;
    defparam add_1061_11.INJECT1_0 = "NO";
    defparam add_1061_11.INJECT1_1 = "NO";
    CCU2C add_1061_7 (.A0(\$signal$55 [1]), .B0(\$signal$65 [1]), .C0(\$signal$63 [2]), 
          .D0(VCC_net), .A1(\$signal$50 [1]), .B1(\$signal$65 [1]), .C1(\$signal$63 [3]), 
          .D1(VCC_net), .CIN(n4070), .COUT(n4071), .S0(\$signal$68 [3]), 
          .S1(\$signal$68 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam add_1061_7.INIT0 = 16'h9696;
    defparam add_1061_7.INIT1 = 16'h9696;
    defparam add_1061_7.INJECT1_0 = "NO";
    defparam add_1061_7.INJECT1_1 = "NO";
    CCU2C add_1062_13 (.A0(\$signal$45 [1]), .B0(\$signal$43 [8]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$45 [1]), .B1(\$signal$43 [9]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3977), .COUT(n3978), .S0(\$signal$48 [9]), 
          .S1(\$signal$48 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam add_1062_13.INIT0 = 16'h9995;
    defparam add_1062_13.INIT1 = 16'h9995;
    defparam add_1062_13.INJECT1_0 = "NO";
    defparam add_1062_13.INJECT1_1 = "NO";
    CCU2C add_1061_5 (.A0(\$signal$63 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$60 [1]), .B1(\$signal$65 [1]), .C1(\$signal$63 [1]), 
          .D1(VCC_net), .CIN(n4069), .COUT(n4070), .S0(\$signal$68 [1]), 
          .S1(\$signal$68 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam add_1061_5.INIT0 = 16'haaa0;
    defparam add_1061_5.INIT1 = 16'h9696;
    defparam add_1061_5.INJECT1_0 = "NO";
    defparam add_1061_5.INJECT1_1 = "NO";
    CCU2C add_1061_17 (.A0(\$signal$65 [1]), .B0(\$signal$63 [12]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$65 [1]), .B1(\$signal$63 [13]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4075), .COUT(n4076), .S0(\$signal$68 [13]), 
          .S1(\$signal$68 [14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam add_1061_17.INIT0 = 16'h9995;
    defparam add_1061_17.INIT1 = 16'h9995;
    defparam add_1061_17.INJECT1_0 = "NO";
    defparam add_1061_17.INJECT1_1 = "NO";
    IB \$signal_pad_24  (.I(num[24]), .O(\$signal_c_24 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    IB \$signal_pad_25  (.I(num[25]), .O(\$signal_c_25 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    IB \$signal_pad_26  (.I(num[26]), .O(\$signal_c_26 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    LUT4 i532_1_lut (.A(\$signal$33 [12]), .Z(result_c_10)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(351[14] 353[8])
    defparam i532_1_lut.init = 16'h5555;
    CCU2C add_1061_3 (.A0(\$signal$65 [1]), .B0(\$signal_c_6 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_7 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4068), .COUT(n4069), .S1(\$signal$68 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam add_1061_3.INIT0 = 16'h666a;
    defparam add_1061_3.INIT1 = 16'h555f;
    defparam add_1061_3.INJECT1_0 = "NO";
    defparam add_1061_3.INJECT1_1 = "NO";
    CCU2C add_1063_7 (.A0(\$signal_c_31 ), .B0(\$signal_c_30 ), .C0(\$signal$11 [4]), 
          .D0(VCC_net), .A1(\$signal_c_31 ), .B1(\$signal_c_30 ), .C1(\$signal$11 [4]), 
          .D1(VCC_net), .CIN(n4062), .S0(\$signal$13 [3]), .S1(\$signal$13 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(306[14] 308[8])
    defparam add_1063_7.INIT0 = 16'h1e1e;
    defparam add_1063_7.INIT1 = 16'h1e1e;
    defparam add_1063_7.INJECT1_0 = "NO";
    defparam add_1063_7.INJECT1_1 = "NO";
    IB \$signal_pad_27  (.I(num[27]), .O(\$signal_c_27 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C _add_1_650_add_4_10 (.A0(\$signal$55 [1]), .B0(\$signal$78 [5]), 
          .C0(GND_net), .D0(VCC_net), .A1(\$signal$50 [1]), .B1(\$signal$78 [6]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3910), .COUT(n3911));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam _add_1_650_add_4_10.INIT0 = 16'h666a;
    defparam _add_1_650_add_4_10.INIT1 = 16'h666a;
    defparam _add_1_650_add_4_10.INJECT1_0 = "NO";
    defparam _add_1_650_add_4_10.INJECT1_1 = "NO";
    IB \$signal_pad_28  (.I(num[28]), .O(\$signal_c_28 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    IB \$signal_pad_29  (.I(num[29]), .O(\$signal_c_29 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1064_13 (.A0(result_c_15), .B0(\$signal$50 [1]), .C0(\$signal$48 [8]), 
          .D0(VCC_net), .A1(\$signal$50 [1]), .B1(\$signal$48 [9]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3963), .COUT(n3964), .S0(\$signal$53 [9]), 
          .S1(\$signal$53 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam add_1064_13.INIT0 = 16'h6969;
    defparam add_1064_13.INIT1 = 16'h9995;
    defparam add_1064_13.INJECT1_0 = "NO";
    defparam add_1064_13.INJECT1_1 = "NO";
    IB \$signal_pad_30  (.I(num[30]), .O(\$signal_c_30 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    CCU2C add_1065_17 (.A0(result_c_15), .B0(\$signal$70 [1]), .C0(\$signal$68 [12]), 
          .D0(VCC_net), .A1(\$signal$70 [1]), .B1(\$signal$68 [13]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4053), .COUT(n4054), .S0(\$signal$73 [13]), 
          .S1(\$signal$73 [14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam add_1065_17.INIT0 = 16'h6969;
    defparam add_1065_17.INIT1 = 16'h9995;
    defparam add_1065_17.INJECT1_0 = "NO";
    defparam add_1065_17.INJECT1_1 = "NO";
    IB \$signal_pad_31  (.I(num[31]), .O(\$signal_c_31 ));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(239[16:19])
    LUT4 mux_131_i1_3_lut (.A(\$63 [17]), .B(\$62 [17]), .C(\$signal$80 [1]), 
         .Z(\$signal$83 [17])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(432[14] 434[8])
    defparam mux_131_i1_3_lut.init = 16'h3535;
    CCU2C add_1063_3 (.A0(\$signal_c_31 ), .B0(\$signal_c_30 ), .C0(\$signal_c_28 ), 
          .D0(VCC_net), .A1(\$signal_c_29 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4060), .COUT(n4061), .S1(\$signal$13 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(306[14] 308[8])
    defparam add_1063_3.INIT0 = 16'he1e1;
    defparam add_1063_3.INIT1 = 16'h555f;
    defparam add_1063_3.INJECT1_0 = "NO";
    defparam add_1063_3.INJECT1_1 = "NO";
    CCU2C add_1065_19 (.A0(\$signal$70 [1]), .B0(\$signal$68 [14]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$70 [1]), .B1(\$signal$68 [15]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4054), .S0(\$signal$73 [15]), .S1(\$signal$75 [1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam add_1065_19.INIT0 = 16'h9995;
    defparam add_1065_19.INIT1 = 16'h9995;
    defparam add_1065_19.INJECT1_0 = "NO";
    defparam add_1065_19.INJECT1_1 = "NO";
    CCU2C add_1065_15 (.A0(\$signal$18 [6]), .B0(\$signal$70 [1]), .C0(\$signal$68 [10]), 
          .D0(VCC_net), .A1(\$signal$13 [4]), .B1(\$signal$70 [1]), .C1(\$signal$68 [11]), 
          .D1(VCC_net), .CIN(n4052), .COUT(n4053), .S0(\$signal$73 [11]), 
          .S1(\$signal$73 [12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam add_1065_15.INIT0 = 16'h9696;
    defparam add_1065_15.INIT1 = 16'h9696;
    defparam add_1065_15.INJECT1_0 = "NO";
    defparam add_1065_15.INJECT1_1 = "NO";
    CCU2C add_1064_9 (.A0(\$signal$28 [10]), .B0(\$signal$50 [1]), .C0(\$signal$48 [4]), 
          .D0(VCC_net), .A1(\$signal$23 [8]), .B1(\$signal$50 [1]), .C1(\$signal$48 [5]), 
          .D1(VCC_net), .CIN(n3961), .COUT(n3962), .S0(\$signal$53 [5]), 
          .S1(\$signal$53 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam add_1064_9.INIT0 = 16'h9696;
    defparam add_1064_9.INIT1 = 16'h9696;
    defparam add_1064_9.INJECT1_0 = "NO";
    defparam add_1064_9.INJECT1_1 = "NO";
    OB result_pad_0 (.I(\$signal$83 [17]), .O(result[0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    CCU2C _add_1_650_add_4_8 (.A0(\$signal$65 [1]), .B0(\$signal$78 [3]), 
          .C0(GND_net), .D0(VCC_net), .A1(\$signal$60 [1]), .B1(\$signal$78 [4]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3909), .COUT(n3910));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam _add_1_650_add_4_8.INIT0 = 16'h666a;
    defparam _add_1_650_add_4_8.INIT1 = 16'h666a;
    defparam _add_1_650_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_650_add_4_8.INJECT1_1 = "NO";
    OB result_pad_1 (.I(result_c_1), .O(result[1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    OB result_pad_2 (.I(result_c_2), .O(result[2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    LUT4 sub_107_inv_0_i2_1_lut (.A(\$signal$80 [1]), .Z(result_c_1)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam sub_107_inv_0_i2_1_lut.init = 16'h5555;
    OB result_pad_3 (.I(result_c_3), .O(result[3]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    CCU2C add_1065_11 (.A0(\$signal$38 [14]), .B0(\$signal$70 [1]), .C0(\$signal$68 [6]), 
          .D0(VCC_net), .A1(\$signal$33 [12]), .B1(\$signal$70 [1]), .C1(\$signal$68 [7]), 
          .D1(VCC_net), .CIN(n4050), .COUT(n4051), .S0(\$signal$73 [7]), 
          .S1(\$signal$73 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam add_1065_11.INIT0 = 16'h9696;
    defparam add_1065_11.INIT1 = 16'h9696;
    defparam add_1065_11.INJECT1_0 = "NO";
    defparam add_1065_11.INJECT1_1 = "NO";
    CCU2C add_1065_7 (.A0(\$signal$60 [1]), .B0(\$signal$70 [1]), .C0(\$signal$68 [2]), 
          .D0(VCC_net), .A1(\$signal$55 [1]), .B1(\$signal$70 [1]), .C1(\$signal$68 [3]), 
          .D1(VCC_net), .CIN(n4048), .COUT(n4049), .S0(\$signal$73 [3]), 
          .S1(\$signal$73 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam add_1065_7.INIT0 = 16'h9696;
    defparam add_1065_7.INIT1 = 16'h9696;
    defparam add_1065_7.INJECT1_0 = "NO";
    defparam add_1065_7.INJECT1_1 = "NO";
    CCU2C add_1065_3 (.A0(\$signal$70 [1]), .B0(\$signal_c_4 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_5 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4046), .COUT(n4047), .S1(\$signal$73 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam add_1065_3.INIT0 = 16'h666a;
    defparam add_1065_3.INIT1 = 16'h555f;
    defparam add_1065_3.INJECT1_0 = "NO";
    defparam add_1065_3.INJECT1_1 = "NO";
    CCU2C add_1067_19 (.A0(\$signal$75 [1]), .B0(\$signal$73 [14]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$75 [1]), .B1(\$signal$73 [15]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4040), .S0(\$signal$78 [15]), .S1(\$signal$80 [1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam add_1067_19.INIT0 = 16'h9995;
    defparam add_1067_19.INIT1 = 16'h9995;
    defparam add_1067_19.INJECT1_0 = "NO";
    defparam add_1067_19.INJECT1_1 = "NO";
    CCU2C add_1064_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$50 [1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3958));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam add_1064_1.INIT0 = 16'h0000;
    defparam add_1064_1.INIT1 = 16'haaaf;
    defparam add_1064_1.INJECT1_0 = "NO";
    defparam add_1064_1.INJECT1_1 = "NO";
    LUT4 i575_1_lut (.A(\$signal$75 [1]), .Z(result_c_2)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam i575_1_lut.init = 16'h5555;
    OB result_pad_4 (.I(result_c_4), .O(result[4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    LUT4 i574_1_lut (.A(\$signal$70 [1]), .Z(result_c_3)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(414[14] 416[8])
    defparam i574_1_lut.init = 16'h5555;
    CCU2C add_1066_17 (.A0(\$signal$60 [1]), .B0(\$signal$58 [12]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$60 [1]), .B1(\$signal$58 [13]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3951), .COUT(n3952), .S0(\$signal$63 [13]), 
          .S1(\$signal$63 [14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam add_1066_17.INIT0 = 16'h9995;
    defparam add_1066_17.INIT1 = 16'h9995;
    defparam add_1066_17.INJECT1_0 = "NO";
    defparam add_1066_17.INJECT1_1 = "NO";
    CCU2C add_1067_15 (.A0(\$signal$23 [8]), .B0(\$signal$75 [1]), .C0(\$signal$73 [10]), 
          .D0(VCC_net), .A1(\$signal$18 [6]), .B1(\$signal$75 [1]), .C1(\$signal$73 [11]), 
          .D1(VCC_net), .CIN(n4038), .COUT(n4039), .S0(\$signal$78 [11]), 
          .S1(\$signal$78 [12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam add_1067_15.INIT0 = 16'h9696;
    defparam add_1067_15.INIT1 = 16'h9696;
    defparam add_1067_15.INJECT1_0 = "NO";
    defparam add_1067_15.INJECT1_1 = "NO";
    CCU2C add_1067_11 (.A0(\$signal$45 [1]), .B0(\$signal$75 [1]), .C0(\$signal$73 [6]), 
          .D0(VCC_net), .A1(\$signal$38 [14]), .B1(\$signal$75 [1]), .C1(\$signal$73 [7]), 
          .D1(VCC_net), .CIN(n4036), .COUT(n4037), .S0(\$signal$78 [7]), 
          .S1(\$signal$78 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam add_1067_11.INIT0 = 16'h9696;
    defparam add_1067_11.INIT1 = 16'h9696;
    defparam add_1067_11.INJECT1_0 = "NO";
    defparam add_1067_11.INJECT1_1 = "NO";
    CCU2C add_1067_7 (.A0(\$signal$65 [1]), .B0(\$signal$75 [1]), .C0(\$signal$73 [2]), 
          .D0(VCC_net), .A1(\$signal$60 [1]), .B1(\$signal$75 [1]), .C1(\$signal$73 [3]), 
          .D1(VCC_net), .CIN(n4034), .COUT(n4035), .S0(\$signal$78 [3]), 
          .S1(\$signal$78 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam add_1067_7.INIT0 = 16'h9696;
    defparam add_1067_7.INIT1 = 16'h9696;
    defparam add_1067_7.INJECT1_0 = "NO";
    defparam add_1067_7.INJECT1_1 = "NO";
    CCU2C add_1067_3 (.A0(\$signal$75 [1]), .B0(\$signal_c_2 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_3 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4032), .COUT(n4033), .S1(\$signal$78 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(423[14] 425[8])
    defparam add_1067_3.INIT0 = 16'h666a;
    defparam add_1067_3.INIT1 = 16'h555f;
    defparam add_1067_3.INJECT1_0 = "NO";
    defparam add_1067_3.INJECT1_1 = "NO";
    CCU2C add_1066_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$60 [1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3944));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam add_1066_1.INIT0 = 16'h0000;
    defparam add_1066_1.INIT1 = 16'haaaf;
    defparam add_1066_1.INJECT1_0 = "NO";
    defparam add_1066_1.INJECT1_1 = "NO";
    OB result_pad_5 (.I(result_c_5), .O(result[5]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    OB result_pad_6 (.I(result_c_6), .O(result[6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    CCU2C _add_1_650_add_4_6 (.A0(\$signal$75 [1]), .B0(\$signal$78 [1]), 
          .C0(GND_net), .D0(VCC_net), .A1(\$signal$70 [1]), .B1(\$signal$78 [2]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3908), .COUT(n3909));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam _add_1_650_add_4_6.INIT0 = 16'h666a;
    defparam _add_1_650_add_4_6.INIT1 = 16'h666a;
    defparam _add_1_650_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_650_add_4_6.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    LUT4 i571_1_lut (.A(\$signal$65 [1]), .Z(result_c_4)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(405[14] 407[8])
    defparam i571_1_lut.init = 16'h5555;
    CCU2C _add_1_650_add_4_4 (.A0(\$signal$80 [1]), .B0(\$signal_c_1 ), 
          .C0(GND_net), .D0(VCC_net), .A1(\$signal$80 [1]), .B1(\$signal$78 [0]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3907), .COUT(n3908));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam _add_1_650_add_4_4.INIT0 = 16'h9995;
    defparam _add_1_650_add_4_4.INIT1 = 16'h666a;
    defparam _add_1_650_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_650_add_4_4.INJECT1_1 = "NO";
    CCU2C add_1069_13 (.A0(result_c_12), .B0(\$signal$23 [8]), .C0(GND_net), 
          .D0(VCC_net), .A1(result_c_12), .B1(\$signal$23 [8]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4026), .S0(\$signal$28 [9]), .S1(\$signal$28 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(333[14] 335[8])
    defparam add_1069_13.INIT0 = 16'h666a;
    defparam add_1069_13.INIT1 = 16'h666a;
    defparam add_1069_13.INJECT1_0 = "NO";
    defparam add_1069_13.INJECT1_1 = "NO";
    CCU2C add_1069_9 (.A0(\$signal$23 [8]), .B0(\$signal$23 [4]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$23 [8]), .B1(\$signal$23 [5]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4024), .COUT(n4025), .S0(\$signal$28 [5]), 
          .S1(\$signal$28 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(333[14] 335[8])
    defparam add_1069_9.INIT0 = 16'h9995;
    defparam add_1069_9.INIT1 = 16'h9995;
    defparam add_1069_9.INJECT1_0 = "NO";
    defparam add_1069_9.INJECT1_1 = "NO";
    CCU2C add_1069_5 (.A0(\$signal$23 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$18 [6]), .B1(\$signal$23 [8]), .C1(\$signal$23 [1]), 
          .D1(VCC_net), .CIN(n4022), .COUT(n4023), .S0(\$signal$28 [1]), 
          .S1(\$signal$28 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(333[14] 335[8])
    defparam add_1069_5.INIT0 = 16'haaa0;
    defparam add_1069_5.INIT1 = 16'h9696;
    defparam add_1069_5.INJECT1_0 = "NO";
    defparam add_1069_5.INJECT1_1 = "NO";
    CCU2C add_1069_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$23 [8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4021));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(333[14] 335[8])
    defparam add_1069_1.INIT0 = 16'h0000;
    defparam add_1069_1.INIT1 = 16'haaaf;
    defparam add_1069_1.INJECT1_0 = "NO";
    defparam add_1069_1.INJECT1_1 = "NO";
    OB result_pad_7 (.I(result_c_7), .O(result[7]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    LUT4 i567_1_lut (.A(\$signal$60 [1]), .Z(result_c_5)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam i567_1_lut.init = 16'h5555;
    CCU2C add_1066_5 (.A0(\$signal$58 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$55 [1]), .B1(\$signal$60 [1]), .C1(\$signal$58 [1]), 
          .D1(VCC_net), .CIN(n3945), .COUT(n3946), .S0(\$signal$63 [1]), 
          .S1(\$signal$63 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam add_1066_5.INIT0 = 16'haaa0;
    defparam add_1066_5.INIT1 = 16'h9696;
    defparam add_1066_5.INJECT1_0 = "NO";
    defparam add_1066_5.INJECT1_1 = "NO";
    CCU2C add_1071_7 (.A0(\$signal$13 [4]), .B0(\$signal$13 [2]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$13 [4]), .B1(\$signal$13 [3]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4014), .COUT(n4015), .S0(\$signal$18 [3]), 
          .S1(\$signal$18 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(315[14] 317[8])
    defparam add_1071_7.INIT0 = 16'h9995;
    defparam add_1071_7.INIT1 = 16'h9995;
    defparam add_1071_7.INJECT1_0 = "NO";
    defparam add_1071_7.INJECT1_1 = "NO";
    CCU2C add_1071_3 (.A0(\$signal$13 [4]), .B0(\$signal_c_26 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_27 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4012), .COUT(n4013), .S1(\$signal$18 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(315[14] 317[8])
    defparam add_1071_3.INIT0 = 16'h666a;
    defparam add_1071_3.INIT1 = 16'h555f;
    defparam add_1071_3.INJECT1_0 = "NO";
    defparam add_1071_3.INJECT1_1 = "NO";
    CCU2C add_1058_15 (.A0(result_c_11), .B0(\$signal$28 [10]), .C0(GND_net), 
          .D0(VCC_net), .A1(result_c_11), .B1(\$signal$28 [10]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4006), .S0(\$signal$33 [11]), .S1(\$signal$33 [12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(342[14] 344[8])
    defparam add_1058_15.INIT0 = 16'h666a;
    defparam add_1058_15.INIT1 = 16'h666a;
    defparam add_1058_15.INJECT1_0 = "NO";
    defparam add_1058_15.INJECT1_1 = "NO";
    CCU2C add_1058_11 (.A0(\$signal$28 [10]), .B0(\$signal$28 [6]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$28 [10]), .B1(\$signal$28 [7]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4004), .COUT(n4005), .S0(\$signal$33 [7]), 
          .S1(\$signal$33 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(342[14] 344[8])
    defparam add_1058_11.INIT0 = 16'h9995;
    defparam add_1058_11.INIT1 = 16'h9995;
    defparam add_1058_11.INJECT1_0 = "NO";
    defparam add_1058_11.INJECT1_1 = "NO";
    CCU2C add_1058_7 (.A0(\$signal$18 [6]), .B0(\$signal$28 [10]), .C0(\$signal$28 [2]), 
          .D0(VCC_net), .A1(\$signal$13 [4]), .B1(\$signal$28 [10]), .C1(\$signal$28 [3]), 
          .D1(VCC_net), .CIN(n4002), .COUT(n4003), .S0(\$signal$33 [3]), 
          .S1(\$signal$33 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(342[14] 344[8])
    defparam add_1058_7.INIT0 = 16'h9696;
    defparam add_1058_7.INIT1 = 16'h9696;
    defparam add_1058_7.INJECT1_0 = "NO";
    defparam add_1058_7.INJECT1_1 = "NO";
    OB result_pad_8 (.I(result_c_8), .O(result[8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    LUT4 i562_1_lut (.A(\$signal$55 [1]), .Z(result_c_6)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam i562_1_lut.init = 16'h5555;
    OB result_pad_9 (.I(result_c_9), .O(result[9]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    OB result_pad_10 (.I(result_c_10), .O(result[10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    CCU2C add_1058_3 (.A0(\$signal$28 [10]), .B0(\$signal_c_20 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_21 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4000), .COUT(n4001), .S1(\$signal$33 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(342[14] 344[8])
    defparam add_1058_3.INIT0 = 16'h666a;
    defparam add_1058_3.INIT1 = 16'h555f;
    defparam add_1058_3.INJECT1_0 = "NO";
    defparam add_1058_3.INJECT1_1 = "NO";
    CCU2C add_1060_19 (.A0(result_c_9), .B0(\$signal$38 [14]), .C0(GND_net), 
          .D0(VCC_net), .A1(result_c_9), .B1(\$signal$38 [14]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3994), .S0(\$signal$43 [15]), .S1(\$signal$45 [1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam add_1060_19.INIT0 = 16'h666a;
    defparam add_1060_19.INIT1 = 16'h666a;
    defparam add_1060_19.INJECT1_0 = "NO";
    defparam add_1060_19.INJECT1_1 = "NO";
    CCU2C add_1060_15 (.A0(\$signal$38 [14]), .B0(\$signal$38 [10]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$38 [14]), .B1(\$signal$38 [11]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3992), .COUT(n3993), .S0(\$signal$43 [11]), 
          .S1(\$signal$43 [12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam add_1060_15.INIT0 = 16'h9995;
    defparam add_1060_15.INIT1 = 16'h9995;
    defparam add_1060_15.INJECT1_0 = "NO";
    defparam add_1060_15.INJECT1_1 = "NO";
    CCU2C add_1060_11 (.A0(result_c_15), .B0(\$signal$38 [14]), .C0(\$signal$38 [6]), 
          .D0(VCC_net), .A1(\$signal$38 [14]), .B1(\$signal$38 [7]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3990), .COUT(n3991), .S0(\$signal$43 [7]), 
          .S1(\$signal$43 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam add_1060_11.INIT0 = 16'h6969;
    defparam add_1060_11.INIT1 = 16'h9995;
    defparam add_1060_11.INJECT1_0 = "NO";
    defparam add_1060_11.INJECT1_1 = "NO";
    CCU2C add_1060_7 (.A0(\$signal$28 [10]), .B0(\$signal$38 [14]), .C0(\$signal$38 [2]), 
          .D0(VCC_net), .A1(\$signal$23 [8]), .B1(\$signal$38 [14]), .C1(\$signal$38 [3]), 
          .D1(VCC_net), .CIN(n3988), .COUT(n3989), .S0(\$signal$43 [3]), 
          .S1(\$signal$43 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam add_1060_7.INIT0 = 16'h9696;
    defparam add_1060_7.INIT1 = 16'h9696;
    defparam add_1060_7.INJECT1_0 = "NO";
    defparam add_1060_7.INJECT1_1 = "NO";
    CCU2C add_1060_3 (.A0(\$signal$38 [14]), .B0(\$signal_c_16 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_17 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3986), .COUT(n3987), .S1(\$signal$43 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(360[14] 362[8])
    defparam add_1060_3.INIT0 = 16'h666a;
    defparam add_1060_3.INIT1 = 16'h555f;
    defparam add_1060_3.INJECT1_0 = "NO";
    defparam add_1060_3.INJECT1_1 = "NO";
    LUT4 i577_1_lut (.A(\$signal$23 [8]), .Z(result_c_12)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(333[14] 335[8])
    defparam i577_1_lut.init = 16'h5555;
    OB result_pad_11 (.I(result_c_11), .O(result[11]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    CCU2C add_1066_9 (.A0(\$signal$38 [14]), .B0(\$signal$60 [1]), .C0(\$signal$58 [4]), 
          .D0(VCC_net), .A1(\$signal$33 [12]), .B1(\$signal$60 [1]), .C1(\$signal$58 [5]), 
          .D1(VCC_net), .CIN(n3947), .COUT(n3948), .S0(\$signal$63 [5]), 
          .S1(\$signal$63 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam add_1066_9.INIT0 = 16'h9696;
    defparam add_1066_9.INIT1 = 16'h9696;
    defparam add_1066_9.INJECT1_0 = "NO";
    defparam add_1066_9.INJECT1_1 = "NO";
    LUT4 i603_2_lut (.A(\$signal_c_31 ), .B(\$signal_c_30 ), .Z(result_c_15)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(267[17:139])
    defparam i603_2_lut.init = 16'heeee;
    CCU2C add_1068_17 (.A0(\$signal$55 [1]), .B0(\$signal$53 [12]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$55 [1]), .B1(\$signal$53 [13]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3937), .COUT(n3938), .S0(\$signal$58 [13]), 
          .S1(\$signal$58 [14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam add_1068_17.INIT0 = 16'h9995;
    defparam add_1068_17.INIT1 = 16'h9995;
    defparam add_1068_17.INJECT1_0 = "NO";
    defparam add_1068_17.INJECT1_1 = "NO";
    OB result_pad_12 (.I(result_c_12), .O(result[12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    OB result_pad_13 (.I(result_c_13), .O(result[13]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    CCU2C add_1062_19 (.A0(\$signal$45 [1]), .B0(\$signal$43 [14]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$45 [1]), .B1(\$signal$43 [15]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3980), .S0(\$signal$48 [15]), .S1(\$signal$50 [1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam add_1062_19.INIT0 = 16'h9995;
    defparam add_1062_19.INIT1 = 16'h9995;
    defparam add_1062_19.INJECT1_0 = "NO";
    defparam add_1062_19.INJECT1_1 = "NO";
    LUT4 i556_1_lut (.A(\$signal$50 [1]), .Z(result_c_7)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam i556_1_lut.init = 16'h5555;
    CCU2C add_1071_5 (.A0(\$signal$13 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(result_c_15), .B1(\$signal$13 [4]), .C1(\$signal$13 [1]), 
          .D1(VCC_net), .CIN(n4013), .COUT(n4014), .S0(\$signal$18 [1]), 
          .S1(\$signal$18 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(315[14] 317[8])
    defparam add_1071_5.INIT0 = 16'haaa0;
    defparam add_1071_5.INIT1 = 16'h6969;
    defparam add_1071_5.INJECT1_0 = "NO";
    defparam add_1071_5.INJECT1_1 = "NO";
    CCU2C _add_1_650_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_0 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3907));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(264[18:287])
    defparam _add_1_650_add_4_2.INIT0 = 16'h000f;
    defparam _add_1_650_add_4_2.INIT1 = 16'haaa0;
    defparam _add_1_650_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_650_add_4_2.INJECT1_1 = "NO";
    OB result_pad_14 (.I(result_c_14), .O(result[14]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    OB result_pad_15 (.I(result_c_15), .O(result[15]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(242[17:23])
    CCU2C add_1068_13 (.A0(\$signal$13 [4]), .B0(\$signal$55 [1]), .C0(\$signal$53 [8]), 
          .D0(VCC_net), .A1(result_c_15), .B1(\$signal$55 [1]), .C1(\$signal$53 [9]), 
          .D1(VCC_net), .CIN(n3935), .COUT(n3936), .S0(\$signal$58 [9]), 
          .S1(\$signal$58 [10]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam add_1068_13.INIT0 = 16'h9696;
    defparam add_1068_13.INIT1 = 16'h6969;
    defparam add_1068_13.INJECT1_0 = "NO";
    defparam add_1068_13.INJECT1_1 = "NO";
    CCU2C add_1068_9 (.A0(\$signal$33 [12]), .B0(\$signal$55 [1]), .C0(\$signal$53 [4]), 
          .D0(VCC_net), .A1(\$signal$28 [10]), .B1(\$signal$55 [1]), .C1(\$signal$53 [5]), 
          .D1(VCC_net), .CIN(n3933), .COUT(n3934), .S0(\$signal$58 [5]), 
          .S1(\$signal$58 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam add_1068_9.INIT0 = 16'h9696;
    defparam add_1068_9.INIT1 = 16'h9696;
    defparam add_1068_9.INJECT1_0 = "NO";
    defparam add_1068_9.INJECT1_1 = "NO";
    CCU2C add_1068_5 (.A0(\$signal$53 [0]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$50 [1]), .B1(\$signal$55 [1]), .C1(\$signal$53 [1]), 
          .D1(VCC_net), .CIN(n3931), .COUT(n3932), .S0(\$signal$58 [1]), 
          .S1(\$signal$58 [2]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam add_1068_5.INIT0 = 16'haaa0;
    defparam add_1068_5.INIT1 = 16'h9696;
    defparam add_1068_5.INJECT1_0 = "NO";
    defparam add_1068_5.INJECT1_1 = "NO";
    CCU2C add_1068_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\$signal$55 [1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3930));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam add_1068_1.INIT0 = 16'h0000;
    defparam add_1068_1.INIT1 = 16'haaaf;
    defparam add_1068_1.INJECT1_0 = "NO";
    defparam add_1068_1.INJECT1_1 = "NO";
    CCU2C add_1057_17 (.A0(\$signal_c_31 ), .B0(\$signal_c_30 ), .C0(\$signal$78 [14]), 
          .D0(VCC_net), .A1(\$signal$78 [15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4098), .S1(\$62 [17]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(263[18:287])
    defparam add_1057_17.INIT0 = 16'h1e1e;
    defparam add_1057_17.INIT1 = 16'haaa0;
    defparam add_1057_17.INJECT1_0 = "NO";
    defparam add_1057_17.INJECT1_1 = "NO";
    CCU2C add_1057_15 (.A0(\$signal$18 [6]), .B0(\$signal$78 [12]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$13 [4]), .B1(\$signal$78 [13]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4097), .COUT(n4098));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(263[18:287])
    defparam add_1057_15.INIT0 = 16'h9995;
    defparam add_1057_15.INIT1 = 16'h9995;
    defparam add_1057_15.INJECT1_0 = "NO";
    defparam add_1057_15.INJECT1_1 = "NO";
    CCU2C add_1070_9 (.A0(\$signal$18 [6]), .B0(\$signal$18 [4]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$18 [6]), .B1(\$signal$18 [5]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3923), .COUT(n3924), .S0(\$signal$23 [5]), 
          .S1(\$signal$23 [6]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(324[14] 326[8])
    defparam add_1070_9.INIT0 = 16'h9995;
    defparam add_1070_9.INIT1 = 16'h9995;
    defparam add_1070_9.INJECT1_0 = "NO";
    defparam add_1070_9.INJECT1_1 = "NO";
    CCU2C add_1057_13 (.A0(\$signal$28 [10]), .B0(\$signal$78 [10]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$23 [8]), .B1(\$signal$78 [11]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4096), .COUT(n4097));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(263[18:287])
    defparam add_1057_13.INIT0 = 16'h9995;
    defparam add_1057_13.INIT1 = 16'h9995;
    defparam add_1057_13.INJECT1_0 = "NO";
    defparam add_1057_13.INJECT1_1 = "NO";
    CCU2C add_1057_11 (.A0(\$signal$38 [14]), .B0(\$signal$78 [8]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$33 [12]), .B1(\$signal$78 [9]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4095), .COUT(n4096));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(263[18:287])
    defparam add_1057_11.INIT0 = 16'h9995;
    defparam add_1057_11.INIT1 = 16'h9995;
    defparam add_1057_11.INJECT1_0 = "NO";
    defparam add_1057_11.INJECT1_1 = "NO";
    CCU2C add_1057_9 (.A0(\$signal$50 [1]), .B0(\$signal$78 [6]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$45 [1]), .B1(\$signal$78 [7]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4094), .COUT(n4095));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(263[18:287])
    defparam add_1057_9.INIT0 = 16'h9995;
    defparam add_1057_9.INIT1 = 16'h9995;
    defparam add_1057_9.INJECT1_0 = "NO";
    defparam add_1057_9.INJECT1_1 = "NO";
    CCU2C add_1057_7 (.A0(\$signal$60 [1]), .B0(\$signal$78 [4]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$55 [1]), .B1(\$signal$78 [5]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4093), .COUT(n4094));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(263[18:287])
    defparam add_1057_7.INIT0 = 16'h9995;
    defparam add_1057_7.INIT1 = 16'h9995;
    defparam add_1057_7.INJECT1_0 = "NO";
    defparam add_1057_7.INJECT1_1 = "NO";
    CCU2C add_1057_5 (.A0(\$signal$70 [1]), .B0(\$signal$78 [2]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$65 [1]), .B1(\$signal$78 [3]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4092), .COUT(n4093));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(263[18:287])
    defparam add_1057_5.INIT0 = 16'h9995;
    defparam add_1057_5.INIT1 = 16'h9995;
    defparam add_1057_5.INJECT1_0 = "NO";
    defparam add_1057_5.INJECT1_1 = "NO";
    CCU2C add_1057_3 (.A0(\$signal$80 [1]), .B0(\$signal$78 [0]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$75 [1]), .B1(\$signal$78 [1]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4091), .COUT(n4092));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(263[18:287])
    defparam add_1057_3.INIT0 = 16'h9995;
    defparam add_1057_3.INIT1 = 16'h9995;
    defparam add_1057_3.INJECT1_0 = "NO";
    defparam add_1057_3.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C add_1057_1 (.A0(\$signal_c_0 ), .B0(GND_net), .C0(GND_net), 
          .D0(\$signal_c_0 ), .A1(\$signal$80 [1]), .B1(\$signal_c_1 ), 
          .C1(GND_net), .D1(VCC_net), .COUT(n4091));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(263[18:287])
    defparam add_1057_1.INIT0 = 16'h000A;
    defparam add_1057_1.INIT1 = 16'h666a;
    defparam add_1057_1.INJECT1_0 = "NO";
    defparam add_1057_1.INJECT1_1 = "NO";
    CCU2C add_1062_15 (.A0(\$signal$45 [1]), .B0(\$signal$43 [10]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$45 [1]), .B1(\$signal$43 [11]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3978), .COUT(n3979), .S0(\$signal$48 [11]), 
          .S1(\$signal$48 [12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam add_1062_15.INIT0 = 16'h9995;
    defparam add_1062_15.INIT1 = 16'h9995;
    defparam add_1062_15.INJECT1_0 = "NO";
    defparam add_1062_15.INJECT1_1 = "NO";
    CCU2C add_1062_11 (.A0(\$signal$13 [4]), .B0(\$signal$45 [1]), .C0(\$signal$43 [6]), 
          .D0(VCC_net), .A1(result_c_15), .B1(\$signal$45 [1]), .C1(\$signal$43 [7]), 
          .D1(VCC_net), .CIN(n3976), .COUT(n3977), .S0(\$signal$48 [7]), 
          .S1(\$signal$48 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam add_1062_11.INIT0 = 16'h9696;
    defparam add_1062_11.INIT1 = 16'h6969;
    defparam add_1062_11.INJECT1_0 = "NO";
    defparam add_1062_11.INJECT1_1 = "NO";
    CCU2C add_1062_7 (.A0(\$signal$33 [12]), .B0(\$signal$45 [1]), .C0(\$signal$43 [2]), 
          .D0(VCC_net), .A1(\$signal$28 [10]), .B1(\$signal$45 [1]), .C1(\$signal$43 [3]), 
          .D1(VCC_net), .CIN(n3974), .COUT(n3975), .S0(\$signal$48 [3]), 
          .S1(\$signal$48 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam add_1062_7.INIT0 = 16'h9696;
    defparam add_1062_7.INIT1 = 16'h9696;
    defparam add_1062_7.INJECT1_0 = "NO";
    defparam add_1062_7.INJECT1_1 = "NO";
    CCU2C add_1062_3 (.A0(\$signal$45 [1]), .B0(\$signal_c_14 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_15 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3972), .COUT(n3973), .S1(\$signal$48 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(369[14] 371[8])
    defparam add_1062_3.INIT0 = 16'h666a;
    defparam add_1062_3.INIT1 = 16'h555f;
    defparam add_1062_3.INJECT1_0 = "NO";
    defparam add_1062_3.INJECT1_1 = "NO";
    CCU2C add_1064_19 (.A0(\$signal$50 [1]), .B0(\$signal$48 [14]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$50 [1]), .B1(\$signal$48 [15]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3966), .S0(\$signal$53 [15]), .S1(\$signal$55 [1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam add_1064_19.INIT0 = 16'h9995;
    defparam add_1064_19.INIT1 = 16'h9995;
    defparam add_1064_19.INJECT1_0 = "NO";
    defparam add_1064_19.INJECT1_1 = "NO";
    CCU2C add_1064_15 (.A0(\$signal$50 [1]), .B0(\$signal$48 [10]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$50 [1]), .B1(\$signal$48 [11]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3964), .COUT(n3965), .S0(\$signal$53 [11]), 
          .S1(\$signal$53 [12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam add_1064_15.INIT0 = 16'h9995;
    defparam add_1064_15.INIT1 = 16'h9995;
    defparam add_1064_15.INJECT1_0 = "NO";
    defparam add_1064_15.INJECT1_1 = "NO";
    CCU2C add_1064_11 (.A0(\$signal$18 [6]), .B0(\$signal$50 [1]), .C0(\$signal$48 [6]), 
          .D0(VCC_net), .A1(\$signal$13 [4]), .B1(\$signal$50 [1]), .C1(\$signal$48 [7]), 
          .D1(VCC_net), .CIN(n3962), .COUT(n3963), .S0(\$signal$53 [7]), 
          .S1(\$signal$53 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam add_1064_11.INIT0 = 16'h9696;
    defparam add_1064_11.INIT1 = 16'h9696;
    defparam add_1064_11.INJECT1_0 = "NO";
    defparam add_1064_11.INJECT1_1 = "NO";
    CCU2C add_1064_7 (.A0(\$signal$38 [14]), .B0(\$signal$50 [1]), .C0(\$signal$48 [2]), 
          .D0(VCC_net), .A1(\$signal$33 [12]), .B1(\$signal$50 [1]), .C1(\$signal$48 [3]), 
          .D1(VCC_net), .CIN(n3960), .COUT(n3961), .S0(\$signal$53 [3]), 
          .S1(\$signal$53 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam add_1064_7.INIT0 = 16'h9696;
    defparam add_1064_7.INIT1 = 16'h9696;
    defparam add_1064_7.INJECT1_0 = "NO";
    defparam add_1064_7.INJECT1_1 = "NO";
    CCU2C add_1064_3 (.A0(\$signal$50 [1]), .B0(\$signal_c_12 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_13 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3958), .COUT(n3959), .S1(\$signal$53 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(378[14] 380[8])
    defparam add_1064_3.INIT0 = 16'h666a;
    defparam add_1064_3.INIT1 = 16'h555f;
    defparam add_1064_3.INJECT1_0 = "NO";
    defparam add_1064_3.INJECT1_1 = "NO";
    CCU2C add_1066_19 (.A0(\$signal$60 [1]), .B0(\$signal$58 [14]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$60 [1]), .B1(\$signal$58 [15]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3952), .S0(\$signal$63 [15]), .S1(\$signal$65 [1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam add_1066_19.INIT0 = 16'h9995;
    defparam add_1066_19.INIT1 = 16'h9995;
    defparam add_1066_19.INJECT1_0 = "NO";
    defparam add_1066_19.INJECT1_1 = "NO";
    CCU2C add_1066_15 (.A0(result_c_15), .B0(\$signal$60 [1]), .C0(\$signal$58 [10]), 
          .D0(VCC_net), .A1(\$signal$60 [1]), .B1(\$signal$58 [11]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3950), .COUT(n3951), .S0(\$signal$63 [11]), 
          .S1(\$signal$63 [12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam add_1066_15.INIT0 = 16'h6969;
    defparam add_1066_15.INIT1 = 16'h9995;
    defparam add_1066_15.INJECT1_0 = "NO";
    defparam add_1066_15.INJECT1_1 = "NO";
    CCU2C add_1066_11 (.A0(\$signal$28 [10]), .B0(\$signal$60 [1]), .C0(\$signal$58 [6]), 
          .D0(VCC_net), .A1(\$signal$23 [8]), .B1(\$signal$60 [1]), .C1(\$signal$58 [7]), 
          .D1(VCC_net), .CIN(n3948), .COUT(n3949), .S0(\$signal$63 [7]), 
          .S1(\$signal$63 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam add_1066_11.INIT0 = 16'h9696;
    defparam add_1066_11.INIT1 = 16'h9696;
    defparam add_1066_11.INJECT1_0 = "NO";
    defparam add_1066_11.INJECT1_1 = "NO";
    CCU2C add_1066_7 (.A0(\$signal$50 [1]), .B0(\$signal$60 [1]), .C0(\$signal$58 [2]), 
          .D0(VCC_net), .A1(\$signal$45 [1]), .B1(\$signal$60 [1]), .C1(\$signal$58 [3]), 
          .D1(VCC_net), .CIN(n3946), .COUT(n3947), .S0(\$signal$63 [3]), 
          .S1(\$signal$63 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam add_1066_7.INIT0 = 16'h9696;
    defparam add_1066_7.INIT1 = 16'h9696;
    defparam add_1066_7.INJECT1_0 = "NO";
    defparam add_1066_7.INJECT1_1 = "NO";
    CCU2C add_1066_3 (.A0(\$signal$60 [1]), .B0(\$signal_c_8 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_9 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3944), .COUT(n3945), .S1(\$signal$63 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(396[14] 398[8])
    defparam add_1066_3.INIT0 = 16'h666a;
    defparam add_1066_3.INIT1 = 16'h555f;
    defparam add_1066_3.INJECT1_0 = "NO";
    defparam add_1066_3.INJECT1_1 = "NO";
    CCU2C add_1068_19 (.A0(\$signal$55 [1]), .B0(\$signal$53 [14]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$55 [1]), .B1(\$signal$53 [15]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3938), .S0(\$signal$58 [15]), .S1(\$signal$60 [1]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam add_1068_19.INIT0 = 16'h9995;
    defparam add_1068_19.INIT1 = 16'h9995;
    defparam add_1068_19.INJECT1_0 = "NO";
    defparam add_1068_19.INJECT1_1 = "NO";
    CCU2C add_1068_15 (.A0(\$signal$55 [1]), .B0(\$signal$53 [10]), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal$55 [1]), .B1(\$signal$53 [11]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3936), .COUT(n3937), .S0(\$signal$58 [11]), 
          .S1(\$signal$58 [12]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam add_1068_15.INIT0 = 16'h9995;
    defparam add_1068_15.INIT1 = 16'h9995;
    defparam add_1068_15.INJECT1_0 = "NO";
    defparam add_1068_15.INJECT1_1 = "NO";
    CCU2C add_1068_11 (.A0(\$signal$23 [8]), .B0(\$signal$55 [1]), .C0(\$signal$53 [6]), 
          .D0(VCC_net), .A1(\$signal$18 [6]), .B1(\$signal$55 [1]), .C1(\$signal$53 [7]), 
          .D1(VCC_net), .CIN(n3934), .COUT(n3935), .S0(\$signal$58 [7]), 
          .S1(\$signal$58 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam add_1068_11.INIT0 = 16'h9696;
    defparam add_1068_11.INIT1 = 16'h9696;
    defparam add_1068_11.INJECT1_0 = "NO";
    defparam add_1068_11.INJECT1_1 = "NO";
    CCU2C add_1068_7 (.A0(\$signal$45 [1]), .B0(\$signal$55 [1]), .C0(\$signal$53 [2]), 
          .D0(VCC_net), .A1(\$signal$38 [14]), .B1(\$signal$55 [1]), .C1(\$signal$53 [3]), 
          .D1(VCC_net), .CIN(n3932), .COUT(n3933), .S0(\$signal$58 [3]), 
          .S1(\$signal$58 [4]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam add_1068_7.INIT0 = 16'h9696;
    defparam add_1068_7.INIT1 = 16'h9696;
    defparam add_1068_7.INJECT1_0 = "NO";
    defparam add_1068_7.INJECT1_1 = "NO";
    CCU2C add_1068_3 (.A0(\$signal$55 [1]), .B0(\$signal_c_10 ), .C0(GND_net), 
          .D0(VCC_net), .A1(\$signal_c_11 ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3930), .COUT(n3931), .S1(\$signal$58 [0]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(387[14] 389[8])
    defparam add_1068_3.INIT0 = 16'h666a;
    defparam add_1068_3.INIT1 = 16'h555f;
    defparam add_1068_3.INJECT1_0 = "NO";
    defparam add_1068_3.INJECT1_1 = "NO";
    CCU2C add_1070_11 (.A0(result_c_13), .B0(\$signal$18 [6]), .C0(GND_net), 
          .D0(VCC_net), .A1(result_c_13), .B1(\$signal$18 [6]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3924), .S0(\$signal$23 [7]), .S1(\$signal$23 [8]));   // /home/user/SDR-HLS/5.NewModules/SquareRoot/combinatorial/amaranth/lattice/impl1/source/sqrt_combinatorial.v(324[14] 326[8])
    defparam add_1070_11.INIT0 = 16'h666a;
    defparam add_1070_11.INIT1 = 16'h666a;
    defparam add_1070_11.INJECT1_0 = "NO";
    defparam add_1070_11.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

