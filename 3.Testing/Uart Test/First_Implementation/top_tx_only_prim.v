// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Jul 21 17:47:48 2024
//
// Verilog Description of module top_tx_only
//

module top_tx_only (clk_25mhz, o_Tx_Serial, led) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(1[8:19])
    input clk_25mhz;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(3[10:19])
    output o_Tx_Serial;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(4[11:22])
    output [7:0]led;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(5[17:20])
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(3[10:19])
    
    wire GND_net, VCC_net, o_Tx_Serial_c;
    wire [2:0]r_SM_Main;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(31[16:25])
    
    wire o_Tx_Done, o_Tx_Done_N_2;
    wire [7:0]r_Tx_Data;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(34[16:25])
    wire [2:0]r_SM_Main_2__N_42;
    
    wire n595;
    
    VHI i2 (.Z(VCC_net));
    \uart_tx(CLKS_PER_BIT=217)  uart_tx1 (.clk_25mhz_c(clk_25mhz_c), .o_Tx_Serial_c(o_Tx_Serial_c), 
            .r_SM_Main({Open_0, r_SM_Main[1], Open_1}), .\r_SM_Main_2__N_42[0] (r_SM_Main_2__N_42[0]), 
            .GND_net(GND_net), .VCC_net(VCC_net), .\r_Tx_Data[4] (r_Tx_Data[4]), 
            .n595(n595), .o_Tx_Done(o_Tx_Done)) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(28[32] 35[2])
    FD1S3AX i_Tx_DV_8 (.D(o_Tx_Done_N_2), .CK(clk_25mhz_c), .Q(r_SM_Main_2__N_42[0]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(38[8] 47[4])
    defparam i_Tx_DV_8.GSR = "ENABLED";
    LUT4 i520_4_lut (.A(r_Tx_Data[4]), .B(r_SM_Main[1]), .C(r_SM_Main_2__N_42[0]), 
         .Z(n595)) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam i520_4_lut.init = 16'hbaba;
    OB led_pad_7 (.I(GND_net), .O(led[7]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(5[17:20])
    OB o_Tx_Serial_pad (.I(o_Tx_Serial_c), .O(o_Tx_Serial));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(4[11:22])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB led_pad_6 (.I(GND_net), .O(led[6]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(5[17:20])
    OB led_pad_5 (.I(VCC_net), .O(led[5]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(5[17:20])
    OB led_pad_4 (.I(VCC_net), .O(led[4]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(5[17:20])
    OB led_pad_3 (.I(GND_net), .O(led[3]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(5[17:20])
    OB led_pad_2 (.I(GND_net), .O(led[2]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(5[17:20])
    OB led_pad_1 (.I(GND_net), .O(led[1]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(5[17:20])
    OB led_pad_0 (.I(GND_net), .O(led[0]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(5[17:20])
    IB clk_25mhz_pad (.I(clk_25mhz), .O(clk_25mhz_c));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(3[10:19])
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 o_Tx_Done_I_0_1_lut (.A(o_Tx_Done), .Z(o_Tx_Done_N_2)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(42[9:19])
    defparam o_Tx_Done_I_0_1_lut.init = 16'h5555;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module \uart_tx(CLKS_PER_BIT=217) 
//

module \uart_tx(CLKS_PER_BIT=217)  (clk_25mhz_c, o_Tx_Serial_c, r_SM_Main, 
            \r_SM_Main_2__N_42[0] , GND_net, VCC_net, \r_Tx_Data[4] , 
            n595, o_Tx_Done) /* synthesis syn_module_defined=1 */ ;
    input clk_25mhz_c;
    output o_Tx_Serial_c;
    output [2:0]r_SM_Main;
    input \r_SM_Main_2__N_42[0] ;
    input GND_net;
    input VCC_net;
    output \r_Tx_Data[4] ;
    input n595;
    output o_Tx_Done;
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_tx_only.v(3[10:19])
    wire [15:0]r_Clock_Count;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(32[17:30])
    
    wire clk_25mhz_c_enable_22, n343;
    wire [15:0]n69;
    
    wire n537, n468, n626, n506;
    wire [2:0]r_Bit_Index;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(33[16:27])
    
    wire clk_25mhz_c_enable_8, n529, n555, clk_25mhz_c_enable_9;
    wire [2:0]r_SM_Main_c;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(31[16:25])
    
    wire n628, n6, o_Tx_Done_N_78, clk_25mhz_c_enable_15;
    wire [2:0]n98;
    
    wire n421, n577, n550, n3, n513, n456, n573, n571, n547, 
        n455, n454;
    wire [15:0]n121;
    
    wire n10, n453, n629, n589, n630, n452, n451, n450, n449;
    
    FD1P3IX r_Clock_Count_76__i11 (.D(n69[11]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i11.GSR = "ENABLED";
    LUT4 i518_2_lut_rep_11 (.A(n537), .B(n468), .Z(n626)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i518_2_lut_rep_11.init = 16'heeee;
    FD1P3AX o_Tx_Serial_47 (.D(n506), .SP(clk_25mhz_c_enable_22), .CK(clk_25mhz_c), 
            .Q(o_Tx_Serial_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=28, LSE_RLINE=35 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam o_Tx_Serial_47.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n529), .SP(clk_25mhz_c_enable_8), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=28, LSE_RLINE=35 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(r_Clock_Count[7]), .B(r_Clock_Count[6]), .Z(n555)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i535_4_lut (.A(n468), .B(clk_25mhz_c_enable_9), .C(n537), .D(r_SM_Main[1]), 
         .Z(clk_25mhz_c_enable_8)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i535_4_lut.init = 16'hc8cc;
    LUT4 i112_3_lut_4_lut_else_4_lut (.A(n537), .B(n468), .C(r_SM_Main_c[0]), 
         .D(\r_SM_Main_2__N_42[0] ), .Z(n628)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i112_3_lut_4_lut_else_4_lut.init = 16'h1f10;
    LUT4 i1_2_lut_adj_1 (.A(r_SM_Main[1]), .B(r_SM_Main_c[0]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'heeee;
    LUT4 r_SM_Main_1__bdd_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main_c[0]), .C(r_SM_Main_c[2]), 
         .D(n626), .Z(o_Tx_Done_N_78)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C)))) */ ;
    defparam r_SM_Main_1__bdd_4_lut.init = 16'h1810;
    LUT4 i14_4_lut_4_lut_4_lut (.A(r_SM_Main_c[2]), .B(n626), .C(r_SM_Main_c[0]), 
         .D(r_SM_Main[1]), .Z(clk_25mhz_c_enable_15)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i14_4_lut_4_lut_4_lut.init = 16'h400f;
    LUT4 i1_4_lut (.A(n98[2]), .B(n626), .C(n421), .D(n577), .Z(n550)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut.init = 16'h0800;
    LUT4 i213_3_lut_4_lut (.A(n537), .B(n468), .C(r_SM_Main_c[0]), .D(r_SM_Main[1]), 
         .Z(n3)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i213_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i527_2_lut_3_lut_3_lut (.A(r_SM_Main_c[2]), .B(r_SM_Main_c[0]), 
         .C(r_SM_Main[1]), .Z(n513)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i527_2_lut_3_lut_3_lut.init = 16'hbfbf;
    CCU2C r_Clock_Count_76_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n456), .S0(n69[15]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76_add_4_17.INIT0 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_76_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_76_add_4_17.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_76__i12 (.D(n69[12]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i12.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_76__i13 (.D(n69[13]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i13.GSR = "ENABLED";
    LUT4 i533_4_lut (.A(r_SM_Main[1]), .B(n626), .C(r_SM_Main_c[0]), .D(r_Bit_Index[0]), 
         .Z(n529)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i533_4_lut.init = 16'h0008;
    LUT4 i96_3_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[1]), .C(r_Bit_Index[0]), 
         .Z(n98[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(104[36:54])
    defparam i96_3_lut.init = 16'h6a6a;
    FD1S3IX r_SM_Main_i1 (.D(n3), .CK(clk_25mhz_c), .CD(r_SM_Main_c[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=28, LSE_RLINE=35 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_2 (.A(r_SM_Main_c[0]), .B(r_SM_Main[1]), .Z(n577)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_2.init = 16'h4444;
    LUT4 i1_4_lut_adj_3 (.A(r_Clock_Count[11]), .B(n573), .C(n571), .D(r_Clock_Count[10]), 
         .Z(n468)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_3.init = 16'hfffe;
    FD1P3AX r_Bit_Index_i2 (.D(n550), .SP(clk_25mhz_c_enable_8), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=28, LSE_RLINE=35 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    LUT4 i530_4_lut (.A(r_SM_Main_c[2]), .B(n468), .C(n537), .D(n6), 
         .Z(n343)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i530_4_lut.init = 16'h5455;
    LUT4 i1_3_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .C(r_Bit_Index[2]), 
         .Z(n421)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    FD1P3IX r_Clock_Count_76__i14 (.D(n69[14]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i14.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n547), .SP(clk_25mhz_c_enable_8), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=28, LSE_RLINE=35 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i4 (.D(n595), .SP(clk_25mhz_c_enable_9), .CK(clk_25mhz_c), 
            .Q(\r_Tx_Data[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=28, LSE_RLINE=35 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    CCU2C r_Clock_Count_76_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n455), .COUT(n456), .S0(n69[13]), 
          .S1(n69[14]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76_add_4_15.INIT0 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_15.INIT1 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_76_add_4_15.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_76_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n454), .COUT(n455), .S0(n69[11]), 
          .S1(n69[12]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76_add_4_13.INIT0 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_13.INIT1 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_76_add_4_13.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_76__i1 (.D(n69[1]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i1.GSR = "ENABLED";
    LUT4 i2_1_lut_rep_12 (.A(r_SM_Main_c[2]), .Z(clk_25mhz_c_enable_22)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut_rep_12.init = 16'h5555;
    FD1P3IX r_Clock_Count_76__i15 (.D(n69[15]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i15.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_4 (.A(n10), .B(n626), .C(r_SM_Main_c[0]), .D(r_SM_Main[1]), 
         .Z(n547)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_4.init = 16'h0800;
    CCU2C r_Clock_Count_76_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n453), .COUT(n454), .S0(n69[9]), 
          .S1(n69[10]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76_add_4_11.INIT0 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_11.INIT1 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_76_add_4_11.INJECT1_1 = "NO";
    LUT4 i112_3_lut_4_lut_then_4_lut (.A(n537), .B(n468), .C(r_SM_Main_c[0]), 
         .D(n421), .Z(n629)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i112_3_lut_4_lut_then_4_lut.init = 16'h1e10;
    LUT4 i24_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n10)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut.init = 16'h6666;
    LUT4 i20_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main_c[0]), .C(n589), .D(r_Bit_Index[1]), 
         .Z(n506)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(49[7] 148[14])
    defparam i20_4_lut.init = 16'h99b9;
    LUT4 i1_2_lut_adj_5 (.A(r_Bit_Index[2]), .B(\r_Tx_Data[4] ), .Z(n589)) /* synthesis lut_function=(A (B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(49[7] 148[14])
    defparam i1_2_lut_adj_5.init = 16'h8888;
    PFUMX i537 (.BLUT(n628), .ALUT(n629), .C0(r_SM_Main[1]), .Z(n630));
    CCU2C r_Clock_Count_76_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n452), .COUT(n453), .S0(n69[7]), 
          .S1(n69[8]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76_add_4_9.INIT0 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_9.INIT1 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_76_add_4_9.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_76_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n451), .COUT(n452), .S0(n69[5]), 
          .S1(n69[6]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76_add_4_7.INIT0 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_7.INIT1 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_76_add_4_7.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_76__i2 (.D(n69[2]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_76__i3 (.D(n69[3]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_6 (.A(r_Clock_Count[14]), .B(r_Clock_Count[15]), .C(r_Clock_Count[8]), 
         .D(r_Clock_Count[9]), .Z(n573)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_6.init = 16'hfffe;
    FD1P3IX r_Clock_Count_76__i4 (.D(n69[4]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_7 (.A(r_Clock_Count[13]), .B(r_Clock_Count[12]), .Z(n571)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_7.init = 16'heeee;
    FD1P3AX r_Tx_Done_46 (.D(o_Tx_Done_N_78), .SP(clk_25mhz_c_enable_15), 
            .CK(clk_25mhz_c), .Q(o_Tx_Done)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=28, LSE_RLINE=35 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Done_46.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_76__i5 (.D(n69[5]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i5.GSR = "ENABLED";
    CCU2C r_Clock_Count_76_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n450), .COUT(n451), .S0(n69[3]), 
          .S1(n69[4]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76_add_4_5.INIT0 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_5.INIT1 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_76_add_4_5.INJECT1_1 = "NO";
    FD1S3IX r_SM_Main_i2 (.D(n626), .CK(clk_25mhz_c), .CD(n513), .Q(r_SM_Main_c[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=28, LSE_RLINE=35 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i0 (.D(n630), .CK(clk_25mhz_c), .CD(r_SM_Main_c[2]), 
            .Q(r_SM_Main_c[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=28, LSE_RLINE=35 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    CCU2C r_Clock_Count_76_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n449), .COUT(n450), .S0(n69[1]), .S1(n69[2]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76_add_4_3.INIT0 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_3.INIT1 = 16'haaa0;
    defparam r_Clock_Count_76_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_76_add_4_3.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_76__i6 (.D(n69[6]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_76__i7 (.D(n69[7]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i7.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_76__i8 (.D(n69[8]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i8.GSR = "ENABLED";
    CCU2C r_Clock_Count_76_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n449), .S1(n69[0]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76_add_4_1.INIT0 = 16'h0000;
    defparam r_Clock_Count_76_add_4_1.INIT1 = 16'h555f;
    defparam r_Clock_Count_76_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_76_add_4_1.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_76__i0 (.D(n69[0]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i0.GSR = "ENABLED";
    LUT4 i524_2_lut (.A(r_SM_Main_c[2]), .B(r_SM_Main_c[0]), .Z(clk_25mhz_c_enable_9)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i524_2_lut.init = 16'h1111;
    FD1P3IX r_Clock_Count_76__i9 (.D(n69[9]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i9.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_76__i10 (.D(n69[10]), .SP(clk_25mhz_c_enable_22), 
            .CD(n343), .CK(clk_25mhz_c), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_76__i10.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_8 (.A(n555), .B(r_Clock_Count[3]), .C(r_Clock_Count[5]), 
         .D(r_Clock_Count[4]), .Z(n537)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_8.init = 16'ha8a0;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

