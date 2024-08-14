// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Feb 28 13:22:26 2024
//
// Verilog Description of module AMDemodulator
//

module AMDemodulator (clk, I_in, Q_in, d_out) /* synthesis syn_module_defined=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(8[8:21])
    input clk;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(17[9:12])
    input [11:0]I_in;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    input [11:0]Q_in;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    output [11:0]d_out;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(17[9:12])
    
    wire GND_net, VCC_net, I_in_c_11, I_in_c_10, I_in_c_9, I_in_c_8, 
        I_in_c_7, I_in_c_6, I_in_c_5, I_in_c_4, I_in_c_3, I_in_c_2, 
        I_in_c_1, I_in_c_0, Q_in_c_11, Q_in_c_10, Q_in_c_9, Q_in_c_8, 
        Q_in_c_7, Q_in_c_6, Q_in_c_5, Q_in_c_4, Q_in_c_3, Q_in_c_2, 
        Q_in_c_1, Q_in_c_0;
    wire [15:0]d_out_d;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(20[21:28])
    
    wire d_out_c_11, d_out_c_10, d_out_c_9, d_out_c_8, d_out_c_7, 
        d_out_c_6, d_out_c_5, d_out_c_4, d_out_c_3, d_out_c_2, d_out_c_1, 
        d_out_c_0;
    wire [31:0]ISquare;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(24[14:21])
    wire [11:0]MultDataB;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(29[21:30])
    wire [23:0]MultResult1;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(30[22:33])
    wire [11:0]MultDataC;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(33[21:30])
    wire [23:0]MultResult2;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(35[22:33])
    
    wire n84, n81, n78, n75, n72, n69, n66, n63, n60, n57, 
        n54, n51, n114, n99, n48, n45, n203, n111, n108, n105, 
        n117, n120, n123;
    wire [17:0]d_out_d_11__N_4;
    
    wire n96, n126, n102, d_out_d_11__N_3;
    wire [17:0]d_out_d_11__N_6;
    
    wire n93, d_out_d_11__N_5, n90;
    wire [17:0]d_out_d_11__N_8;
    
    wire n90_adj_502, d_out_d_11__N_7, n87, n84_adj_503, n81_adj_504, 
        n78_adj_505, n75_adj_506, n72_adj_507, n69_adj_508, n66_adj_509, 
        n63_adj_510, n60_adj_511, n57_adj_512;
    wire [17:0]d_out_d_11__N_10;
    
    wire n87_adj_513, d_out_d_11__N_9, n54_adj_514, n51_adj_515, n48_adj_516, 
        n45_adj_517;
    wire [17:0]d_out_d_11__N_12;
    
    wire n84_adj_518, d_out_d_11__N_11;
    wire [17:0]d_out_d_11__N_14;
    
    wire n81_adj_519, d_out_d_11__N_13, n90_adj_520, n87_adj_521, n84_adj_522, 
        n81_adj_523, n78_adj_524, n75_adj_525;
    wire [17:0]d_out_d_11__N_16;
    
    wire n78_adj_526, d_out_d_11__N_15, n72_adj_527, n69_adj_528, n66_adj_529, 
        n63_adj_530, n60_adj_531, n57_adj_532, n54_adj_533, n51_adj_534, 
        n48_adj_535, n45_adj_536;
    wire [17:0]d_out_d_11__N_18;
    
    wire n75_adj_537, d_out_d_11__N_17;
    wire [17:0]d_out_d_11__N_20;
    
    wire n72_adj_538, d_out_d_11__N_19;
    wire [17:0]d_out_d_11__N_22;
    
    wire n912, n913, n914, n915, n916, n917, n918, n919, n920, 
        n921, n922, n923, n924, n925, n926, n927, d_out_d_11__N_21;
    wire [17:0]d_out_d_11__N_483;
    wire [17:0]d_out_d_11__N_465;
    wire [17:0]d_out_d_11__N_24;
    
    wire n3750, n69_adj_539, n3752, n66_adj_540, n3706, n3754, n63_adj_541, 
        n60_adj_542, n3705, n3704, n3707, n57_adj_543, n3703, n3702, 
        n3701, n3708, n54_adj_544, n3695, n3694, n3693, n3692, 
        n3691, n90_adj_545, n3690, n3689, n3688, n3687, n3680, 
        n3678, n3675, n3837, n3715, n3730, n3644, n3676, n3677, 
        n3673, n3717, n87_adj_546, n51_adj_547, n54_adj_548, n57_adj_549, 
        n60_adj_550, n63_adj_551, n66_adj_552, n69_adj_553, n72_adj_554, 
        n75_adj_555, n78_adj_556, n81_adj_557, n84_adj_558, n87_adj_559, 
        n90_adj_560, n57_adj_561, n60_adj_562, n63_adj_563, n66_adj_564, 
        n69_adj_565, n72_adj_566, n75_adj_567, n78_adj_568, n81_adj_569, 
        n84_adj_570, n87_adj_571, n90_adj_572, n53, n56, n59, n62, 
        n65, n68, n71, n74, n77, n80, n49, n52, n55, n58, 
        n61, n64, n67, n70, n45_adj_573, n48_adj_574, n51_adj_575, 
        n3828, n54_adj_576, n3827, n57_adj_577, n3826, n60_adj_578, 
        n3825, n63_adj_579, n3824, n66_adj_580, n3823, n69_adj_581, 
        n3822, n72_adj_582, n3821, n75_adj_583, n3820, n78_adj_584, 
        n3819, n81_adj_585, n3818, n84_adj_586, n3817, n87_adj_587, 
        n3816, n90_adj_588, n3815, n3814, n3813, n3812, n3810, 
        n3809, n3808, n3807, n3806, n3805, n3804, n3803, n3802, 
        n3796, n3795, n3794, n3793, n3792, n3791, n3790, n3789, 
        n3783, n3782, n3781, n3780, n3779, n3778, n3777, n3776, 
        n3775, n3769, n3768, n3767, n3766, n3765, n3764, n3759, 
        n3758, n3757, n3756, n3748, n3744, n3743, n3741, n3740, 
        n3755, n3753, n3751, n3749, n3745, n3742, n3739, n3733, 
        n3732, n3681, n3679, n3836, n45_adj_589, n48_adj_590, n51_adj_591, 
        n54_adj_592, n3674, n57_adj_593, n60_adj_594, n63_adj_595, 
        n66_adj_596, n69_adj_597, n72_adj_598, n75_adj_599, n78_adj_600, 
        n81_adj_601, n84_adj_602, n87_adj_603, n90_adj_604, n45_adj_605, 
        n54_adj_606, n3722, n3709, n3719, n3721, n3729, n3716, 
        n3718, n3720, n3723, n3731;
    
    VHI i2 (.Z(VCC_net));
    Multiplier Multiplier2 (.clk_c(clk_c), .VCC_net(VCC_net), .GND_net(GND_net), 
            .MultDataC({MultDataC}), .MultResult2({MultResult2})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    CCU2C ISquare_add_4_12 (.A0(MultResult2[10]), .B0(MultResult1[10]), 
          .C0(GND_net), .D0(VCC_net), .A1(MultResult2[11]), .B1(MultResult1[11]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3752), .COUT(n3753), .S0(n96), 
          .S1(n93));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_12.INIT0 = 16'h666a;
    defparam ISquare_add_4_12.INIT1 = 16'h666a;
    defparam ISquare_add_4_12.INJECT1_0 = "NO";
    defparam ISquare_add_4_12.INJECT1_1 = "NO";
    CCU2C ISquare_add_4_8 (.A0(MultResult2[6]), .B0(MultResult1[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(MultResult2[7]), .B1(MultResult1[7]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3750), .COUT(n3751), .S0(n108), .S1(n105));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_8.INIT0 = 16'h666a;
    defparam ISquare_add_4_8.INIT1 = 16'h666a;
    defparam ISquare_add_4_8.INJECT1_0 = "NO";
    defparam ISquare_add_4_8.INJECT1_1 = "NO";
    CCU2C ISquare_add_4_4 (.A0(MultResult2[2]), .B0(MultResult1[2]), .C0(GND_net), 
          .D0(VCC_net), .A1(MultResult2[3]), .B1(MultResult1[3]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3748), .COUT(n3749), .S0(n120), .S1(n117));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_4.INIT0 = 16'h666a;
    defparam ISquare_add_4_4.INIT1 = 16'h666a;
    defparam ISquare_add_4_4.INJECT1_0 = "NO";
    defparam ISquare_add_4_4.INJECT1_1 = "NO";
    CCU2C _add_1_881_add_4_10 (.A0(d_out_d_11__N_12[17]), .B0(n922), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_10[17]), .B1(n921), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3815), .COUT(n3816));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[15:27])
    defparam _add_1_881_add_4_10.INIT0 = 16'h666a;
    defparam _add_1_881_add_4_10.INIT1 = 16'h666a;
    defparam _add_1_881_add_4_10.INJECT1_0 = "NO";
    defparam _add_1_881_add_4_10.INJECT1_1 = "NO";
    CCU2C _add_1_881_add_4_8 (.A0(d_out_d_11__N_16[17]), .B0(n924), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_14[17]), .B1(n923), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3814), .COUT(n3815));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[15:27])
    defparam _add_1_881_add_4_8.INIT0 = 16'h666a;
    defparam _add_1_881_add_4_8.INIT1 = 16'h666a;
    defparam _add_1_881_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_881_add_4_8.INJECT1_1 = "NO";
    IB Q_in_pad_7 (.I(Q_in[7]), .O(Q_in_c_7));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    CCU2C _add_1_881_add_4_6 (.A0(d_out_d_11__N_20[17]), .B0(n926), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_18[17]), .B1(n925), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3813), .COUT(n3814));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[15:27])
    defparam _add_1_881_add_4_6.INIT0 = 16'h666a;
    defparam _add_1_881_add_4_6.INIT1 = 16'h666a;
    defparam _add_1_881_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_881_add_4_6.INJECT1_1 = "NO";
    CCU2C _add_1_881_add_4_4 (.A0(d_out_d_11__N_22[17]), .B0(ISquare[1]), 
          .C0(GND_net), .D0(VCC_net), .A1(d_out_d_11__N_22[17]), .B1(n927), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3812), .COUT(n3813));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[15:27])
    defparam _add_1_881_add_4_4.INIT0 = 16'h9995;
    defparam _add_1_881_add_4_4.INIT1 = 16'h666a;
    defparam _add_1_881_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_881_add_4_4.INJECT1_1 = "NO";
    LUT4 i1305_2_lut (.A(MultResult2[0]), .B(MultResult1[0]), .Z(n126)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1305_2_lut.init = 16'h6666;
    CCU2C add_1233_15 (.A0(d_out_d_11__N_5), .B0(d_out_d_11__N_6[17]), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_5), .B1(d_out_d_11__N_6[17]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3745), .S0(n57_adj_561), 
          .S1(d_out_d_11__N_8[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1233_15.INIT0 = 16'h666a;
    defparam add_1233_15.INIT1 = 16'h666a;
    defparam add_1233_15.INJECT1_0 = "NO";
    defparam add_1233_15.INJECT1_1 = "NO";
    CCU2C _add_1_881_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3812));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[15:27])
    defparam _add_1_881_add_4_2.INIT0 = 16'h000f;
    defparam _add_1_881_add_4_2.INIT1 = 16'haaa0;
    defparam _add_1_881_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_881_add_4_2.INJECT1_1 = "NO";
    CCU2C add_1226_19 (.A0(d_out_d_11__N_18[17]), .B0(n48_adj_590), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_18[17]), .B1(n45_adj_589), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3810), .S0(n45_adj_573), .S1(d_out_d_11__N_20[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1226_19.INIT0 = 16'h9995;
    defparam add_1226_19.INIT1 = 16'h9995;
    defparam add_1226_19.INJECT1_0 = "NO";
    defparam add_1226_19.INJECT1_1 = "NO";
    CCU2C add_1226_17 (.A0(ISquare[31]), .B0(d_out_d_11__N_18[17]), .C0(n54_adj_592), 
          .D0(VCC_net), .A1(d_out_d_11__N_18[17]), .B1(n51_adj_591), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3809), .COUT(n3810), .S0(n51_adj_575), 
          .S1(n48_adj_574));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1226_17.INIT0 = 16'h6969;
    defparam add_1226_17.INIT1 = 16'h9995;
    defparam add_1226_17.INJECT1_0 = "NO";
    defparam add_1226_17.INJECT1_1 = "NO";
    IB Q_in_pad_8 (.I(Q_in[8]), .O(Q_in_c_8));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    CCU2C add_1233_11 (.A0(ISquare[31]), .B0(d_out_d_11__N_6[17]), .C0(n62), 
          .D0(VCC_net), .A1(d_out_d_11__N_6[17]), .B1(n59), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3743), .COUT(n3744), .S0(n69_adj_565), 
          .S1(n66_adj_564));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1233_11.INIT0 = 16'h6969;
    defparam add_1233_11.INIT1 = 16'h9995;
    defparam add_1233_11.INJECT1_0 = "NO";
    defparam add_1233_11.INJECT1_1 = "NO";
    CCU2C add_1233_7 (.A0(d_out_d_11__N_6[17]), .B0(n3836), .C0(n74), 
          .D0(VCC_net), .A1(d_out_d_11__N_6[17]), .B1(n71), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3741), .COUT(n3742), .S0(n81_adj_569), 
          .S1(n78_adj_568));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1233_7.INIT0 = 16'h6969;
    defparam add_1233_7.INIT1 = 16'h9995;
    defparam add_1233_7.INJECT1_0 = "NO";
    defparam add_1233_7.INJECT1_1 = "NO";
    CCU2C add_1226_15 (.A0(ISquare[31]), .B0(d_out_d_11__N_18[17]), .C0(n60_adj_594), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_18[17]), .C1(n57_adj_593), 
          .D1(VCC_net), .CIN(n3808), .COUT(n3809), .S0(n57_adj_577), 
          .S1(n54_adj_576));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1226_15.INIT0 = 16'h6969;
    defparam add_1226_15.INIT1 = 16'h6969;
    defparam add_1226_15.INJECT1_0 = "NO";
    defparam add_1226_15.INJECT1_1 = "NO";
    CCU2C add_1226_13 (.A0(d_out_d_11__N_18[17]), .B0(n3836), .C0(n66_adj_596), 
          .D0(VCC_net), .A1(d_out_d_11__N_18[17]), .B1(n63_adj_595), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3807), .COUT(n3808), .S0(n63_adj_579), 
          .S1(n60_adj_578));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1226_13.INIT0 = 16'h6969;
    defparam add_1226_13.INIT1 = 16'h9995;
    defparam add_1226_13.INJECT1_0 = "NO";
    defparam add_1226_13.INJECT1_1 = "NO";
    LUT4 d_out_d_11__I_10_1_lut (.A(d_out_d_11__N_22[17]), .Z(d_out_d_11__N_21)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(61[22:28])
    defparam d_out_d_11__I_10_1_lut.init = 16'h5555;
    CCU2C add_1223_13 (.A0(d_out_d_11__N_16[17]), .B0(n66_adj_529), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_16[17]), .C1(n63_adj_530), 
          .D1(VCC_net), .CIN(n3706), .COUT(n3707), .S0(n63_adj_595), 
          .S1(n60_adj_594));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1223_13.INIT0 = 16'h9995;
    defparam add_1223_13.INIT1 = 16'h6969;
    defparam add_1223_13.INJECT1_0 = "NO";
    defparam add_1223_13.INJECT1_1 = "NO";
    CCU2C add_1226_11 (.A0(d_out_d_11__N_6[17]), .B0(d_out_d_11__N_18[17]), 
          .C0(n72_adj_598), .D0(VCC_net), .A1(d_out_d_11__N_4[17]), .B1(d_out_d_11__N_18[17]), 
          .C1(n69_adj_597), .D1(VCC_net), .CIN(n3806), .COUT(n3807), 
          .S0(n69_adj_581), .S1(n66_adj_580));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1226_11.INIT0 = 16'h9696;
    defparam add_1226_11.INIT1 = 16'h9696;
    defparam add_1226_11.INJECT1_0 = "NO";
    defparam add_1226_11.INJECT1_1 = "NO";
    CCU2C add_1233_3 (.A0(d_out_d_11__N_6[17]), .B0(ISquare[16]), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[17]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3739), .COUT(n3740), .S1(n90_adj_572));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1233_3.INIT0 = 16'h666a;
    defparam add_1233_3.INIT1 = 16'h555f;
    defparam add_1233_3.INJECT1_0 = "NO";
    defparam add_1233_3.INJECT1_1 = "NO";
    CCU2C add_1226_9 (.A0(d_out_d_11__N_10[17]), .B0(d_out_d_11__N_18[17]), 
          .C0(n78_adj_600), .D0(VCC_net), .A1(d_out_d_11__N_8[17]), .B1(d_out_d_11__N_18[17]), 
          .C1(n75_adj_599), .D1(VCC_net), .CIN(n3805), .COUT(n3806), 
          .S0(n75_adj_583), .S1(n72_adj_582));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1226_9.INIT0 = 16'h9696;
    defparam add_1226_9.INIT1 = 16'h9696;
    defparam add_1226_9.INJECT1_0 = "NO";
    defparam add_1226_9.INJECT1_1 = "NO";
    CCU2C add_1229_11 (.A0(ISquare[31]), .B0(n3837), .C0(n3836), .D0(VCC_net), 
          .A1(ISquare[31]), .B1(n3837), .C1(n3836), .D1(VCC_net), .CIN(n3733), 
          .S0(n49), .S1(d_out_d_11__N_4[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1229_11.INIT0 = 16'he1e1;
    defparam add_1229_11.INIT1 = 16'he1e1;
    defparam add_1229_11.INJECT1_0 = "NO";
    defparam add_1229_11.INJECT1_1 = "NO";
    CCU2C add_1226_7 (.A0(d_out_d_11__N_14[17]), .B0(d_out_d_11__N_18[17]), 
          .C0(n84_adj_602), .D0(VCC_net), .A1(d_out_d_11__N_12[17]), .B1(d_out_d_11__N_18[17]), 
          .C1(n81_adj_601), .D1(VCC_net), .CIN(n3804), .COUT(n3805), 
          .S0(n81_adj_585), .S1(n78_adj_584));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1226_7.INIT0 = 16'h9696;
    defparam add_1226_7.INIT1 = 16'h9696;
    defparam add_1226_7.INJECT1_0 = "NO";
    defparam add_1226_7.INJECT1_1 = "NO";
    CCU2C add_1229_7 (.A0(n54_adj_606), .B0(ISquare[31]), .C0(ISquare[23]), 
          .D0(ISquare[22]), .A1(n3837), .B1(ISquare[31]), .C1(ISquare[23]), 
          .D1(ISquare[22]), .CIN(n3731), .COUT(n3732), .S0(n61), .S1(n58));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1229_7.INIT0 = 16'h999a;
    defparam add_1229_7.INIT1 = 16'haaa9;
    defparam add_1229_7.INJECT1_0 = "NO";
    defparam add_1229_7.INJECT1_1 = "NO";
    CCU2C add_1226_5 (.A0(n90_adj_604), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_16[17]), .B1(d_out_d_11__N_18[17]), .C1(n87_adj_603), 
          .D1(VCC_net), .CIN(n3803), .COUT(n3804), .S0(n87_adj_587), 
          .S1(n84_adj_586));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1226_5.INIT0 = 16'haaa0;
    defparam add_1226_5.INIT1 = 16'h9696;
    defparam add_1226_5.INJECT1_0 = "NO";
    defparam add_1226_5.INJECT1_1 = "NO";
    CCU2C add_1225_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_20[17]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3687));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1225_1.INIT0 = 16'h0000;
    defparam add_1225_1.INIT1 = 16'haaaf;
    defparam add_1225_1.INJECT1_0 = "NO";
    defparam add_1225_1.INJECT1_1 = "NO";
    CCU2C add_1229_3 (.A0(ISquare[31]), .B0(n3837), .C0(ISquare[20]), 
          .D0(VCC_net), .A1(ISquare[21]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3729), .COUT(n3730), .S1(n70));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1229_3.INIT0 = 16'he1e1;
    defparam add_1229_3.INIT1 = 16'h555f;
    defparam add_1229_3.INJECT1_0 = "NO";
    defparam add_1229_3.INJECT1_1 = "NO";
    CCU2C add_1226_3 (.A0(d_out_d_11__N_18[17]), .B0(ISquare[4]), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[5]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3802), .COUT(n3803), .S1(n90_adj_588));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1226_3.INIT0 = 16'h666a;
    defparam add_1226_3.INIT1 = 16'h555f;
    defparam add_1226_3.INJECT1_0 = "NO";
    defparam add_1226_3.INJECT1_1 = "NO";
    CCU2C add_1227_19 (.A0(d_out_d_11__N_9), .B0(d_out_d_11__N_10[17]), 
          .C0(GND_net), .D0(VCC_net), .A1(d_out_d_11__N_9), .B1(d_out_d_11__N_10[17]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3723), .S0(n45), .S1(d_out_d_11__N_12[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1227_19.INIT0 = 16'h666a;
    defparam add_1227_19.INIT1 = 16'h666a;
    defparam add_1227_19.INJECT1_0 = "NO";
    defparam add_1227_19.INJECT1_1 = "NO";
    CCU2C add_1225_17 (.A0(ISquare[31]), .B0(d_out_d_11__N_20[17]), .C0(n54_adj_576), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_20[17]), .C1(n51_adj_575), 
          .D1(VCC_net), .CIN(n3694), .COUT(n3695), .S0(n914), .S1(n913));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1225_17.INIT0 = 16'h6969;
    defparam add_1225_17.INIT1 = 16'h6969;
    defparam add_1225_17.INJECT1_0 = "NO";
    defparam add_1225_17.INJECT1_1 = "NO";
    CCU2C add_1226_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_18[17]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3802));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1226_1.INIT0 = 16'h0000;
    defparam add_1226_1.INIT1 = 16'haaaf;
    defparam add_1226_1.INJECT1_0 = "NO";
    defparam add_1226_1.INJECT1_1 = "NO";
    CCU2C add_1227_15 (.A0(d_out_d_11__N_10[17]), .B0(n60_adj_550), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_10[17]), .B1(n57_adj_549), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3721), .COUT(n3722), .S0(n57), .S1(n54));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1227_15.INIT0 = 16'h9995;
    defparam add_1227_15.INIT1 = 16'h9995;
    defparam add_1227_15.INJECT1_0 = "NO";
    defparam add_1227_15.INJECT1_1 = "NO";
    CCU2C add_1227_11 (.A0(ISquare[31]), .B0(d_out_d_11__N_10[17]), .C0(n72_adj_554), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_10[17]), .C1(n69_adj_553), 
          .D1(VCC_net), .CIN(n3719), .COUT(n3720), .S0(n69), .S1(n66));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1227_11.INIT0 = 16'h6969;
    defparam add_1227_11.INIT1 = 16'h6969;
    defparam add_1227_11.INJECT1_0 = "NO";
    defparam add_1227_11.INJECT1_1 = "NO";
    IB Q_in_pad_9 (.I(Q_in[9]), .O(Q_in_c_9));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    CCU2C add_1227_7 (.A0(d_out_d_11__N_6[17]), .B0(d_out_d_11__N_10[17]), 
          .C0(n84_adj_558), .D0(VCC_net), .A1(d_out_d_11__N_4[17]), .B1(d_out_d_11__N_10[17]), 
          .C1(n81_adj_557), .D1(VCC_net), .CIN(n3717), .COUT(n3718), 
          .S0(n81), .S1(n78));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1227_7.INIT0 = 16'h9696;
    defparam add_1227_7.INIT1 = 16'h9696;
    defparam add_1227_7.INJECT1_0 = "NO";
    defparam add_1227_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_2_3_lut (.A(ISquare[23]), .B(ISquare[22]), .C(ISquare[31]), 
         .Z(n3836)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam i1_2_lut_rep_2_3_lut.init = 16'hfefe;
    IB Q_in_pad_5 (.I(Q_in[5]), .O(Q_in_c_5));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    CCU2C add_1227_3 (.A0(d_out_d_11__N_10[17]), .B0(ISquare[12]), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[13]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3715), .COUT(n3716), .S1(n90_adj_545));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1227_3.INIT0 = 16'h666a;
    defparam add_1227_3.INIT1 = 16'h555f;
    defparam add_1227_3.INJECT1_0 = "NO";
    defparam add_1227_3.INJECT1_1 = "NO";
    LUT4 i1284_1_lut_2_lut_3_lut (.A(ISquare[23]), .B(ISquare[22]), .C(ISquare[31]), 
         .Z(n45_adj_605)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam i1284_1_lut_2_lut_3_lut.init = 16'h0101;
    CCU2C add_1223_5 (.A0(n90_adj_520), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_14[17]), .B1(d_out_d_11__N_16[17]), .C1(n87_adj_521), 
          .D1(VCC_net), .CIN(n3702), .COUT(n3703), .S0(n87_adj_603), 
          .S1(n84_adj_602));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1223_5.INIT0 = 16'haaa0;
    defparam add_1223_5.INIT1 = 16'h9696;
    defparam add_1223_5.INJECT1_0 = "NO";
    defparam add_1223_5.INJECT1_1 = "NO";
    LUT4 i1258_1_lut_2_lut (.A(ISquare[23]), .B(ISquare[22]), .Z(n54_adj_606)) /* synthesis lut_function=(!(A+(B))) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam i1258_1_lut_2_lut.init = 16'h1111;
    IB Q_in_pad_10 (.I(Q_in[10]), .O(Q_in_c_10));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    FD1S3AX MultDataC_i0 (.D(Q_in_c_0), .CK(clk_c), .Q(MultDataC[0]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i0.GSR = "ENABLED";
    FD1S3AX d_out_d_i1 (.D(d_out_d_11__N_24[17]), .CK(clk_c), .Q(d_out_d[0]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i1.GSR = "ENABLED";
    FD1S3AX d_out_i1 (.D(d_out_d[0]), .CK(clk_c), .Q(d_out_c_0));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i1.GSR = "ENABLED";
    LUT4 i352_1_lut (.A(d_out_d_11__N_8[17]), .Z(d_out_d_11__N_7)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(57[13:23])
    defparam i352_1_lut.init = 16'h5555;
    FD1S3AX ISquare_e3__i1 (.D(n126), .CK(clk_c), .Q(ISquare[0]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i1.GSR = "ENABLED";
    FD1S3AX ISquare_e3__i11 (.D(n96), .CK(clk_c), .Q(ISquare[10]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i11.GSR = "ENABLED";
    CCU2C add_1228_17 (.A0(d_out_d_11__N_7), .B0(d_out_d_11__N_8[17]), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_7), .B1(d_out_d_11__N_8[17]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3796), .S0(n51_adj_547), 
          .S1(d_out_d_11__N_10[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1228_17.INIT0 = 16'h666a;
    defparam add_1228_17.INIT1 = 16'h666a;
    defparam add_1228_17.INJECT1_0 = "NO";
    defparam add_1228_17.INJECT1_1 = "NO";
    CCU2C add_1224_17 (.A0(ISquare[31]), .B0(n913), .C0(GND_net), .D0(VCC_net), 
          .A1(n912), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n3828), 
          .S1(d_out_d_11__N_483[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(58[15:27])
    defparam add_1224_17.INIT0 = 16'h666a;
    defparam add_1224_17.INIT1 = 16'haaa0;
    defparam add_1224_17.INJECT1_0 = "NO";
    defparam add_1224_17.INJECT1_1 = "NO";
    CCU2C add_1228_15 (.A0(d_out_d_11__N_8[17]), .B0(n60_adj_562), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_8[17]), .B1(n57_adj_561), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3795), .COUT(n3796), .S0(n57_adj_549), 
          .S1(n54_adj_548));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1228_15.INIT0 = 16'h9995;
    defparam add_1228_15.INIT1 = 16'h9995;
    defparam add_1228_15.INJECT1_0 = "NO";
    defparam add_1228_15.INJECT1_1 = "NO";
    IB Q_in_pad_11 (.I(Q_in[11]), .O(Q_in_c_11));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    Multiplier_U0 Multiplier1 (.clk_c(clk_c), .VCC_net(VCC_net), .GND_net(GND_net), 
            .MultDataB({MultDataB}), .MultResult1({MultResult1})) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    CCU2C add_1224_15 (.A0(ISquare[31]), .B0(n915), .C0(GND_net), .D0(VCC_net), 
          .A1(ISquare[31]), .B1(n914), .C1(GND_net), .D1(VCC_net), .CIN(n3827), 
          .COUT(n3828));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(58[15:27])
    defparam add_1224_15.INIT0 = 16'h666a;
    defparam add_1224_15.INIT1 = 16'h666a;
    defparam add_1224_15.INJECT1_0 = "NO";
    defparam add_1224_15.INJECT1_1 = "NO";
    CCU2C add_1228_13 (.A0(d_out_d_11__N_8[17]), .B0(n66_adj_564), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_8[17]), .B1(n63_adj_563), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3794), .COUT(n3795), .S0(n63_adj_551), 
          .S1(n60_adj_550));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1228_13.INIT0 = 16'h9995;
    defparam add_1228_13.INIT1 = 16'h9995;
    defparam add_1228_13.INJECT1_0 = "NO";
    defparam add_1228_13.INJECT1_1 = "NO";
    CCU2C add_1231_11 (.A0(d_out_d_11__N_14[17]), .B0(n3836), .C0(n72_adj_507), 
          .D0(VCC_net), .A1(d_out_d_11__N_14[17]), .B1(n69_adj_508), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3677), .COUT(n3678), .S0(n69_adj_528), 
          .S1(n66_adj_529));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1231_11.INIT0 = 16'h6969;
    defparam add_1231_11.INIT1 = 16'h9995;
    defparam add_1231_11.INJECT1_0 = "NO";
    defparam add_1231_11.INJECT1_1 = "NO";
    CCU2C add_1228_11 (.A0(ISquare[31]), .B0(d_out_d_11__N_8[17]), .C0(n72_adj_566), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_8[17]), .C1(n69_adj_565), 
          .D1(VCC_net), .CIN(n3793), .COUT(n3794), .S0(n69_adj_553), 
          .S1(n66_adj_552));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1228_11.INIT0 = 16'h6969;
    defparam add_1228_11.INIT1 = 16'h6969;
    defparam add_1228_11.INJECT1_0 = "NO";
    defparam add_1228_11.INJECT1_1 = "NO";
    CCU2C add_1224_13 (.A0(n917), .B0(ISquare[31]), .C0(ISquare[31]), 
          .D0(n3837), .A1(n916), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3826), .COUT(n3827));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(58[15:27])
    defparam add_1224_13.INIT0 = 16'h595a;
    defparam add_1224_13.INIT1 = 16'haaa0;
    defparam add_1224_13.INJECT1_0 = "NO";
    defparam add_1224_13.INJECT1_1 = "NO";
    CCU2C add_1228_9 (.A0(d_out_d_11__N_8[17]), .B0(n78_adj_568), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_8[17]), .C1(n75_adj_567), 
          .D1(VCC_net), .CIN(n3792), .COUT(n3793), .S0(n75_adj_555), 
          .S1(n72_adj_554));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1228_9.INIT0 = 16'h9995;
    defparam add_1228_9.INIT1 = 16'h6969;
    defparam add_1228_9.INJECT1_0 = "NO";
    defparam add_1228_9.INJECT1_1 = "NO";
    CCU2C add_1224_11 (.A0(d_out_d_11__N_6[17]), .B0(n919), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_4[17]), .B1(n918), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3825), .COUT(n3826));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(58[15:27])
    defparam add_1224_11.INIT0 = 16'h9995;
    defparam add_1224_11.INIT1 = 16'h9995;
    defparam add_1224_11.INJECT1_0 = "NO";
    defparam add_1224_11.INJECT1_1 = "NO";
    IB I_in_pad_0 (.I(I_in[0]), .O(I_in_c_0));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    CCU2C add_1229_5 (.A0(ISquare[22]), .B0(ISquare[23]), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[23]), .B1(ISquare[22]), .C1(ISquare[31]), 
          .D1(n3644), .CIN(n3730), .COUT(n3731), .S0(n67), .S1(n64));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1229_5.INIT0 = 16'h9999;
    defparam add_1229_5.INIT1 = 16'heee1;
    defparam add_1229_5.INJECT1_0 = "NO";
    defparam add_1229_5.INJECT1_1 = "NO";
    CCU2C add_1224_9 (.A0(d_out_d_11__N_10[17]), .B0(n921), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_8[17]), .B1(n920), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3824), .COUT(n3825));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(58[15:27])
    defparam add_1224_9.INIT0 = 16'h9995;
    defparam add_1224_9.INIT1 = 16'h9995;
    defparam add_1224_9.INJECT1_0 = "NO";
    defparam add_1224_9.INJECT1_1 = "NO";
    CCU2C add_1223_19 (.A0(d_out_d_11__N_16[17]), .B0(n48_adj_535), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_16[17]), .B1(n45_adj_536), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3709), .S0(n45_adj_589), .S1(d_out_d_11__N_18[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1223_19.INIT0 = 16'h9995;
    defparam add_1223_19.INIT1 = 16'h9995;
    defparam add_1223_19.INJECT1_0 = "NO";
    defparam add_1223_19.INJECT1_1 = "NO";
    CCU2C add_1223_15 (.A0(ISquare[31]), .B0(d_out_d_11__N_16[17]), .C0(n60_adj_531), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_16[17]), .C1(n57_adj_532), 
          .D1(VCC_net), .CIN(n3707), .COUT(n3708), .S0(n57_adj_593), 
          .S1(n54_adj_592));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1223_15.INIT0 = 16'h6969;
    defparam add_1223_15.INIT1 = 16'h6969;
    defparam add_1223_15.INJECT1_0 = "NO";
    defparam add_1223_15.INJECT1_1 = "NO";
    CCU2C add_1224_7 (.A0(d_out_d_11__N_14[17]), .B0(n923), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_12[17]), .B1(n922), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3823), .COUT(n3824));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(58[15:27])
    defparam add_1224_7.INIT0 = 16'h9995;
    defparam add_1224_7.INIT1 = 16'h9995;
    defparam add_1224_7.INJECT1_0 = "NO";
    defparam add_1224_7.INJECT1_1 = "NO";
    CCU2C add_1223_11 (.A0(d_out_d_11__N_4[17]), .B0(d_out_d_11__N_16[17]), 
          .C0(n72_adj_527), .D0(VCC_net), .A1(d_out_d_11__N_16[17]), .B1(n3836), 
          .C1(n69_adj_528), .D1(VCC_net), .CIN(n3705), .COUT(n3706), 
          .S0(n69_adj_597), .S1(n66_adj_596));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1223_11.INIT0 = 16'h9696;
    defparam add_1223_11.INIT1 = 16'h6969;
    defparam add_1223_11.INJECT1_0 = "NO";
    defparam add_1223_11.INJECT1_1 = "NO";
    CCU2C add_1224_5 (.A0(d_out_d_11__N_18[17]), .B0(n925), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_16[17]), .B1(n924), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3822), .COUT(n3823));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(58[15:27])
    defparam add_1224_5.INIT0 = 16'h9995;
    defparam add_1224_5.INIT1 = 16'h9995;
    defparam add_1224_5.INJECT1_0 = "NO";
    defparam add_1224_5.INJECT1_1 = "NO";
    CCU2C add_1228_7 (.A0(d_out_d_11__N_4[17]), .B0(d_out_d_11__N_8[17]), 
          .C0(n84_adj_570), .D0(VCC_net), .A1(d_out_d_11__N_8[17]), .B1(n3836), 
          .C1(n81_adj_569), .D1(VCC_net), .CIN(n3791), .COUT(n3792), 
          .S0(n81_adj_557), .S1(n78_adj_556));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1228_7.INIT0 = 16'h9696;
    defparam add_1228_7.INIT1 = 16'h6969;
    defparam add_1228_7.INJECT1_0 = "NO";
    defparam add_1228_7.INJECT1_1 = "NO";
    CCU2C add_1224_3 (.A0(d_out_d_11__N_22[17]), .B0(n927), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_20[17]), .B1(n926), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3821), .COUT(n3822));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(58[15:27])
    defparam add_1224_3.INIT0 = 16'h9995;
    defparam add_1224_3.INIT1 = 16'h9995;
    defparam add_1224_3.INJECT1_0 = "NO";
    defparam add_1224_3.INJECT1_1 = "NO";
    IB I_in_pad_1 (.I(I_in[1]), .O(I_in_c_1));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    CCU2C add_1224_1 (.A0(ISquare[0]), .B0(GND_net), .C0(GND_net), .D0(ISquare[0]), 
          .A1(d_out_d_11__N_22[17]), .B1(ISquare[1]), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3821));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(58[15:27])
    defparam add_1224_1.INIT0 = 16'h000A;
    defparam add_1224_1.INIT1 = 16'h666a;
    defparam add_1224_1.INJECT1_0 = "NO";
    defparam add_1224_1.INJECT1_1 = "NO";
    CCU2C add_1228_5 (.A0(n90_adj_572), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_6[17]), .B1(d_out_d_11__N_8[17]), .C1(n87_adj_571), 
          .D1(VCC_net), .CIN(n3790), .COUT(n3791), .S0(n87_adj_559), 
          .S1(n84_adj_558));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1228_5.INIT0 = 16'haaa0;
    defparam add_1228_5.INIT1 = 16'h9696;
    defparam add_1228_5.INJECT1_0 = "NO";
    defparam add_1228_5.INJECT1_1 = "NO";
    CCU2C add_1228_3 (.A0(d_out_d_11__N_8[17]), .B0(ISquare[14]), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[15]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3789), .COUT(n3790), .S1(n90_adj_560));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1228_3.INIT0 = 16'h666a;
    defparam add_1228_3.INIT1 = 16'h555f;
    defparam add_1228_3.INJECT1_0 = "NO";
    defparam add_1228_3.INJECT1_1 = "NO";
    CCU2C _add_1_881_add_4_20 (.A0(n912), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3820), .S0(d_out_d_11__N_465[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[15:27])
    defparam _add_1_881_add_4_20.INIT0 = 16'h555f;
    defparam _add_1_881_add_4_20.INIT1 = 16'h0000;
    defparam _add_1_881_add_4_20.INJECT1_0 = "NO";
    defparam _add_1_881_add_4_20.INJECT1_1 = "NO";
    IB I_in_pad_2 (.I(I_in[2]), .O(I_in_c_2));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    CCU2C add_1228_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_8[17]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3789));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1228_1.INIT0 = 16'h0000;
    defparam add_1228_1.INIT1 = 16'haaaf;
    defparam add_1228_1.INJECT1_0 = "NO";
    defparam add_1228_1.INJECT1_1 = "NO";
    CCU2C _add_1_881_add_4_18 (.A0(ISquare[31]), .B0(n914), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(n913), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3819), .COUT(n3820));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[15:27])
    defparam _add_1_881_add_4_18.INIT0 = 16'h9995;
    defparam _add_1_881_add_4_18.INIT1 = 16'h9995;
    defparam _add_1_881_add_4_18.INJECT1_0 = "NO";
    defparam _add_1_881_add_4_18.INJECT1_1 = "NO";
    CCU2C _add_1_881_add_4_16 (.A0(n916), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(n915), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3818), .COUT(n3819));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[15:27])
    defparam _add_1_881_add_4_16.INIT0 = 16'h555f;
    defparam _add_1_881_add_4_16.INIT1 = 16'h9995;
    defparam _add_1_881_add_4_16.INJECT1_0 = "NO";
    defparam _add_1_881_add_4_16.INJECT1_1 = "NO";
    IB I_in_pad_3 (.I(I_in[3]), .O(I_in_c_3));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    IB I_in_pad_4 (.I(I_in[4]), .O(I_in_c_4));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    LUT4 i332_1_lut (.A(d_out_d_11__N_6[17]), .Z(d_out_d_11__N_5)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(57[13:23])
    defparam i332_1_lut.init = 16'h5555;
    CCU2C _add_1_881_add_4_14 (.A0(d_out_d_11__N_4[17]), .B0(n918), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(n3837), .C1(n917), .D1(VCC_net), 
          .CIN(n3817), .COUT(n3818));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[15:27])
    defparam _add_1_881_add_4_14.INIT0 = 16'h666a;
    defparam _add_1_881_add_4_14.INIT1 = 16'he1e1;
    defparam _add_1_881_add_4_14.INJECT1_0 = "NO";
    defparam _add_1_881_add_4_14.INJECT1_1 = "NO";
    CCU2C _add_1_881_add_4_12 (.A0(d_out_d_11__N_8[17]), .B0(n920), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_6[17]), .B1(n919), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3816), .COUT(n3817));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[15:27])
    defparam _add_1_881_add_4_12.INIT0 = 16'h666a;
    defparam _add_1_881_add_4_12.INIT1 = 16'h666a;
    defparam _add_1_881_add_4_12.INJECT1_0 = "NO";
    defparam _add_1_881_add_4_12.INJECT1_1 = "NO";
    CCU2C add_1223_7 (.A0(d_out_d_11__N_12[17]), .B0(d_out_d_11__N_16[17]), 
          .C0(n84_adj_522), .D0(VCC_net), .A1(d_out_d_11__N_10[17]), .B1(d_out_d_11__N_16[17]), 
          .C1(n81_adj_523), .D1(VCC_net), .CIN(n3703), .COUT(n3704), 
          .S0(n81_adj_601), .S1(n78_adj_600));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1223_7.INIT0 = 16'h9696;
    defparam add_1223_7.INIT1 = 16'h9696;
    defparam add_1223_7.INJECT1_0 = "NO";
    defparam add_1223_7.INJECT1_1 = "NO";
    IB I_in_pad_5 (.I(I_in[5]), .O(I_in_c_5));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    CCU2C add_1231_7 (.A0(d_out_d_11__N_10[17]), .B0(d_out_d_11__N_14[17]), 
          .C0(n84_adj_503), .D0(VCC_net), .A1(d_out_d_11__N_8[17]), .B1(d_out_d_11__N_14[17]), 
          .C1(n81_adj_504), .D1(VCC_net), .CIN(n3675), .COUT(n3676), 
          .S0(n81_adj_523), .S1(n78_adj_524));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1231_7.INIT0 = 16'h9696;
    defparam add_1231_7.INIT1 = 16'h9696;
    defparam add_1231_7.INJECT1_0 = "NO";
    defparam add_1231_7.INJECT1_1 = "NO";
    CCU2C add_1230_19 (.A0(d_out_d_11__N_12[17]), .B0(n48), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_12[17]), .B1(n45), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3783), .S0(n45_adj_517), .S1(d_out_d_11__N_14[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1230_19.INIT0 = 16'h9995;
    defparam add_1230_19.INIT1 = 16'h9995;
    defparam add_1230_19.INJECT1_0 = "NO";
    defparam add_1230_19.INJECT1_1 = "NO";
    IB I_in_pad_6 (.I(I_in[6]), .O(I_in_c_6));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    IB I_in_pad_7 (.I(I_in[7]), .O(I_in_c_7));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    CCU2C add_1231_9 (.A0(d_out_d_11__N_6[17]), .B0(d_out_d_11__N_14[17]), 
          .C0(n78_adj_505), .D0(VCC_net), .A1(d_out_d_11__N_4[17]), .B1(d_out_d_11__N_14[17]), 
          .C1(n75_adj_506), .D1(VCC_net), .CIN(n3676), .COUT(n3677), 
          .S0(n75_adj_525), .S1(n72_adj_527));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1231_9.INIT0 = 16'h9696;
    defparam add_1231_9.INIT1 = 16'h9696;
    defparam add_1231_9.INJECT1_0 = "NO";
    defparam add_1231_9.INJECT1_1 = "NO";
    CCU2C add_1229_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(ISquare[22]), .B1(ISquare[23]), .C1(n203), .D1(ISquare[31]), 
          .COUT(n3729));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1229_1.INIT0 = 16'h0000;
    defparam add_1229_1.INIT1 = 16'h001f;
    defparam add_1229_1.INJECT1_0 = "NO";
    defparam add_1229_1.INJECT1_1 = "NO";
    CCU2C add_1230_17 (.A0(d_out_d_11__N_12[17]), .B0(n54), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_12[17]), .B1(n51), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3782), .COUT(n3783), .S0(n51_adj_515), 
          .S1(n48_adj_516));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1230_17.INIT0 = 16'h9995;
    defparam add_1230_17.INIT1 = 16'h9995;
    defparam add_1230_17.INJECT1_0 = "NO";
    defparam add_1230_17.INJECT1_1 = "NO";
    CCU2C add_1225_9 (.A0(d_out_d_11__N_12[17]), .B0(d_out_d_11__N_20[17]), 
          .C0(n78_adj_584), .D0(VCC_net), .A1(d_out_d_11__N_10[17]), .B1(d_out_d_11__N_20[17]), 
          .C1(n75_adj_583), .D1(VCC_net), .CIN(n3690), .COUT(n3691), 
          .S0(n922), .S1(n921));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1225_9.INIT0 = 16'h9696;
    defparam add_1225_9.INIT1 = 16'h9696;
    defparam add_1225_9.INJECT1_0 = "NO";
    defparam add_1225_9.INJECT1_1 = "NO";
    CCU2C add_1230_15 (.A0(d_out_d_11__N_12[17]), .B0(n60), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_12[17]), .B1(n57), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3781), .COUT(n3782), .S0(n57_adj_512), 
          .S1(n54_adj_514));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1230_15.INIT0 = 16'h9995;
    defparam add_1230_15.INIT1 = 16'h9995;
    defparam add_1230_15.INJECT1_0 = "NO";
    defparam add_1230_15.INJECT1_1 = "NO";
    CCU2C add_1223_3 (.A0(d_out_d_11__N_16[17]), .B0(ISquare[6]), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3701), .COUT(n3702), .S1(n90_adj_604));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1223_3.INIT0 = 16'h666a;
    defparam add_1223_3.INIT1 = 16'h555f;
    defparam add_1223_3.INJECT1_0 = "NO";
    defparam add_1223_3.INJECT1_1 = "NO";
    IB I_in_pad_8 (.I(I_in[8]), .O(I_in_c_8));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    FD1S3AX ISquare_e3__i10 (.D(n99), .CK(clk_c), .Q(ISquare[9]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i10.GSR = "ENABLED";
    IB I_in_pad_9 (.I(I_in[9]), .O(I_in_c_9));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    IB I_in_pad_10 (.I(I_in[10]), .O(I_in_c_10));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    LUT4 i392_1_lut (.A(d_out_d_11__N_12[17]), .Z(d_out_d_11__N_11)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(57[13:23])
    defparam i392_1_lut.init = 16'h5555;
    CCU2C add_1225_5 (.A0(n90_adj_588), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_18[17]), .B1(d_out_d_11__N_20[17]), .C1(n87_adj_587), 
          .D1(VCC_net), .CIN(n3688), .COUT(n3689), .S0(n926), .S1(n925));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1225_5.INIT0 = 16'haaa0;
    defparam add_1225_5.INIT1 = 16'h9696;
    defparam add_1225_5.INJECT1_0 = "NO";
    defparam add_1225_5.INJECT1_1 = "NO";
    IB Q_in_pad_6 (.I(Q_in[6]), .O(Q_in_c_6));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    CCU2C add_1230_13 (.A0(ISquare[31]), .B0(d_out_d_11__N_12[17]), .C0(n66), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_12[17]), .C1(n63), 
          .D1(VCC_net), .CIN(n3780), .COUT(n3781), .S0(n63_adj_510), 
          .S1(n60_adj_511));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1230_13.INIT0 = 16'h6969;
    defparam add_1230_13.INIT1 = 16'h6969;
    defparam add_1230_13.INJECT1_0 = "NO";
    defparam add_1230_13.INJECT1_1 = "NO";
    CCU2C add_1230_11 (.A0(d_out_d_11__N_12[17]), .B0(n72), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_12[17]), .C1(n69), 
          .D1(VCC_net), .CIN(n3779), .COUT(n3780), .S0(n69_adj_508), 
          .S1(n66_adj_509));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1230_11.INIT0 = 16'h9995;
    defparam add_1230_11.INIT1 = 16'h6969;
    defparam add_1230_11.INJECT1_0 = "NO";
    defparam add_1230_11.INJECT1_1 = "NO";
    CCU2C add_1231_17 (.A0(d_out_d_11__N_14[17]), .B0(n54_adj_514), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_14[17]), .B1(n51_adj_515), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3680), .COUT(n3681), .S0(n51_adj_534), 
          .S1(n48_adj_535));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1231_17.INIT0 = 16'h9995;
    defparam add_1231_17.INIT1 = 16'h9995;
    defparam add_1231_17.INJECT1_0 = "NO";
    defparam add_1231_17.INJECT1_1 = "NO";
    CCU2C add_1230_9 (.A0(d_out_d_11__N_4[17]), .B0(d_out_d_11__N_12[17]), 
          .C0(n78), .D0(VCC_net), .A1(d_out_d_11__N_12[17]), .B1(n3836), 
          .C1(n75), .D1(VCC_net), .CIN(n3778), .COUT(n3779), .S0(n75_adj_506), 
          .S1(n72_adj_507));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1230_9.INIT0 = 16'h9696;
    defparam add_1230_9.INIT1 = 16'h6969;
    defparam add_1230_9.INJECT1_0 = "NO";
    defparam add_1230_9.INJECT1_1 = "NO";
    CCU2C add_1225_13 (.A0(d_out_d_11__N_4[17]), .B0(d_out_d_11__N_20[17]), 
          .C0(n66_adj_580), .D0(VCC_net), .A1(d_out_d_11__N_20[17]), .B1(n3836), 
          .C1(n63_adj_579), .D1(VCC_net), .CIN(n3692), .COUT(n3693), 
          .S0(n918), .S1(n917));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1225_13.INIT0 = 16'h9696;
    defparam add_1225_13.INIT1 = 16'h6969;
    defparam add_1225_13.INJECT1_0 = "NO";
    defparam add_1225_13.INJECT1_1 = "NO";
    IB I_in_pad_11 (.I(I_in[11]), .O(I_in_c_11));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(18[23:27])
    CCU2C add_1230_7 (.A0(d_out_d_11__N_8[17]), .B0(d_out_d_11__N_12[17]), 
          .C0(n84), .D0(VCC_net), .A1(d_out_d_11__N_6[17]), .B1(d_out_d_11__N_12[17]), 
          .C1(n81), .D1(VCC_net), .CIN(n3777), .COUT(n3778), .S0(n81_adj_504), 
          .S1(n78_adj_505));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1230_7.INIT0 = 16'h9696;
    defparam add_1230_7.INIT1 = 16'h9696;
    defparam add_1230_7.INJECT1_0 = "NO";
    defparam add_1230_7.INJECT1_1 = "NO";
    FD1S3AX ISquare_e3__i9 (.D(n102), .CK(clk_c), .Q(ISquare[8]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i9.GSR = "ENABLED";
    IB clk_pad (.I(clk), .O(clk_c));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(17[9:12])
    CCU2C add_1225_19 (.A0(d_out_d_11__N_20[17]), .B0(n48_adj_574), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_20[17]), .B1(n45_adj_573), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3695), .S0(n912), .S1(d_out_d_11__N_22[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1225_19.INIT0 = 16'h9995;
    defparam add_1225_19.INIT1 = 16'h9995;
    defparam add_1225_19.INJECT1_0 = "NO";
    defparam add_1225_19.INJECT1_1 = "NO";
    FD1S3AX ISquare_e3__i8 (.D(n105), .CK(clk_c), .Q(ISquare[7]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i8.GSR = "ENABLED";
    CCU2C add_1225_15 (.A0(d_out_d_11__N_20[17]), .B0(n60_adj_578), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_20[17]), .C1(n57_adj_577), 
          .D1(VCC_net), .CIN(n3693), .COUT(n3694), .S0(n916), .S1(n915));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1225_15.INIT0 = 16'h9995;
    defparam add_1225_15.INIT1 = 16'h6969;
    defparam add_1225_15.INJECT1_0 = "NO";
    defparam add_1225_15.INJECT1_1 = "NO";
    LUT4 i1268_2_lut_3_lut (.A(ISquare[23]), .B(ISquare[22]), .C(ISquare[31]), 
         .Z(n3644)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam i1268_2_lut_3_lut.init = 16'h0e0e;
    CCU2C add_1230_5 (.A0(n90_adj_545), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_10[17]), .B1(d_out_d_11__N_12[17]), .C1(n87_adj_546), 
          .D1(VCC_net), .CIN(n3776), .COUT(n3777), .S0(n87), .S1(n84_adj_503));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1230_5.INIT0 = 16'haaa0;
    defparam add_1230_5.INIT1 = 16'h9696;
    defparam add_1230_5.INJECT1_0 = "NO";
    defparam add_1230_5.INJECT1_1 = "NO";
    CCU2C add_1223_9 (.A0(d_out_d_11__N_8[17]), .B0(d_out_d_11__N_16[17]), 
          .C0(n78_adj_524), .D0(VCC_net), .A1(d_out_d_11__N_6[17]), .B1(d_out_d_11__N_16[17]), 
          .C1(n75_adj_525), .D1(VCC_net), .CIN(n3704), .COUT(n3705), 
          .S0(n75_adj_599), .S1(n72_adj_598));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1223_9.INIT0 = 16'h9696;
    defparam add_1223_9.INIT1 = 16'h9696;
    defparam add_1223_9.INJECT1_0 = "NO";
    defparam add_1223_9.INJECT1_1 = "NO";
    OB d_out_pad_0 (.I(d_out_c_0), .O(d_out[0]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    LUT4 i592_1_lut (.A(d_out_d_11__N_14[17]), .Z(d_out_d_11__N_13)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam i592_1_lut.init = 16'h5555;
    CCU2C add_1223_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_16[17]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3701));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1223_1.INIT0 = 16'h0000;
    defparam add_1223_1.INIT1 = 16'haaaf;
    defparam add_1223_1.INJECT1_0 = "NO";
    defparam add_1223_1.INJECT1_1 = "NO";
    CCU2C add_1230_3 (.A0(d_out_d_11__N_12[17]), .B0(ISquare[10]), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[11]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3775), .COUT(n3776), .S1(n90));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1230_3.INIT0 = 16'h666a;
    defparam add_1230_3.INIT1 = 16'h555f;
    defparam add_1230_3.INJECT1_0 = "NO";
    defparam add_1230_3.INJECT1_1 = "NO";
    CCU2C add_1233_13 (.A0(d_out_d_11__N_6[17]), .B0(n56), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_6[17]), .B1(n53), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3744), .COUT(n3745), .S0(n63_adj_563), 
          .S1(n60_adj_562));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1233_13.INIT0 = 16'h9995;
    defparam add_1233_13.INIT1 = 16'h9995;
    defparam add_1233_13.INJECT1_0 = "NO";
    defparam add_1233_13.INJECT1_1 = "NO";
    OB d_out_pad_1 (.I(d_out_c_1), .O(d_out[1]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    CCU2C add_1225_11 (.A0(d_out_d_11__N_8[17]), .B0(d_out_d_11__N_20[17]), 
          .C0(n72_adj_582), .D0(VCC_net), .A1(d_out_d_11__N_6[17]), .B1(d_out_d_11__N_20[17]), 
          .C1(n69_adj_581), .D1(VCC_net), .CIN(n3691), .COUT(n3692), 
          .S0(n920), .S1(n919));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1225_11.INIT0 = 16'h9696;
    defparam add_1225_11.INIT1 = 16'h9696;
    defparam add_1225_11.INJECT1_0 = "NO";
    defparam add_1225_11.INJECT1_1 = "NO";
    OB d_out_pad_2 (.I(d_out_c_2), .O(d_out[2]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    FD1S3AX ISquare_e3__i7 (.D(n108), .CK(clk_c), .Q(ISquare[6]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i7.GSR = "ENABLED";
    OB d_out_pad_3 (.I(d_out_c_3), .O(d_out[3]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    LUT4 i1240_2_lut_rep_3 (.A(ISquare[23]), .B(ISquare[22]), .Z(n3837)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam i1240_2_lut_rep_3.init = 16'heeee;
    FD1S3AX ISquare_e3__i6 (.D(n111), .CK(clk_c), .Q(ISquare[5]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i6.GSR = "ENABLED";
    FD1S3AX ISquare_e3__i5 (.D(n114), .CK(clk_c), .Q(ISquare[4]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i5.GSR = "ENABLED";
    CCU2C add_1225_7 (.A0(d_out_d_11__N_16[17]), .B0(d_out_d_11__N_20[17]), 
          .C0(n84_adj_586), .D0(VCC_net), .A1(d_out_d_11__N_14[17]), .B1(d_out_d_11__N_20[17]), 
          .C1(n81_adj_585), .D1(VCC_net), .CIN(n3689), .COUT(n3690), 
          .S0(n924), .S1(n923));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1225_7.INIT0 = 16'h9696;
    defparam add_1225_7.INIT1 = 16'h9696;
    defparam add_1225_7.INJECT1_0 = "NO";
    defparam add_1225_7.INJECT1_1 = "NO";
    OB d_out_pad_4 (.I(d_out_c_4), .O(d_out[4]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    LUT4 i840_1_lut (.A(ISquare[31]), .Z(n203)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam i840_1_lut.init = 16'h5555;
    OB d_out_pad_5 (.I(d_out_c_5), .O(d_out[5]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    IB Q_in_pad_0 (.I(Q_in[0]), .O(Q_in_c_0));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    IB Q_in_pad_1 (.I(Q_in[1]), .O(Q_in_c_1));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    CCU2C add_1230_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_12[17]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3775));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1230_1.INIT0 = 16'h0000;
    defparam add_1230_1.INIT1 = 16'haaaf;
    defparam add_1230_1.INJECT1_0 = "NO";
    defparam add_1230_1.INJECT1_1 = "NO";
    OB d_out_pad_6 (.I(d_out_c_6), .O(d_out[6]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    CCU2C add_1225_3 (.A0(d_out_d_11__N_20[17]), .B0(ISquare[2]), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[3]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3687), .COUT(n3688), .S1(n927));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1225_3.INIT0 = 16'h666a;
    defparam add_1225_3.INIT1 = 16'h555f;
    defparam add_1225_3.INJECT1_0 = "NO";
    defparam add_1225_3.INJECT1_1 = "NO";
    OB d_out_pad_7 (.I(d_out_c_7), .O(d_out[7]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    FD1S3AX ISquare_e3__i4 (.D(n117), .CK(clk_c), .Q(ISquare[3]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i4.GSR = "ENABLED";
    FD1S3AX ISquare_e3__i3 (.D(n120), .CK(clk_c), .Q(ISquare[2]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i3.GSR = "ENABLED";
    FD1S3AX ISquare_e3__i2 (.D(n123), .CK(clk_c), .Q(ISquare[1]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i2.GSR = "ENABLED";
    FD1S3AX d_out_i12 (.D(d_out_d[11]), .CK(clk_c), .Q(d_out_c_11));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i12.GSR = "ENABLED";
    LUT4 i312_1_lut (.A(d_out_d_11__N_4[17]), .Z(d_out_d_11__N_3)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(57[13:23])
    defparam i312_1_lut.init = 16'h5555;
    CCU2C add_1223_17 (.A0(d_out_d_11__N_16[17]), .B0(n54_adj_533), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_16[17]), .B1(n51_adj_534), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3708), .COUT(n3709), .S0(n51_adj_591), 
          .S1(n48_adj_590));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1223_17.INIT0 = 16'h9995;
    defparam add_1223_17.INIT1 = 16'h9995;
    defparam add_1223_17.INJECT1_0 = "NO";
    defparam add_1223_17.INJECT1_1 = "NO";
    OB d_out_pad_8 (.I(d_out_c_8), .O(d_out[8]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    OB d_out_pad_9 (.I(d_out_c_9), .O(d_out[9]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    CCU2C add_1232_13 (.A0(d_out_d_11__N_3), .B0(d_out_d_11__N_4[17]), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_3), .B1(d_out_d_11__N_4[17]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3769), .S0(n53), .S1(d_out_d_11__N_6[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1232_13.INIT0 = 16'h666a;
    defparam add_1232_13.INIT1 = 16'h666a;
    defparam add_1232_13.INJECT1_0 = "NO";
    defparam add_1232_13.INJECT1_1 = "NO";
    CCU2C add_1227_9 (.A0(d_out_d_11__N_10[17]), .B0(n3836), .C0(n78_adj_556), 
          .D0(VCC_net), .A1(d_out_d_11__N_10[17]), .B1(n75_adj_555), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3718), .COUT(n3719), .S0(n75), .S1(n72));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1227_9.INIT0 = 16'h6969;
    defparam add_1227_9.INIT1 = 16'h9995;
    defparam add_1227_9.INJECT1_0 = "NO";
    defparam add_1227_9.INJECT1_1 = "NO";
    CCU2C add_1231_19 (.A0(d_out_d_11__N_14[17]), .B0(n48_adj_516), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_14[17]), .B1(n45_adj_517), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3681), .S0(n45_adj_536), .S1(d_out_d_11__N_16[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1231_19.INIT0 = 16'h9995;
    defparam add_1231_19.INIT1 = 16'h9995;
    defparam add_1231_19.INJECT1_0 = "NO";
    defparam add_1231_19.INJECT1_1 = "NO";
    CCU2C add_1232_11 (.A0(d_out_d_11__N_4[17]), .B0(n52), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_4[17]), .B1(n49), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3768), .COUT(n3769), .S0(n59), .S1(n56));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1232_11.INIT0 = 16'h9995;
    defparam add_1232_11.INIT1 = 16'h9995;
    defparam add_1232_11.INJECT1_0 = "NO";
    defparam add_1232_11.INJECT1_1 = "NO";
    FD1S3AX d_out_i11 (.D(d_out_d[10]), .CK(clk_c), .Q(d_out_c_10));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i11.GSR = "ENABLED";
    OB d_out_pad_10 (.I(d_out_c_10), .O(d_out[10]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    LUT4 i593_1_lut (.A(d_out_d_11__N_16[17]), .Z(d_out_d_11__N_15)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam i593_1_lut.init = 16'h5555;
    FD1S3AX d_out_i10 (.D(d_out_d[9]), .CK(clk_c), .Q(d_out_c_9));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i10.GSR = "ENABLED";
    FD1S3AX d_out_i9 (.D(d_out_d[8]), .CK(clk_c), .Q(d_out_c_8));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i9.GSR = "ENABLED";
    FD1S3AX d_out_i8 (.D(d_out_d[7]), .CK(clk_c), .Q(d_out_c_7));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i8.GSR = "ENABLED";
    FD1S3AX d_out_i7 (.D(d_out_d[6]), .CK(clk_c), .Q(d_out_c_6));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i7.GSR = "ENABLED";
    LUT4 d_out_d_11__I_8_1_lut (.A(d_out_d_11__N_18[17]), .Z(d_out_d_11__N_17)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(61[22:28])
    defparam d_out_d_11__I_8_1_lut.init = 16'h5555;
    LUT4 i372_1_lut (.A(d_out_d_11__N_10[17]), .Z(d_out_d_11__N_9)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(57[13:23])
    defparam i372_1_lut.init = 16'h5555;
    CCU2C add_1232_9 (.A0(ISquare[31]), .B0(d_out_d_11__N_4[17]), .C0(n58), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_4[17]), .C1(n55), 
          .D1(VCC_net), .CIN(n3767), .COUT(n3768), .S0(n65), .S1(n62));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1232_9.INIT0 = 16'h6969;
    defparam add_1232_9.INIT1 = 16'h6969;
    defparam add_1232_9.INJECT1_0 = "NO";
    defparam add_1232_9.INJECT1_1 = "NO";
    CCU2C add_1233_9 (.A0(ISquare[31]), .B0(d_out_d_11__N_6[17]), .C0(n68), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_6[17]), .C1(n65), 
          .D1(VCC_net), .CIN(n3742), .COUT(n3743), .S0(n75_adj_567), 
          .S1(n72_adj_566));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1233_9.INIT0 = 16'h6969;
    defparam add_1233_9.INIT1 = 16'h6969;
    defparam add_1233_9.INJECT1_0 = "NO";
    defparam add_1233_9.INJECT1_1 = "NO";
    LUT4 d_out_d_11__I_9_1_lut (.A(d_out_d_11__N_20[17]), .Z(d_out_d_11__N_19)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(61[22:28])
    defparam d_out_d_11__I_9_1_lut.init = 16'h5555;
    CCU2C add_1229_9 (.A0(n3836), .B0(ISquare[31]), .C0(ISquare[23]), 
          .D0(ISquare[22]), .A1(n45_adj_605), .B1(ISquare[31]), .C1(ISquare[31]), 
          .D1(n3837), .CIN(n3732), .COUT(n3733), .S0(n55), .S1(n52));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1229_9.INIT0 = 16'h6665;
    defparam add_1229_9.INIT1 = 16'h595a;
    defparam add_1229_9.INJECT1_0 = "NO";
    defparam add_1229_9.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3AX d_out_i6 (.D(d_out_d[5]), .CK(clk_c), .Q(d_out_c_5));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i6.GSR = "ENABLED";
    CCU2C add_1232_7 (.A0(d_out_d_11__N_4[17]), .B0(n64), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_4[17]), .C1(n61), 
          .D1(VCC_net), .CIN(n3766), .COUT(n3767), .S0(n71), .S1(n68));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1232_7.INIT0 = 16'h9995;
    defparam add_1232_7.INIT1 = 16'h6969;
    defparam add_1232_7.INJECT1_0 = "NO";
    defparam add_1232_7.INJECT1_1 = "NO";
    FD1S3AX d_out_i5 (.D(d_out_d[4]), .CK(clk_c), .Q(d_out_c_4));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i5.GSR = "ENABLED";
    FD1S3AX d_out_i4 (.D(d_out_d[3]), .CK(clk_c), .Q(d_out_c_3));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i4.GSR = "ENABLED";
    FD1S3AX d_out_i3 (.D(d_out_d[2]), .CK(clk_c), .Q(d_out_c_2));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i3.GSR = "ENABLED";
    FD1S3AX d_out_i2 (.D(d_out_d[1]), .CK(clk_c), .Q(d_out_c_1));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_i2.GSR = "ENABLED";
    FD1S3AX ISquare_e3__i25 (.D(n54_adj_544), .CK(clk_c), .Q(ISquare[31]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i25.GSR = "ENABLED";
    CCU2C add_1231_15 (.A0(ISquare[31]), .B0(d_out_d_11__N_14[17]), .C0(n60_adj_511), 
          .D0(VCC_net), .A1(d_out_d_11__N_14[17]), .B1(n57_adj_512), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3679), .COUT(n3680), .S0(n57_adj_532), 
          .S1(n54_adj_533));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1231_15.INIT0 = 16'h6969;
    defparam add_1231_15.INIT1 = 16'h9995;
    defparam add_1231_15.INJECT1_0 = "NO";
    defparam add_1231_15.INJECT1_1 = "NO";
    LUT4 mux_126_i1_3_lut (.A(d_out_d_11__N_465[17]), .B(d_out_d_11__N_483[17]), 
         .C(d_out_d_11__N_22[17]), .Z(d_out_d_11__N_24[17])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam mux_126_i1_3_lut.init = 16'h3535;
    CCU2C add_1231_13 (.A0(ISquare[31]), .B0(d_out_d_11__N_14[17]), .C0(n66_adj_509), 
          .D0(VCC_net), .A1(ISquare[31]), .B1(d_out_d_11__N_14[17]), .C1(n63_adj_510), 
          .D1(VCC_net), .CIN(n3678), .COUT(n3679), .S0(n63_adj_530), 
          .S1(n60_adj_531));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1231_13.INIT0 = 16'h6969;
    defparam add_1231_13.INIT1 = 16'h6969;
    defparam add_1231_13.INJECT1_0 = "NO";
    defparam add_1231_13.INJECT1_1 = "NO";
    CCU2C add_1232_5 (.A0(n70), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_4[17]), .B1(n3836), .C1(n67), .D1(VCC_net), 
          .CIN(n3765), .COUT(n3766), .S0(n77), .S1(n74));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1232_5.INIT0 = 16'haaa0;
    defparam add_1232_5.INIT1 = 16'h6969;
    defparam add_1232_5.INJECT1_0 = "NO";
    defparam add_1232_5.INJECT1_1 = "NO";
    FD1S3AX ISquare_e3__i24 (.D(n57_adj_543), .CK(clk_c), .Q(ISquare[23]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i24.GSR = "ENABLED";
    CCU2C add_1232_3 (.A0(d_out_d_11__N_4[17]), .B0(ISquare[18]), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[19]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3764), .COUT(n3765), .S1(n80));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1232_3.INIT0 = 16'h666a;
    defparam add_1232_3.INIT1 = 16'h555f;
    defparam add_1232_3.INJECT1_0 = "NO";
    defparam add_1232_3.INJECT1_1 = "NO";
    CCU2C add_1231_5 (.A0(n90), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_12[17]), .B1(d_out_d_11__N_14[17]), .C1(n87), 
          .D1(VCC_net), .CIN(n3674), .COUT(n3675), .S0(n87_adj_521), 
          .S1(n84_adj_522));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1231_5.INIT0 = 16'haaa0;
    defparam add_1231_5.INIT1 = 16'h9696;
    defparam add_1231_5.INJECT1_0 = "NO";
    defparam add_1231_5.INJECT1_1 = "NO";
    FD1S3AX d_out_d_i12 (.D(n3836), .CK(clk_c), .Q(d_out_d[11]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i12.GSR = "ENABLED";
    FD1S3AX ISquare_e3__i23 (.D(n60_adj_542), .CK(clk_c), .Q(ISquare[22]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i23.GSR = "ENABLED";
    FD1S3AX d_out_d_i11 (.D(d_out_d_11__N_3), .CK(clk_c), .Q(d_out_d[10]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i11.GSR = "ENABLED";
    FD1S3AX d_out_d_i10 (.D(d_out_d_11__N_5), .CK(clk_c), .Q(d_out_d[9]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i10.GSR = "ENABLED";
    FD1S3AX d_out_d_i9 (.D(d_out_d_11__N_7), .CK(clk_c), .Q(d_out_d[8]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i9.GSR = "ENABLED";
    FD1S3AX d_out_d_i8 (.D(d_out_d_11__N_9), .CK(clk_c), .Q(d_out_d[7]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i8.GSR = "ENABLED";
    FD1S3AX d_out_d_i7 (.D(d_out_d_11__N_11), .CK(clk_c), .Q(d_out_d[6]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i7.GSR = "ENABLED";
    FD1S3AX d_out_d_i6 (.D(d_out_d_11__N_13), .CK(clk_c), .Q(d_out_d[5]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i6.GSR = "ENABLED";
    FD1S3AX ISquare_e3__i22 (.D(n63_adj_541), .CK(clk_c), .Q(ISquare[21]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i22.GSR = "ENABLED";
    CCU2C add_1231_3 (.A0(d_out_d_11__N_14[17]), .B0(ISquare[8]), .C0(GND_net), 
          .D0(VCC_net), .A1(ISquare[9]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3673), .COUT(n3674), .S1(n90_adj_520));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1231_3.INIT0 = 16'h666a;
    defparam add_1231_3.INIT1 = 16'h555f;
    defparam add_1231_3.INJECT1_0 = "NO";
    defparam add_1231_3.INJECT1_1 = "NO";
    CCU2C add_1232_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_4[17]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3764));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1232_1.INIT0 = 16'h0000;
    defparam add_1232_1.INIT1 = 16'haaaf;
    defparam add_1232_1.INJECT1_0 = "NO";
    defparam add_1232_1.INJECT1_1 = "NO";
    FD1S3AX ISquare_e3__i21 (.D(n66_adj_540), .CK(clk_c), .Q(ISquare[20]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i21.GSR = "ENABLED";
    CCU2C ISquare_add_4_10 (.A0(MultResult2[8]), .B0(MultResult1[8]), .C0(GND_net), 
          .D0(VCC_net), .A1(MultResult2[9]), .B1(MultResult1[9]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3751), .COUT(n3752), .S0(n102), .S1(n99));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_10.INIT0 = 16'h666a;
    defparam ISquare_add_4_10.INIT1 = 16'h666a;
    defparam ISquare_add_4_10.INJECT1_0 = "NO";
    defparam ISquare_add_4_10.INJECT1_1 = "NO";
    CCU2C add_1233_5 (.A0(n80), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_4[17]), .B1(d_out_d_11__N_6[17]), .C1(n77), 
          .D1(VCC_net), .CIN(n3740), .COUT(n3741), .S0(n87_adj_571), 
          .S1(n84_adj_570));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1233_5.INIT0 = 16'haaa0;
    defparam add_1233_5.INIT1 = 16'h9696;
    defparam add_1233_5.INJECT1_0 = "NO";
    defparam add_1233_5.INJECT1_1 = "NO";
    FD1S3AX d_out_d_i5 (.D(d_out_d_11__N_15), .CK(clk_c), .Q(d_out_d[4]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i5.GSR = "ENABLED";
    FD1S3AX d_out_d_i4 (.D(d_out_d_11__N_17), .CK(clk_c), .Q(d_out_d[3]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i4.GSR = "ENABLED";
    CCU2C add_1227_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_10[17]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3715));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1227_1.INIT0 = 16'h0000;
    defparam add_1227_1.INIT1 = 16'haaaf;
    defparam add_1227_1.INJECT1_0 = "NO";
    defparam add_1227_1.INJECT1_1 = "NO";
    OB d_out_pad_11 (.I(d_out_c_11), .O(d_out[11]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(21[21:26])
    FD1S3AX d_out_d_i3 (.D(d_out_d_11__N_19), .CK(clk_c), .Q(d_out_d[2]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i3.GSR = "ENABLED";
    FD1S3AX d_out_d_i2 (.D(d_out_d_11__N_21), .CK(clk_c), .Q(d_out_d[1]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam d_out_d_i2.GSR = "ENABLED";
    FD1S3AX MultDataC_i11 (.D(Q_in_c_11), .CK(clk_c), .Q(MultDataC[11]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i11.GSR = "ENABLED";
    FD1S3AX MultDataC_i10 (.D(Q_in_c_10), .CK(clk_c), .Q(MultDataC[10]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i10.GSR = "ENABLED";
    FD1S3AX MultDataC_i9 (.D(Q_in_c_9), .CK(clk_c), .Q(MultDataC[9]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i9.GSR = "ENABLED";
    FD1S3AX MultDataC_i8 (.D(Q_in_c_8), .CK(clk_c), .Q(MultDataC[8]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i8.GSR = "ENABLED";
    FD1S3AX MultDataC_i7 (.D(Q_in_c_7), .CK(clk_c), .Q(MultDataC[7]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i7.GSR = "ENABLED";
    CCU2C ISquare_add_4_26 (.A0(MultResult2[23]), .B0(MultResult1[23]), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n3759), .S0(n54_adj_544));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_26.INIT0 = 16'h666a;
    defparam ISquare_add_4_26.INIT1 = 16'h0000;
    defparam ISquare_add_4_26.INJECT1_0 = "NO";
    defparam ISquare_add_4_26.INJECT1_1 = "NO";
    CCU2C add_1227_5 (.A0(n90_adj_560), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_8[17]), .B1(d_out_d_11__N_10[17]), .C1(n87_adj_559), 
          .D1(VCC_net), .CIN(n3716), .COUT(n3717), .S0(n87_adj_546), 
          .S1(n84));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1227_5.INIT0 = 16'haaa0;
    defparam add_1227_5.INIT1 = 16'h9696;
    defparam add_1227_5.INJECT1_0 = "NO";
    defparam add_1227_5.INJECT1_1 = "NO";
    IB Q_in_pad_2 (.I(Q_in[2]), .O(Q_in_c_2));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    FD1S3AX ISquare_e3__i20 (.D(n69_adj_539), .CK(clk_c), .Q(ISquare[19]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i20.GSR = "ENABLED";
    FD1S3AX MultDataC_i6 (.D(Q_in_c_6), .CK(clk_c), .Q(MultDataC[6]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i6.GSR = "ENABLED";
    FD1S3AX MultDataC_i5 (.D(Q_in_c_5), .CK(clk_c), .Q(MultDataC[5]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i5.GSR = "ENABLED";
    FD1S3AX MultDataC_i4 (.D(Q_in_c_4), .CK(clk_c), .Q(MultDataC[4]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i4.GSR = "ENABLED";
    FD1S3AX MultDataC_i3 (.D(Q_in_c_3), .CK(clk_c), .Q(MultDataC[3]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i3.GSR = "ENABLED";
    FD1S3AX MultDataC_i2 (.D(Q_in_c_2), .CK(clk_c), .Q(MultDataC[2]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i2.GSR = "ENABLED";
    FD1S3AX MultDataC_i1 (.D(Q_in_c_1), .CK(clk_c), .Q(MultDataC[1]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataC_i1.GSR = "ENABLED";
    FD1S3AX MultDataB_i11 (.D(I_in_c_11), .CK(clk_c), .Q(MultDataB[11]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i11.GSR = "ENABLED";
    FD1S3AX MultDataB_i10 (.D(I_in_c_10), .CK(clk_c), .Q(MultDataB[10]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i10.GSR = "ENABLED";
    FD1S3AX ISquare_e3__i19 (.D(n72_adj_538), .CK(clk_c), .Q(ISquare[18]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i19.GSR = "ENABLED";
    IB Q_in_pad_4 (.I(Q_in[4]), .O(Q_in_c_4));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    CCU2C ISquare_add_4_2 (.A0(MultResult2[0]), .B0(MultResult1[0]), .C0(GND_net), 
          .D0(VCC_net), .A1(MultResult2[1]), .B1(MultResult1[1]), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3748), .S1(n123));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_2.INIT0 = 16'h0008;
    defparam ISquare_add_4_2.INIT1 = 16'h666a;
    defparam ISquare_add_4_2.INJECT1_0 = "NO";
    defparam ISquare_add_4_2.INJECT1_1 = "NO";
    FD1S3AX ISquare_e3__i18 (.D(n75_adj_537), .CK(clk_c), .Q(ISquare[17]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i18.GSR = "ENABLED";
    FD1S3AX MultDataB_i9 (.D(I_in_c_9), .CK(clk_c), .Q(MultDataB[9]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i9.GSR = "ENABLED";
    CCU2C ISquare_add_4_24 (.A0(MultResult2[22]), .B0(MultResult1[22]), 
          .C0(GND_net), .D0(VCC_net), .A1(MultResult2[23]), .B1(MultResult1[23]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3758), .COUT(n3759), .S0(n60_adj_542), 
          .S1(n57_adj_543));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_24.INIT0 = 16'h666a;
    defparam ISquare_add_4_24.INIT1 = 16'h666a;
    defparam ISquare_add_4_24.INJECT1_0 = "NO";
    defparam ISquare_add_4_24.INJECT1_1 = "NO";
    FD1S3AX MultDataB_i8 (.D(I_in_c_8), .CK(clk_c), .Q(MultDataB[8]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i8.GSR = "ENABLED";
    IB Q_in_pad_3 (.I(Q_in[3]), .O(Q_in_c_3));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(19[23:27])
    FD1S3AX MultDataB_i7 (.D(I_in_c_7), .CK(clk_c), .Q(MultDataB[7]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i7.GSR = "ENABLED";
    FD1S3AX MultDataB_i6 (.D(I_in_c_6), .CK(clk_c), .Q(MultDataB[6]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i6.GSR = "ENABLED";
    FD1S3AX MultDataB_i5 (.D(I_in_c_5), .CK(clk_c), .Q(MultDataB[5]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i5.GSR = "ENABLED";
    FD1S3AX MultDataB_i4 (.D(I_in_c_4), .CK(clk_c), .Q(MultDataB[4]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i4.GSR = "ENABLED";
    FD1S3AX MultDataB_i3 (.D(I_in_c_3), .CK(clk_c), .Q(MultDataB[3]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i3.GSR = "ENABLED";
    FD1S3AX MultDataB_i2 (.D(I_in_c_2), .CK(clk_c), .Q(MultDataB[2]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i2.GSR = "ENABLED";
    FD1S3AX MultDataB_i1 (.D(I_in_c_1), .CK(clk_c), .Q(MultDataB[1]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i1.GSR = "ENABLED";
    FD1S3AX ISquare_e3__i17 (.D(n78_adj_526), .CK(clk_c), .Q(ISquare[16]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i17.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    CCU2C add_1227_13 (.A0(ISquare[31]), .B0(d_out_d_11__N_10[17]), .C0(n66_adj_552), 
          .D0(VCC_net), .A1(d_out_d_11__N_10[17]), .B1(n63_adj_551), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3720), .COUT(n3721), .S0(n63), .S1(n60));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1227_13.INIT0 = 16'h6969;
    defparam add_1227_13.INIT1 = 16'h9995;
    defparam add_1227_13.INJECT1_0 = "NO";
    defparam add_1227_13.INJECT1_1 = "NO";
    FD1S3AX ISquare_e3__i16 (.D(n81_adj_519), .CK(clk_c), .Q(ISquare[15]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i16.GSR = "ENABLED";
    FD1S3AX ISquare_e3__i15 (.D(n84_adj_518), .CK(clk_c), .Q(ISquare[14]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i15.GSR = "ENABLED";
    CCU2C ISquare_add_4_22 (.A0(MultResult2[20]), .B0(MultResult1[20]), 
          .C0(GND_net), .D0(VCC_net), .A1(MultResult2[21]), .B1(MultResult1[21]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3757), .COUT(n3758), .S0(n66_adj_540), 
          .S1(n63_adj_541));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_22.INIT0 = 16'h666a;
    defparam ISquare_add_4_22.INIT1 = 16'h666a;
    defparam ISquare_add_4_22.INJECT1_0 = "NO";
    defparam ISquare_add_4_22.INJECT1_1 = "NO";
    CCU2C ISquare_add_4_20 (.A0(MultResult2[18]), .B0(MultResult1[18]), 
          .C0(GND_net), .D0(VCC_net), .A1(MultResult2[19]), .B1(MultResult1[19]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3756), .COUT(n3757), .S0(n72_adj_538), 
          .S1(n69_adj_539));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_20.INIT0 = 16'h666a;
    defparam ISquare_add_4_20.INIT1 = 16'h666a;
    defparam ISquare_add_4_20.INJECT1_0 = "NO";
    defparam ISquare_add_4_20.INJECT1_1 = "NO";
    CCU2C add_1227_17 (.A0(d_out_d_11__N_10[17]), .B0(n54_adj_548), .C0(GND_net), 
          .D0(VCC_net), .A1(d_out_d_11__N_10[17]), .B1(n51_adj_547), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3722), .COUT(n3723), .S0(n51), .S1(n48));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1227_17.INIT0 = 16'h9995;
    defparam add_1227_17.INIT1 = 16'h9995;
    defparam add_1227_17.INJECT1_0 = "NO";
    defparam add_1227_17.INJECT1_1 = "NO";
    CCU2C ISquare_add_4_18 (.A0(MultResult2[16]), .B0(MultResult1[16]), 
          .C0(GND_net), .D0(VCC_net), .A1(MultResult2[17]), .B1(MultResult1[17]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3755), .COUT(n3756), .S0(n78_adj_526), 
          .S1(n75_adj_537));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_18.INIT0 = 16'h666a;
    defparam ISquare_add_4_18.INIT1 = 16'h666a;
    defparam ISquare_add_4_18.INJECT1_0 = "NO";
    defparam ISquare_add_4_18.INJECT1_1 = "NO";
    FD1S3AX ISquare_e3__i14 (.D(n87_adj_513), .CK(clk_c), .Q(ISquare[13]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i14.GSR = "ENABLED";
    CCU2C ISquare_add_4_6 (.A0(MultResult2[4]), .B0(MultResult1[4]), .C0(GND_net), 
          .D0(VCC_net), .A1(MultResult2[5]), .B1(MultResult1[5]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3749), .COUT(n3750), .S0(n114), .S1(n111));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_6.INIT0 = 16'h666a;
    defparam ISquare_add_4_6.INIT1 = 16'h666a;
    defparam ISquare_add_4_6.INJECT1_0 = "NO";
    defparam ISquare_add_4_6.INJECT1_1 = "NO";
    FD1S3AX ISquare_e3__i13 (.D(n90_adj_502), .CK(clk_c), .Q(ISquare[12]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i13.GSR = "ENABLED";
    CCU2C ISquare_add_4_16 (.A0(MultResult2[14]), .B0(MultResult1[14]), 
          .C0(GND_net), .D0(VCC_net), .A1(MultResult2[15]), .B1(MultResult1[15]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3754), .COUT(n3755), .S0(n84_adj_518), 
          .S1(n81_adj_519));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_16.INIT0 = 16'h666a;
    defparam ISquare_add_4_16.INIT1 = 16'h666a;
    defparam ISquare_add_4_16.INJECT1_0 = "NO";
    defparam ISquare_add_4_16.INJECT1_1 = "NO";
    FD1S3AX ISquare_e3__i12 (.D(n93), .CK(clk_c), .Q(ISquare[11]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_e3__i12.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3AX MultDataB_i0 (.D(I_in_c_0), .CK(clk_c), .Q(MultDataB[0]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(86[9] 95[6])
    defparam MultDataB_i0.GSR = "ENABLED";
    CCU2C add_1233_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_6[17]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3739));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1233_1.INIT0 = 16'h0000;
    defparam add_1233_1.INIT1 = 16'haaaf;
    defparam add_1233_1.INJECT1_0 = "NO";
    defparam add_1233_1.INJECT1_1 = "NO";
    CCU2C ISquare_add_4_14 (.A0(MultResult2[12]), .B0(MultResult1[12]), 
          .C0(GND_net), .D0(VCC_net), .A1(MultResult2[13]), .B1(MultResult1[13]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3753), .COUT(n3754), .S0(n90_adj_502), 
          .S1(n87_adj_513));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(92[16:41])
    defparam ISquare_add_4_14.INIT0 = 16'h666a;
    defparam ISquare_add_4_14.INIT1 = 16'h666a;
    defparam ISquare_add_4_14.INJECT1_0 = "NO";
    defparam ISquare_add_4_14.INJECT1_1 = "NO";
    CCU2C add_1231_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(d_out_d_11__N_14[17]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3673));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(60[11:28])
    defparam add_1231_1.INIT0 = 16'h0000;
    defparam add_1231_1.INIT1 = 16'haaaf;
    defparam add_1231_1.INJECT1_0 = "NO";
    defparam add_1231_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module Multiplier
//

module Multiplier (clk_c, VCC_net, GND_net, MultDataC, MultResult2) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_c;
    input VCC_net;
    input GND_net;
    input [11:0]MultDataC;
    output [23:0]MultResult2;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(17[9:12])
    
    wire regb_b_1, Multiplier_0_mult_0_5_n1, rega_a_11, Multiplier_0_pp_1_2, 
        regb_b_2, regb_b_0, regb_b_3, Multiplier_0_mult_2_5_n1, Multiplier_0_pp_2_4, 
        regb_b_4, regb_b_5, Multiplier_0_mult_4_5_n1, Multiplier_0_pp_3_6, 
        regb_b_6, regb_b_7, Multiplier_0_mult_6_5_n1, Multiplier_0_pp_4_8, 
        regb_b_8, regb_b_9, Multiplier_0_mult_8_5_n1, Multiplier_0_pp_5_10, 
        regb_b_10, Multiplier_0_mult_10_0_n0, regb_b_11, Multiplier_0_mult_10_1_n1, 
        rega_a_3, rega_a_2, Multiplier_0_mult_10_1_n0, Multiplier_0_mult_10_2_n1, 
        rega_a_5, rega_a_4, Multiplier_0_mult_10_2_n0, Multiplier_0_mult_10_3_n1, 
        rega_a_7, rega_a_6, Multiplier_0_mult_10_3_n0, Multiplier_0_mult_10_4_n1, 
        rega_a_9, rega_a_8, Multiplier_0_mult_10_4_n0, Multiplier_0_mult_10_5_n2, 
        rega_a_10, Multiplier_0_mult_10_5_n0, rega_a_1, rego_o_0, rego_o_1, 
        rego_o_2, rego_o_3, rego_o_4, rego_o_5, rego_o_6, rego_o_7, 
        rego_o_8, rego_o_9, rego_o_10, rego_o_11, rego_o_12, rego_o_13, 
        rego_o_14, rego_o_15, rego_o_16, rego_o_17, rego_o_18, rego_o_19, 
        rego_o_20, rego_o_21, rego_o_22, rego_o_23, Multiplier_0_pp_0_0, 
        Multiplier_0_pp_0_1, s_Multiplier_0_0_2, s_Multiplier_0_0_3, s_Multiplier_0_0_4, 
        f_s_Multiplier_0_0_4, s_Multiplier_0_0_5, f_s_Multiplier_0_0_5, 
        s_Multiplier_0_0_6, f_s_Multiplier_0_0_6, s_Multiplier_0_0_7, 
        f_s_Multiplier_0_0_7, s_Multiplier_0_0_8, f_s_Multiplier_0_0_8, 
        s_Multiplier_0_0_9, f_s_Multiplier_0_0_9, s_Multiplier_0_0_10, 
        f_s_Multiplier_0_0_10, s_Multiplier_0_0_11, f_s_Multiplier_0_0_11, 
        s_Multiplier_0_0_12, f_s_Multiplier_0_0_12, s_Multiplier_0_0_13, 
        f_s_Multiplier_0_0_13, s_Multiplier_0_0_14, f_s_Multiplier_0_0_14, 
        s_Multiplier_0_0_15, f_s_Multiplier_0_0_15, s_Multiplier_0_0_16, 
        f_s_Multiplier_0_0_16, s_Multiplier_0_0_17, f_s_Multiplier_0_0_17, 
        f_Multiplier_0_pp_2_4, f_Multiplier_0_pp_2_5, Multiplier_0_pp_2_5, 
        s_Multiplier_0_1_6, f_s_Multiplier_0_1_6, s_Multiplier_0_1_7, 
        f_s_Multiplier_0_1_7, s_Multiplier_0_1_8, f_s_Multiplier_0_1_8, 
        s_Multiplier_0_1_9, f_s_Multiplier_0_1_9, s_Multiplier_0_1_10, 
        f_s_Multiplier_0_1_10, s_Multiplier_0_1_11, f_s_Multiplier_0_1_11, 
        s_Multiplier_0_1_12, f_s_Multiplier_0_1_12, s_Multiplier_0_1_13, 
        f_s_Multiplier_0_1_13, s_Multiplier_0_1_14, f_s_Multiplier_0_1_14, 
        s_Multiplier_0_1_15, f_s_Multiplier_0_1_15, s_Multiplier_0_1_16, 
        f_s_Multiplier_0_1_16, s_Multiplier_0_1_17, f_s_Multiplier_0_1_17, 
        s_Multiplier_0_1_18, f_s_Multiplier_0_1_18, s_Multiplier_0_1_19, 
        f_s_Multiplier_0_1_19, s_Multiplier_0_1_20, f_s_Multiplier_0_1_20, 
        s_Multiplier_0_1_21, f_s_Multiplier_0_1_21, f_Multiplier_0_pp_4_8, 
        f_Multiplier_0_pp_4_9, Multiplier_0_pp_4_9, s_Multiplier_0_2_10, 
        f_s_Multiplier_0_2_10, s_Multiplier_0_2_11, f_s_Multiplier_0_2_11, 
        s_Multiplier_0_2_12, f_s_Multiplier_0_2_12, s_Multiplier_0_2_13, 
        f_s_Multiplier_0_2_13, s_Multiplier_0_2_14, f_s_Multiplier_0_2_14, 
        s_Multiplier_0_2_15, f_s_Multiplier_0_2_15, s_Multiplier_0_2_16, 
        f_s_Multiplier_0_2_16, s_Multiplier_0_2_17, f_s_Multiplier_0_2_17, 
        s_Multiplier_0_2_18, f_s_Multiplier_0_2_18, s_Multiplier_0_2_19, 
        f_s_Multiplier_0_2_19, s_Multiplier_0_2_20, f_s_Multiplier_0_2_20, 
        s_Multiplier_0_2_21, f_s_Multiplier_0_2_21, s_Multiplier_0_2_22, 
        f_s_Multiplier_0_2_22, s_Multiplier_0_2_23, f_s_Multiplier_0_2_23, 
        Multiplier_0_cin_lr_0, Multiplier_0_pp_0_13, mfco, Multiplier_0_cin_lr_2, 
        Multiplier_0_pp_1_15, mfco_1, Multiplier_0_cin_lr_4, Multiplier_0_pp_2_17, 
        mfco_2, Multiplier_0_cin_lr_6, Multiplier_0_pp_3_19, mfco_3, 
        Multiplier_0_cin_lr_8, Multiplier_0_pp_4_21, mfco_4, Multiplier_0_cin_lr_10, 
        Multiplier_0_pp_5_23, mfco_5, co_Multiplier_0_0_1, Multiplier_0_pp_0_2, 
        co_Multiplier_0_0_2, Multiplier_0_pp_0_4, Multiplier_0_pp_0_3, 
        Multiplier_0_pp_1_4, Multiplier_0_pp_1_3, co_Multiplier_0_0_3, 
        Multiplier_0_pp_0_6, Multiplier_0_pp_0_5, Multiplier_0_pp_1_6, 
        Multiplier_0_pp_1_5, co_Multiplier_0_0_4, Multiplier_0_pp_0_8, 
        Multiplier_0_pp_0_7, Multiplier_0_pp_1_8, Multiplier_0_pp_1_7, 
        co_Multiplier_0_0_5, Multiplier_0_pp_0_10, Multiplier_0_pp_0_9, 
        Multiplier_0_pp_1_10, Multiplier_0_pp_1_9, co_Multiplier_0_0_6, 
        Multiplier_0_pp_0_12, Multiplier_0_pp_0_11, Multiplier_0_pp_1_12, 
        Multiplier_0_pp_1_11, co_Multiplier_0_0_7, Multiplier_0_pp_1_14, 
        Multiplier_0_pp_1_13, co_Multiplier_0_0_8, co_Multiplier_0_1_1, 
        Multiplier_0_pp_2_6, co_Multiplier_0_1_2, Multiplier_0_pp_2_8, 
        Multiplier_0_pp_2_7, Multiplier_0_pp_3_8, Multiplier_0_pp_3_7, 
        co_Multiplier_0_1_3, Multiplier_0_pp_2_10, Multiplier_0_pp_2_9, 
        Multiplier_0_pp_3_10, Multiplier_0_pp_3_9, co_Multiplier_0_1_4, 
        Multiplier_0_pp_2_12, Multiplier_0_pp_2_11, Multiplier_0_pp_3_12, 
        Multiplier_0_pp_3_11, co_Multiplier_0_1_5, Multiplier_0_pp_2_14, 
        Multiplier_0_pp_2_13, Multiplier_0_pp_3_14, Multiplier_0_pp_3_13, 
        co_Multiplier_0_1_6, Multiplier_0_pp_2_16, Multiplier_0_pp_2_15, 
        Multiplier_0_pp_3_16, Multiplier_0_pp_3_15, co_Multiplier_0_1_7, 
        Multiplier_0_pp_3_18, Multiplier_0_pp_3_17, co_Multiplier_0_1_8, 
        co_Multiplier_0_2_1, Multiplier_0_pp_4_10, co_Multiplier_0_2_2, 
        Multiplier_0_pp_4_12, Multiplier_0_pp_4_11, Multiplier_0_pp_5_12, 
        Multiplier_0_pp_5_11, co_Multiplier_0_2_3, Multiplier_0_pp_4_14, 
        Multiplier_0_pp_4_13, Multiplier_0_pp_5_14, Multiplier_0_pp_5_13, 
        co_Multiplier_0_2_4, Multiplier_0_pp_4_16, Multiplier_0_pp_4_15, 
        Multiplier_0_pp_5_16, Multiplier_0_pp_5_15, co_Multiplier_0_2_5, 
        Multiplier_0_pp_4_18, Multiplier_0_pp_4_17, Multiplier_0_pp_5_18, 
        Multiplier_0_pp_5_17, co_Multiplier_0_2_6, Multiplier_0_pp_4_20, 
        Multiplier_0_pp_4_19, Multiplier_0_pp_5_20, Multiplier_0_pp_5_19, 
        co_Multiplier_0_2_7, Multiplier_0_pp_5_22, Multiplier_0_pp_5_21, 
        co_Multiplier_0_3_1, co_Multiplier_0_3_2, co_Multiplier_0_3_3, 
        s_Multiplier_0_3_8, co_Multiplier_0_3_4, s_Multiplier_0_3_10, 
        s_Multiplier_0_3_9, co_Multiplier_0_3_5, s_Multiplier_0_3_12, 
        s_Multiplier_0_3_11, co_Multiplier_0_3_6, s_Multiplier_0_3_14, 
        s_Multiplier_0_3_13, co_Multiplier_0_3_7, s_Multiplier_0_3_16, 
        s_Multiplier_0_3_15, co_Multiplier_0_3_8, s_Multiplier_0_3_18, 
        s_Multiplier_0_3_17, co_Multiplier_0_3_9, s_Multiplier_0_3_20, 
        s_Multiplier_0_3_19, co_Multiplier_0_3_10, s_Multiplier_0_3_22, 
        s_Multiplier_0_3_21, s_Multiplier_0_3_23, co_t_Multiplier_0_4_1, 
        co_t_Multiplier_0_4_2, co_t_Multiplier_0_4_3, co_t_Multiplier_0_4_4, 
        co_t_Multiplier_0_4_5, co_t_Multiplier_0_4_6, co_t_Multiplier_0_4_7, 
        co_t_Multiplier_0_4_8, mco, mco_1, mco_2, mco_3, mco_4, 
        Multiplier_0_mult_0_5_n2, mco_5, mco_6, mco_7, mco_8, mco_9, 
        Multiplier_0_mult_2_5_n2, mco_10, mco_11, mco_12, mco_13, 
        mco_14, Multiplier_0_mult_4_5_n2, mco_15, mco_16, mco_17, 
        mco_18, mco_19, Multiplier_0_mult_6_5_n2, mco_20, mco_21, 
        mco_22, mco_23, mco_24, Multiplier_0_mult_8_5_n2, Multiplier_0_mult_10_0_n1, 
        mco_25, mco_26, mco_27, mco_28, mco_29;
    
    ND2 ND2_t25 (.A(rega_a_11), .B(regb_b_1), .Z(Multiplier_0_mult_0_5_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    AND2 AND2_t24 (.A(regb_b_0), .B(regb_b_2), .Z(Multiplier_0_pp_1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(382[10:72])
    ND2 ND2_t22 (.A(rega_a_11), .B(regb_b_3), .Z(Multiplier_0_mult_2_5_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    AND2 AND2_t21 (.A(regb_b_0), .B(regb_b_4), .Z(Multiplier_0_pp_2_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(388[10:72])
    ND2 ND2_t19 (.A(rega_a_11), .B(regb_b_5), .Z(Multiplier_0_mult_4_5_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    AND2 AND2_t18 (.A(regb_b_0), .B(regb_b_6), .Z(Multiplier_0_pp_3_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(394[10:72])
    ND2 ND2_t16 (.A(rega_a_11), .B(regb_b_7), .Z(Multiplier_0_mult_6_5_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    AND2 AND2_t15 (.A(regb_b_0), .B(regb_b_8), .Z(Multiplier_0_pp_4_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(400[10:72])
    ND2 ND2_t13 (.A(rega_a_11), .B(regb_b_9), .Z(Multiplier_0_mult_8_5_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    AND2 AND2_t12 (.A(regb_b_0), .B(regb_b_10), .Z(Multiplier_0_pp_5_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(406[10:74])
    ND2 ND2_t10 (.A(regb_b_0), .B(regb_b_11), .Z(Multiplier_0_mult_10_0_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t9 (.A(rega_a_3), .B(regb_b_11), .Z(Multiplier_0_mult_10_1_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t8 (.A(rega_a_2), .B(regb_b_11), .Z(Multiplier_0_mult_10_1_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t7 (.A(rega_a_5), .B(regb_b_11), .Z(Multiplier_0_mult_10_2_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t6 (.A(rega_a_4), .B(regb_b_11), .Z(Multiplier_0_mult_10_2_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t5 (.A(rega_a_7), .B(regb_b_11), .Z(Multiplier_0_mult_10_3_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t4 (.A(rega_a_6), .B(regb_b_11), .Z(Multiplier_0_mult_10_3_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t3 (.A(rega_a_9), .B(regb_b_11), .Z(Multiplier_0_mult_10_4_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t2 (.A(rega_a_8), .B(regb_b_11), .Z(Multiplier_0_mult_10_4_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t1 (.A(rega_a_11), .B(regb_b_10), .Z(Multiplier_0_mult_10_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t0 (.A(rega_a_10), .B(regb_b_11), .Z(Multiplier_0_mult_10_5_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    FD1P3DX FF_98 (.D(MultDataC[1]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(435[13:82])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(MultDataC[2]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(438[13:82])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(MultDataC[3]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(441[13:82])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(MultDataC[4]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(444[13:82])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(MultDataC[5]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(447[13:82])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(MultDataC[6]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(450[13:82])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(MultDataC[7]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(453[13:82])
    defparam FF_92.GSR = "ENABLED";
    FD1P3DX FF_91 (.D(MultDataC[8]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(456[13:82])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(MultDataC[9]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(459[13:82])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(MultDataC[10]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(462[13:84])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(MultDataC[11]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(465[13:84])
    defparam FF_88.GSR = "ENABLED";
    FD1P3DX FF_87 (.D(MultDataC[0]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(468[13:82])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(MultDataC[1]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(471[13:82])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(MultDataC[2]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(474[13:82])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(MultDataC[3]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(477[13:82])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(MultDataC[4]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(480[13:82])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(MultDataC[5]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(483[13:82])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(MultDataC[6]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(486[13:82])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(MultDataC[7]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(489[13:82])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(MultDataC[8]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(492[13:82])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(MultDataC[9]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(495[13:82])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(MultDataC[10]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(498[13:84])
    defparam FF_77.GSR = "ENABLED";
    FD1P3DX FF_76 (.D(MultDataC[11]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(501[13:84])
    defparam FF_76.GSR = "ENABLED";
    FD1P3DX FF_75 (.D(rego_o_0), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(504[13:83])
    defparam FF_75.GSR = "ENABLED";
    FD1P3DX FF_74 (.D(rego_o_1), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(507[13:83])
    defparam FF_74.GSR = "ENABLED";
    FD1P3DX FF_73 (.D(rego_o_2), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(510[13:83])
    defparam FF_73.GSR = "ENABLED";
    FD1P3DX FF_72 (.D(rego_o_3), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(513[13:83])
    defparam FF_72.GSR = "ENABLED";
    FD1P3DX FF_71 (.D(rego_o_4), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(516[13:83])
    defparam FF_71.GSR = "ENABLED";
    FD1P3DX FF_70 (.D(rego_o_5), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(519[13:83])
    defparam FF_70.GSR = "ENABLED";
    FD1P3DX FF_69 (.D(rego_o_6), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(522[13:83])
    defparam FF_69.GSR = "ENABLED";
    FD1P3DX FF_68 (.D(rego_o_7), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(525[13:83])
    defparam FF_68.GSR = "ENABLED";
    FD1P3DX FF_67 (.D(rego_o_8), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(528[13:83])
    defparam FF_67.GSR = "ENABLED";
    FD1P3DX FF_66 (.D(rego_o_9), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(531[13:83])
    defparam FF_66.GSR = "ENABLED";
    FD1P3DX FF_65 (.D(rego_o_10), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(534[13:85])
    defparam FF_65.GSR = "ENABLED";
    FD1P3DX FF_64 (.D(rego_o_11), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(537[13:85])
    defparam FF_64.GSR = "ENABLED";
    FD1P3DX FF_63 (.D(rego_o_12), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[12])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(540[13:85])
    defparam FF_63.GSR = "ENABLED";
    FD1P3DX FF_62 (.D(rego_o_13), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[13])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(543[13:85])
    defparam FF_62.GSR = "ENABLED";
    FD1P3DX FF_61 (.D(rego_o_14), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[14])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(546[13:85])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(rego_o_15), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[15])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(549[13:85])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(rego_o_16), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[16])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(552[13:85])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(rego_o_17), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[17])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(555[13:85])
    defparam FF_58.GSR = "ENABLED";
    FD1P3DX FF_57 (.D(rego_o_18), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[18])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(558[13:85])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(rego_o_19), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[19])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(561[13:85])
    defparam FF_56.GSR = "ENABLED";
    FD1P3DX FF_55 (.D(rego_o_20), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[20])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(564[13:85])
    defparam FF_55.GSR = "ENABLED";
    FD1P3DX FF_54 (.D(rego_o_21), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[21])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(567[13:85])
    defparam FF_54.GSR = "ENABLED";
    FD1P3DX FF_53 (.D(rego_o_22), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[22])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(570[13:85])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(rego_o_23), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult2[23])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(573[13:85])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(Multiplier_0_pp_0_0), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(rego_o_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(576[13] 577[35])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(Multiplier_0_pp_0_1), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(rego_o_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(580[13] 581[35])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(s_Multiplier_0_0_2), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rego_o_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(584[13] 585[34])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(s_Multiplier_0_0_3), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rego_o_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(588[13] 589[34])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(s_Multiplier_0_0_4), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(592[13] 593[34])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(s_Multiplier_0_0_5), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(596[13] 597[34])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(s_Multiplier_0_0_6), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(600[13] 601[34])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(s_Multiplier_0_0_7), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(604[13] 605[34])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(s_Multiplier_0_0_8), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(608[13] 609[34])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(s_Multiplier_0_0_9), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(612[13] 613[34])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(s_Multiplier_0_0_10), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(616[13] 617[35])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(s_Multiplier_0_0_11), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(620[13] 621[35])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(s_Multiplier_0_0_12), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(624[13] 625[35])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(s_Multiplier_0_0_13), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(628[13] 629[35])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(s_Multiplier_0_0_14), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(632[13] 633[35])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(s_Multiplier_0_0_15), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(636[13] 637[35])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(s_Multiplier_0_0_16), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_16)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(640[13] 641[35])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(s_Multiplier_0_0_17), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_17)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(644[13] 645[35])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(Multiplier_0_pp_2_4), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_Multiplier_0_pp_2_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(648[13] 649[35])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(Multiplier_0_pp_2_5), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_Multiplier_0_pp_2_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(652[13] 653[35])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(s_Multiplier_0_1_6), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_1_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(656[13] 657[34])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(s_Multiplier_0_1_7), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_1_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(660[13] 661[34])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(s_Multiplier_0_1_8), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_1_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(664[13] 665[34])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(s_Multiplier_0_1_9), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_1_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(668[13] 669[34])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(s_Multiplier_0_1_10), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(672[13] 673[35])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(s_Multiplier_0_1_11), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(676[13] 677[35])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(s_Multiplier_0_1_12), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(680[13] 681[35])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(s_Multiplier_0_1_13), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(684[13] 685[35])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(s_Multiplier_0_1_14), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(688[13] 689[35])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(s_Multiplier_0_1_15), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(692[13] 693[35])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(s_Multiplier_0_1_16), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_16)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(696[13] 697[35])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(s_Multiplier_0_1_17), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_17)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(700[13] 701[35])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(s_Multiplier_0_1_18), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_18)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(704[13] 705[35])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(s_Multiplier_0_1_19), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_19)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(708[13] 709[35])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(s_Multiplier_0_1_20), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(712[13] 713[35])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(s_Multiplier_0_1_21), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(716[13] 717[35])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(Multiplier_0_pp_4_8), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_Multiplier_0_pp_4_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(720[13] 721[35])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(Multiplier_0_pp_4_9), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_Multiplier_0_pp_4_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(724[13] 725[35])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(s_Multiplier_0_2_10), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_2_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(728[13] 729[35])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(s_Multiplier_0_2_11), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_2_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(732[13] 733[35])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(s_Multiplier_0_2_12), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_2_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(736[13] 737[35])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(s_Multiplier_0_2_13), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_2_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(740[13] 741[35])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(s_Multiplier_0_2_14), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(744[13] 745[35])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(s_Multiplier_0_2_15), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(748[13] 749[35])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(s_Multiplier_0_2_16), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_16)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(752[13] 753[35])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(s_Multiplier_0_2_17), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_17)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(756[13] 757[35])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(s_Multiplier_0_2_18), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_18)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(760[13] 761[35])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(s_Multiplier_0_2_19), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_19)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(764[13] 765[35])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(s_Multiplier_0_2_20), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(768[13] 769[35])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(s_Multiplier_0_2_21), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(772[13] 773[35])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(s_Multiplier_0_2_22), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_22)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(776[13] 777[35])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(s_Multiplier_0_2_23), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_23)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(780[13] 781[35])
    defparam FF_0.GSR = "ENABLED";
    CCU2C Multiplier_0_cin_lr_add_0 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(788[11] 790[76])
    defparam Multiplier_0_cin_lr_add_0.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_0.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_0.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_0_6 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco), .S0(Multiplier_0_pp_0_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(796[11] 798[79])
    defparam Multiplier_0_Cadd_0_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_0_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_0_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_0_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_2 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(804[11] 806[76])
    defparam Multiplier_0_cin_lr_add_2.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_2.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_2.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_2_6 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_1), .S0(Multiplier_0_pp_1_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(812[11] 815[17])
    defparam Multiplier_0_Cadd_2_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_2_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_2_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_2_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_4 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(821[11] 823[76])
    defparam Multiplier_0_cin_lr_add_4.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_4.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_4.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_4_6 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_2), .S0(Multiplier_0_pp_2_17)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(829[11] 832[17])
    defparam Multiplier_0_Cadd_4_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_4_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_4_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_4_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_6 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(838[11] 840[76])
    defparam Multiplier_0_cin_lr_add_6.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_6.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_6.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_6_6 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_3), .S0(Multiplier_0_pp_3_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(846[11] 849[17])
    defparam Multiplier_0_Cadd_6_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_6_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_6_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_6_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_8 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(855[11] 857[76])
    defparam Multiplier_0_cin_lr_add_8.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_8.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_8.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_8.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_8_6 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_4), .S0(Multiplier_0_pp_4_21)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(863[11] 866[17])
    defparam Multiplier_0_Cadd_8_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_8_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_8_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_8_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_10 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(872[11] 874[77])
    defparam Multiplier_0_cin_lr_add_10.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_10.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_10.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_10.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_10_6 (.A0(VCC_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_5), .S0(Multiplier_0_pp_5_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(880[11] 883[17])
    defparam Multiplier_0_Cadd_10_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_10_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_10_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_10_6.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_0_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(Multiplier_0_pp_0_2), .B1(Multiplier_0_pp_1_2), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_Multiplier_0_0_1), .S1(s_Multiplier_0_0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(889[11] 892[36])
    defparam Cadd_Multiplier_0_0_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_0_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_2 (.A0(Multiplier_0_pp_0_3), .B0(Multiplier_0_pp_1_3), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_0_4), .B1(Multiplier_0_pp_1_4), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_1), .COUT(co_Multiplier_0_0_2), 
          .S0(s_Multiplier_0_0_3), .S1(s_Multiplier_0_0_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(898[11] 901[86])
    defparam Multiplier_0_add_0_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_3 (.A0(Multiplier_0_pp_0_5), .B0(Multiplier_0_pp_1_5), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_0_6), .B1(Multiplier_0_pp_1_6), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_2), .COUT(co_Multiplier_0_0_3), 
          .S0(s_Multiplier_0_0_5), .S1(s_Multiplier_0_0_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(907[11] 910[86])
    defparam Multiplier_0_add_0_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_4 (.A0(Multiplier_0_pp_0_7), .B0(Multiplier_0_pp_1_7), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_0_8), .B1(Multiplier_0_pp_1_8), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_3), .COUT(co_Multiplier_0_0_4), 
          .S0(s_Multiplier_0_0_7), .S1(s_Multiplier_0_0_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(916[11] 919[86])
    defparam Multiplier_0_add_0_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_5 (.A0(Multiplier_0_pp_0_9), .B0(Multiplier_0_pp_1_9), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_0_10), .B1(Multiplier_0_pp_1_10), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_4), .COUT(co_Multiplier_0_0_5), 
          .S0(s_Multiplier_0_0_9), .S1(s_Multiplier_0_0_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(925[11] 928[87])
    defparam Multiplier_0_add_0_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_6 (.A0(Multiplier_0_pp_0_11), .B0(Multiplier_0_pp_1_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_0_12), .B1(Multiplier_0_pp_1_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_5), .COUT(co_Multiplier_0_0_6), 
          .S0(s_Multiplier_0_0_11), .S1(s_Multiplier_0_0_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(934[11] 937[88])
    defparam Multiplier_0_add_0_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_7 (.A0(Multiplier_0_pp_0_13), .B0(Multiplier_0_pp_1_13), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(Multiplier_0_pp_1_14), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_6), .COUT(co_Multiplier_0_0_7), 
          .S0(s_Multiplier_0_0_13), .S1(s_Multiplier_0_0_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(943[11] 946[88])
    defparam Multiplier_0_add_0_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_8 (.A0(GND_net), .B0(Multiplier_0_pp_1_15), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co_Multiplier_0_0_7), .COUT(co_Multiplier_0_0_8), 
          .S0(s_Multiplier_0_0_15), .S1(s_Multiplier_0_0_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(952[11] 955[62])
    defparam Multiplier_0_add_0_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_8.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_0_9 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co_Multiplier_0_0_8), .S0(s_Multiplier_0_0_17)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(961[11] 964[24])
    defparam Cadd_Multiplier_0_0_9.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_9.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_9.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_0_9.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_1_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(Multiplier_0_pp_2_6), .B1(Multiplier_0_pp_3_6), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_Multiplier_0_1_1), .S1(s_Multiplier_0_1_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(970[11] 973[36])
    defparam Cadd_Multiplier_0_1_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_1_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_2 (.A0(Multiplier_0_pp_2_7), .B0(Multiplier_0_pp_3_7), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_2_8), .B1(Multiplier_0_pp_3_8), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_1), .COUT(co_Multiplier_0_1_2), 
          .S0(s_Multiplier_0_1_7), .S1(s_Multiplier_0_1_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(979[11] 982[86])
    defparam Multiplier_0_add_1_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_3 (.A0(Multiplier_0_pp_2_9), .B0(Multiplier_0_pp_3_9), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_2_10), .B1(Multiplier_0_pp_3_10), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_2), .COUT(co_Multiplier_0_1_3), 
          .S0(s_Multiplier_0_1_9), .S1(s_Multiplier_0_1_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(988[11] 991[87])
    defparam Multiplier_0_add_1_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_4 (.A0(Multiplier_0_pp_2_11), .B0(Multiplier_0_pp_3_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_2_12), .B1(Multiplier_0_pp_3_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_3), .COUT(co_Multiplier_0_1_4), 
          .S0(s_Multiplier_0_1_11), .S1(s_Multiplier_0_1_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(997[11] 1000[88])
    defparam Multiplier_0_add_1_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_5 (.A0(Multiplier_0_pp_2_13), .B0(Multiplier_0_pp_3_13), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_2_14), .B1(Multiplier_0_pp_3_14), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_4), .COUT(co_Multiplier_0_1_5), 
          .S0(s_Multiplier_0_1_13), .S1(s_Multiplier_0_1_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1006[11] 1009[88])
    defparam Multiplier_0_add_1_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_6 (.A0(Multiplier_0_pp_2_15), .B0(Multiplier_0_pp_3_15), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_2_16), .B1(Multiplier_0_pp_3_16), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_5), .COUT(co_Multiplier_0_1_6), 
          .S0(s_Multiplier_0_1_15), .S1(s_Multiplier_0_1_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1015[11] 1018[88])
    defparam Multiplier_0_add_1_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_7 (.A0(Multiplier_0_pp_2_17), .B0(Multiplier_0_pp_3_17), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(Multiplier_0_pp_3_18), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_6), .COUT(co_Multiplier_0_1_7), 
          .S0(s_Multiplier_0_1_17), .S1(s_Multiplier_0_1_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1024[11] 1027[88])
    defparam Multiplier_0_add_1_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_8 (.A0(GND_net), .B0(Multiplier_0_pp_3_19), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co_Multiplier_0_1_7), .COUT(co_Multiplier_0_1_8), 
          .S0(s_Multiplier_0_1_19), .S1(s_Multiplier_0_1_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1033[11] 1036[62])
    defparam Multiplier_0_add_1_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_8.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_1_9 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co_Multiplier_0_1_8), .S0(s_Multiplier_0_1_21)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1042[11] 1045[24])
    defparam Cadd_Multiplier_0_1_9.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_9.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_9.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_1_9.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_2_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(Multiplier_0_pp_4_10), .B1(Multiplier_0_pp_5_10), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_Multiplier_0_2_1), .S1(s_Multiplier_0_2_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1051[11] 1054[36])
    defparam Cadd_Multiplier_0_2_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_2_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_2_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_2_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_2 (.A0(Multiplier_0_pp_4_11), .B0(Multiplier_0_pp_5_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_4_12), .B1(Multiplier_0_pp_5_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_1), .COUT(co_Multiplier_0_2_2), 
          .S0(s_Multiplier_0_2_11), .S1(s_Multiplier_0_2_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1060[11] 1063[88])
    defparam Multiplier_0_add_2_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_3 (.A0(Multiplier_0_pp_4_13), .B0(Multiplier_0_pp_5_13), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_4_14), .B1(Multiplier_0_pp_5_14), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_2), .COUT(co_Multiplier_0_2_3), 
          .S0(s_Multiplier_0_2_13), .S1(s_Multiplier_0_2_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1069[11] 1072[88])
    defparam Multiplier_0_add_2_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_4 (.A0(Multiplier_0_pp_4_15), .B0(Multiplier_0_pp_5_15), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_4_16), .B1(Multiplier_0_pp_5_16), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_3), .COUT(co_Multiplier_0_2_4), 
          .S0(s_Multiplier_0_2_15), .S1(s_Multiplier_0_2_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1078[11] 1081[88])
    defparam Multiplier_0_add_2_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_5 (.A0(Multiplier_0_pp_4_17), .B0(Multiplier_0_pp_5_17), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_4_18), .B1(Multiplier_0_pp_5_18), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_4), .COUT(co_Multiplier_0_2_5), 
          .S0(s_Multiplier_0_2_17), .S1(s_Multiplier_0_2_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1087[11] 1090[88])
    defparam Multiplier_0_add_2_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_6 (.A0(Multiplier_0_pp_4_19), .B0(Multiplier_0_pp_5_19), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_4_20), .B1(Multiplier_0_pp_5_20), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_5), .COUT(co_Multiplier_0_2_6), 
          .S0(s_Multiplier_0_2_19), .S1(s_Multiplier_0_2_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1096[11] 1099[88])
    defparam Multiplier_0_add_2_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_7 (.A0(Multiplier_0_pp_4_21), .B0(Multiplier_0_pp_5_21), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(Multiplier_0_pp_5_22), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_6), .COUT(co_Multiplier_0_2_7), 
          .S0(s_Multiplier_0_2_21), .S1(s_Multiplier_0_2_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1105[11] 1108[88])
    defparam Multiplier_0_add_2_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_8 (.A0(GND_net), .B0(Multiplier_0_pp_5_23), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co_Multiplier_0_2_7), .S0(s_Multiplier_0_2_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1114[11] 1117[43])
    defparam Multiplier_0_add_2_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_8.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_3_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(f_s_Multiplier_0_0_4), .B1(f_Multiplier_0_pp_2_4), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_Multiplier_0_3_1), .S1(rego_o_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1123[11] 1126[36])
    defparam Cadd_Multiplier_0_3_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_3_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_2 (.A0(f_s_Multiplier_0_0_5), .B0(f_Multiplier_0_pp_2_5), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_6), .B1(f_s_Multiplier_0_1_6), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_1), .COUT(co_Multiplier_0_3_2), 
          .S0(rego_o_5), .S1(rego_o_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1132[11] 1135[86])
    defparam Multiplier_0_add_3_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_3 (.A0(f_s_Multiplier_0_0_7), .B0(f_s_Multiplier_0_1_7), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_8), .B1(f_s_Multiplier_0_1_8), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_2), .COUT(co_Multiplier_0_3_3), 
          .S0(rego_o_7), .S1(s_Multiplier_0_3_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1141[11] 1144[86])
    defparam Multiplier_0_add_3_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_4 (.A0(f_s_Multiplier_0_0_9), .B0(f_s_Multiplier_0_1_9), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_10), .B1(f_s_Multiplier_0_1_10), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_3), .COUT(co_Multiplier_0_3_4), 
          .S0(s_Multiplier_0_3_9), .S1(s_Multiplier_0_3_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1150[11] 1153[87])
    defparam Multiplier_0_add_3_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_5 (.A0(f_s_Multiplier_0_0_11), .B0(f_s_Multiplier_0_1_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_12), .B1(f_s_Multiplier_0_1_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_4), .COUT(co_Multiplier_0_3_5), 
          .S0(s_Multiplier_0_3_11), .S1(s_Multiplier_0_3_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1159[11] 1162[88])
    defparam Multiplier_0_add_3_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_6 (.A0(f_s_Multiplier_0_0_13), .B0(f_s_Multiplier_0_1_13), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_14), .B1(f_s_Multiplier_0_1_14), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_5), .COUT(co_Multiplier_0_3_6), 
          .S0(s_Multiplier_0_3_13), .S1(s_Multiplier_0_3_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1168[11] 1171[88])
    defparam Multiplier_0_add_3_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_7 (.A0(f_s_Multiplier_0_0_15), .B0(f_s_Multiplier_0_1_15), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_16), .B1(f_s_Multiplier_0_1_16), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_6), .COUT(co_Multiplier_0_3_7), 
          .S0(s_Multiplier_0_3_15), .S1(s_Multiplier_0_3_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1177[11] 1180[88])
    defparam Multiplier_0_add_3_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_8 (.A0(f_s_Multiplier_0_0_17), .B0(f_s_Multiplier_0_1_17), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(f_s_Multiplier_0_1_18), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_7), .COUT(co_Multiplier_0_3_8), 
          .S0(s_Multiplier_0_3_17), .S1(s_Multiplier_0_3_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1186[11] 1189[88])
    defparam Multiplier_0_add_3_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_8.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_9 (.A0(GND_net), .B0(f_s_Multiplier_0_1_19), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(f_s_Multiplier_0_1_20), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_8), .COUT(co_Multiplier_0_3_9), 
          .S0(s_Multiplier_0_3_19), .S1(s_Multiplier_0_3_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1195[11] 1198[62])
    defparam Multiplier_0_add_3_9.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_9.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_9.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_9.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_10 (.A0(GND_net), .B0(f_s_Multiplier_0_1_21), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co_Multiplier_0_3_9), .COUT(co_Multiplier_0_3_10), 
          .S0(s_Multiplier_0_3_21), .S1(s_Multiplier_0_3_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1204[11] 1207[63])
    defparam Multiplier_0_add_3_10.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_10.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_10.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_10.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_3_11 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co_Multiplier_0_3_10), .S0(s_Multiplier_0_3_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1213[11] 1216[24])
    defparam Cadd_Multiplier_0_3_11.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_11.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_11.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_3_11.INJECT1_1 = "NO";
    CCU2C Cadd_t_Multiplier_0_4_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(s_Multiplier_0_3_8), .B1(f_Multiplier_0_pp_4_8), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_t_Multiplier_0_4_1), .S1(rego_o_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1222[11] 1224[100])
    defparam Cadd_t_Multiplier_0_4_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_t_Multiplier_0_4_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_t_Multiplier_0_4_1.INJECT1_0 = "NO";
    defparam Cadd_t_Multiplier_0_4_1.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_2 (.A0(s_Multiplier_0_3_9), .B0(f_Multiplier_0_pp_4_9), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_10), .B1(f_s_Multiplier_0_2_10), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_1), .COUT(co_t_Multiplier_0_4_2), 
          .S0(rego_o_9), .S1(rego_o_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1230[11] 1233[69])
    defparam t_Multiplier_0_add_4_2.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_2.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_2.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_2.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_3 (.A0(s_Multiplier_0_3_11), .B0(f_s_Multiplier_0_2_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_12), .B1(f_s_Multiplier_0_2_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_2), .COUT(co_t_Multiplier_0_4_3), 
          .S0(rego_o_11), .S1(rego_o_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1239[11] 1242[70])
    defparam t_Multiplier_0_add_4_3.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_3.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_3.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_3.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_4 (.A0(s_Multiplier_0_3_13), .B0(f_s_Multiplier_0_2_13), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_14), .B1(f_s_Multiplier_0_2_14), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_3), .COUT(co_t_Multiplier_0_4_4), 
          .S0(rego_o_13), .S1(rego_o_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1248[11] 1251[70])
    defparam t_Multiplier_0_add_4_4.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_4.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_4.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_4.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_5 (.A0(s_Multiplier_0_3_15), .B0(f_s_Multiplier_0_2_15), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_16), .B1(f_s_Multiplier_0_2_16), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_4), .COUT(co_t_Multiplier_0_4_5), 
          .S0(rego_o_15), .S1(rego_o_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1257[11] 1260[70])
    defparam t_Multiplier_0_add_4_5.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_5.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_5.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_5.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_6 (.A0(s_Multiplier_0_3_17), .B0(f_s_Multiplier_0_2_17), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_18), .B1(f_s_Multiplier_0_2_18), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_5), .COUT(co_t_Multiplier_0_4_6), 
          .S0(rego_o_17), .S1(rego_o_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1266[11] 1269[70])
    defparam t_Multiplier_0_add_4_6.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_6.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_6.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_6.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_7 (.A0(s_Multiplier_0_3_19), .B0(f_s_Multiplier_0_2_19), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_20), .B1(f_s_Multiplier_0_2_20), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_6), .COUT(co_t_Multiplier_0_4_7), 
          .S0(rego_o_19), .S1(rego_o_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1275[11] 1278[70])
    defparam t_Multiplier_0_add_4_7.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_7.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_7.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_7.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_8 (.A0(s_Multiplier_0_3_21), .B0(f_s_Multiplier_0_2_21), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_22), .B1(f_s_Multiplier_0_2_22), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_7), .COUT(co_t_Multiplier_0_4_8), 
          .S0(rego_o_21), .S1(rego_o_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1284[11] 1287[70])
    defparam t_Multiplier_0_add_4_8.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_8.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_8.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_8.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_9 (.A0(s_Multiplier_0_3_23), .B0(f_s_Multiplier_0_2_23), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co_t_Multiplier_0_4_8), .S0(rego_o_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1293[11] 1296[45])
    defparam t_Multiplier_0_add_4_9.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_9.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_9.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_9.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_0 (.A0(regb_b_0), .B0(regb_b_1), .C0(rega_a_1), 
          .D0(regb_b_0), .A1(rega_a_1), .B1(regb_b_1), .C1(rega_a_2), 
          .D1(regb_b_0), .CIN(Multiplier_0_cin_lr_0), .COUT(mco), .S0(Multiplier_0_pp_0_1), 
          .S1(Multiplier_0_pp_0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1302[11] 1305[20])
    defparam Multiplier_0_mult_0_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_1 (.A0(rega_a_2), .B0(regb_b_1), .C0(rega_a_3), 
          .D0(regb_b_0), .A1(rega_a_3), .B1(regb_b_1), .C1(rega_a_4), 
          .D1(regb_b_0), .CIN(mco), .COUT(mco_1), .S0(Multiplier_0_pp_0_3), 
          .S1(Multiplier_0_pp_0_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1311[11] 1313[85])
    defparam Multiplier_0_mult_0_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_2 (.A0(rega_a_4), .B0(regb_b_1), .C0(rega_a_5), 
          .D0(regb_b_0), .A1(rega_a_5), .B1(regb_b_1), .C1(rega_a_6), 
          .D1(regb_b_0), .CIN(mco_1), .COUT(mco_2), .S0(Multiplier_0_pp_0_5), 
          .S1(Multiplier_0_pp_0_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1319[11] 1322[22])
    defparam Multiplier_0_mult_0_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_3 (.A0(rega_a_6), .B0(regb_b_1), .C0(rega_a_7), 
          .D0(regb_b_0), .A1(rega_a_7), .B1(regb_b_1), .C1(rega_a_8), 
          .D1(regb_b_0), .CIN(mco_2), .COUT(mco_3), .S0(Multiplier_0_pp_0_7), 
          .S1(Multiplier_0_pp_0_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1328[11] 1331[22])
    defparam Multiplier_0_mult_0_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_4 (.A0(rega_a_8), .B0(regb_b_1), .C0(rega_a_9), 
          .D0(regb_b_0), .A1(rega_a_9), .B1(regb_b_1), .C1(rega_a_10), 
          .D1(regb_b_0), .CIN(mco_3), .COUT(mco_4), .S0(Multiplier_0_pp_0_9), 
          .S1(Multiplier_0_pp_0_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1337[11] 1340[22])
    defparam Multiplier_0_mult_0_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_5 (.A0(rega_a_10), .B0(regb_b_1), .C0(Multiplier_0_mult_0_5_n2), 
          .D0(VCC_net), .A1(Multiplier_0_mult_0_5_n1), .B1(VCC_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(mco_4), .COUT(mfco), .S0(Multiplier_0_pp_0_11), 
          .S1(Multiplier_0_pp_0_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1346[11] 1349[48])
    defparam Multiplier_0_mult_0_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_0 (.A0(regb_b_0), .B0(regb_b_3), .C0(rega_a_1), 
          .D0(regb_b_2), .A1(rega_a_1), .B1(regb_b_3), .C1(rega_a_2), 
          .D1(regb_b_2), .CIN(Multiplier_0_cin_lr_2), .COUT(mco_5), .S0(Multiplier_0_pp_1_3), 
          .S1(Multiplier_0_pp_1_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1355[11] 1358[22])
    defparam Multiplier_0_mult_2_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_1 (.A0(rega_a_2), .B0(regb_b_3), .C0(rega_a_3), 
          .D0(regb_b_2), .A1(rega_a_3), .B1(regb_b_3), .C1(rega_a_4), 
          .D1(regb_b_2), .CIN(mco_5), .COUT(mco_6), .S0(Multiplier_0_pp_1_5), 
          .S1(Multiplier_0_pp_1_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1364[11] 1367[22])
    defparam Multiplier_0_mult_2_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_2 (.A0(rega_a_4), .B0(regb_b_3), .C0(rega_a_5), 
          .D0(regb_b_2), .A1(rega_a_5), .B1(regb_b_3), .C1(rega_a_6), 
          .D1(regb_b_2), .CIN(mco_6), .COUT(mco_7), .S0(Multiplier_0_pp_1_7), 
          .S1(Multiplier_0_pp_1_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1373[11] 1376[22])
    defparam Multiplier_0_mult_2_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_3 (.A0(rega_a_6), .B0(regb_b_3), .C0(rega_a_7), 
          .D0(regb_b_2), .A1(rega_a_7), .B1(regb_b_3), .C1(rega_a_8), 
          .D1(regb_b_2), .CIN(mco_7), .COUT(mco_8), .S0(Multiplier_0_pp_1_9), 
          .S1(Multiplier_0_pp_1_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1382[11] 1385[22])
    defparam Multiplier_0_mult_2_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_4 (.A0(rega_a_8), .B0(regb_b_3), .C0(rega_a_9), 
          .D0(regb_b_2), .A1(rega_a_9), .B1(regb_b_3), .C1(rega_a_10), 
          .D1(regb_b_2), .CIN(mco_8), .COUT(mco_9), .S0(Multiplier_0_pp_1_11), 
          .S1(Multiplier_0_pp_1_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1391[11] 1394[22])
    defparam Multiplier_0_mult_2_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_5 (.A0(rega_a_10), .B0(regb_b_3), .C0(Multiplier_0_mult_2_5_n2), 
          .D0(VCC_net), .A1(Multiplier_0_mult_2_5_n1), .B1(VCC_net), .C1(GND_net), 
          .D1(regb_b_2), .CIN(mco_9), .COUT(mfco_1), .S0(Multiplier_0_pp_1_13), 
          .S1(Multiplier_0_pp_1_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1400[11] 1403[50])
    defparam Multiplier_0_mult_2_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_0 (.A0(regb_b_0), .B0(regb_b_5), .C0(rega_a_1), 
          .D0(regb_b_4), .A1(rega_a_1), .B1(regb_b_5), .C1(rega_a_2), 
          .D1(regb_b_4), .CIN(Multiplier_0_cin_lr_4), .COUT(mco_10), .S0(Multiplier_0_pp_2_5), 
          .S1(Multiplier_0_pp_2_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1409[11] 1412[23])
    defparam Multiplier_0_mult_4_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_1 (.A0(rega_a_2), .B0(regb_b_5), .C0(rega_a_3), 
          .D0(regb_b_4), .A1(rega_a_3), .B1(regb_b_5), .C1(rega_a_4), 
          .D1(regb_b_4), .CIN(mco_10), .COUT(mco_11), .S0(Multiplier_0_pp_2_7), 
          .S1(Multiplier_0_pp_2_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1418[11] 1421[23])
    defparam Multiplier_0_mult_4_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_2 (.A0(rega_a_4), .B0(regb_b_5), .C0(rega_a_5), 
          .D0(regb_b_4), .A1(rega_a_5), .B1(regb_b_5), .C1(rega_a_6), 
          .D1(regb_b_4), .CIN(mco_11), .COUT(mco_12), .S0(Multiplier_0_pp_2_9), 
          .S1(Multiplier_0_pp_2_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1427[11] 1430[23])
    defparam Multiplier_0_mult_4_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_3 (.A0(rega_a_6), .B0(regb_b_5), .C0(rega_a_7), 
          .D0(regb_b_4), .A1(rega_a_7), .B1(regb_b_5), .C1(rega_a_8), 
          .D1(regb_b_4), .CIN(mco_12), .COUT(mco_13), .S0(Multiplier_0_pp_2_11), 
          .S1(Multiplier_0_pp_2_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1436[11] 1439[23])
    defparam Multiplier_0_mult_4_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_4 (.A0(rega_a_8), .B0(regb_b_5), .C0(rega_a_9), 
          .D0(regb_b_4), .A1(rega_a_9), .B1(regb_b_5), .C1(rega_a_10), 
          .D1(regb_b_4), .CIN(mco_13), .COUT(mco_14), .S0(Multiplier_0_pp_2_13), 
          .S1(Multiplier_0_pp_2_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1445[11] 1448[23])
    defparam Multiplier_0_mult_4_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_5 (.A0(rega_a_10), .B0(regb_b_5), .C0(Multiplier_0_mult_4_5_n2), 
          .D0(VCC_net), .A1(Multiplier_0_mult_4_5_n1), .B1(VCC_net), .C1(GND_net), 
          .D1(regb_b_4), .CIN(mco_14), .COUT(mfco_2), .S0(Multiplier_0_pp_2_15), 
          .S1(Multiplier_0_pp_2_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1454[11] 1457[50])
    defparam Multiplier_0_mult_4_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_0 (.A0(regb_b_0), .B0(regb_b_7), .C0(rega_a_1), 
          .D0(regb_b_6), .A1(rega_a_1), .B1(regb_b_7), .C1(rega_a_2), 
          .D1(regb_b_6), .CIN(Multiplier_0_cin_lr_6), .COUT(mco_15), .S0(Multiplier_0_pp_3_7), 
          .S1(Multiplier_0_pp_3_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1463[11] 1466[23])
    defparam Multiplier_0_mult_6_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_1 (.A0(rega_a_2), .B0(regb_b_7), .C0(rega_a_3), 
          .D0(regb_b_6), .A1(rega_a_3), .B1(regb_b_7), .C1(rega_a_4), 
          .D1(regb_b_6), .CIN(mco_15), .COUT(mco_16), .S0(Multiplier_0_pp_3_9), 
          .S1(Multiplier_0_pp_3_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1472[11] 1475[23])
    defparam Multiplier_0_mult_6_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_2 (.A0(rega_a_4), .B0(regb_b_7), .C0(rega_a_5), 
          .D0(regb_b_6), .A1(rega_a_5), .B1(regb_b_7), .C1(rega_a_6), 
          .D1(regb_b_6), .CIN(mco_16), .COUT(mco_17), .S0(Multiplier_0_pp_3_11), 
          .S1(Multiplier_0_pp_3_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1481[11] 1484[23])
    defparam Multiplier_0_mult_6_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_3 (.A0(rega_a_6), .B0(regb_b_7), .C0(rega_a_7), 
          .D0(regb_b_6), .A1(rega_a_7), .B1(regb_b_7), .C1(rega_a_8), 
          .D1(regb_b_6), .CIN(mco_17), .COUT(mco_18), .S0(Multiplier_0_pp_3_13), 
          .S1(Multiplier_0_pp_3_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1490[11] 1493[23])
    defparam Multiplier_0_mult_6_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_4 (.A0(rega_a_8), .B0(regb_b_7), .C0(rega_a_9), 
          .D0(regb_b_6), .A1(rega_a_9), .B1(regb_b_7), .C1(rega_a_10), 
          .D1(regb_b_6), .CIN(mco_18), .COUT(mco_19), .S0(Multiplier_0_pp_3_15), 
          .S1(Multiplier_0_pp_3_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1499[11] 1502[23])
    defparam Multiplier_0_mult_6_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_5 (.A0(rega_a_10), .B0(regb_b_7), .C0(Multiplier_0_mult_6_5_n2), 
          .D0(VCC_net), .A1(Multiplier_0_mult_6_5_n1), .B1(VCC_net), .C1(GND_net), 
          .D1(regb_b_6), .CIN(mco_19), .COUT(mfco_3), .S0(Multiplier_0_pp_3_17), 
          .S1(Multiplier_0_pp_3_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1508[11] 1511[50])
    defparam Multiplier_0_mult_6_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_0 (.A0(regb_b_0), .B0(regb_b_9), .C0(rega_a_1), 
          .D0(regb_b_8), .A1(rega_a_1), .B1(regb_b_9), .C1(rega_a_2), 
          .D1(regb_b_8), .CIN(Multiplier_0_cin_lr_8), .COUT(mco_20), .S0(Multiplier_0_pp_4_9), 
          .S1(Multiplier_0_pp_4_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1517[11] 1520[23])
    defparam Multiplier_0_mult_8_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_1 (.A0(rega_a_2), .B0(regb_b_9), .C0(rega_a_3), 
          .D0(regb_b_8), .A1(rega_a_3), .B1(regb_b_9), .C1(rega_a_4), 
          .D1(regb_b_8), .CIN(mco_20), .COUT(mco_21), .S0(Multiplier_0_pp_4_11), 
          .S1(Multiplier_0_pp_4_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1526[11] 1529[23])
    defparam Multiplier_0_mult_8_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_2 (.A0(rega_a_4), .B0(regb_b_9), .C0(rega_a_5), 
          .D0(regb_b_8), .A1(rega_a_5), .B1(regb_b_9), .C1(rega_a_6), 
          .D1(regb_b_8), .CIN(mco_21), .COUT(mco_22), .S0(Multiplier_0_pp_4_13), 
          .S1(Multiplier_0_pp_4_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1535[11] 1538[23])
    defparam Multiplier_0_mult_8_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_3 (.A0(rega_a_6), .B0(regb_b_9), .C0(rega_a_7), 
          .D0(regb_b_8), .A1(rega_a_7), .B1(regb_b_9), .C1(rega_a_8), 
          .D1(regb_b_8), .CIN(mco_22), .COUT(mco_23), .S0(Multiplier_0_pp_4_15), 
          .S1(Multiplier_0_pp_4_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1544[11] 1547[23])
    defparam Multiplier_0_mult_8_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_4 (.A0(rega_a_8), .B0(regb_b_9), .C0(rega_a_9), 
          .D0(regb_b_8), .A1(rega_a_9), .B1(regb_b_9), .C1(rega_a_10), 
          .D1(regb_b_8), .CIN(mco_23), .COUT(mco_24), .S0(Multiplier_0_pp_4_17), 
          .S1(Multiplier_0_pp_4_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1553[11] 1556[23])
    defparam Multiplier_0_mult_8_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_5 (.A0(rega_a_10), .B0(regb_b_9), .C0(Multiplier_0_mult_8_5_n2), 
          .D0(VCC_net), .A1(Multiplier_0_mult_8_5_n1), .B1(VCC_net), .C1(GND_net), 
          .D1(regb_b_8), .CIN(mco_24), .COUT(mfco_4), .S0(Multiplier_0_pp_4_19), 
          .S1(Multiplier_0_pp_4_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1562[11] 1565[50])
    defparam Multiplier_0_mult_8_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_0 (.A0(Multiplier_0_mult_10_0_n0), .B0(VCC_net), 
          .C0(rega_a_1), .D0(regb_b_10), .A1(Multiplier_0_mult_10_0_n1), 
          .B1(VCC_net), .C1(rega_a_2), .D1(regb_b_10), .CIN(Multiplier_0_cin_lr_10), 
          .COUT(mco_25), .S0(Multiplier_0_pp_5_11), .S1(Multiplier_0_pp_5_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1571[11] 1574[50])
    defparam Multiplier_0_mult_10_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_1 (.A0(Multiplier_0_mult_10_1_n0), .B0(VCC_net), 
          .C0(rega_a_3), .D0(regb_b_10), .A1(Multiplier_0_mult_10_1_n1), 
          .B1(VCC_net), .C1(rega_a_4), .D1(regb_b_10), .CIN(mco_25), 
          .COUT(mco_26), .S0(Multiplier_0_pp_5_13), .S1(Multiplier_0_pp_5_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1580[11] 1583[23])
    defparam Multiplier_0_mult_10_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_2 (.A0(Multiplier_0_mult_10_2_n0), .B0(VCC_net), 
          .C0(rega_a_5), .D0(regb_b_10), .A1(Multiplier_0_mult_10_2_n1), 
          .B1(VCC_net), .C1(rega_a_6), .D1(regb_b_10), .CIN(mco_26), 
          .COUT(mco_27), .S0(Multiplier_0_pp_5_15), .S1(Multiplier_0_pp_5_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1589[11] 1592[23])
    defparam Multiplier_0_mult_10_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_3 (.A0(Multiplier_0_mult_10_3_n0), .B0(VCC_net), 
          .C0(rega_a_7), .D0(regb_b_10), .A1(Multiplier_0_mult_10_3_n1), 
          .B1(VCC_net), .C1(rega_a_8), .D1(regb_b_10), .CIN(mco_27), 
          .COUT(mco_28), .S0(Multiplier_0_pp_5_17), .S1(Multiplier_0_pp_5_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1598[11] 1601[23])
    defparam Multiplier_0_mult_10_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_4 (.A0(Multiplier_0_mult_10_4_n0), .B0(VCC_net), 
          .C0(rega_a_9), .D0(regb_b_10), .A1(Multiplier_0_mult_10_4_n1), 
          .B1(VCC_net), .C1(rega_a_10), .D1(regb_b_10), .CIN(mco_28), 
          .COUT(mco_29), .S0(Multiplier_0_pp_5_19), .S1(Multiplier_0_pp_5_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1607[11] 1610[23])
    defparam Multiplier_0_mult_10_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_5 (.A0(Multiplier_0_mult_10_5_n0), .B0(VCC_net), 
          .C0(Multiplier_0_mult_10_5_n2), .D0(VCC_net), .A1(rega_a_11), 
          .B1(regb_b_11), .C1(GND_net), .D1(regb_b_10), .CIN(mco_29), 
          .COUT(mfco_5), .S0(Multiplier_0_pp_5_21), .S1(Multiplier_0_pp_5_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1620[11] 1623[50])
    defparam Multiplier_0_mult_10_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_5.INJECT1_1 = "NO";
    AND2 AND2_t27 (.A(regb_b_0), .B(regb_b_0), .Z(Multiplier_0_pp_0_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(376[10:72])
    ND2 ND2_t26 (.A(rega_a_11), .B(regb_b_0), .Z(Multiplier_0_mult_0_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t23 (.A(rega_a_11), .B(regb_b_2), .Z(Multiplier_0_mult_2_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t20 (.A(rega_a_11), .B(regb_b_4), .Z(Multiplier_0_mult_4_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t17 (.A(rega_a_11), .B(regb_b_6), .Z(Multiplier_0_mult_6_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t14 (.A(rega_a_11), .B(regb_b_8), .Z(Multiplier_0_mult_8_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    ND2 ND2_t11 (.A(rega_a_1), .B(regb_b_11), .Z(Multiplier_0_mult_10_0_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=77, LSE_RLINE=83 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(77[14] 83[27])
    
endmodule
//
// Verilog Description of module Multiplier_U0
//

module Multiplier_U0 (clk_c, VCC_net, GND_net, MultDataB, MultResult1) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_c;
    input VCC_net;
    input GND_net;
    input [11:0]MultDataB;
    output [23:0]MultResult1;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(17[9:12])
    
    wire regb_b_3, Multiplier_0_mult_2_5_n1, rega_a_11, regb_b_1, Multiplier_0_mult_0_5_n1, 
        Multiplier_0_pp_1_2, regb_b_2, regb_b_0, Multiplier_0_pp_2_4, 
        regb_b_4, regb_b_5, Multiplier_0_mult_4_5_n1, Multiplier_0_pp_3_6, 
        regb_b_6, regb_b_7, Multiplier_0_mult_6_5_n1, Multiplier_0_pp_4_8, 
        regb_b_8, regb_b_9, Multiplier_0_mult_8_5_n1, Multiplier_0_pp_5_10, 
        regb_b_10, Multiplier_0_mult_10_0_n0, regb_b_11, Multiplier_0_mult_10_1_n1, 
        rega_a_3, rega_a_2, Multiplier_0_mult_10_1_n0, Multiplier_0_mult_10_2_n1, 
        rega_a_5, rega_a_4, Multiplier_0_mult_10_2_n0, Multiplier_0_mult_10_3_n1, 
        rega_a_7, rega_a_6, Multiplier_0_mult_10_3_n0, Multiplier_0_mult_10_4_n1, 
        rega_a_9, rega_a_8, Multiplier_0_mult_10_4_n0, Multiplier_0_mult_10_5_n2, 
        rega_a_10, Multiplier_0_mult_10_5_n0, rega_a_1, rego_o_0, rego_o_1, 
        rego_o_2, rego_o_3, rego_o_4, rego_o_5, rego_o_6, rego_o_7, 
        rego_o_8, rego_o_9, rego_o_10, rego_o_11, rego_o_12, rego_o_13, 
        rego_o_14, rego_o_15, rego_o_16, rego_o_17, rego_o_18, rego_o_19, 
        rego_o_20, rego_o_21, rego_o_22, rego_o_23, Multiplier_0_pp_0_0, 
        Multiplier_0_pp_0_1, s_Multiplier_0_0_2, s_Multiplier_0_0_3, s_Multiplier_0_0_4, 
        f_s_Multiplier_0_0_4, s_Multiplier_0_0_5, f_s_Multiplier_0_0_5, 
        s_Multiplier_0_0_6, f_s_Multiplier_0_0_6, s_Multiplier_0_0_7, 
        f_s_Multiplier_0_0_7, s_Multiplier_0_0_8, f_s_Multiplier_0_0_8, 
        s_Multiplier_0_0_9, f_s_Multiplier_0_0_9, s_Multiplier_0_0_10, 
        f_s_Multiplier_0_0_10, s_Multiplier_0_0_11, f_s_Multiplier_0_0_11, 
        s_Multiplier_0_0_12, f_s_Multiplier_0_0_12, s_Multiplier_0_0_13, 
        f_s_Multiplier_0_0_13, s_Multiplier_0_0_14, f_s_Multiplier_0_0_14, 
        s_Multiplier_0_0_15, f_s_Multiplier_0_0_15, s_Multiplier_0_0_16, 
        f_s_Multiplier_0_0_16, s_Multiplier_0_0_17, f_s_Multiplier_0_0_17, 
        f_Multiplier_0_pp_2_4, f_Multiplier_0_pp_2_5, Multiplier_0_pp_2_5, 
        s_Multiplier_0_1_6, f_s_Multiplier_0_1_6, s_Multiplier_0_1_7, 
        f_s_Multiplier_0_1_7, s_Multiplier_0_1_8, f_s_Multiplier_0_1_8, 
        s_Multiplier_0_1_9, f_s_Multiplier_0_1_9, s_Multiplier_0_1_10, 
        f_s_Multiplier_0_1_10, s_Multiplier_0_1_11, f_s_Multiplier_0_1_11, 
        s_Multiplier_0_1_12, f_s_Multiplier_0_1_12, s_Multiplier_0_1_13, 
        f_s_Multiplier_0_1_13, s_Multiplier_0_1_14, f_s_Multiplier_0_1_14, 
        s_Multiplier_0_1_15, f_s_Multiplier_0_1_15, s_Multiplier_0_1_16, 
        f_s_Multiplier_0_1_16, s_Multiplier_0_1_17, f_s_Multiplier_0_1_17, 
        s_Multiplier_0_1_18, f_s_Multiplier_0_1_18, s_Multiplier_0_1_19, 
        f_s_Multiplier_0_1_19, s_Multiplier_0_1_20, f_s_Multiplier_0_1_20, 
        s_Multiplier_0_1_21, f_s_Multiplier_0_1_21, f_Multiplier_0_pp_4_8, 
        f_Multiplier_0_pp_4_9, Multiplier_0_pp_4_9, s_Multiplier_0_2_10, 
        f_s_Multiplier_0_2_10, s_Multiplier_0_2_11, f_s_Multiplier_0_2_11, 
        s_Multiplier_0_2_12, f_s_Multiplier_0_2_12, s_Multiplier_0_2_13, 
        f_s_Multiplier_0_2_13, s_Multiplier_0_2_14, f_s_Multiplier_0_2_14, 
        s_Multiplier_0_2_15, f_s_Multiplier_0_2_15, s_Multiplier_0_2_16, 
        f_s_Multiplier_0_2_16, s_Multiplier_0_2_17, f_s_Multiplier_0_2_17, 
        s_Multiplier_0_2_18, f_s_Multiplier_0_2_18, s_Multiplier_0_2_19, 
        f_s_Multiplier_0_2_19, s_Multiplier_0_2_20, f_s_Multiplier_0_2_20, 
        s_Multiplier_0_2_21, f_s_Multiplier_0_2_21, s_Multiplier_0_2_22, 
        f_s_Multiplier_0_2_22, s_Multiplier_0_2_23, f_s_Multiplier_0_2_23, 
        Multiplier_0_cin_lr_0, Multiplier_0_pp_0_13, mfco, Multiplier_0_cin_lr_2, 
        Multiplier_0_pp_1_15, mfco_1, Multiplier_0_cin_lr_4, Multiplier_0_pp_2_17, 
        mfco_2, Multiplier_0_cin_lr_6, Multiplier_0_pp_3_19, mfco_3, 
        Multiplier_0_cin_lr_8, Multiplier_0_pp_4_21, mfco_4, Multiplier_0_cin_lr_10, 
        Multiplier_0_pp_5_23, mfco_5, co_Multiplier_0_0_1, Multiplier_0_pp_0_2, 
        co_Multiplier_0_0_2, Multiplier_0_pp_0_4, Multiplier_0_pp_0_3, 
        Multiplier_0_pp_1_4, Multiplier_0_pp_1_3, co_Multiplier_0_0_3, 
        Multiplier_0_pp_0_6, Multiplier_0_pp_0_5, Multiplier_0_pp_1_6, 
        Multiplier_0_pp_1_5, co_Multiplier_0_0_4, Multiplier_0_pp_0_8, 
        Multiplier_0_pp_0_7, Multiplier_0_pp_1_8, Multiplier_0_pp_1_7, 
        co_Multiplier_0_0_5, Multiplier_0_pp_0_10, Multiplier_0_pp_0_9, 
        Multiplier_0_pp_1_10, Multiplier_0_pp_1_9, co_Multiplier_0_0_6, 
        Multiplier_0_pp_0_12, Multiplier_0_pp_0_11, Multiplier_0_pp_1_12, 
        Multiplier_0_pp_1_11, co_Multiplier_0_0_7, Multiplier_0_pp_1_14, 
        Multiplier_0_pp_1_13, co_Multiplier_0_0_8, co_Multiplier_0_1_1, 
        Multiplier_0_pp_2_6, co_Multiplier_0_1_2, Multiplier_0_pp_2_8, 
        Multiplier_0_pp_2_7, Multiplier_0_pp_3_8, Multiplier_0_pp_3_7, 
        co_Multiplier_0_1_3, Multiplier_0_pp_2_10, Multiplier_0_pp_2_9, 
        Multiplier_0_pp_3_10, Multiplier_0_pp_3_9, co_Multiplier_0_1_4, 
        Multiplier_0_pp_2_12, Multiplier_0_pp_2_11, Multiplier_0_pp_3_12, 
        Multiplier_0_pp_3_11, co_Multiplier_0_1_5, Multiplier_0_pp_2_14, 
        Multiplier_0_pp_2_13, Multiplier_0_pp_3_14, Multiplier_0_pp_3_13, 
        co_Multiplier_0_1_6, Multiplier_0_pp_2_16, Multiplier_0_pp_2_15, 
        Multiplier_0_pp_3_16, Multiplier_0_pp_3_15, co_Multiplier_0_1_7, 
        Multiplier_0_pp_3_18, Multiplier_0_pp_3_17, co_Multiplier_0_1_8, 
        co_Multiplier_0_2_1, Multiplier_0_pp_4_10, co_Multiplier_0_2_2, 
        Multiplier_0_pp_4_12, Multiplier_0_pp_4_11, Multiplier_0_pp_5_12, 
        Multiplier_0_pp_5_11, co_Multiplier_0_2_3, Multiplier_0_pp_4_14, 
        Multiplier_0_pp_4_13, Multiplier_0_pp_5_14, Multiplier_0_pp_5_13, 
        co_Multiplier_0_2_4, Multiplier_0_pp_4_16, Multiplier_0_pp_4_15, 
        Multiplier_0_pp_5_16, Multiplier_0_pp_5_15, co_Multiplier_0_2_5, 
        Multiplier_0_pp_4_18, Multiplier_0_pp_4_17, Multiplier_0_pp_5_18, 
        Multiplier_0_pp_5_17, co_Multiplier_0_2_6, Multiplier_0_pp_4_20, 
        Multiplier_0_pp_4_19, Multiplier_0_pp_5_20, Multiplier_0_pp_5_19, 
        co_Multiplier_0_2_7, Multiplier_0_pp_5_22, Multiplier_0_pp_5_21, 
        co_Multiplier_0_3_1, co_Multiplier_0_3_2, co_Multiplier_0_3_3, 
        s_Multiplier_0_3_8, co_Multiplier_0_3_4, s_Multiplier_0_3_10, 
        s_Multiplier_0_3_9, co_Multiplier_0_3_5, s_Multiplier_0_3_12, 
        s_Multiplier_0_3_11, co_Multiplier_0_3_6, s_Multiplier_0_3_14, 
        s_Multiplier_0_3_13, co_Multiplier_0_3_7, s_Multiplier_0_3_16, 
        s_Multiplier_0_3_15, co_Multiplier_0_3_8, s_Multiplier_0_3_18, 
        s_Multiplier_0_3_17, co_Multiplier_0_3_9, s_Multiplier_0_3_20, 
        s_Multiplier_0_3_19, co_Multiplier_0_3_10, s_Multiplier_0_3_22, 
        s_Multiplier_0_3_21, s_Multiplier_0_3_23, co_t_Multiplier_0_4_1, 
        co_t_Multiplier_0_4_2, co_t_Multiplier_0_4_3, co_t_Multiplier_0_4_4, 
        co_t_Multiplier_0_4_5, co_t_Multiplier_0_4_6, co_t_Multiplier_0_4_7, 
        co_t_Multiplier_0_4_8, mco, mco_1, mco_2, mco_3, mco_4, 
        Multiplier_0_mult_0_5_n2, mco_5, mco_6, mco_7, mco_8, mco_9, 
        Multiplier_0_mult_2_5_n2, mco_10, mco_11, mco_12, mco_13, 
        mco_14, Multiplier_0_mult_4_5_n2, mco_15, mco_16, mco_17, 
        mco_18, mco_19, Multiplier_0_mult_6_5_n2, mco_20, mco_21, 
        mco_22, mco_23, mco_24, Multiplier_0_mult_8_5_n2, Multiplier_0_mult_10_0_n1, 
        mco_25, mco_26, mco_27, mco_28, mco_29;
    
    ND2 ND2_t22 (.A(rega_a_11), .B(regb_b_3), .Z(Multiplier_0_mult_2_5_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t25 (.A(rega_a_11), .B(regb_b_1), .Z(Multiplier_0_mult_0_5_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    AND2 AND2_t24 (.A(regb_b_0), .B(regb_b_2), .Z(Multiplier_0_pp_1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(382[10:72])
    AND2 AND2_t21 (.A(regb_b_0), .B(regb_b_4), .Z(Multiplier_0_pp_2_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(388[10:72])
    ND2 ND2_t19 (.A(rega_a_11), .B(regb_b_5), .Z(Multiplier_0_mult_4_5_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    AND2 AND2_t18 (.A(regb_b_0), .B(regb_b_6), .Z(Multiplier_0_pp_3_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(394[10:72])
    ND2 ND2_t16 (.A(rega_a_11), .B(regb_b_7), .Z(Multiplier_0_mult_6_5_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    AND2 AND2_t15 (.A(regb_b_0), .B(regb_b_8), .Z(Multiplier_0_pp_4_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(400[10:72])
    ND2 ND2_t13 (.A(rega_a_11), .B(regb_b_9), .Z(Multiplier_0_mult_8_5_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    AND2 AND2_t12 (.A(regb_b_0), .B(regb_b_10), .Z(Multiplier_0_pp_5_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(406[10:74])
    ND2 ND2_t10 (.A(regb_b_0), .B(regb_b_11), .Z(Multiplier_0_mult_10_0_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t9 (.A(rega_a_3), .B(regb_b_11), .Z(Multiplier_0_mult_10_1_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t8 (.A(rega_a_2), .B(regb_b_11), .Z(Multiplier_0_mult_10_1_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t7 (.A(rega_a_5), .B(regb_b_11), .Z(Multiplier_0_mult_10_2_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t6 (.A(rega_a_4), .B(regb_b_11), .Z(Multiplier_0_mult_10_2_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t5 (.A(rega_a_7), .B(regb_b_11), .Z(Multiplier_0_mult_10_3_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t4 (.A(rega_a_6), .B(regb_b_11), .Z(Multiplier_0_mult_10_3_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t3 (.A(rega_a_9), .B(regb_b_11), .Z(Multiplier_0_mult_10_4_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t2 (.A(rega_a_8), .B(regb_b_11), .Z(Multiplier_0_mult_10_4_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t1 (.A(rega_a_11), .B(regb_b_10), .Z(Multiplier_0_mult_10_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t0 (.A(rega_a_10), .B(regb_b_11), .Z(Multiplier_0_mult_10_5_n0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    FD1P3DX FF_98 (.D(MultDataB[1]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(435[13:82])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(MultDataB[2]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(438[13:82])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(MultDataB[3]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(441[13:82])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(MultDataB[4]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(444[13:82])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(MultDataB[5]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(447[13:82])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(MultDataB[6]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(450[13:82])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(MultDataB[7]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(453[13:82])
    defparam FF_92.GSR = "ENABLED";
    FD1P3DX FF_91 (.D(MultDataB[8]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(456[13:82])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(MultDataB[9]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(459[13:82])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(MultDataB[10]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(462[13:84])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(MultDataB[11]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rega_a_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(465[13:84])
    defparam FF_88.GSR = "ENABLED";
    FD1P3DX FF_87 (.D(MultDataB[0]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(468[13:82])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(MultDataB[1]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(471[13:82])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(MultDataB[2]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(474[13:82])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(MultDataB[3]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(477[13:82])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(MultDataB[4]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(480[13:82])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(MultDataB[5]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(483[13:82])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(MultDataB[6]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(486[13:82])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(MultDataB[7]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(489[13:82])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(MultDataB[8]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(492[13:82])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(MultDataB[9]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(495[13:82])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(MultDataB[10]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(498[13:84])
    defparam FF_77.GSR = "ENABLED";
    FD1P3DX FF_76 (.D(MultDataB[11]), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(regb_b_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(501[13:84])
    defparam FF_76.GSR = "ENABLED";
    FD1P3DX FF_75 (.D(rego_o_0), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(504[13:83])
    defparam FF_75.GSR = "ENABLED";
    FD1P3DX FF_74 (.D(rego_o_1), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(507[13:83])
    defparam FF_74.GSR = "ENABLED";
    FD1P3DX FF_73 (.D(rego_o_2), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(510[13:83])
    defparam FF_73.GSR = "ENABLED";
    FD1P3DX FF_72 (.D(rego_o_3), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(513[13:83])
    defparam FF_72.GSR = "ENABLED";
    FD1P3DX FF_71 (.D(rego_o_4), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(516[13:83])
    defparam FF_71.GSR = "ENABLED";
    FD1P3DX FF_70 (.D(rego_o_5), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(519[13:83])
    defparam FF_70.GSR = "ENABLED";
    FD1P3DX FF_69 (.D(rego_o_6), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(522[13:83])
    defparam FF_69.GSR = "ENABLED";
    FD1P3DX FF_68 (.D(rego_o_7), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(525[13:83])
    defparam FF_68.GSR = "ENABLED";
    FD1P3DX FF_67 (.D(rego_o_8), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[8])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(528[13:83])
    defparam FF_67.GSR = "ENABLED";
    FD1P3DX FF_66 (.D(rego_o_9), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[9])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(531[13:83])
    defparam FF_66.GSR = "ENABLED";
    FD1P3DX FF_65 (.D(rego_o_10), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[10])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(534[13:85])
    defparam FF_65.GSR = "ENABLED";
    FD1P3DX FF_64 (.D(rego_o_11), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[11])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(537[13:85])
    defparam FF_64.GSR = "ENABLED";
    FD1P3DX FF_63 (.D(rego_o_12), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[12])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(540[13:85])
    defparam FF_63.GSR = "ENABLED";
    FD1P3DX FF_62 (.D(rego_o_13), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[13])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(543[13:85])
    defparam FF_62.GSR = "ENABLED";
    FD1P3DX FF_61 (.D(rego_o_14), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[14])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(546[13:85])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(rego_o_15), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[15])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(549[13:85])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(rego_o_16), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[16])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(552[13:85])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(rego_o_17), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[17])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(555[13:85])
    defparam FF_58.GSR = "ENABLED";
    FD1P3DX FF_57 (.D(rego_o_18), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[18])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(558[13:85])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(rego_o_19), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[19])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(561[13:85])
    defparam FF_56.GSR = "ENABLED";
    FD1P3DX FF_55 (.D(rego_o_20), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[20])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(564[13:85])
    defparam FF_55.GSR = "ENABLED";
    FD1P3DX FF_54 (.D(rego_o_21), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[21])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(567[13:85])
    defparam FF_54.GSR = "ENABLED";
    FD1P3DX FF_53 (.D(rego_o_22), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[22])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(570[13:85])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(rego_o_23), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(MultResult1[23])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(573[13:85])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(Multiplier_0_pp_0_0), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(rego_o_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(576[13] 577[35])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(Multiplier_0_pp_0_1), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(rego_o_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(580[13] 581[35])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(s_Multiplier_0_0_2), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rego_o_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(584[13] 585[34])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(s_Multiplier_0_0_3), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(rego_o_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(588[13] 589[34])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(s_Multiplier_0_0_4), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(592[13] 593[34])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(s_Multiplier_0_0_5), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(596[13] 597[34])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(s_Multiplier_0_0_6), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(600[13] 601[34])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(s_Multiplier_0_0_7), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(604[13] 605[34])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(s_Multiplier_0_0_8), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(608[13] 609[34])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(s_Multiplier_0_0_9), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_0_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(612[13] 613[34])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(s_Multiplier_0_0_10), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(616[13] 617[35])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(s_Multiplier_0_0_11), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(620[13] 621[35])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(s_Multiplier_0_0_12), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(624[13] 625[35])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(s_Multiplier_0_0_13), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(628[13] 629[35])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(s_Multiplier_0_0_14), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(632[13] 633[35])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(s_Multiplier_0_0_15), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(636[13] 637[35])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(s_Multiplier_0_0_16), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_16)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(640[13] 641[35])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(s_Multiplier_0_0_17), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_0_17)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(644[13] 645[35])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(Multiplier_0_pp_2_4), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_Multiplier_0_pp_2_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(648[13] 649[35])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(Multiplier_0_pp_2_5), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_Multiplier_0_pp_2_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(652[13] 653[35])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(s_Multiplier_0_1_6), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_1_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(656[13] 657[34])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(s_Multiplier_0_1_7), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_1_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(660[13] 661[34])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(s_Multiplier_0_1_8), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_1_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(664[13] 665[34])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(s_Multiplier_0_1_9), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_1_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(668[13] 669[34])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(s_Multiplier_0_1_10), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(672[13] 673[35])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(s_Multiplier_0_1_11), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(676[13] 677[35])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(s_Multiplier_0_1_12), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(680[13] 681[35])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(s_Multiplier_0_1_13), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(684[13] 685[35])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(s_Multiplier_0_1_14), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(688[13] 689[35])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(s_Multiplier_0_1_15), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(692[13] 693[35])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(s_Multiplier_0_1_16), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_16)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(696[13] 697[35])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(s_Multiplier_0_1_17), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_17)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(700[13] 701[35])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(s_Multiplier_0_1_18), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_18)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(704[13] 705[35])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(s_Multiplier_0_1_19), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_19)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(708[13] 709[35])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(s_Multiplier_0_1_20), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(712[13] 713[35])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(s_Multiplier_0_1_21), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_1_21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(716[13] 717[35])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(Multiplier_0_pp_4_8), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_Multiplier_0_pp_4_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(720[13] 721[35])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(Multiplier_0_pp_4_9), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_Multiplier_0_pp_4_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(724[13] 725[35])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(s_Multiplier_0_2_10), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_2_10)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(728[13] 729[35])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(s_Multiplier_0_2_11), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_2_11)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(732[13] 733[35])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(s_Multiplier_0_2_12), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_2_12)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(736[13] 737[35])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(s_Multiplier_0_2_13), .SP(VCC_net), .CK(clk_c), 
            .CD(GND_net), .Q(f_s_Multiplier_0_2_13)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(740[13] 741[35])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(s_Multiplier_0_2_14), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_14)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(744[13] 745[35])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(s_Multiplier_0_2_15), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_15)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(748[13] 749[35])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(s_Multiplier_0_2_16), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_16)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(752[13] 753[35])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(s_Multiplier_0_2_17), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_17)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(756[13] 757[35])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(s_Multiplier_0_2_18), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_18)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(760[13] 761[35])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(s_Multiplier_0_2_19), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_19)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(764[13] 765[35])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(s_Multiplier_0_2_20), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(768[13] 769[35])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(s_Multiplier_0_2_21), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(772[13] 773[35])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(s_Multiplier_0_2_22), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_22)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(776[13] 777[35])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(s_Multiplier_0_2_23), .SP(VCC_net), .CK(clk_c), .CD(GND_net), 
            .Q(f_s_Multiplier_0_2_23)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(780[13] 781[35])
    defparam FF_0.GSR = "ENABLED";
    CCU2C Multiplier_0_cin_lr_add_0 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(788[11] 790[76])
    defparam Multiplier_0_cin_lr_add_0.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_0.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_0.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_0_6 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco), .S0(Multiplier_0_pp_0_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(796[11] 798[79])
    defparam Multiplier_0_Cadd_0_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_0_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_0_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_0_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_2 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(804[11] 806[76])
    defparam Multiplier_0_cin_lr_add_2.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_2.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_2.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_2_6 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_1), .S0(Multiplier_0_pp_1_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(812[11] 815[17])
    defparam Multiplier_0_Cadd_2_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_2_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_2_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_2_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_4 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(821[11] 823[76])
    defparam Multiplier_0_cin_lr_add_4.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_4.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_4.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_4_6 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_2), .S0(Multiplier_0_pp_2_17)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(829[11] 832[17])
    defparam Multiplier_0_Cadd_4_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_4_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_4_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_4_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_6 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(838[11] 840[76])
    defparam Multiplier_0_cin_lr_add_6.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_6.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_6.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_6_6 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_3), .S0(Multiplier_0_pp_3_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(846[11] 849[17])
    defparam Multiplier_0_Cadd_6_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_6_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_6_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_6_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_8 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(855[11] 857[76])
    defparam Multiplier_0_cin_lr_add_8.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_8.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_8.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_8.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_8_6 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_4), .S0(Multiplier_0_pp_4_21)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(863[11] 866[17])
    defparam Multiplier_0_Cadd_8_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_8_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_8_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_8_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_10 (.A0(VCC_net), .B0(VCC_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), 
          .COUT(Multiplier_0_cin_lr_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(872[11] 874[77])
    defparam Multiplier_0_cin_lr_add_10.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_10.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_10.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_10.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_10_6 (.A0(VCC_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(mfco_5), .S0(Multiplier_0_pp_5_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(880[11] 883[17])
    defparam Multiplier_0_Cadd_10_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_10_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_10_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_10_6.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_0_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(Multiplier_0_pp_0_2), .B1(Multiplier_0_pp_1_2), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_Multiplier_0_0_1), .S1(s_Multiplier_0_0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(889[11] 892[36])
    defparam Cadd_Multiplier_0_0_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_0_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_2 (.A0(Multiplier_0_pp_0_3), .B0(Multiplier_0_pp_1_3), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_0_4), .B1(Multiplier_0_pp_1_4), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_1), .COUT(co_Multiplier_0_0_2), 
          .S0(s_Multiplier_0_0_3), .S1(s_Multiplier_0_0_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(898[11] 901[86])
    defparam Multiplier_0_add_0_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_3 (.A0(Multiplier_0_pp_0_5), .B0(Multiplier_0_pp_1_5), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_0_6), .B1(Multiplier_0_pp_1_6), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_2), .COUT(co_Multiplier_0_0_3), 
          .S0(s_Multiplier_0_0_5), .S1(s_Multiplier_0_0_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(907[11] 910[86])
    defparam Multiplier_0_add_0_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_4 (.A0(Multiplier_0_pp_0_7), .B0(Multiplier_0_pp_1_7), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_0_8), .B1(Multiplier_0_pp_1_8), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_3), .COUT(co_Multiplier_0_0_4), 
          .S0(s_Multiplier_0_0_7), .S1(s_Multiplier_0_0_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(916[11] 919[86])
    defparam Multiplier_0_add_0_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_5 (.A0(Multiplier_0_pp_0_9), .B0(Multiplier_0_pp_1_9), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_0_10), .B1(Multiplier_0_pp_1_10), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_4), .COUT(co_Multiplier_0_0_5), 
          .S0(s_Multiplier_0_0_9), .S1(s_Multiplier_0_0_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(925[11] 928[87])
    defparam Multiplier_0_add_0_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_6 (.A0(Multiplier_0_pp_0_11), .B0(Multiplier_0_pp_1_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_0_12), .B1(Multiplier_0_pp_1_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_5), .COUT(co_Multiplier_0_0_6), 
          .S0(s_Multiplier_0_0_11), .S1(s_Multiplier_0_0_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(934[11] 937[88])
    defparam Multiplier_0_add_0_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_7 (.A0(Multiplier_0_pp_0_13), .B0(Multiplier_0_pp_1_13), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(Multiplier_0_pp_1_14), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_0_6), .COUT(co_Multiplier_0_0_7), 
          .S0(s_Multiplier_0_0_13), .S1(s_Multiplier_0_0_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(943[11] 946[88])
    defparam Multiplier_0_add_0_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_8 (.A0(GND_net), .B0(Multiplier_0_pp_1_15), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co_Multiplier_0_0_7), .COUT(co_Multiplier_0_0_8), 
          .S0(s_Multiplier_0_0_15), .S1(s_Multiplier_0_0_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(952[11] 955[62])
    defparam Multiplier_0_add_0_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_8.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_0_9 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co_Multiplier_0_0_8), .S0(s_Multiplier_0_0_17)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(961[11] 964[24])
    defparam Cadd_Multiplier_0_0_9.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_9.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_9.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_0_9.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_1_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(Multiplier_0_pp_2_6), .B1(Multiplier_0_pp_3_6), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_Multiplier_0_1_1), .S1(s_Multiplier_0_1_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(970[11] 973[36])
    defparam Cadd_Multiplier_0_1_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_1_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_2 (.A0(Multiplier_0_pp_2_7), .B0(Multiplier_0_pp_3_7), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_2_8), .B1(Multiplier_0_pp_3_8), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_1), .COUT(co_Multiplier_0_1_2), 
          .S0(s_Multiplier_0_1_7), .S1(s_Multiplier_0_1_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(979[11] 982[86])
    defparam Multiplier_0_add_1_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_3 (.A0(Multiplier_0_pp_2_9), .B0(Multiplier_0_pp_3_9), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_2_10), .B1(Multiplier_0_pp_3_10), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_2), .COUT(co_Multiplier_0_1_3), 
          .S0(s_Multiplier_0_1_9), .S1(s_Multiplier_0_1_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(988[11] 991[87])
    defparam Multiplier_0_add_1_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_4 (.A0(Multiplier_0_pp_2_11), .B0(Multiplier_0_pp_3_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_2_12), .B1(Multiplier_0_pp_3_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_3), .COUT(co_Multiplier_0_1_4), 
          .S0(s_Multiplier_0_1_11), .S1(s_Multiplier_0_1_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(997[11] 1000[88])
    defparam Multiplier_0_add_1_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_5 (.A0(Multiplier_0_pp_2_13), .B0(Multiplier_0_pp_3_13), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_2_14), .B1(Multiplier_0_pp_3_14), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_4), .COUT(co_Multiplier_0_1_5), 
          .S0(s_Multiplier_0_1_13), .S1(s_Multiplier_0_1_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1006[11] 1009[88])
    defparam Multiplier_0_add_1_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_6 (.A0(Multiplier_0_pp_2_15), .B0(Multiplier_0_pp_3_15), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_2_16), .B1(Multiplier_0_pp_3_16), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_5), .COUT(co_Multiplier_0_1_6), 
          .S0(s_Multiplier_0_1_15), .S1(s_Multiplier_0_1_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1015[11] 1018[88])
    defparam Multiplier_0_add_1_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_7 (.A0(Multiplier_0_pp_2_17), .B0(Multiplier_0_pp_3_17), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(Multiplier_0_pp_3_18), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_1_6), .COUT(co_Multiplier_0_1_7), 
          .S0(s_Multiplier_0_1_17), .S1(s_Multiplier_0_1_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1024[11] 1027[88])
    defparam Multiplier_0_add_1_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_8 (.A0(GND_net), .B0(Multiplier_0_pp_3_19), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co_Multiplier_0_1_7), .COUT(co_Multiplier_0_1_8), 
          .S0(s_Multiplier_0_1_19), .S1(s_Multiplier_0_1_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1033[11] 1036[62])
    defparam Multiplier_0_add_1_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_8.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_1_9 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co_Multiplier_0_1_8), .S0(s_Multiplier_0_1_21)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1042[11] 1045[24])
    defparam Cadd_Multiplier_0_1_9.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_9.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_9.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_1_9.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_2_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(Multiplier_0_pp_4_10), .B1(Multiplier_0_pp_5_10), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_Multiplier_0_2_1), .S1(s_Multiplier_0_2_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1051[11] 1054[36])
    defparam Cadd_Multiplier_0_2_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_2_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_2_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_2_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_2 (.A0(Multiplier_0_pp_4_11), .B0(Multiplier_0_pp_5_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_4_12), .B1(Multiplier_0_pp_5_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_1), .COUT(co_Multiplier_0_2_2), 
          .S0(s_Multiplier_0_2_11), .S1(s_Multiplier_0_2_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1060[11] 1063[88])
    defparam Multiplier_0_add_2_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_3 (.A0(Multiplier_0_pp_4_13), .B0(Multiplier_0_pp_5_13), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_4_14), .B1(Multiplier_0_pp_5_14), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_2), .COUT(co_Multiplier_0_2_3), 
          .S0(s_Multiplier_0_2_13), .S1(s_Multiplier_0_2_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1069[11] 1072[88])
    defparam Multiplier_0_add_2_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_4 (.A0(Multiplier_0_pp_4_15), .B0(Multiplier_0_pp_5_15), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_4_16), .B1(Multiplier_0_pp_5_16), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_3), .COUT(co_Multiplier_0_2_4), 
          .S0(s_Multiplier_0_2_15), .S1(s_Multiplier_0_2_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1078[11] 1081[88])
    defparam Multiplier_0_add_2_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_5 (.A0(Multiplier_0_pp_4_17), .B0(Multiplier_0_pp_5_17), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_4_18), .B1(Multiplier_0_pp_5_18), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_4), .COUT(co_Multiplier_0_2_5), 
          .S0(s_Multiplier_0_2_17), .S1(s_Multiplier_0_2_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1087[11] 1090[88])
    defparam Multiplier_0_add_2_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_6 (.A0(Multiplier_0_pp_4_19), .B0(Multiplier_0_pp_5_19), 
          .C0(VCC_net), .D0(VCC_net), .A1(Multiplier_0_pp_4_20), .B1(Multiplier_0_pp_5_20), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_5), .COUT(co_Multiplier_0_2_6), 
          .S0(s_Multiplier_0_2_19), .S1(s_Multiplier_0_2_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1096[11] 1099[88])
    defparam Multiplier_0_add_2_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_7 (.A0(Multiplier_0_pp_4_21), .B0(Multiplier_0_pp_5_21), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(Multiplier_0_pp_5_22), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_2_6), .COUT(co_Multiplier_0_2_7), 
          .S0(s_Multiplier_0_2_21), .S1(s_Multiplier_0_2_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1105[11] 1108[88])
    defparam Multiplier_0_add_2_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_8 (.A0(GND_net), .B0(Multiplier_0_pp_5_23), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co_Multiplier_0_2_7), .S0(s_Multiplier_0_2_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1114[11] 1117[43])
    defparam Multiplier_0_add_2_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_8.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_3_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(f_s_Multiplier_0_0_4), .B1(f_Multiplier_0_pp_2_4), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_Multiplier_0_3_1), .S1(rego_o_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1123[11] 1126[36])
    defparam Cadd_Multiplier_0_3_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_3_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_2 (.A0(f_s_Multiplier_0_0_5), .B0(f_Multiplier_0_pp_2_5), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_6), .B1(f_s_Multiplier_0_1_6), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_1), .COUT(co_Multiplier_0_3_2), 
          .S0(rego_o_5), .S1(rego_o_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1132[11] 1135[86])
    defparam Multiplier_0_add_3_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_3 (.A0(f_s_Multiplier_0_0_7), .B0(f_s_Multiplier_0_1_7), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_8), .B1(f_s_Multiplier_0_1_8), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_2), .COUT(co_Multiplier_0_3_3), 
          .S0(rego_o_7), .S1(s_Multiplier_0_3_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1141[11] 1144[86])
    defparam Multiplier_0_add_3_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_4 (.A0(f_s_Multiplier_0_0_9), .B0(f_s_Multiplier_0_1_9), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_10), .B1(f_s_Multiplier_0_1_10), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_3), .COUT(co_Multiplier_0_3_4), 
          .S0(s_Multiplier_0_3_9), .S1(s_Multiplier_0_3_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1150[11] 1153[87])
    defparam Multiplier_0_add_3_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_5 (.A0(f_s_Multiplier_0_0_11), .B0(f_s_Multiplier_0_1_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_12), .B1(f_s_Multiplier_0_1_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_4), .COUT(co_Multiplier_0_3_5), 
          .S0(s_Multiplier_0_3_11), .S1(s_Multiplier_0_3_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1159[11] 1162[88])
    defparam Multiplier_0_add_3_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_6 (.A0(f_s_Multiplier_0_0_13), .B0(f_s_Multiplier_0_1_13), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_14), .B1(f_s_Multiplier_0_1_14), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_5), .COUT(co_Multiplier_0_3_6), 
          .S0(s_Multiplier_0_3_13), .S1(s_Multiplier_0_3_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1168[11] 1171[88])
    defparam Multiplier_0_add_3_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_7 (.A0(f_s_Multiplier_0_0_15), .B0(f_s_Multiplier_0_1_15), 
          .C0(VCC_net), .D0(VCC_net), .A1(f_s_Multiplier_0_0_16), .B1(f_s_Multiplier_0_1_16), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_6), .COUT(co_Multiplier_0_3_7), 
          .S0(s_Multiplier_0_3_15), .S1(s_Multiplier_0_3_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1177[11] 1180[88])
    defparam Multiplier_0_add_3_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_8 (.A0(f_s_Multiplier_0_0_17), .B0(f_s_Multiplier_0_1_17), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(f_s_Multiplier_0_1_18), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_7), .COUT(co_Multiplier_0_3_8), 
          .S0(s_Multiplier_0_3_17), .S1(s_Multiplier_0_3_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1186[11] 1189[88])
    defparam Multiplier_0_add_3_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_8.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_9 (.A0(GND_net), .B0(f_s_Multiplier_0_1_19), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(f_s_Multiplier_0_1_20), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_Multiplier_0_3_8), .COUT(co_Multiplier_0_3_9), 
          .S0(s_Multiplier_0_3_19), .S1(s_Multiplier_0_3_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1195[11] 1198[62])
    defparam Multiplier_0_add_3_9.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_9.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_9.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_9.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_10 (.A0(GND_net), .B0(f_s_Multiplier_0_1_21), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co_Multiplier_0_3_9), .COUT(co_Multiplier_0_3_10), 
          .S0(s_Multiplier_0_3_21), .S1(s_Multiplier_0_3_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1204[11] 1207[63])
    defparam Multiplier_0_add_3_10.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_10.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_10.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_10.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_3_11 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co_Multiplier_0_3_10), .S0(s_Multiplier_0_3_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1213[11] 1216[24])
    defparam Cadd_Multiplier_0_3_11.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_11.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_11.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_3_11.INJECT1_1 = "NO";
    CCU2C Cadd_t_Multiplier_0_4_1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), 
          .D0(VCC_net), .A1(s_Multiplier_0_3_8), .B1(f_Multiplier_0_pp_4_8), 
          .C1(VCC_net), .D1(VCC_net), .COUT(co_t_Multiplier_0_4_1), .S1(rego_o_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1222[11] 1224[100])
    defparam Cadd_t_Multiplier_0_4_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_t_Multiplier_0_4_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_t_Multiplier_0_4_1.INJECT1_0 = "NO";
    defparam Cadd_t_Multiplier_0_4_1.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_2 (.A0(s_Multiplier_0_3_9), .B0(f_Multiplier_0_pp_4_9), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_10), .B1(f_s_Multiplier_0_2_10), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_1), .COUT(co_t_Multiplier_0_4_2), 
          .S0(rego_o_9), .S1(rego_o_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1230[11] 1233[69])
    defparam t_Multiplier_0_add_4_2.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_2.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_2.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_2.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_3 (.A0(s_Multiplier_0_3_11), .B0(f_s_Multiplier_0_2_11), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_12), .B1(f_s_Multiplier_0_2_12), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_2), .COUT(co_t_Multiplier_0_4_3), 
          .S0(rego_o_11), .S1(rego_o_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1239[11] 1242[70])
    defparam t_Multiplier_0_add_4_3.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_3.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_3.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_3.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_4 (.A0(s_Multiplier_0_3_13), .B0(f_s_Multiplier_0_2_13), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_14), .B1(f_s_Multiplier_0_2_14), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_3), .COUT(co_t_Multiplier_0_4_4), 
          .S0(rego_o_13), .S1(rego_o_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1248[11] 1251[70])
    defparam t_Multiplier_0_add_4_4.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_4.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_4.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_4.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_5 (.A0(s_Multiplier_0_3_15), .B0(f_s_Multiplier_0_2_15), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_16), .B1(f_s_Multiplier_0_2_16), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_4), .COUT(co_t_Multiplier_0_4_5), 
          .S0(rego_o_15), .S1(rego_o_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1257[11] 1260[70])
    defparam t_Multiplier_0_add_4_5.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_5.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_5.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_5.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_6 (.A0(s_Multiplier_0_3_17), .B0(f_s_Multiplier_0_2_17), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_18), .B1(f_s_Multiplier_0_2_18), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_5), .COUT(co_t_Multiplier_0_4_6), 
          .S0(rego_o_17), .S1(rego_o_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1266[11] 1269[70])
    defparam t_Multiplier_0_add_4_6.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_6.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_6.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_6.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_7 (.A0(s_Multiplier_0_3_19), .B0(f_s_Multiplier_0_2_19), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_20), .B1(f_s_Multiplier_0_2_20), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_6), .COUT(co_t_Multiplier_0_4_7), 
          .S0(rego_o_19), .S1(rego_o_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1275[11] 1278[70])
    defparam t_Multiplier_0_add_4_7.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_7.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_7.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_7.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_8 (.A0(s_Multiplier_0_3_21), .B0(f_s_Multiplier_0_2_21), 
          .C0(VCC_net), .D0(VCC_net), .A1(s_Multiplier_0_3_22), .B1(f_s_Multiplier_0_2_22), 
          .C1(VCC_net), .D1(VCC_net), .CIN(co_t_Multiplier_0_4_7), .COUT(co_t_Multiplier_0_4_8), 
          .S0(rego_o_21), .S1(rego_o_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1284[11] 1287[70])
    defparam t_Multiplier_0_add_4_8.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_8.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_8.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_8.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_9 (.A0(s_Multiplier_0_3_23), .B0(f_s_Multiplier_0_2_23), 
          .C0(VCC_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co_t_Multiplier_0_4_8), .S0(rego_o_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1293[11] 1296[45])
    defparam t_Multiplier_0_add_4_9.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_9.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_9.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_9.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_0 (.A0(regb_b_0), .B0(regb_b_1), .C0(rega_a_1), 
          .D0(regb_b_0), .A1(rega_a_1), .B1(regb_b_1), .C1(rega_a_2), 
          .D1(regb_b_0), .CIN(Multiplier_0_cin_lr_0), .COUT(mco), .S0(Multiplier_0_pp_0_1), 
          .S1(Multiplier_0_pp_0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1302[11] 1305[20])
    defparam Multiplier_0_mult_0_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_1 (.A0(rega_a_2), .B0(regb_b_1), .C0(rega_a_3), 
          .D0(regb_b_0), .A1(rega_a_3), .B1(regb_b_1), .C1(rega_a_4), 
          .D1(regb_b_0), .CIN(mco), .COUT(mco_1), .S0(Multiplier_0_pp_0_3), 
          .S1(Multiplier_0_pp_0_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1311[11] 1313[85])
    defparam Multiplier_0_mult_0_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_2 (.A0(rega_a_4), .B0(regb_b_1), .C0(rega_a_5), 
          .D0(regb_b_0), .A1(rega_a_5), .B1(regb_b_1), .C1(rega_a_6), 
          .D1(regb_b_0), .CIN(mco_1), .COUT(mco_2), .S0(Multiplier_0_pp_0_5), 
          .S1(Multiplier_0_pp_0_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1319[11] 1322[22])
    defparam Multiplier_0_mult_0_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_3 (.A0(rega_a_6), .B0(regb_b_1), .C0(rega_a_7), 
          .D0(regb_b_0), .A1(rega_a_7), .B1(regb_b_1), .C1(rega_a_8), 
          .D1(regb_b_0), .CIN(mco_2), .COUT(mco_3), .S0(Multiplier_0_pp_0_7), 
          .S1(Multiplier_0_pp_0_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1328[11] 1331[22])
    defparam Multiplier_0_mult_0_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_4 (.A0(rega_a_8), .B0(regb_b_1), .C0(rega_a_9), 
          .D0(regb_b_0), .A1(rega_a_9), .B1(regb_b_1), .C1(rega_a_10), 
          .D1(regb_b_0), .CIN(mco_3), .COUT(mco_4), .S0(Multiplier_0_pp_0_9), 
          .S1(Multiplier_0_pp_0_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1337[11] 1340[22])
    defparam Multiplier_0_mult_0_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_5 (.A0(rega_a_10), .B0(regb_b_1), .C0(Multiplier_0_mult_0_5_n2), 
          .D0(VCC_net), .A1(Multiplier_0_mult_0_5_n1), .B1(VCC_net), .C1(VCC_net), 
          .D1(VCC_net), .CIN(mco_4), .COUT(mfco), .S0(Multiplier_0_pp_0_11), 
          .S1(Multiplier_0_pp_0_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1346[11] 1349[48])
    defparam Multiplier_0_mult_0_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_0 (.A0(regb_b_0), .B0(regb_b_3), .C0(rega_a_1), 
          .D0(regb_b_2), .A1(rega_a_1), .B1(regb_b_3), .C1(rega_a_2), 
          .D1(regb_b_2), .CIN(Multiplier_0_cin_lr_2), .COUT(mco_5), .S0(Multiplier_0_pp_1_3), 
          .S1(Multiplier_0_pp_1_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1355[11] 1358[22])
    defparam Multiplier_0_mult_2_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_1 (.A0(rega_a_2), .B0(regb_b_3), .C0(rega_a_3), 
          .D0(regb_b_2), .A1(rega_a_3), .B1(regb_b_3), .C1(rega_a_4), 
          .D1(regb_b_2), .CIN(mco_5), .COUT(mco_6), .S0(Multiplier_0_pp_1_5), 
          .S1(Multiplier_0_pp_1_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1364[11] 1367[22])
    defparam Multiplier_0_mult_2_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_2 (.A0(rega_a_4), .B0(regb_b_3), .C0(rega_a_5), 
          .D0(regb_b_2), .A1(rega_a_5), .B1(regb_b_3), .C1(rega_a_6), 
          .D1(regb_b_2), .CIN(mco_6), .COUT(mco_7), .S0(Multiplier_0_pp_1_7), 
          .S1(Multiplier_0_pp_1_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1373[11] 1376[22])
    defparam Multiplier_0_mult_2_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_3 (.A0(rega_a_6), .B0(regb_b_3), .C0(rega_a_7), 
          .D0(regb_b_2), .A1(rega_a_7), .B1(regb_b_3), .C1(rega_a_8), 
          .D1(regb_b_2), .CIN(mco_7), .COUT(mco_8), .S0(Multiplier_0_pp_1_9), 
          .S1(Multiplier_0_pp_1_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1382[11] 1385[22])
    defparam Multiplier_0_mult_2_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_4 (.A0(rega_a_8), .B0(regb_b_3), .C0(rega_a_9), 
          .D0(regb_b_2), .A1(rega_a_9), .B1(regb_b_3), .C1(rega_a_10), 
          .D1(regb_b_2), .CIN(mco_8), .COUT(mco_9), .S0(Multiplier_0_pp_1_11), 
          .S1(Multiplier_0_pp_1_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1391[11] 1394[22])
    defparam Multiplier_0_mult_2_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_5 (.A0(rega_a_10), .B0(regb_b_3), .C0(Multiplier_0_mult_2_5_n2), 
          .D0(VCC_net), .A1(Multiplier_0_mult_2_5_n1), .B1(VCC_net), .C1(GND_net), 
          .D1(regb_b_2), .CIN(mco_9), .COUT(mfco_1), .S0(Multiplier_0_pp_1_13), 
          .S1(Multiplier_0_pp_1_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1400[11] 1403[50])
    defparam Multiplier_0_mult_2_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_0 (.A0(regb_b_0), .B0(regb_b_5), .C0(rega_a_1), 
          .D0(regb_b_4), .A1(rega_a_1), .B1(regb_b_5), .C1(rega_a_2), 
          .D1(regb_b_4), .CIN(Multiplier_0_cin_lr_4), .COUT(mco_10), .S0(Multiplier_0_pp_2_5), 
          .S1(Multiplier_0_pp_2_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1409[11] 1412[23])
    defparam Multiplier_0_mult_4_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_1 (.A0(rega_a_2), .B0(regb_b_5), .C0(rega_a_3), 
          .D0(regb_b_4), .A1(rega_a_3), .B1(regb_b_5), .C1(rega_a_4), 
          .D1(regb_b_4), .CIN(mco_10), .COUT(mco_11), .S0(Multiplier_0_pp_2_7), 
          .S1(Multiplier_0_pp_2_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1418[11] 1421[23])
    defparam Multiplier_0_mult_4_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_2 (.A0(rega_a_4), .B0(regb_b_5), .C0(rega_a_5), 
          .D0(regb_b_4), .A1(rega_a_5), .B1(regb_b_5), .C1(rega_a_6), 
          .D1(regb_b_4), .CIN(mco_11), .COUT(mco_12), .S0(Multiplier_0_pp_2_9), 
          .S1(Multiplier_0_pp_2_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1427[11] 1430[23])
    defparam Multiplier_0_mult_4_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_3 (.A0(rega_a_6), .B0(regb_b_5), .C0(rega_a_7), 
          .D0(regb_b_4), .A1(rega_a_7), .B1(regb_b_5), .C1(rega_a_8), 
          .D1(regb_b_4), .CIN(mco_12), .COUT(mco_13), .S0(Multiplier_0_pp_2_11), 
          .S1(Multiplier_0_pp_2_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1436[11] 1439[23])
    defparam Multiplier_0_mult_4_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_4 (.A0(rega_a_8), .B0(regb_b_5), .C0(rega_a_9), 
          .D0(regb_b_4), .A1(rega_a_9), .B1(regb_b_5), .C1(rega_a_10), 
          .D1(regb_b_4), .CIN(mco_13), .COUT(mco_14), .S0(Multiplier_0_pp_2_13), 
          .S1(Multiplier_0_pp_2_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1445[11] 1448[23])
    defparam Multiplier_0_mult_4_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_5 (.A0(rega_a_10), .B0(regb_b_5), .C0(Multiplier_0_mult_4_5_n2), 
          .D0(VCC_net), .A1(Multiplier_0_mult_4_5_n1), .B1(VCC_net), .C1(GND_net), 
          .D1(regb_b_4), .CIN(mco_14), .COUT(mfco_2), .S0(Multiplier_0_pp_2_15), 
          .S1(Multiplier_0_pp_2_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1454[11] 1457[50])
    defparam Multiplier_0_mult_4_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_0 (.A0(regb_b_0), .B0(regb_b_7), .C0(rega_a_1), 
          .D0(regb_b_6), .A1(rega_a_1), .B1(regb_b_7), .C1(rega_a_2), 
          .D1(regb_b_6), .CIN(Multiplier_0_cin_lr_6), .COUT(mco_15), .S0(Multiplier_0_pp_3_7), 
          .S1(Multiplier_0_pp_3_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1463[11] 1466[23])
    defparam Multiplier_0_mult_6_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_1 (.A0(rega_a_2), .B0(regb_b_7), .C0(rega_a_3), 
          .D0(regb_b_6), .A1(rega_a_3), .B1(regb_b_7), .C1(rega_a_4), 
          .D1(regb_b_6), .CIN(mco_15), .COUT(mco_16), .S0(Multiplier_0_pp_3_9), 
          .S1(Multiplier_0_pp_3_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1472[11] 1475[23])
    defparam Multiplier_0_mult_6_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_2 (.A0(rega_a_4), .B0(regb_b_7), .C0(rega_a_5), 
          .D0(regb_b_6), .A1(rega_a_5), .B1(regb_b_7), .C1(rega_a_6), 
          .D1(regb_b_6), .CIN(mco_16), .COUT(mco_17), .S0(Multiplier_0_pp_3_11), 
          .S1(Multiplier_0_pp_3_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1481[11] 1484[23])
    defparam Multiplier_0_mult_6_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_3 (.A0(rega_a_6), .B0(regb_b_7), .C0(rega_a_7), 
          .D0(regb_b_6), .A1(rega_a_7), .B1(regb_b_7), .C1(rega_a_8), 
          .D1(regb_b_6), .CIN(mco_17), .COUT(mco_18), .S0(Multiplier_0_pp_3_13), 
          .S1(Multiplier_0_pp_3_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1490[11] 1493[23])
    defparam Multiplier_0_mult_6_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_4 (.A0(rega_a_8), .B0(regb_b_7), .C0(rega_a_9), 
          .D0(regb_b_6), .A1(rega_a_9), .B1(regb_b_7), .C1(rega_a_10), 
          .D1(regb_b_6), .CIN(mco_18), .COUT(mco_19), .S0(Multiplier_0_pp_3_15), 
          .S1(Multiplier_0_pp_3_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1499[11] 1502[23])
    defparam Multiplier_0_mult_6_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_5 (.A0(rega_a_10), .B0(regb_b_7), .C0(Multiplier_0_mult_6_5_n2), 
          .D0(VCC_net), .A1(Multiplier_0_mult_6_5_n1), .B1(VCC_net), .C1(GND_net), 
          .D1(regb_b_6), .CIN(mco_19), .COUT(mfco_3), .S0(Multiplier_0_pp_3_17), 
          .S1(Multiplier_0_pp_3_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1508[11] 1511[50])
    defparam Multiplier_0_mult_6_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_0 (.A0(regb_b_0), .B0(regb_b_9), .C0(rega_a_1), 
          .D0(regb_b_8), .A1(rega_a_1), .B1(regb_b_9), .C1(rega_a_2), 
          .D1(regb_b_8), .CIN(Multiplier_0_cin_lr_8), .COUT(mco_20), .S0(Multiplier_0_pp_4_9), 
          .S1(Multiplier_0_pp_4_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1517[11] 1520[23])
    defparam Multiplier_0_mult_8_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_1 (.A0(rega_a_2), .B0(regb_b_9), .C0(rega_a_3), 
          .D0(regb_b_8), .A1(rega_a_3), .B1(regb_b_9), .C1(rega_a_4), 
          .D1(regb_b_8), .CIN(mco_20), .COUT(mco_21), .S0(Multiplier_0_pp_4_11), 
          .S1(Multiplier_0_pp_4_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1526[11] 1529[23])
    defparam Multiplier_0_mult_8_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_2 (.A0(rega_a_4), .B0(regb_b_9), .C0(rega_a_5), 
          .D0(regb_b_8), .A1(rega_a_5), .B1(regb_b_9), .C1(rega_a_6), 
          .D1(regb_b_8), .CIN(mco_21), .COUT(mco_22), .S0(Multiplier_0_pp_4_13), 
          .S1(Multiplier_0_pp_4_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1535[11] 1538[23])
    defparam Multiplier_0_mult_8_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_3 (.A0(rega_a_6), .B0(regb_b_9), .C0(rega_a_7), 
          .D0(regb_b_8), .A1(rega_a_7), .B1(regb_b_9), .C1(rega_a_8), 
          .D1(regb_b_8), .CIN(mco_22), .COUT(mco_23), .S0(Multiplier_0_pp_4_15), 
          .S1(Multiplier_0_pp_4_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1544[11] 1547[23])
    defparam Multiplier_0_mult_8_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_4 (.A0(rega_a_8), .B0(regb_b_9), .C0(rega_a_9), 
          .D0(regb_b_8), .A1(rega_a_9), .B1(regb_b_9), .C1(rega_a_10), 
          .D1(regb_b_8), .CIN(mco_23), .COUT(mco_24), .S0(Multiplier_0_pp_4_17), 
          .S1(Multiplier_0_pp_4_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1553[11] 1556[23])
    defparam Multiplier_0_mult_8_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_5 (.A0(rega_a_10), .B0(regb_b_9), .C0(Multiplier_0_mult_8_5_n2), 
          .D0(VCC_net), .A1(Multiplier_0_mult_8_5_n1), .B1(VCC_net), .C1(GND_net), 
          .D1(regb_b_8), .CIN(mco_24), .COUT(mfco_4), .S0(Multiplier_0_pp_4_19), 
          .S1(Multiplier_0_pp_4_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1562[11] 1565[50])
    defparam Multiplier_0_mult_8_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_0 (.A0(Multiplier_0_mult_10_0_n0), .B0(VCC_net), 
          .C0(rega_a_1), .D0(regb_b_10), .A1(Multiplier_0_mult_10_0_n1), 
          .B1(VCC_net), .C1(rega_a_2), .D1(regb_b_10), .CIN(Multiplier_0_cin_lr_10), 
          .COUT(mco_25), .S0(Multiplier_0_pp_5_11), .S1(Multiplier_0_pp_5_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1571[11] 1574[50])
    defparam Multiplier_0_mult_10_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_1 (.A0(Multiplier_0_mult_10_1_n0), .B0(VCC_net), 
          .C0(rega_a_3), .D0(regb_b_10), .A1(Multiplier_0_mult_10_1_n1), 
          .B1(VCC_net), .C1(rega_a_4), .D1(regb_b_10), .CIN(mco_25), 
          .COUT(mco_26), .S0(Multiplier_0_pp_5_13), .S1(Multiplier_0_pp_5_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1580[11] 1583[23])
    defparam Multiplier_0_mult_10_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_2 (.A0(Multiplier_0_mult_10_2_n0), .B0(VCC_net), 
          .C0(rega_a_5), .D0(regb_b_10), .A1(Multiplier_0_mult_10_2_n1), 
          .B1(VCC_net), .C1(rega_a_6), .D1(regb_b_10), .CIN(mco_26), 
          .COUT(mco_27), .S0(Multiplier_0_pp_5_15), .S1(Multiplier_0_pp_5_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1589[11] 1592[23])
    defparam Multiplier_0_mult_10_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_3 (.A0(Multiplier_0_mult_10_3_n0), .B0(VCC_net), 
          .C0(rega_a_7), .D0(regb_b_10), .A1(Multiplier_0_mult_10_3_n1), 
          .B1(VCC_net), .C1(rega_a_8), .D1(regb_b_10), .CIN(mco_27), 
          .COUT(mco_28), .S0(Multiplier_0_pp_5_17), .S1(Multiplier_0_pp_5_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1598[11] 1601[23])
    defparam Multiplier_0_mult_10_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_4 (.A0(Multiplier_0_mult_10_4_n0), .B0(VCC_net), 
          .C0(rega_a_9), .D0(regb_b_10), .A1(Multiplier_0_mult_10_4_n1), 
          .B1(VCC_net), .C1(rega_a_10), .D1(regb_b_10), .CIN(mco_28), 
          .COUT(mco_29), .S0(Multiplier_0_pp_5_19), .S1(Multiplier_0_pp_5_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1607[11] 1610[23])
    defparam Multiplier_0_mult_10_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_5 (.A0(Multiplier_0_mult_10_5_n0), .B0(VCC_net), 
          .C0(Multiplier_0_mult_10_5_n2), .D0(VCC_net), .A1(rega_a_11), 
          .B1(regb_b_11), .C1(GND_net), .D1(regb_b_10), .CIN(mco_29), 
          .COUT(mfco_5), .S0(Multiplier_0_pp_5_21), .S1(Multiplier_0_pp_5_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1620[11] 1623[50])
    defparam Multiplier_0_mult_10_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_5.INJECT1_1 = "NO";
    ND2 ND2_t26 (.A(rega_a_11), .B(regb_b_0), .Z(Multiplier_0_mult_0_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    AND2 AND2_t27 (.A(regb_b_0), .B(regb_b_0), .Z(Multiplier_0_pp_0_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(376[10:72])
    ND2 ND2_t23 (.A(rega_a_11), .B(regb_b_2), .Z(Multiplier_0_mult_2_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t20 (.A(rega_a_11), .B(regb_b_4), .Z(Multiplier_0_mult_4_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t17 (.A(rega_a_11), .B(regb_b_6), .Z(Multiplier_0_mult_6_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t14 (.A(rega_a_11), .B(regb_b_8), .Z(Multiplier_0_mult_8_5_n2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    ND2 ND2_t11 (.A(rega_a_1), .B(regb_b_11), .Z(Multiplier_0_mult_10_0_n1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=14, LSE_RCOL=27, LSE_LLINE=69, LSE_RLINE=75 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/AMDemod.v(69[14] 75[27])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

