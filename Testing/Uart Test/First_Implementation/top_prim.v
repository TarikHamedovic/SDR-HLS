// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon Mar 18 02:47:51 2024
//
// Verilog Description of module top
//

module top (i_Rx_Serial, clk_25mhz, led) /* synthesis syn_module_defined=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(1[8:11])
    input i_Rx_Serial;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(3[11:22])
    input clk_25mhz;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(4[10:19])
    output [7:0]led;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(6[17:20])
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(4[10:19])
    
    wire GND_net, i_Rx_Serial_c, led_c_7, led_c_6, led_c_5, led_c_4, 
        led_c_3, led_c_2, led_c_1, led_c_0;
    wire [7:0]o_Rx_Byte1;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(15[11:21])
    
    wire VCC_net;
    
    VHI i18 (.Z(VCC_net));
    \uart_rx(CLKS_PER_BIT=27)  uart_rx1 (.i_Rx_Serial_c(i_Rx_Serial_c), .GND_net(GND_net), 
            .VCC_net(VCC_net), .o_Rx_Byte1({o_Rx_Byte1}), .clk_25mhz_c(clk_25mhz_c)) /* synthesis syn_module_defined=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(29[32] 34[2])
    FD1S3AX o_Rx_Byte_i2 (.D(o_Rx_Byte1[1]), .CK(clk_25mhz_c), .Q(led_c_1));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(36[8] 52[4])
    defparam o_Rx_Byte_i2.GSR = "ENABLED";
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(6[17:20])
    FD1S3AX o_Rx_Byte_i1 (.D(o_Rx_Byte1[0]), .CK(clk_25mhz_c), .Q(led_c_0));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(36[8] 52[4])
    defparam o_Rx_Byte_i1.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3AX o_Rx_Byte_i8 (.D(o_Rx_Byte1[7]), .CK(clk_25mhz_c), .Q(led_c_7));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(36[8] 52[4])
    defparam o_Rx_Byte_i8.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i7 (.D(o_Rx_Byte1[6]), .CK(clk_25mhz_c), .Q(led_c_6));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(36[8] 52[4])
    defparam o_Rx_Byte_i7.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i6 (.D(o_Rx_Byte1[5]), .CK(clk_25mhz_c), .Q(led_c_5));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(36[8] 52[4])
    defparam o_Rx_Byte_i6.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i5 (.D(o_Rx_Byte1[4]), .CK(clk_25mhz_c), .Q(led_c_4));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(36[8] 52[4])
    defparam o_Rx_Byte_i5.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i4 (.D(o_Rx_Byte1[3]), .CK(clk_25mhz_c), .Q(led_c_3));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(36[8] 52[4])
    defparam o_Rx_Byte_i4.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i3 (.D(o_Rx_Byte1[2]), .CK(clk_25mhz_c), .Q(led_c_2));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(36[8] 52[4])
    defparam o_Rx_Byte_i3.GSR = "ENABLED";
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(6[17:20])
    IB i_Rx_Serial_pad (.I(i_Rx_Serial), .O(i_Rx_Serial_c));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(3[11:22])
    IB clk_25mhz_pad (.I(clk_25mhz), .O(clk_25mhz_c));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(4[10:19])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module \uart_rx(CLKS_PER_BIT=27) 
//

module \uart_rx(CLKS_PER_BIT=27)  (i_Rx_Serial_c, GND_net, VCC_net, o_Rx_Byte1, 
            clk_25mhz_c) /* synthesis syn_module_defined=1 */ ;
    input i_Rx_Serial_c;
    input GND_net;
    input VCC_net;
    output [7:0]o_Rx_Byte1;
    input clk_25mhz_c;
    
    wire [7:0]UartClk /* synthesis SET_AS_NETWORK=\uart_rx1/UartClk[2], is_clock=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(37[14:21])
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/top.v(4[10:19])
    
    wire r_Rx_Data_R, r_Rx_Data;
    wire [2:0]r_SM_Main;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(43[17:26])
    wire [2:0]r_Bit_Index;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(40[17:28])
    
    wire n1128;
    wire [7:0]r_Rx_Byte;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(41[17:26])
    
    wire UartClk_2_enable_1, n689;
    wire [15:0]r_Clock_Count;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(39[18:31])
    wire [15:0]n69;
    
    wire n690, UartClk_2_enable_12, UartClk_2_enable_3, n752;
    wire [2:0]r_SM_Main_2__N_47;
    
    wire UartClk_2_enable_15, n952, n221, n19, n904, n912, UartClk_2_enable_29, 
        n585, n643, n1171, n6, n910, n789, n1276, n1074, n698, 
        n1054, n1052, n1042, n891, n972;
    wire [2:0]n30;
    wire [2:0]n17;
    
    wire n1118, n1170, n688, n894, n1250, n1274, n1094, n1247, 
        n1249, n775, n990, UartClk_2_enable_25, n1072, n1136, n1000, 
        n1114, n1275, n1106, n1154, n1156, n890, n1246, n1124, 
        UartClk_2_enable_30, n693, n692, n1164, n1034, UartClk_2_enable_31, 
        n1148, n1028, n980, UartClk_2_enable_32, n691, n1172, n687, 
        UartClk_2_enable_33, n686, n8, n685, UartClk_2_enable_34, 
        UartClk_2_enable_35, n1008;
    
    FD1S3AY r_Rx_Data_R_61 (.D(i_Rx_Serial_c), .CK(UartClk[2]), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(57[11] 62[8])
    defparam r_Rx_Data_R_61.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_62 (.D(r_Rx_Data_R), .CK(UartClk[2]), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(57[11] 62[8])
    defparam r_Rx_Data_62.GSR = "ENABLED";
    LUT4 i1010_2_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[1]), .Z(n1128)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1010_2_lut.init = 16'h8888;
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(UartClk_2_enable_1), .CK(UartClk[2]), 
            .Q(r_Rx_Byte[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    CCU2C r_Clock_Count_105_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n689), .COUT(n690), .S0(n69[9]), 
          .S1(n69[10]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105_add_4_11.INIT0 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_11.INIT1 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_105_add_4_11.INJECT1_1 = "NO";
    FD1P3AX o_Rx_Byte_i0 (.D(r_Rx_Byte[0]), .SP(UartClk_2_enable_12), .CK(UartClk[2]), 
            .Q(o_Rx_Byte1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i0.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n752), .SP(UartClk_2_enable_3), .CK(UartClk[2]), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_47[2]), .Z(UartClk_2_enable_15)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1101;
    LUT4 i1068_4_lut (.A(n952), .B(r_SM_Main_2__N_47[1]), .C(n221), .D(r_SM_Main[1]), 
         .Z(UartClk_2_enable_1)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(114[17:39])
    defparam i1068_4_lut.init = 16'h1000;
    LUT4 i1_4_lut (.A(r_Clock_Count[12]), .B(r_Clock_Count[6]), .C(r_Clock_Count[7]), 
         .D(r_Clock_Count[9]), .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_1 (.A(r_Clock_Count[11]), .B(r_Clock_Count[14]), 
         .C(n904), .D(n19), .Z(n912)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_3_lut_4_lut_adj_1.init = 16'hfffe;
    FD1P3IX r_Clock_Count_105__i8 (.D(n69[8]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i8.GSR = "ENABLED";
    LUT4 i1053_4_lut (.A(n643), .B(r_SM_Main_2__N_47[1]), .C(r_SM_Main[0]), 
         .D(r_SM_Main_2__N_47[2]), .Z(n1171)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i1053_4_lut.init = 16'hcac0;
    FD1P3IX r_Clock_Count_105__i7 (.D(n69[7]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i7.GSR = "ENABLED";
    LUT4 i1094_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main_2__N_47[1]), .C(r_SM_Main[1]), 
         .D(r_SM_Main[2]), .Z(UartClk_2_enable_12)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1094_4_lut.init = 16'h0020;
    LUT4 i678_4_lut (.A(r_SM_Main[0]), .B(n912), .C(n6), .D(n910), .Z(n789)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i678_4_lut.init = 16'haaa8;
    LUT4 i1077_4_lut (.A(n1276), .B(n1074), .C(n698), .D(n19), .Z(UartClk_2_enable_3)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;
    defparam i1077_4_lut.init = 16'h5551;
    LUT4 i1_4_lut_adj_2 (.A(n1054), .B(n698), .C(n19), .D(n1052), .Z(r_SM_Main_2__N_47[2])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_4_lut_adj_2.init = 16'hfffe;
    LUT4 i1_3_lut (.A(n1042), .B(r_SM_Main_2__N_47[1]), .C(n643), .Z(n891)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h0202;
    LUT4 i1_3_lut_4_lut_adj_3 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_Bit_Index[2]), 
         .D(r_Bit_Index[0]), .Z(n972)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_3.init = 16'hfffe;
    FD1S3AX UartClk_103_133__i0 (.D(n17[0]), .CK(clk_25mhz_c), .Q(n30[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(49[15:29])
    defparam UartClk_103_133__i0.GSR = "ENABLED";
    LUT4 i1052_4_lut (.A(r_Rx_Data), .B(n1118), .C(r_SM_Main[0]), .D(n6), 
         .Z(n1170)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;
    defparam i1052_4_lut.init = 16'hf5c5;
    FD1P3AX o_Rx_Byte_i7 (.D(r_Rx_Byte[7]), .SP(UartClk_2_enable_12), .CK(UartClk[2]), 
            .Q(o_Rx_Byte1[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i7.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i6 (.D(r_Rx_Byte[6]), .SP(UartClk_2_enable_12), .CK(UartClk[2]), 
            .Q(o_Rx_Byte1[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i6.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i5 (.D(r_Rx_Byte[5]), .SP(UartClk_2_enable_12), .CK(UartClk[2]), 
            .Q(o_Rx_Byte1[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i5.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i4 (.D(r_Rx_Byte[4]), .SP(UartClk_2_enable_12), .CK(UartClk[2]), 
            .Q(o_Rx_Byte1[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i4.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i3 (.D(r_Rx_Byte[3]), .SP(UartClk_2_enable_12), .CK(UartClk[2]), 
            .Q(o_Rx_Byte1[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i3.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i2 (.D(r_Rx_Byte[2]), .SP(UartClk_2_enable_12), .CK(UartClk[2]), 
            .Q(o_Rx_Byte1[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i2.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i1 (.D(r_Rx_Byte[1]), .SP(UartClk_2_enable_12), .CK(UartClk[2]), 
            .Q(o_Rx_Byte1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_4 (.A(r_Bit_Index[2]), .B(r_SM_Main[0]), .C(n221), 
         .D(r_SM_Main[1]), .Z(n1042)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_4.init = 16'h1200;
    FD1P3IX r_Clock_Count_105__i6 (.D(n69[6]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i6.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_5 (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n643)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_5.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_adj_6 (.A(r_Clock_Count[11]), .B(r_Clock_Count[14]), 
         .C(r_Clock_Count[5]), .D(r_Clock_Count[8]), .Z(n1054)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_3_lut_4_lut_adj_6.init = 16'hfffe;
    CCU2C r_Clock_Count_105_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n688), .COUT(n689), .S0(n69[7]), 
          .S1(n69[8]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105_add_4_9.INIT0 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_9.INIT1 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_105_add_4_9.INJECT1_1 = "NO";
    FD1P3AX r_Bit_Index_i1 (.D(n894), .SP(UartClk_2_enable_15), .CK(UartClk[2]), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n891), .SP(UartClk_2_enable_15), .CK(UartClk[2]), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i1 (.D(n1250), .CK(UartClk[2]), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 n1248_bdd_2_lut_3_lut_4_lut (.A(n1274), .B(r_Rx_Data), .C(n1094), 
         .D(n1247), .Z(n1249)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam n1248_bdd_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1060_4_lut (.A(n775), .B(r_SM_Main_2__N_47[1]), .C(r_SM_Main[1]), 
         .D(n990), .Z(UartClk_2_enable_25)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1060_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_7 (.A(n1072), .B(r_Clock_Count[8]), .C(n1136), .D(r_Clock_Count[10]), 
         .Z(n1074)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_7.init = 16'h0002;
    LUT4 i1_2_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[2]), .Z(n775)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(69[7] 161[14])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX r_Clock_Count_105__i5 (.D(n69[5]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i5.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_8 (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_Bit_Index[0]), 
         .Z(n990)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_8.init = 16'hfefe;
    LUT4 i1_4_lut_adj_9 (.A(r_Clock_Count[11]), .B(r_Clock_Count[15]), .C(r_SM_Main[1]), 
         .D(r_Clock_Count[14]), .Z(n1072)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_9.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_10 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_Bit_Index[1]), 
         .D(r_Bit_Index[0]), .Z(n1000)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_10.init = 16'hfffe;
    LUT4 i1_4_lut_adj_11 (.A(n1114), .B(n19), .C(n1275), .D(n1106), 
         .Z(n1118)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_4_lut_adj_11.init = 16'hfffe;
    LUT4 i1_2_lut_adj_12 (.A(r_Clock_Count[5]), .B(r_Clock_Count[10]), .Z(n1106)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_2_lut_adj_12.init = 16'heeee;
    LUT4 i1_2_lut_adj_13 (.A(r_Clock_Count[4]), .B(r_Clock_Count[8]), .Z(n904)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_2_lut_adj_13.init = 16'heeee;
    LUT4 i1065_4_lut (.A(n698), .B(n1154), .C(n19), .D(n1156), .Z(r_SM_Main_2__N_47[1])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1065_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_14 (.A(r_Bit_Index[0]), .B(r_SM_Main[1]), .Z(n752)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_14.init = 16'h4444;
    LUT4 i1_4_lut_adj_15 (.A(n19), .B(r_Clock_Count[11]), .C(n904), .D(r_Clock_Count[5]), 
         .Z(n1094)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_4_lut_adj_15.init = 16'hfffe;
    LUT4 i1091_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .Z(n890)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(69[7] 161[14])
    defparam i1091_3_lut.init = 16'hdfdf;
    FD1S3AX UartClk_103_133__i1 (.D(n17[1]), .CK(clk_25mhz_c), .Q(n30[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(49[15:29])
    defparam UartClk_103_133__i1.GSR = "ENABLED";
    LUT4 n1094_bdd_2_lut_1102 (.A(r_SM_Main_2__N_47[2]), .B(r_SM_Main[0]), 
         .Z(n1246)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam n1094_bdd_2_lut_1102.init = 16'h7777;
    LUT4 i1038_3_lut (.A(r_Clock_Count[10]), .B(r_Clock_Count[5]), .C(r_Clock_Count[14]), 
         .Z(n1156)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1038_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(r_Clock_Count[15]), .B(r_Clock_Count[10]), 
         .C(n1136), .D(r_Rx_Data), .Z(n910)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1089_4_lut (.A(n1124), .B(r_SM_Main_2__N_47[1]), .C(n775), .D(n1276), 
         .Z(UartClk_2_enable_30)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(69[7] 161[14])
    defparam i1089_4_lut.init = 16'h0002;
    LUT4 i120_2_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .Z(n221)) /* synthesis lut_function=(A (B)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(119[36:54])
    defparam i120_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_23 (.A(r_Clock_Count[15]), .B(r_Clock_Count[8]), .Z(n1275)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_2_lut_rep_23.init = 16'heeee;
    CCU2C UartClk_103_133_add_4_3 (.A0(n30[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(UartClk[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n693), .S0(n17[1]), .S1(n17[2]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(49[15:29])
    defparam UartClk_103_133_add_4_3.INIT0 = 16'haaa0;
    defparam UartClk_103_133_add_4_3.INIT1 = 16'haaa0;
    defparam UartClk_103_133_add_4_3.INJECT1_0 = "NO";
    defparam UartClk_103_133_add_4_3.INJECT1_1 = "NO";
    LUT4 i1006_2_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .Z(n1124)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1006_2_lut.init = 16'h8888;
    CCU2C UartClk_103_133_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n30[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n693), .S1(n17[0]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(49[15:29])
    defparam UartClk_103_133_add_4_1.INIT0 = 16'h0000;
    defparam UartClk_103_133_add_4_1.INIT1 = 16'h555f;
    defparam UartClk_103_133_add_4_1.INJECT1_0 = "NO";
    defparam UartClk_103_133_add_4_1.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_105_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n692), .S0(n69[15]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105_add_4_17.INIT0 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_105_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_105_add_4_17.INJECT1_1 = "NO";
    LUT4 i1018_2_lut (.A(r_Clock_Count[5]), .B(r_Clock_Count[13]), .Z(n1136)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1018_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_16 (.A(r_Clock_Count[3]), .B(r_Clock_Count[0]), .C(r_Clock_Count[2]), 
         .D(r_Clock_Count[1]), .Z(n6)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_16.init = 16'hff7f;
    LUT4 i1097_4_lut (.A(r_SM_Main[2]), .B(n1164), .C(n6), .D(n1034), 
         .Z(UartClk_2_enable_29)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(69[7] 161[14])
    defparam i1097_4_lut.init = 16'h5455;
    LUT4 n906_bdd_4_lut_1103 (.A(n6), .B(r_Clock_Count[14]), .C(r_SM_Main[0]), 
         .D(r_Clock_Count[13]), .Z(n1247)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n906_bdd_4_lut_1103.init = 16'h0010;
    LUT4 i1012_2_lut_rep_24 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .Z(n1276)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1012_2_lut_rep_24.init = 16'heeee;
    LUT4 i1086_4_lut (.A(r_Bit_Index[1]), .B(r_SM_Main_2__N_47[1]), .C(r_SM_Main[1]), 
         .D(n972), .Z(UartClk_2_enable_31)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1086_4_lut.init = 16'h0020;
    LUT4 i1_4_lut_adj_17 (.A(r_Clock_Count[4]), .B(r_Clock_Count[1]), .C(r_Clock_Count[3]), 
         .D(r_Clock_Count[2]), .Z(n698)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_17.init = 16'ha080;
    FD1P3IX r_Clock_Count_105__i4 (.D(n69[4]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i4.GSR = "ENABLED";
    LUT4 i1046_4_lut (.A(n19), .B(r_Clock_Count[10]), .C(n1148), .D(r_Clock_Count[11]), 
         .Z(n1164)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1046_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_18 (.A(r_Clock_Count[4]), .B(r_Clock_Count[5]), .C(r_SM_Main[0]), 
         .D(r_Rx_Data), .Z(n1028)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_18.init = 16'h1000;
    FD1P3IX r_Clock_Count_105__i3 (.D(n69[3]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_105__i15 (.D(n69[15]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i15.GSR = "ENABLED";
    FD1S3AX UartClk_103_133__i2 (.D(n17[2]), .CK(clk_25mhz_c), .Q(UartClk[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(49[15:29])
    defparam UartClk_103_133__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_105__i13 (.D(n69[13]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i13.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_19 (.A(r_SM_Main[2]), .B(n789), .C(r_SM_Main_2__N_47[2]), 
         .D(r_SM_Main[1]), .Z(n585)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_19.init = 16'h5011;
    LUT4 i1_2_lut_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_Bit_Index[2]), 
         .Z(n952)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hefef;
    FD1P3IX r_Clock_Count_105__i14 (.D(n69[14]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i14.GSR = "ENABLED";
    LUT4 i1083_4_lut (.A(n1124), .B(r_SM_Main_2__N_47[1]), .C(r_Bit_Index[1]), 
         .D(n980), .Z(UartClk_2_enable_32)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(114[17:39])
    defparam i1083_4_lut.init = 16'h0020;
    FD1P3IX r_Clock_Count_105__i11 (.D(n69[11]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i11.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_105__i12 (.D(n69[12]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i12.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_105__i9 (.D(n69[9]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i9.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i0 (.D(r_Rx_Data), .SP(UartClk_2_enable_25), .CK(UartClk[2]), 
            .Q(r_Rx_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i0.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_105__i10 (.D(n69[10]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i10.GSR = "ENABLED";
    CCU2C r_Clock_Count_105_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n691), .COUT(n692), .S0(n69[13]), 
          .S1(n69[14]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105_add_4_15.INIT0 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_15.INIT1 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_105_add_4_15.INJECT1_1 = "NO";
    FD1S3IX r_SM_Main_i0 (.D(n1172), .CK(UartClk[2]), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_105__i0 (.D(n69[0]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i0.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_20 (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_Bit_Index[2]), 
         .Z(n980)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_20.init = 16'hfefe;
    CCU2C r_Clock_Count_105_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n690), .COUT(n691), .S0(n69[11]), 
          .S1(n69[12]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105_add_4_13.INIT0 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_13.INIT1 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_105_add_4_13.INJECT1_1 = "NO";
    PFUMX i1054 (.BLUT(n1170), .ALUT(n1171), .C0(r_SM_Main[1]), .Z(n1172));
    CCU2C r_Clock_Count_105_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n687), .COUT(n688), .S0(n69[5]), 
          .S1(n69[6]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105_add_4_7.INIT0 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_7.INIT1 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_105_add_4_7.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_105__i2 (.D(n69[2]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i2.GSR = "ENABLED";
    LUT4 i1080_4_lut (.A(r_Bit_Index[2]), .B(r_SM_Main_2__N_47[1]), .C(r_SM_Main[1]), 
         .D(n1000), .Z(UartClk_2_enable_33)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(114[17:39])
    defparam i1080_4_lut.init = 16'h0020;
    CCU2C r_Clock_Count_105_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n686), .COUT(n687), .S0(n69[3]), 
          .S1(n69[4]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105_add_4_5.INIT0 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_5.INIT1 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_105_add_4_5.INJECT1_1 = "NO";
    LUT4 i22_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n8)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i22_2_lut.init = 16'h6666;
    FD1P3IX r_Clock_Count_105__i1 (.D(n69[1]), .SP(UartClk_2_enable_29), 
            .CD(n585), .CK(UartClk[2]), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105__i1.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_47[2]), .CK(UartClk[2]), .CD(n890), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(UartClk_2_enable_30), .CK(UartClk[2]), 
            .Q(r_Rx_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(UartClk_2_enable_31), .CK(UartClk[2]), 
            .Q(r_Rx_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(UartClk_2_enable_32), .CK(UartClk[2]), 
            .Q(r_Rx_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(UartClk_2_enable_33), .CK(UartClk[2]), 
            .Q(r_Rx_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_21 (.A(r_Clock_Count[15]), .B(r_Clock_Count[10]), 
         .C(r_Clock_Count[13]), .Z(n1052)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_2_lut_3_lut_adj_21.init = 16'hfefe;
    CCU2C r_Clock_Count_105_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n685), .COUT(n686), .S0(n69[1]), 
          .S1(n69[2]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105_add_4_3.INIT0 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_3.INIT1 = 16'haaa0;
    defparam r_Clock_Count_105_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_105_add_4_3.INJECT1_1 = "NO";
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(UartClk_2_enable_34), .CK(UartClk[2]), 
            .Q(r_Rx_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    PFUMX i1098 (.BLUT(n1249), .ALUT(n1246), .C0(r_SM_Main[1]), .Z(n1250));
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(UartClk_2_enable_35), .CK(UartClk[2]), 
            .Q(r_Rx_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=29, LSE_RLINE=34 */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    CCU2C r_Clock_Count_105_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n685), .S1(n69[0]));   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_105_add_4_1.INIT0 = 16'h0000;
    defparam r_Clock_Count_105_add_4_1.INIT1 = 16'h555f;
    defparam r_Clock_Count_105_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_105_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_22 (.A(r_SM_Main[0]), .B(r_SM_Main_2__N_47[2]), .C(n8), 
         .D(r_SM_Main[1]), .Z(n894)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_22.init = 16'h4000;
    LUT4 i1_2_lut_rep_22 (.A(r_Clock_Count[15]), .B(r_Clock_Count[10]), 
         .Z(n1274)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_2_lut_rep_22.init = 16'heeee;
    LUT4 i1074_4_lut (.A(n1124), .B(r_SM_Main_2__N_47[1]), .C(r_Bit_Index[2]), 
         .D(n1008), .Z(UartClk_2_enable_34)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(114[17:39])
    defparam i1074_4_lut.init = 16'h0020;
    LUT4 i1036_3_lut_4_lut (.A(r_Clock_Count[15]), .B(r_Clock_Count[8]), 
         .C(r_Clock_Count[11]), .D(r_Clock_Count[13]), .Z(n1154)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1036_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_23 (.A(r_Clock_Count[11]), .B(r_Clock_Count[14]), 
         .C(r_Clock_Count[4]), .D(r_Clock_Count[13]), .Z(n1114)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_3_lut_4_lut_adj_23.init = 16'hfffe;
    LUT4 i1_4_lut_adj_24 (.A(r_Clock_Count[15]), .B(n1028), .C(r_SM_Main[1]), 
         .D(r_Clock_Count[13]), .Z(n1034)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_24.init = 16'h0004;
    LUT4 i1_3_lut_adj_25 (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_Bit_Index[1]), 
         .Z(n1008)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_25.init = 16'hfefe;
    LUT4 i1030_2_lut (.A(r_Clock_Count[14]), .B(r_Clock_Count[8]), .Z(n1148)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1030_2_lut.init = 16'heeee;
    LUT4 i1071_4_lut (.A(n1128), .B(r_SM_Main_2__N_47[1]), .C(r_Bit_Index[2]), 
         .D(n990), .Z(UartClk_2_enable_35)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // /home/user/Master Thesis/Uart Test/First_Implementation/source/UartRX.v(114[17:39])
    defparam i1071_4_lut.init = 16'h0020;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

