// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Mar 14 22:48:24 2024
//
// Verilog Description of module square_wave_generator
//

module square_wave_generator (clk, rst, wave_out) /* synthesis syn_module_defined=1 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(1[8:29])
    input clk;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[13:16])
    input rst;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(4[13:16])
    output wave_out;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(5[13:21])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[13:16])
    
    wire GND_net, VCC_net, rst_c, wave_out_c;
    wire [31:0]counter;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(15[13:20])
    
    wire n282, n345, n344, n343, n342, n341, n340, n339, n338, 
        n337, n336, n335, n334, n333, n332, n331, n330, n329, 
        n328, n327, n326, n325, n324, n323, n322, n321, n320, 
        n319, n318, n317, wave_out_N_66, n316, n178, n315, n134, 
        n135, n136, n137, n138, n139, n140, n141, n142, n143, 
        n144, n145, n146, n147, n148, n149, n150, n151, n152, 
        n153, n154, n155, n156, n157, n158, n159, n160, n161, 
        n162, n163, n164, n165;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i27_1_lut (.A(rst_c), .Z(n282)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(4[13:16])
    defparam i27_1_lut.init = 16'h5555;
    FD1S3AX wave_out_12 (.D(wave_out_N_66), .CK(clk_c), .Q(wave_out_c)) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(22[11] 29[5])
    defparam wave_out_12.GSR = "ENABLED";
    IB clk_pad (.I(clk), .O(clk_c));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[13:16])
    FD1S3IX counter_20__i31 (.D(n134), .CK(clk_c), .CD(n178), .Q(counter[31])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i31.GSR = "ENABLED";
    FD1S3IX counter_20__i0 (.D(n165), .CK(clk_c), .CD(n178), .Q(counter[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i0.GSR = "ENABLED";
    CCU2C counter_20_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n315), .S1(n165));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_1.INIT0 = 16'h0000;
    defparam counter_20_add_4_1.INIT1 = 16'h555f;
    defparam counter_20_add_4_1.INJECT1_0 = "NO";
    defparam counter_20_add_4_1.INJECT1_1 = "NO";
    OB wave_out_pad (.I(wave_out_c), .O(wave_out));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(5[13:21])
    CCU2C add_27_30 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[30]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n344), .COUT(n345));
    defparam add_27_30.INIT0 = 16'h555f;
    defparam add_27_30.INIT1 = 16'h555f;
    defparam add_27_30.INJECT1_0 = "NO";
    defparam add_27_30.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(n282));
    LUT4 i1_2_lut (.A(wave_out_c), .B(n178), .Z(wave_out_N_66)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    CCU2C add_27_28 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[28]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n343), .COUT(n344));
    defparam add_27_28.INIT0 = 16'h555f;
    defparam add_27_28.INIT1 = 16'h555f;
    defparam add_27_28.INJECT1_0 = "NO";
    defparam add_27_28.INJECT1_1 = "NO";
    CCU2C add_27_26 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[26]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n342), .COUT(n343));
    defparam add_27_26.INIT0 = 16'h555f;
    defparam add_27_26.INIT1 = 16'h555f;
    defparam add_27_26.INJECT1_0 = "NO";
    defparam add_27_26.INJECT1_1 = "NO";
    CCU2C add_27_24 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[24]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n341), .COUT(n342));
    defparam add_27_24.INIT0 = 16'h555f;
    defparam add_27_24.INIT1 = 16'h555f;
    defparam add_27_24.INJECT1_0 = "NO";
    defparam add_27_24.INJECT1_1 = "NO";
    CCU2C add_27_22 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[22]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n340), .COUT(n341));
    defparam add_27_22.INIT0 = 16'h555f;
    defparam add_27_22.INIT1 = 16'h555f;
    defparam add_27_22.INJECT1_0 = "NO";
    defparam add_27_22.INJECT1_1 = "NO";
    CCU2C add_27_20 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[20]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n339), .COUT(n340));
    defparam add_27_20.INIT0 = 16'h555f;
    defparam add_27_20.INIT1 = 16'h555f;
    defparam add_27_20.INJECT1_0 = "NO";
    defparam add_27_20.INJECT1_1 = "NO";
    CCU2C add_27_18 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n338), .COUT(n339));
    defparam add_27_18.INIT0 = 16'h555f;
    defparam add_27_18.INIT1 = 16'h555f;
    defparam add_27_18.INJECT1_0 = "NO";
    defparam add_27_18.INJECT1_1 = "NO";
    CCU2C add_27_16 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n337), .COUT(n338));
    defparam add_27_16.INIT0 = 16'h555f;
    defparam add_27_16.INIT1 = 16'h555f;
    defparam add_27_16.INJECT1_0 = "NO";
    defparam add_27_16.INJECT1_1 = "NO";
    CCU2C add_27_14 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n336), .COUT(n337));
    defparam add_27_14.INIT0 = 16'haaa0;
    defparam add_27_14.INIT1 = 16'h555f;
    defparam add_27_14.INJECT1_0 = "NO";
    defparam add_27_14.INJECT1_1 = "NO";
    CCU2C add_27_12 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n335), .COUT(n336));
    defparam add_27_12.INIT0 = 16'h555f;
    defparam add_27_12.INIT1 = 16'haaa0;
    defparam add_27_12.INJECT1_0 = "NO";
    defparam add_27_12.INJECT1_1 = "NO";
    CCU2C add_27_10 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n334), .COUT(n335));
    defparam add_27_10.INIT0 = 16'h555f;
    defparam add_27_10.INIT1 = 16'h555f;
    defparam add_27_10.INJECT1_0 = "NO";
    defparam add_27_10.INJECT1_1 = "NO";
    CCU2C add_27_8 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n333), .COUT(n334));
    defparam add_27_8.INIT0 = 16'haaa0;
    defparam add_27_8.INIT1 = 16'h555f;
    defparam add_27_8.INJECT1_0 = "NO";
    defparam add_27_8.INJECT1_1 = "NO";
    CCU2C add_27_6 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n332), .COUT(n333));
    defparam add_27_6.INIT0 = 16'h555f;
    defparam add_27_6.INIT1 = 16'haaa0;
    defparam add_27_6.INJECT1_0 = "NO";
    defparam add_27_6.INJECT1_1 = "NO";
    CCU2C add_27_4 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n331), .COUT(n332));
    defparam add_27_4.INIT0 = 16'h555f;
    defparam add_27_4.INIT1 = 16'haaa0;
    defparam add_27_4.INJECT1_0 = "NO";
    defparam add_27_4.INJECT1_1 = "NO";
    CCU2C add_27_2 (.A0(counter[0]), .B0(counter[1]), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n331));
    defparam add_27_2.INIT0 = 16'h0008;
    defparam add_27_2.INIT1 = 16'h555f;
    defparam add_27_2.INJECT1_0 = "NO";
    defparam add_27_2.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n330), .S0(n134));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_33.INIT0 = 16'haaa0;
    defparam counter_20_add_4_33.INIT1 = 16'h0000;
    defparam counter_20_add_4_33.INJECT1_0 = "NO";
    defparam counter_20_add_4_33.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n329), .COUT(n330), .S0(n136), .S1(n135));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_31.INIT0 = 16'haaa0;
    defparam counter_20_add_4_31.INIT1 = 16'haaa0;
    defparam counter_20_add_4_31.INJECT1_0 = "NO";
    defparam counter_20_add_4_31.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n328), .COUT(n329), .S0(n138), .S1(n137));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_29.INIT0 = 16'haaa0;
    defparam counter_20_add_4_29.INIT1 = 16'haaa0;
    defparam counter_20_add_4_29.INJECT1_0 = "NO";
    defparam counter_20_add_4_29.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n327), .COUT(n328), .S0(n140), .S1(n139));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_27.INIT0 = 16'haaa0;
    defparam counter_20_add_4_27.INIT1 = 16'haaa0;
    defparam counter_20_add_4_27.INJECT1_0 = "NO";
    defparam counter_20_add_4_27.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n326), .COUT(n327), .S0(n142), .S1(n141));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_25.INIT0 = 16'haaa0;
    defparam counter_20_add_4_25.INIT1 = 16'haaa0;
    defparam counter_20_add_4_25.INJECT1_0 = "NO";
    defparam counter_20_add_4_25.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n325), .COUT(n326), .S0(n144), .S1(n143));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_23.INIT0 = 16'haaa0;
    defparam counter_20_add_4_23.INIT1 = 16'haaa0;
    defparam counter_20_add_4_23.INJECT1_0 = "NO";
    defparam counter_20_add_4_23.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n324), .COUT(n325), .S0(n146), .S1(n145));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_21.INIT0 = 16'haaa0;
    defparam counter_20_add_4_21.INIT1 = 16'haaa0;
    defparam counter_20_add_4_21.INJECT1_0 = "NO";
    defparam counter_20_add_4_21.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n323), .COUT(n324), .S0(n148), .S1(n147));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_19.INIT0 = 16'haaa0;
    defparam counter_20_add_4_19.INIT1 = 16'haaa0;
    defparam counter_20_add_4_19.INJECT1_0 = "NO";
    defparam counter_20_add_4_19.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n322), .COUT(n323), .S0(n150), .S1(n149));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_17.INIT0 = 16'haaa0;
    defparam counter_20_add_4_17.INIT1 = 16'haaa0;
    defparam counter_20_add_4_17.INJECT1_0 = "NO";
    defparam counter_20_add_4_17.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n321), .COUT(n322), .S0(n152), .S1(n151));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_15.INIT0 = 16'haaa0;
    defparam counter_20_add_4_15.INIT1 = 16'haaa0;
    defparam counter_20_add_4_15.INJECT1_0 = "NO";
    defparam counter_20_add_4_15.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n320), .COUT(n321), .S0(n154), .S1(n153));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_13.INIT0 = 16'haaa0;
    defparam counter_20_add_4_13.INIT1 = 16'haaa0;
    defparam counter_20_add_4_13.INJECT1_0 = "NO";
    defparam counter_20_add_4_13.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n319), .COUT(n320), .S0(n156), .S1(n155));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_11.INIT0 = 16'haaa0;
    defparam counter_20_add_4_11.INIT1 = 16'haaa0;
    defparam counter_20_add_4_11.INJECT1_0 = "NO";
    defparam counter_20_add_4_11.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n318), .COUT(n319), .S0(n158), .S1(n157));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_9.INIT0 = 16'haaa0;
    defparam counter_20_add_4_9.INIT1 = 16'haaa0;
    defparam counter_20_add_4_9.INJECT1_0 = "NO";
    defparam counter_20_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n317), .COUT(n318), .S0(n160), .S1(n159));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_7.INIT0 = 16'haaa0;
    defparam counter_20_add_4_7.INIT1 = 16'haaa0;
    defparam counter_20_add_4_7.INJECT1_0 = "NO";
    defparam counter_20_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n316), .COUT(n317), .S0(n162), .S1(n161));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_5.INIT0 = 16'haaa0;
    defparam counter_20_add_4_5.INIT1 = 16'haaa0;
    defparam counter_20_add_4_5.INJECT1_0 = "NO";
    defparam counter_20_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_20_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n315), .COUT(n316), .S0(n164), .S1(n163));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20_add_4_3.INIT0 = 16'haaa0;
    defparam counter_20_add_4_3.INIT1 = 16'haaa0;
    defparam counter_20_add_4_3.INJECT1_0 = "NO";
    defparam counter_20_add_4_3.INJECT1_1 = "NO";
    FD1S3IX counter_20__i30 (.D(n135), .CK(clk_c), .CD(n178), .Q(counter[30])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i30.GSR = "ENABLED";
    FD1S3IX counter_20__i29 (.D(n136), .CK(clk_c), .CD(n178), .Q(counter[29])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i29.GSR = "ENABLED";
    FD1S3IX counter_20__i28 (.D(n137), .CK(clk_c), .CD(n178), .Q(counter[28])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i28.GSR = "ENABLED";
    FD1S3IX counter_20__i27 (.D(n138), .CK(clk_c), .CD(n178), .Q(counter[27])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i27.GSR = "ENABLED";
    FD1S3IX counter_20__i26 (.D(n139), .CK(clk_c), .CD(n178), .Q(counter[26])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i26.GSR = "ENABLED";
    FD1S3IX counter_20__i25 (.D(n140), .CK(clk_c), .CD(n178), .Q(counter[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i25.GSR = "ENABLED";
    FD1S3IX counter_20__i24 (.D(n141), .CK(clk_c), .CD(n178), .Q(counter[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i24.GSR = "ENABLED";
    FD1S3IX counter_20__i23 (.D(n142), .CK(clk_c), .CD(n178), .Q(counter[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i23.GSR = "ENABLED";
    FD1S3IX counter_20__i22 (.D(n143), .CK(clk_c), .CD(n178), .Q(counter[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i22.GSR = "ENABLED";
    FD1S3IX counter_20__i21 (.D(n144), .CK(clk_c), .CD(n178), .Q(counter[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i21.GSR = "ENABLED";
    FD1S3IX counter_20__i20 (.D(n145), .CK(clk_c), .CD(n178), .Q(counter[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i20.GSR = "ENABLED";
    FD1S3IX counter_20__i19 (.D(n146), .CK(clk_c), .CD(n178), .Q(counter[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i19.GSR = "ENABLED";
    FD1S3IX counter_20__i18 (.D(n147), .CK(clk_c), .CD(n178), .Q(counter[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i18.GSR = "ENABLED";
    FD1S3IX counter_20__i17 (.D(n148), .CK(clk_c), .CD(n178), .Q(counter[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i17.GSR = "ENABLED";
    FD1S3IX counter_20__i16 (.D(n149), .CK(clk_c), .CD(n178), .Q(counter[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i16.GSR = "ENABLED";
    FD1S3IX counter_20__i15 (.D(n150), .CK(clk_c), .CD(n178), .Q(counter[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i15.GSR = "ENABLED";
    FD1S3IX counter_20__i14 (.D(n151), .CK(clk_c), .CD(n178), .Q(counter[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i14.GSR = "ENABLED";
    FD1S3IX counter_20__i13 (.D(n152), .CK(clk_c), .CD(n178), .Q(counter[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i13.GSR = "ENABLED";
    FD1S3IX counter_20__i12 (.D(n153), .CK(clk_c), .CD(n178), .Q(counter[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i12.GSR = "ENABLED";
    FD1S3IX counter_20__i11 (.D(n154), .CK(clk_c), .CD(n178), .Q(counter[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i11.GSR = "ENABLED";
    FD1S3IX counter_20__i10 (.D(n155), .CK(clk_c), .CD(n178), .Q(counter[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i10.GSR = "ENABLED";
    FD1S3IX counter_20__i9 (.D(n156), .CK(clk_c), .CD(n178), .Q(counter[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i9.GSR = "ENABLED";
    FD1S3IX counter_20__i8 (.D(n157), .CK(clk_c), .CD(n178), .Q(counter[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i8.GSR = "ENABLED";
    FD1S3IX counter_20__i7 (.D(n158), .CK(clk_c), .CD(n178), .Q(counter[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i7.GSR = "ENABLED";
    FD1S3IX counter_20__i6 (.D(n159), .CK(clk_c), .CD(n178), .Q(counter[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i6.GSR = "ENABLED";
    FD1S3IX counter_20__i5 (.D(n160), .CK(clk_c), .CD(n178), .Q(counter[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i5.GSR = "ENABLED";
    FD1S3IX counter_20__i4 (.D(n161), .CK(clk_c), .CD(n178), .Q(counter[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i4.GSR = "ENABLED";
    FD1S3IX counter_20__i3 (.D(n162), .CK(clk_c), .CD(n178), .Q(counter[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i3.GSR = "ENABLED";
    FD1S3IX counter_20__i2 (.D(n163), .CK(clk_c), .CD(n178), .Q(counter[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i2.GSR = "ENABLED";
    FD1S3IX counter_20__i1 (.D(n164), .CK(clk_c), .CD(n178), .Q(counter[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(24[17:28])
    defparam counter_20__i1.GSR = "ENABLED";
    CCU2C add_27_32 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n345), 
          .S1(n178));
    defparam add_27_32.INIT0 = 16'h555f;
    defparam add_27_32.INIT1 = 16'h0000;
    defparam add_27_32.INJECT1_0 = "NO";
    defparam add_27_32.INJECT1_1 = "NO";
    IB rst_pad (.I(rst), .O(rst_c));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(4[13:16])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

