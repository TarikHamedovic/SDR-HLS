// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Feb 28 21:13:52 2024
//
// Verilog Description of module uart_tx
//

module uart_tx (osc_clk, i_Tx_DV, i_Tx_Byte, o_Tx_Active, o_Tx_Serial, 
            o_Tx_Done) /* synthesis syn_module_defined=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(14[8:15])
    input osc_clk;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(17[16:23])
    input i_Tx_DV;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(18[16:23])
    input [7:0]i_Tx_Byte;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(19[16:25])
    output o_Tx_Active;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(20[16:27])
    output o_Tx_Serial;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(21[16:27])
    output o_Tx_Done;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(22[16:25])
    
    wire osc_clk_c /* synthesis SET_AS_NETWORK=osc_clk_c, is_clock=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(17[16:23])
    
    wire GND_net, VCC_net, i_Tx_Byte_c_7, i_Tx_Byte_c_6, i_Tx_Byte_c_5, 
        i_Tx_Byte_c_4, i_Tx_Byte_c_3, i_Tx_Byte_c_2, i_Tx_Byte_c_1, 
        i_Tx_Byte_c_0, o_Tx_Active_c, o_Tx_Serial_c, o_Tx_Done_c;
    wire [2:0]r_SM_Main;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(31[16:25])
    wire [15:0]r_Clock_Count;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(32[17:30])
    wire [2:0]r_Bit_Index;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(33[16:27])
    wire [7:0]r_Tx_Data;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(34[16:25])
    
    wire r_SM_Main_2__N_40_c_0;
    wire [2:0]r_SM_Main_2__N_37;
    
    wire o_Tx_Serial_N_75, n16, n615, n853, n834, n85, n84, n83, 
        n82, n81, n80, n79, n78, osc_clk_c_enable_7, o_Tx_Done_N_76, 
        n744, n798, n743, n941, n742, n741, n791, n894, n898, 
        n70, n71, n72, n73, n74, n75, n76, n77, n10, n931, 
        n835, n3, n3_adj_1, n893, n940, n719, osc_clk_c_enable_24, 
        n705, osc_clk_c_enable_1, osc_clk_c_enable_18, n833, n877, 
        n3_adj_2, n944, n897, n861, n896, osc_clk_c_enable_25, n895, 
        osc_clk_c_enable_30, n843, n943, n740, n739, n841, n738, 
        n737, n942, n549, n550;
    
    VHI i2 (.Z(VCC_net));
    FD1P3AX r_Tx_Active_49 (.D(n3_adj_1), .SP(osc_clk_c_enable_1), .CK(osc_clk_c), 
            .Q(o_Tx_Active_c)) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Active_49.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n791), .SP(osc_clk_c_enable_24), .CK(osc_clk_c), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_122__i6 (.D(n79), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i6.GSR = "ENABLED";
    OB o_Tx_Active_pad (.I(o_Tx_Active_c), .O(o_Tx_Active));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(20[16:27])
    FD1P3AX o_Tx_Serial_47 (.D(n3), .SP(osc_clk_c_enable_30), .CK(osc_clk_c), 
            .Q(o_Tx_Serial_c));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam o_Tx_Serial_47.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i0 (.D(i_Tx_Byte_c_0), .SP(osc_clk_c_enable_18), .CK(osc_clk_c), 
            .Q(r_Tx_Data[0])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(r_Clock_Count[3]), .B(r_Clock_Count[4]), .Z(n841)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i24_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n10)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut.init = 16'h6666;
    FD1S3IX r_SM_Main_i0 (.D(n550), .CK(osc_clk_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_1 (.A(r_Clock_Count[1]), .B(r_Clock_Count[6]), .Z(n843)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'heeee;
    GSR GSR_INST (.GSR(VCC_net));
    OB o_Tx_Serial_pad (.I(o_Tx_Serial_c), .O(o_Tx_Serial));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(21[16:27])
    LUT4 i614_4_lut (.A(r_SM_Main[2]), .B(n853), .C(n719), .D(n940), 
         .Z(n615)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;
    defparam i614_4_lut.init = 16'h5551;
    FD1P3IX r_Clock_Count_122__i7 (.D(n78), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i7.GSR = "ENABLED";
    LUT4 i3_2_lut_rep_19 (.A(r_Clock_Count[11]), .B(r_Clock_Count[12]), 
         .Z(n942)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut_rep_19.init = 16'heeee;
    LUT4 r_Bit_Index_2__bdd_4_lut (.A(r_Bit_Index[2]), .B(r_SM_Main[1]), 
         .C(r_Bit_Index[0]), .D(r_Bit_Index[1]), .Z(n931)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam r_Bit_Index_2__bdd_4_lut.init = 16'h4888;
    FD1P3AX r_Tx_Done_46 (.D(o_Tx_Done_N_76), .SP(osc_clk_c_enable_7), .CK(osc_clk_c), 
            .Q(o_Tx_Done_c)) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Done_46.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_122__i0 (.D(n85), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(n16)) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i0.GSR = "ENABLED";
    CCU2C r_Clock_Count_122_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n744), .S0(n70));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122_add_4_17.INIT0 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_122_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_122_add_4_17.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_122_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n743), .COUT(n744), .S0(n72), 
          .S1(n71));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122_add_4_15.INIT0 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_15.INIT1 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_122_add_4_15.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_122_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n742), .COUT(n743), .S0(n74), 
          .S1(n73));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122_add_4_13.INIT0 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_13.INIT1 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_122_add_4_13.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_122_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n741), .COUT(n742), .S0(n76), 
          .S1(n75));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122_add_4_11.INIT0 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_11.INIT1 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_122_add_4_11.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_122_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n740), .COUT(n741), .S0(n78), 
          .S1(n77));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122_add_4_9.INIT0 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_9.INIT1 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_122_add_4_9.INJECT1_1 = "NO";
    FD1S3IX r_SM_Main_i1 (.D(n3_adj_2), .CK(osc_clk_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    OB o_Tx_Done_pad (.I(o_Tx_Done_c), .O(o_Tx_Done));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(22[16:25])
    IB osc_clk_pad (.I(osc_clk), .O(osc_clk_c));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(17[16:23])
    IB r_SM_Main_2__N_40_pad_0 (.I(i_Tx_DV), .O(r_SM_Main_2__N_40_c_0));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(18[16:23])
    IB i_Tx_Byte_pad_7 (.I(i_Tx_Byte[7]), .O(i_Tx_Byte_c_7));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(19[16:25])
    IB i_Tx_Byte_pad_6 (.I(i_Tx_Byte[6]), .O(i_Tx_Byte_c_6));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(19[16:25])
    IB i_Tx_Byte_pad_5 (.I(i_Tx_Byte[5]), .O(i_Tx_Byte_c_5));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(19[16:25])
    IB i_Tx_Byte_pad_4 (.I(i_Tx_Byte[4]), .O(i_Tx_Byte_c_4));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(19[16:25])
    IB i_Tx_Byte_pad_3 (.I(i_Tx_Byte[3]), .O(i_Tx_Byte_c_3));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(19[16:25])
    IB i_Tx_Byte_pad_2 (.I(i_Tx_Byte[2]), .O(i_Tx_Byte_c_2));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(19[16:25])
    IB i_Tx_Byte_pad_1 (.I(i_Tx_Byte[1]), .O(i_Tx_Byte_c_1));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(19[16:25])
    IB i_Tx_Byte_pad_0 (.I(i_Tx_Byte[0]), .O(i_Tx_Byte_c_0));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(19[16:25])
    LUT4 i1_3_lut_4_lut (.A(r_Clock_Count[11]), .B(r_Clock_Count[12]), .C(r_SM_Main[1]), 
         .D(r_Clock_Count[15]), .Z(n861)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0010;
    FD1P3IX r_Clock_Count_122__i5 (.D(n80), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i5.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_122__i8 (.D(n77), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i8.GSR = "ENABLED";
    LUT4 r_SM_Main_2__I_0_58_i3_3_lut (.A(r_SM_Main[0]), .B(o_Tx_Serial_N_75), 
         .C(r_SM_Main[1]), .Z(n3)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(49[7] 148[14])
    defparam r_SM_Main_2__I_0_58_i3_3_lut.init = 16'he5e5;
    FD1P3IX r_Clock_Count_122__i9 (.D(n76), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i9.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i1 (.D(i_Tx_Byte_c_1), .SP(osc_clk_c_enable_18), .CK(osc_clk_c), 
            .Q(r_Tx_Data[1])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i2 (.D(i_Tx_Byte_c_2), .SP(osc_clk_c_enable_18), .CK(osc_clk_c), 
            .Q(r_Tx_Data[2])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i2.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i3 (.D(i_Tx_Byte_c_3), .SP(osc_clk_c_enable_18), .CK(osc_clk_c), 
            .Q(r_Tx_Data[3])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i3.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i4 (.D(i_Tx_Byte_c_4), .SP(osc_clk_c_enable_18), .CK(osc_clk_c), 
            .Q(r_Tx_Data[4])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i5 (.D(i_Tx_Byte_c_5), .SP(osc_clk_c_enable_18), .CK(osc_clk_c), 
            .Q(r_Tx_Data[5])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i5.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i6 (.D(i_Tx_Byte_c_6), .SP(osc_clk_c_enable_18), .CK(osc_clk_c), 
            .Q(r_Tx_Data[6])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i6.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i7 (.D(i_Tx_Byte_c_7), .SP(osc_clk_c_enable_18), .CK(osc_clk_c), 
            .Q(r_Tx_Data[7])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i7.GSR = "ENABLED";
    LUT4 i434_4_lut (.A(n835), .B(r_Clock_Count[10]), .C(n834), .D(r_Clock_Count[7]), 
         .Z(n719)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i434_4_lut.init = 16'hc888;
    FD1P3IX r_Clock_Count_122__i10 (.D(n75), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i10.GSR = "ENABLED";
    LUT4 i602_3_lut (.A(r_Tx_Data[6]), .B(r_Tx_Data[7]), .C(r_Bit_Index[0]), 
         .Z(n896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i602_3_lut.init = 16'hcaca;
    LUT4 i265_3_lut (.A(n549), .B(r_SM_Main_2__N_37[1]), .C(r_SM_Main[0]), 
         .Z(n550)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(49[7] 148[14])
    defparam i265_3_lut.init = 16'h3a3a;
    LUT4 i600_3_lut (.A(r_Tx_Data[2]), .B(r_Tx_Data[3]), .C(r_Bit_Index[0]), 
         .Z(n894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i600_3_lut.init = 16'hcaca;
    PFUMX i604 (.BLUT(n895), .ALUT(n896), .C0(r_Bit_Index[1]), .Z(n898));
    LUT4 i264_4_lut (.A(r_SM_Main_2__N_40_c_0), .B(n705), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_37[1]), .Z(n549)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(49[7] 148[14])
    defparam i264_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_adj_2 (.A(r_Clock_Count[9]), .B(r_Clock_Count[8]), .Z(n835)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_2.init = 16'heeee;
    LUT4 i14_4_lut_4_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main_2__N_37[1]), 
         .C(r_SM_Main[0]), .D(r_SM_Main[1]), .Z(osc_clk_c_enable_7)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i14_4_lut_4_lut_4_lut.init = 16'h400f;
    LUT4 i1_4_lut (.A(n942), .B(n719), .C(n940), .D(r_Clock_Count[15]), 
         .Z(r_SM_Main_2__N_37[1])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i2_1_lut_rep_16 (.A(r_SM_Main[2]), .Z(osc_clk_c_enable_30)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut_rep_16.init = 16'h5555;
    LUT4 i2_2_lut_rep_17 (.A(r_Clock_Count[13]), .B(r_Clock_Count[14]), 
         .Z(n940)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_17.init = 16'heeee;
    LUT4 i601_3_lut (.A(r_Tx_Data[4]), .B(r_Tx_Data[5]), .C(r_Bit_Index[0]), 
         .Z(n895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i601_3_lut.init = 16'hcaca;
    LUT4 r_SM_Main_1__bdd_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main_2__N_37[1]), 
         .D(r_SM_Main[0]), .Z(o_Tx_Done_N_76)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A ((D)+!B))) */ ;
    defparam r_SM_Main_1__bdd_4_lut.init = 16'h2044;
    LUT4 i611_4_lut_then_4_lut (.A(r_SM_Main_2__N_37[1]), .B(r_SM_Main[2]), 
         .C(r_SM_Main[1]), .D(r_SM_Main[0]), .Z(n944)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+(C+(D))))) */ ;
    defparam i611_4_lut_then_4_lut.init = 16'h2003;
    LUT4 i1_4_lut_adj_3 (.A(r_Clock_Count[2]), .B(n841), .C(n843), .D(r_Clock_Count[5]), 
         .Z(n834)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_3.init = 16'hfffe;
    LUT4 i617_2_lut_3_lut_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .Z(n798)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i617_2_lut_3_lut_3_lut.init = 16'hbfbf;
    LUT4 i599_3_lut (.A(r_Tx_Data[0]), .B(r_Tx_Data[1]), .C(r_Bit_Index[0]), 
         .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i599_3_lut.init = 16'hcaca;
    LUT4 i611_4_lut_else_4_lut (.A(r_SM_Main_2__N_37[1]), .B(r_SM_Main[2]), 
         .C(r_SM_Main[1]), .D(r_SM_Main[0]), .Z(n943)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i611_4_lut_else_4_lut.init = 16'h2000;
    LUT4 i312_2_lut_3_lut (.A(r_SM_Main_2__N_40_c_0), .B(r_SM_Main[0]), 
         .C(r_SM_Main[1]), .Z(n3_adj_1)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(49[7] 148[14])
    defparam i312_2_lut_3_lut.init = 16'h0202;
    FD1P3IX r_Clock_Count_122__i11 (.D(n74), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i11.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_4 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(r_Clock_Count[15]), 
         .D(n942), .Z(n853)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_4.init = 16'h000e;
    LUT4 i268_2_lut_3_lut (.A(r_SM_Main_2__N_37[1]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .Z(n3_adj_2)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i268_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_3_lut_4_lut_adj_5 (.A(r_Clock_Count[13]), .B(r_Clock_Count[14]), 
         .C(r_Clock_Count[15]), .D(n942), .Z(n877)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_5.init = 16'hfffe;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3IX r_Clock_Count_122__i12 (.D(n73), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i12.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n705)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    FD1P3IX r_Clock_Count_122__i13 (.D(n72), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i13.GSR = "ENABLED";
    LUT4 i514_2_lut_rep_18 (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .Z(n941)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i514_2_lut_rep_18.init = 16'heeee;
    PFUMX i626 (.BLUT(n943), .ALUT(n944), .C0(r_SM_Main_2__N_40_c_0), 
          .Z(osc_clk_c_enable_1));
    VLO i1 (.Z(GND_net));
    FD1P3IX r_Clock_Count_122__i14 (.D(n71), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i14.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n931), .SP(osc_clk_c_enable_24), .CK(osc_clk_c), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n833), .SP(osc_clk_c_enable_25), .CK(osc_clk_c), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_6 (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_SM_Main_2__N_40_c_0), 
         .D(r_SM_Main[1]), .Z(osc_clk_c_enable_18)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_6.init = 16'h0010;
    CCU2C r_Clock_Count_122_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n739), .COUT(n740), .S0(n80), 
          .S1(n79));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122_add_4_7.INIT0 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_7.INIT1 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_122_add_4_7.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_122_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n738), .COUT(n739), .S0(n82), 
          .S1(n81));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122_add_4_5.INIT0 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_5.INIT1 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_122_add_4_5.INJECT1_1 = "NO";
    LUT4 i620_4_lut (.A(n941), .B(n861), .C(n719), .D(n940), .Z(osc_clk_c_enable_24)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;
    defparam i620_4_lut.init = 16'h5551;
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_37[1]), .CK(osc_clk_c), .CD(n798), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    CCU2C r_Clock_Count_122_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n737), .COUT(n738), .S0(n84), 
          .S1(n83));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122_add_4_3.INIT0 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_3.INIT1 = 16'haaa0;
    defparam r_Clock_Count_122_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_122_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_7 (.A(r_Bit_Index[0]), .B(r_SM_Main[1]), .Z(n791)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_7.init = 16'h4444;
    LUT4 i1_4_lut_adj_8 (.A(n877), .B(n941), .C(n719), .D(r_SM_Main[1]), 
         .Z(osc_clk_c_enable_25)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_8.init = 16'h3233;
    FD1P3IX r_Clock_Count_122__i15 (.D(n70), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i15.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_122__i1 (.D(n84), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i1.GSR = "ENABLED";
    CCU2C r_Clock_Count_122_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n16), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n737), .S1(n85));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122_add_4_1.INIT0 = 16'h0000;
    defparam r_Clock_Count_122_add_4_1.INIT1 = 16'h555f;
    defparam r_Clock_Count_122_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_122_add_4_1.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_122__i2 (.D(n83), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_9 (.A(n10), .B(r_SM_Main_2__N_37[1]), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(n833)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_9.init = 16'h0800;
    L6MUX21 i605 (.D0(n897), .D1(n898), .SD(r_Bit_Index[2]), .Z(o_Tx_Serial_N_75));
    FD1P3IX r_Clock_Count_122__i3 (.D(n82), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_122__i4 (.D(n81), .SP(osc_clk_c_enable_30), .CD(n615), 
            .CK(osc_clk_c), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_122__i4.GSR = "ENABLED";
    PFUMX i603 (.BLUT(n893), .ALUT(n894), .C0(r_Bit_Index[1]), .Z(n897));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

