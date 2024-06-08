// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sat Jun  8 13:40:13 2024
//
// Verilog Description of module top
//

module top (i_Rx_Serial, clk_25mhz, o_Tx_Serial, led) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(1[8:11])
    input i_Rx_Serial;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(3[11:22])
    input clk_25mhz;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(4[10:19])
    output o_Tx_Serial;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(5[11:22])
    output [7:0]led;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(6[17:20])
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(4[10:19])
    
    wire GND_net, VCC_net, i_Rx_Serial_c, o_Tx_Serial_c, led_c_7, 
        led_c_6, led_c_5, led_c_4, led_c_3, led_c_2, led_c_1, led_c_0, 
        o_Rx_DV1;
    wire [7:0]o_Rx_Byte1;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(13[12:22])
    wire [7:0]i_Tx_Byte;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(17[11:20])
    
    wire o_Tx_Done, i_Tx_DV_N_9;
    wire [2:0]r_SM_Main_2__N_157;
    
    wire n853;
    
    VHI i2 (.Z(VCC_net));
    \uart_tx(CLKS_PER_BIT=2604)  uart_tx1 (.clk_25mhz_c(clk_25mhz_c), .o_Tx_Serial_c(o_Tx_Serial_c), 
            .i_Tx_Byte({i_Tx_Byte}), .o_Tx_Done(o_Tx_Done), .GND_net(GND_net), 
            .VCC_net(VCC_net), .\r_SM_Main_2__N_157[0] (r_SM_Main_2__N_157[0])) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(40[33] 47[2])
    FD1S3JX i_Tx_DV_14 (.D(n853), .CK(clk_25mhz_c), .PD(i_Tx_DV_N_9), 
            .Q(r_SM_Main_2__N_157[0]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam i_Tx_DV_14.GSR = "ENABLED";
    FD1S3AX o_Rx_DV_11 (.D(o_Rx_DV1), .CK(clk_25mhz_c), .Q(i_Tx_DV_N_9));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam o_Rx_DV_11.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB o_Tx_Serial_pad (.I(o_Tx_Serial_c), .O(o_Tx_Serial));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(5[11:22])
    FD1P3AX i_Tx_Byte_i0_i0 (.D(led_c_0), .SP(i_Tx_DV_N_9), .CK(clk_25mhz_c), 
            .Q(i_Tx_Byte[0]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam i_Tx_Byte_i0_i0.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i8 (.D(o_Rx_Byte1[7]), .CK(clk_25mhz_c), .Q(led_c_7));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam o_Rx_Byte_i8.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i7 (.D(o_Rx_Byte1[6]), .CK(clk_25mhz_c), .Q(led_c_6));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam o_Rx_Byte_i7.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i6 (.D(o_Rx_Byte1[5]), .CK(clk_25mhz_c), .Q(led_c_5));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam o_Rx_Byte_i6.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i5 (.D(o_Rx_Byte1[4]), .CK(clk_25mhz_c), .Q(led_c_4));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam o_Rx_Byte_i5.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i4 (.D(o_Rx_Byte1[3]), .CK(clk_25mhz_c), .Q(led_c_3));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam o_Rx_Byte_i4.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i3 (.D(o_Rx_Byte1[2]), .CK(clk_25mhz_c), .Q(led_c_2));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam o_Rx_Byte_i3.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i2 (.D(o_Rx_Byte1[1]), .CK(clk_25mhz_c), .Q(led_c_1));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam o_Rx_Byte_i2.GSR = "ENABLED";
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(6[17:20])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(6[17:20])
    IB i_Rx_Serial_pad (.I(i_Rx_Serial), .O(i_Rx_Serial_c));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(3[11:22])
    IB clk_25mhz_pad (.I(clk_25mhz), .O(clk_25mhz_c));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(4[10:19])
    FD1P3AX i_Tx_Byte_i0_i1 (.D(led_c_1), .SP(i_Tx_DV_N_9), .CK(clk_25mhz_c), 
            .Q(i_Tx_Byte[1]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam i_Tx_Byte_i0_i1.GSR = "ENABLED";
    FD1P3AX i_Tx_Byte_i0_i2 (.D(led_c_2), .SP(i_Tx_DV_N_9), .CK(clk_25mhz_c), 
            .Q(i_Tx_Byte[2]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam i_Tx_Byte_i0_i2.GSR = "ENABLED";
    FD1P3AX i_Tx_Byte_i0_i3 (.D(led_c_3), .SP(i_Tx_DV_N_9), .CK(clk_25mhz_c), 
            .Q(i_Tx_Byte[3]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam i_Tx_Byte_i0_i3.GSR = "ENABLED";
    FD1P3AX i_Tx_Byte_i0_i4 (.D(led_c_4), .SP(i_Tx_DV_N_9), .CK(clk_25mhz_c), 
            .Q(i_Tx_Byte[4]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam i_Tx_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX i_Tx_Byte_i0_i5 (.D(led_c_5), .SP(i_Tx_DV_N_9), .CK(clk_25mhz_c), 
            .Q(i_Tx_Byte[5]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam i_Tx_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX i_Tx_Byte_i0_i6 (.D(led_c_6), .SP(i_Tx_DV_N_9), .CK(clk_25mhz_c), 
            .Q(i_Tx_Byte[6]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam i_Tx_Byte_i0_i6.GSR = "ENABLED";
    FD1P3AX i_Tx_Byte_i0_i7 (.D(led_c_7), .SP(i_Tx_DV_N_9), .CK(clk_25mhz_c), 
            .Q(i_Tx_Byte[7]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam i_Tx_Byte_i0_i7.GSR = "ENABLED";
    FD1S3AX o_Rx_Byte_i1 (.D(o_Rx_Byte1[0]), .CK(clk_25mhz_c), .Q(led_c_0));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam o_Rx_Byte_i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(r_SM_Main_2__N_157[0]), .B(o_Tx_Done), .Z(n853)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(50[8] 63[4])
    defparam i1_2_lut.init = 16'h2222;
    \uart_rx(CLKS_PER_BIT=2604)  uart_rx1 (.clk_25mhz_c(clk_25mhz_c), .i_Rx_Serial_c(i_Rx_Serial_c), 
            .o_Rx_Byte1({o_Rx_Byte1}), .GND_net(GND_net), .VCC_net(VCC_net), 
            .o_Rx_DV1(o_Rx_DV1)) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(32[33] 37[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module \uart_tx(CLKS_PER_BIT=2604) 
//

module \uart_tx(CLKS_PER_BIT=2604)  (clk_25mhz_c, o_Tx_Serial_c, i_Tx_Byte, 
            o_Tx_Done, GND_net, VCC_net, \r_SM_Main_2__N_157[0] ) /* synthesis syn_module_defined=1 */ ;
    input clk_25mhz_c;
    output o_Tx_Serial_c;
    input [7:0]i_Tx_Byte;
    output o_Tx_Done;
    input GND_net;
    input VCC_net;
    input \r_SM_Main_2__N_157[0] ;
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(4[10:19])
    wire [15:0]r_Clock_Count;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(32[17:30])
    
    wire n48, n2332, n2320, n2321, n2329, n1738, clk_25mhz_c_enable_32;
    wire [2:0]r_SM_Main;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(31[16:25])
    
    wire n456, clk_25mhz_c_enable_60, n3;
    wire [2:0]r_Bit_Index;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(33[16:27])
    
    wire clk_25mhz_c_enable_62, n1827;
    wire [7:0]r_Tx_Data;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(34[16:25])
    
    wire clk_25mhz_c_enable_44, n913;
    wire [15:0]n69;
    
    wire n3_adj_195, n7, n1829, n3_adj_196, o_Tx_Done_N_193, n9, 
        n1825, n1615, n1614, n2184, n2185, n2186, n2180, n2181, 
        n2330, n1608, n1609, n2323, n2014, n2183, n2182, n1611, 
        n1612, n1613, n2020, n1942, n2010, n1224, n1610;
    
    LUT4 i1_2_lut_rep_40_3_lut_4_lut (.A(r_Clock_Count[13]), .B(r_Clock_Count[12]), 
         .C(n48), .D(n2332), .Z(n2320)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam i1_2_lut_rep_40_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n2321), .B(n48), .C(n2329), .D(n1738), 
         .Z(clk_25mhz_c_enable_32)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (C)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0fef;
    FD1S3IX r_SM_Main_i0 (.D(n456), .CK(clk_25mhz_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1P3AX o_Tx_Serial_47 (.D(n3), .SP(clk_25mhz_c_enable_60), .CK(clk_25mhz_c), 
            .Q(o_Tx_Serial_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam o_Tx_Serial_47.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(n1827), .SP(clk_25mhz_c_enable_62), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i0 (.D(i_Tx_Byte[0]), .SP(clk_25mhz_c_enable_44), 
            .CK(clk_25mhz_c), .Q(r_Tx_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i0.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_171__i0 (.D(n69[0]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i0.GSR = "ENABLED";
    LUT4 i7_3_lut_4_lut (.A(n2321), .B(n48), .C(r_SM_Main[0]), .D(n3_adj_195), 
         .Z(n456)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam i7_3_lut_4_lut.init = 16'h1f10;
    LUT4 i1_4_lut (.A(n7), .B(n2320), .C(r_SM_Main[0]), .D(r_SM_Main[1]), 
         .Z(n1829)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam i1_4_lut.init = 16'h0800;
    FD1P3IX r_Clock_Count_171__i15 (.D(n69[15]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i15.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_171__i14 (.D(n69[14]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i14.GSR = "ENABLED";
    LUT4 i1175_3_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[1]), .C(r_Bit_Index[0]), 
         .Z(n7)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(33[16:27])
    defparam i1175_3_lut.init = 16'h6a6a;
    FD1S3IX r_SM_Main_i1 (.D(n3_adj_196), .CK(clk_25mhz_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Done_46 (.D(o_Tx_Done_N_193), .SP(clk_25mhz_c_enable_32), 
            .CK(clk_25mhz_c), .Q(o_Tx_Done)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Done_46.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_171__i13 (.D(n69[13]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i13.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_171__i12 (.D(n69[12]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i12.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_21 (.A(n9), .B(n2320), .C(r_SM_Main[0]), .D(r_SM_Main[1]), 
         .Z(n1825)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam i1_4_lut_adj_21.init = 16'h0800;
    FD1P3AX r_Tx_Data_i1 (.D(i_Tx_Byte[1]), .SP(clk_25mhz_c_enable_44), 
            .CK(clk_25mhz_c), .Q(r_Tx_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i1.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i2 (.D(i_Tx_Byte[2]), .SP(clk_25mhz_c_enable_44), 
            .CK(clk_25mhz_c), .Q(r_Tx_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i2.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i3 (.D(i_Tx_Byte[3]), .SP(clk_25mhz_c_enable_44), 
            .CK(clk_25mhz_c), .Q(r_Tx_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i3.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i4 (.D(i_Tx_Byte[4]), .SP(clk_25mhz_c_enable_44), 
            .CK(clk_25mhz_c), .Q(r_Tx_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i5 (.D(i_Tx_Byte[5]), .SP(clk_25mhz_c_enable_44), 
            .CK(clk_25mhz_c), .Q(r_Tx_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i5.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i6 (.D(i_Tx_Byte[6]), .SP(clk_25mhz_c_enable_44), 
            .CK(clk_25mhz_c), .Q(r_Tx_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i6.GSR = "ENABLED";
    FD1P3AX r_Tx_Data_i7 (.D(i_Tx_Byte[7]), .SP(clk_25mhz_c_enable_44), 
            .CK(clk_25mhz_c), .Q(r_Tx_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Tx_Data_i7.GSR = "ENABLED";
    CCU2C r_Clock_Count_171_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1615), .S0(n69[15]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171_add_4_17.INIT0 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_171_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_171_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_49 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .Z(n2329)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(31[16:25])
    defparam i1_2_lut_rep_49.init = 16'heeee;
    FD1P3IX r_Clock_Count_171__i11 (.D(n69[11]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i11.GSR = "ENABLED";
    CCU2C r_Clock_Count_171_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1614), .COUT(n1615), .S0(n69[13]), 
          .S1(n69[14]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171_add_4_15.INIT0 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_15.INIT1 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_171_add_4_15.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_171__i10 (.D(n69[10]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i10.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_171__i9 (.D(n69[9]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i9.GSR = "ENABLED";
    LUT4 i20_2_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .Z(n9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(33[16:27])
    defparam i20_2_lut.init = 16'h6666;
    FD1P3IX r_Clock_Count_171__i8 (.D(n69[8]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i8.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_171__i7 (.D(n69[7]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i7.GSR = "ENABLED";
    L6MUX21 i2015 (.D0(n2184), .D1(n2185), .SD(r_Bit_Index[1]), .Z(n2186));
    PFUMX i2013 (.BLUT(n2180), .ALUT(n2181), .C0(r_Bit_Index[2]), .Z(n2184));
    LUT4 i1209_3_lut (.A(r_SM_Main[0]), .B(n2186), .C(r_SM_Main[1]), .Z(n3)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(31[16:25])
    defparam i1209_3_lut.init = 16'he5e5;
    LUT4 i1_4_lut_adj_22 (.A(n2321), .B(n2330), .C(n48), .D(r_SM_Main[1]), 
         .Z(clk_25mhz_c_enable_62)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam i1_4_lut_adj_22.init = 16'h3233;
    LUT4 i17_3_lut_4_lut (.A(n2321), .B(n48), .C(r_SM_Main[1]), .D(r_SM_Main[0]), 
         .Z(n3_adj_196)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam i17_3_lut_4_lut.init = 16'h1ef0;
    CCU2C r_Clock_Count_171_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1608), .COUT(n1609), .S0(n69[1]), 
          .S1(n69[2]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171_add_4_3.INIT0 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_3.INIT1 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_171_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_23 (.A(r_Bit_Index[0]), .B(n2320), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(n1827)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam i1_4_lut_adj_23.init = 16'h0400;
    FD1P3IX r_Clock_Count_171__i6 (.D(n69[6]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i6.GSR = "ENABLED";
    LUT4 i2054_4_lut (.A(r_SM_Main[2]), .B(n2323), .C(n48), .D(n2014), 
         .Z(n913)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i2054_4_lut.init = 16'h5455;
    LUT4 i2012_3_lut (.A(r_Tx_Data[6]), .B(r_Tx_Data[7]), .C(r_Bit_Index[0]), 
         .Z(n2183)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2012_3_lut.init = 16'hcaca;
    LUT4 i1605_2_lut_rep_50 (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .Z(n2330)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1605_2_lut_rep_50.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(\r_SM_Main_2__N_157[0] ), 
         .D(r_SM_Main[1]), .Z(clk_25mhz_c_enable_44)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0010;
    LUT4 i2011_3_lut (.A(r_Tx_Data[2]), .B(r_Tx_Data[3]), .C(r_Bit_Index[0]), 
         .Z(n2182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2011_3_lut.init = 16'hcaca;
    LUT4 i1_1_lut_rep_51 (.A(r_SM_Main[2]), .Z(clk_25mhz_c_enable_60)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut_rep_51.init = 16'h5555;
    LUT4 i2048_3_lut_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_SM_Main[0]), 
         .Z(n1738)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i2048_3_lut_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_52 (.A(r_Clock_Count[15]), .B(r_Clock_Count[14]), 
         .Z(n2332)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam i1_2_lut_rep_52.init = 16'heeee;
    FD1P3IX r_Clock_Count_171__i5 (.D(n69[5]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i5.GSR = "ENABLED";
    CCU2C r_Clock_Count_171_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1611), .COUT(n1612), .S0(n69[7]), 
          .S1(n69[8]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171_add_4_9.INIT0 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_9.INIT1 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_171_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_24 (.A(r_Clock_Count[15]), .B(r_Clock_Count[14]), 
         .C(r_SM_Main[0]), .D(r_SM_Main[1]), .Z(n2014)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam i1_2_lut_3_lut_4_lut_adj_24.init = 16'h1110;
    PFUMX i2014 (.BLUT(n2182), .ALUT(n2183), .C0(r_Bit_Index[2]), .Z(n2185));
    CCU2C r_Clock_Count_171_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1613), .COUT(n1614), .S0(n69[11]), 
          .S1(n69[12]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171_add_4_13.INIT0 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_13.INIT1 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_171_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_41_3_lut_4_lut (.A(r_Clock_Count[15]), .B(r_Clock_Count[14]), 
         .C(r_Clock_Count[12]), .D(r_Clock_Count[13]), .Z(n2321)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam i1_2_lut_rep_41_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX r_Clock_Count_171__i4 (.D(n69[4]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i4.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_43 (.A(r_Clock_Count[13]), .B(r_Clock_Count[12]), 
         .Z(n2323)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam i2_2_lut_rep_43.init = 16'heeee;
    LUT4 i1_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n2020)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam i1_3_lut.init = 16'h8080;
    FD1P3IX r_Clock_Count_171__i3 (.D(n69[3]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_171__i2 (.D(n69[2]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i2.GSR = "ENABLED";
    LUT4 i70_4_lut (.A(r_Clock_Count[10]), .B(r_Clock_Count[11]), .C(r_Clock_Count[9]), 
         .D(n1942), .Z(n48)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(32[17:30])
    defparam i70_4_lut.init = 16'hc888;
    LUT4 i6_4_lut (.A(\r_SM_Main_2__N_157[0] ), .B(n2020), .C(r_SM_Main[1]), 
         .D(n2320), .Z(n3_adj_195)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(31[16:25])
    defparam i6_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_25 (.A(n2010), .B(n1224), .C(r_Clock_Count[5]), 
         .D(r_Clock_Count[4]), .Z(n1942)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam i1_4_lut_adj_25.init = 16'hfaea;
    FD1P3IX r_Clock_Count_171__i1 (.D(n69[1]), .SP(clk_25mhz_c_enable_60), 
            .CD(n913), .CK(clk_25mhz_c), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171__i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n1829), .SP(clk_25mhz_c_enable_62), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n1825), .SP(clk_25mhz_c_enable_62), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_26 (.A(r_Clock_Count[8]), .B(r_Clock_Count[6]), .C(r_Clock_Count[7]), 
         .Z(n2010)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam i1_3_lut_adj_26.init = 16'hfefe;
    FD1S3IX r_SM_Main_i2 (.D(n2320), .CK(clk_25mhz_c), .CD(n1738), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=40, LSE_RLINE=47 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    CCU2C r_Clock_Count_171_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n1608), .S1(n69[0]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171_add_4_1.INIT0 = 16'h0000;
    defparam r_Clock_Count_171_add_4_1.INIT1 = 16'h555f;
    defparam r_Clock_Count_171_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_171_add_4_1.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_171_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1610), .COUT(n1611), .S0(n69[5]), 
          .S1(n69[6]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171_add_4_7.INIT0 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_7.INIT1 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_171_add_4_7.INJECT1_1 = "NO";
    LUT4 i1080_4_lut (.A(r_Clock_Count[0]), .B(r_Clock_Count[3]), .C(r_Clock_Count[2]), 
         .D(r_Clock_Count[1]), .Z(n1224)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1080_4_lut.init = 16'hc8c0;
    CCU2C r_Clock_Count_171_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1612), .COUT(n1613), .S0(n69[9]), 
          .S1(n69[10]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171_add_4_11.INIT0 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_11.INIT1 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_171_add_4_11.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_171_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1609), .COUT(n1610), .S0(n69[3]), 
          .S1(n69[4]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(124[34:54])
    defparam r_Clock_Count_171_add_4_5.INIT0 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_5.INIT1 = 16'haaa0;
    defparam r_Clock_Count_171_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_171_add_4_5.INJECT1_1 = "NO";
    LUT4 i2010_3_lut (.A(r_Tx_Data[4]), .B(r_Tx_Data[5]), .C(r_Bit_Index[0]), 
         .Z(n2181)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2010_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_27 (.A(n1738), .B(n2320), .C(n2329), .D(r_SM_Main[2]), 
         .Z(o_Tx_Done_N_193)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartTX.v(46[11] 149[8])
    defparam i1_3_lut_4_lut_adj_27.init = 16'h4f44;
    LUT4 i2009_3_lut (.A(r_Tx_Data[0]), .B(r_Tx_Data[1]), .C(r_Bit_Index[0]), 
         .Z(n2180)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2009_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module \uart_rx(CLKS_PER_BIT=2604) 
//

module \uart_rx(CLKS_PER_BIT=2604)  (clk_25mhz_c, i_Rx_Serial_c, o_Rx_Byte1, 
            GND_net, VCC_net, o_Rx_DV1) /* synthesis syn_module_defined=1 */ ;
    input clk_25mhz_c;
    input i_Rx_Serial_c;
    output [7:0]o_Rx_Byte1;
    input GND_net;
    input VCC_net;
    output o_Rx_DV1;
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/top.v(4[10:19])
    wire [15:0]r_Clock_Count;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(39[18:31])
    
    wire clk_25mhz_c_enable_57, n929;
    wire [15:0]n69;
    
    wire n2000, n2319, n2322;
    wire [2:0]r_SM_Main;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(43[17:26])
    
    wire clk_25mhz_c_enable_34, n2272, r_Rx_DV_last, r_Rx_DV, r_Rx_Data_R, 
        r_Rx_Data;
    wire [7:0]r_Rx_Byte;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(41[17:26])
    
    wire clk_25mhz_c_enable_3, n1940, clk_25mhz_c_enable_21, clk_25mhz_c_enable_5, 
        n2166;
    wire [2:0]r_Bit_Index;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(40[17:28])
    
    wire clk_25mhz_c_enable_64, n457, n1230, n1956, n1992, clk_25mhz_c_enable_35, 
        n1617, n1618, n94, n1721, n1962, n1758, clk_25mhz_c_enable_28, 
        n2327, n1974, clk_25mhz_c_enable_45, n889, n1941, n1432, 
        n1433, n2324, r_Rx_DV_last_N_114, n2267, n13, n2268, n1950, 
        n2325, n2317, n2088, n1623, n1622, n2168, n2076, n2086, 
        n1797, n1616, n1968, clk_25mhz_c_enable_33, n2326, clk_25mhz_c_enable_29, 
        n1767, clk_25mhz_c_enable_65, n2328, n2096, n1621, n1620, 
        n91, n1131, n2036, n1947, n6, n1834, n1619, n2142, n2108, 
        n2128, n1952, n1419, n19;
    
    FD1P3IX r_Clock_Count_169__i11 (.D(n69[11]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i11.GSR = "ENABLED";
    LUT4 i2022_4_lut (.A(n2000), .B(n2319), .C(n2322), .D(r_SM_Main[1]), 
         .Z(clk_25mhz_c_enable_34)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2022_4_lut.init = 16'h0400;
    FD1P3IX r_Clock_Count_169__i10 (.D(n69[10]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i10.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i0 (.D(n2272), .CK(clk_25mhz_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1S3AX r_Rx_DV_last_60 (.D(r_Rx_DV), .CK(clk_25mhz_c), .Q(r_Rx_DV_last)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(47[11] 52[8])
    defparam r_Rx_DV_last_60.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_R_61 (.D(i_Rx_Serial_c), .CK(clk_25mhz_c), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(57[11] 62[8])
    defparam r_Rx_Data_R_61.GSR = "ENABLED";
    FD1S3AY r_Rx_Data_62 (.D(r_Rx_Data_R), .CK(clk_25mhz_c), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(57[11] 62[8])
    defparam r_Rx_Data_62.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_3), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(n2319), .CK(clk_25mhz_c), .CD(n1940), .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i0 (.D(r_Rx_Byte[0]), .SP(clk_25mhz_c_enable_21), 
            .CK(clk_25mhz_c), .Q(o_Rx_Byte1[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i0.GSR = "ENABLED";
    FD1P3AX r_Rx_DV_64 (.D(clk_25mhz_c_enable_21), .SP(clk_25mhz_c_enable_5), 
            .CK(clk_25mhz_c), .Q(r_Rx_DV)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_DV_64.GSR = "ENABLED";
    LUT4 i1995_2_lut (.A(r_Rx_Data), .B(r_Clock_Count[15]), .Z(n2166)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1995_2_lut.init = 16'heeee;
    FD1P3AX r_Bit_Index_i0 (.D(n457), .SP(clk_25mhz_c_enable_64), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_169__i0 (.D(n69[0]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i0.GSR = "ENABLED";
    LUT4 i1086_4_lut (.A(r_Clock_Count[0]), .B(r_Clock_Count[3]), .C(r_Clock_Count[2]), 
         .D(r_Clock_Count[1]), .Z(n1230)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1086_4_lut.init = 16'hc8c0;
    LUT4 i1_2_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), .Z(n2000)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i2028_4_lut (.A(n1956), .B(n2319), .C(r_Bit_Index[2]), .D(n1992), 
         .Z(clk_25mhz_c_enable_35)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(114[17:39])
    defparam i2028_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_adj_1 (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n1992)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'heeee;
    CCU2C r_Clock_Count_169_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1617), .COUT(n1618), .S0(n69[3]), 
          .S1(n69[4]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169_add_4_5.INIT0 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_5.INIT1 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_169_add_4_5.INJECT1_1 = "NO";
    LUT4 i2039_3_lut_4_lut (.A(n94), .B(n1721), .C(n1962), .D(n1758), 
         .Z(clk_25mhz_c_enable_28)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i2039_3_lut_4_lut.init = 16'h000b;
    LUT4 i2026_4_lut (.A(n2327), .B(n2319), .C(r_SM_Main[1]), .D(n1974), 
         .Z(clk_25mhz_c_enable_45)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i2026_4_lut.init = 16'h0040;
    FD1P3AX o_Rx_Byte_i7 (.D(r_Rx_Byte[7]), .SP(clk_25mhz_c_enable_21), 
            .CK(clk_25mhz_c), .Q(o_Rx_Byte1[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i7.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n1974)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    FD1P3AX o_Rx_Byte_i6 (.D(r_Rx_Byte[6]), .SP(clk_25mhz_c_enable_21), 
            .CK(clk_25mhz_c), .Q(o_Rx_Byte1[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i6.GSR = "ENABLED";
    LUT4 i743_1_lut (.A(r_Rx_DV), .Z(n889)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i743_1_lut.init = 16'h5555;
    PFUMX i1290 (.BLUT(n1941), .ALUT(n1432), .C0(r_SM_Main[1]), .Z(n1433));
    FD1P3AX o_Rx_Byte_i5 (.D(r_Rx_Byte[5]), .SP(clk_25mhz_c_enable_21), 
            .CK(clk_25mhz_c), .Q(o_Rx_Byte1[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i5.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i4 (.D(r_Rx_Byte[4]), .SP(clk_25mhz_c_enable_21), 
            .CK(clk_25mhz_c), .Q(o_Rx_Byte1[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i4.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_169__i9 (.D(n69[9]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i9.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_44 (.A(r_Clock_Count[7]), .B(r_Clock_Count[6]), .Z(n2324)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_2_lut_rep_44.init = 16'heeee;
    LUT4 r_Rx_DV_last_I_0_1_lut (.A(r_Rx_DV_last), .Z(r_Rx_DV_last_N_114)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(50[30:43])
    defparam r_Rx_DV_last_I_0_1_lut.init = 16'h5555;
    LUT4 n2267_bdd_2_lut_3_lut_4_lut (.A(r_Clock_Count[8]), .B(r_Clock_Count[10]), 
         .C(n2267), .D(n13), .Z(n2268)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam n2267_bdd_2_lut_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i1_2_lut_3_lut (.A(r_Clock_Count[7]), .B(r_Clock_Count[6]), .C(r_Clock_Count[8]), 
         .Z(n1950)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i3_2_lut_rep_45 (.A(r_Clock_Count[5]), .B(r_Clock_Count[1]), .Z(n2325)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i3_2_lut_rep_45.init = 16'heeee;
    LUT4 n2268_bdd_4_lut_4_lut (.A(r_Rx_Data), .B(r_SM_Main[0]), .C(n2325), 
         .D(n2268), .Z(n2317)) /* synthesis lut_function=(A (B (C+(D)))+!A ((C+(D))+!B)) */ ;
    defparam n2268_bdd_4_lut_4_lut.init = 16'hddd1;
    LUT4 i2042_2_lut_3_lut_4_lut (.A(r_Clock_Count[5]), .B(r_Clock_Count[1]), 
         .C(r_Clock_Count[6]), .D(r_Clock_Count[7]), .Z(n2088)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i2042_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_47 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .Z(n2327)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i1_2_lut_rep_47.init = 16'heeee;
    FD1P3AX o_Rx_Byte_i3 (.D(r_Rx_Byte[3]), .SP(clk_25mhz_c_enable_21), 
            .CK(clk_25mhz_c), .Q(o_Rx_Byte1[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_169__i8 (.D(n69[8]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i8.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i2 (.D(r_Rx_Byte[2]), .SP(clk_25mhz_c_enable_21), 
            .CK(clk_25mhz_c), .Q(o_Rx_Byte1[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_169__i7 (.D(n69[7]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i7.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i1 (.D(r_Rx_Byte[1]), .SP(clk_25mhz_c_enable_21), 
            .CK(clk_25mhz_c), .Q(o_Rx_Byte1[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam o_Rx_Byte_i1.GSR = "ENABLED";
    CCU2C r_Clock_Count_169_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1623), .S0(n69[15]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169_add_4_17.INIT0 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_169_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_169_add_4_17.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_169_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1622), .COUT(n1623), .S0(n69[13]), 
          .S1(n69[14]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169_add_4_15.INIT0 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_15.INIT1 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_169_add_4_15.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_169__i6 (.D(n69[6]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_169__i5 (.D(n69[5]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i5.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(r_Clock_Count[14]), .B(n2166), .C(n2168), .D(n2076), 
         .Z(n2086)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_2 (.A(n1950), .B(n1230), .C(r_Clock_Count[5]), .D(r_Clock_Count[4]), 
         .Z(n1797)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(135[17:47])
    defparam i1_4_lut_adj_2.init = 16'hfaea;
    FD1P3IX r_Clock_Count_169__i4 (.D(n69[4]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_39 (.A(n94), .B(n1721), .Z(n2319)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i1_2_lut_rep_39.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_3 (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .Z(n1956)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i1_2_lut_3_lut_adj_3.init = 16'hefef;
    CCU2C r_Clock_Count_169_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1616), .COUT(n1617), .S0(n69[1]), 
          .S1(n69[2]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169_add_4_3.INIT0 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_3.INIT1 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_169_add_4_3.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_169__i3 (.D(n69[3]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_169__i2 (.D(n69[2]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_169__i1 (.D(n69[1]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i1.GSR = "ENABLED";
    LUT4 i2035_3_lut_4_lut (.A(n94), .B(n1721), .C(n1968), .D(n1758), 
         .Z(clk_25mhz_c_enable_33)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i2035_3_lut_4_lut.init = 16'h000b;
    LUT4 i1_2_lut_3_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_SM_Main[1]), 
         .D(r_Bit_Index[1]), .Z(n1968)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_rep_46 (.A(r_Clock_Count[8]), .B(r_Clock_Count[10]), .Z(n2326)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_46.init = 16'h8888;
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_28), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_29), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i1 (.D(n1433), .CK(clk_25mhz_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_Bit_Index[1]), 
         .D(r_SM_Main[1]), .Z(n1962)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i1_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1997_2_lut (.A(r_Clock_Count[12]), .B(r_Clock_Count[13]), .Z(n2168)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1997_2_lut.init = 16'heeee;
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_33), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_42_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(r_Bit_Index[1]), 
         .Z(n2322)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i1_2_lut_rep_42_3_lut.init = 16'hefef;
    LUT4 i2024_3_lut_4_lut (.A(n94), .B(n1721), .C(n1767), .D(n1962), 
         .Z(clk_25mhz_c_enable_65)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i2024_3_lut_4_lut.init = 16'h00b0;
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_34), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_35), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_48 (.A(r_Clock_Count[2]), .B(r_Clock_Count[4]), .Z(n2328)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_48.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(r_Clock_Count[2]), .B(r_Clock_Count[4]), 
         .C(r_Clock_Count[10]), .D(r_Clock_Count[8]), .Z(n2076)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'h8000;
    FD1P3AX r_Rx_Byte_i0 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_45), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_5 (.A(r_Clock_Count[2]), .B(r_Clock_Count[4]), 
         .C(r_SM_Main[0]), .D(r_Rx_Data), .Z(n2096)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_5.init = 16'h8000;
    CCU2C r_Clock_Count_169_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1621), .COUT(n1622), .S0(n69[11]), 
          .S1(n69[12]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169_add_4_13.INIT0 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_13.INIT1 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_169_add_4_13.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_169_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n1616), .S1(n69[0]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169_add_4_1.INIT0 = 16'h0000;
    defparam r_Clock_Count_169_add_4_1.INIT1 = 16'h555f;
    defparam r_Clock_Count_169_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_169_add_4_1.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_169_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1620), .COUT(n1621), .S0(n69[9]), 
          .S1(n69[10]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169_add_4_11.INIT0 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_11.INIT1 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_169_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_6 (.A(n91), .B(n2319), .C(n1131), .D(n2036), .Z(n1947)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i1_4_lut_adj_6.init = 16'h0800;
    LUT4 i122_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[2]), .C(r_Bit_Index[0]), 
         .Z(n91)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(40[17:28])
    defparam i122_3_lut.init = 16'h6c6c;
    LUT4 i1_2_lut_adj_7 (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .Z(n2036)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i1_2_lut_adj_7.init = 16'h4444;
    LUT4 i1_4_lut_adj_8 (.A(n6), .B(n2319), .C(r_SM_Main[0]), .D(r_SM_Main[1]), 
         .Z(n1834)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i1_4_lut_adj_8.init = 16'h0800;
    CCU2C r_Clock_Count_169_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1619), .COUT(n1620), .S0(n69[7]), 
          .S1(n69[8]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169_add_4_9.INIT0 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_9.INIT1 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_169_add_4_9.INJECT1_1 = "NO";
    LUT4 i20_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i20_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_4_lut_adj_9 (.A(r_SM_Main[2]), .B(n2319), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(clk_25mhz_c_enable_5)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C (D)+!C !(D))+!B !(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_9.init = 16'h400f;
    LUT4 n2152_bdd_4_lut_2080 (.A(n2324), .B(n2142), .C(r_Clock_Count[2]), 
         .D(r_Clock_Count[4]), .Z(n2267)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam n2152_bdd_4_lut_2080.init = 16'hefff;
    FD1S3IX o_Rx_DV_59 (.D(r_Rx_DV_last_N_114), .CK(clk_25mhz_c), .CD(n889), 
            .Q(o_Rx_DV1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(47[11] 52[8])
    defparam o_Rx_DV_59.GSR = "ENABLED";
    LUT4 i2057_4_lut (.A(r_SM_Main[2]), .B(n2088), .C(n13), .D(n2108), 
         .Z(clk_25mhz_c_enable_57)) /* synthesis lut_function=(!(A+(B (C (D))))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(69[7] 161[14])
    defparam i2057_4_lut.init = 16'h1555;
    LUT4 i1_4_lut_adj_10 (.A(n1721), .B(r_SM_Main[1]), .C(n2326), .D(n2096), 
         .Z(n2108)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_10.init = 16'h2000;
    FD1P3IX r_Clock_Count_169__i15 (.D(n69[15]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i15.GSR = "ENABLED";
    LUT4 i2033_4_lut (.A(r_Clock_Count[15]), .B(r_Clock_Count[13]), .C(r_Clock_Count[12]), 
         .D(r_Clock_Count[14]), .Z(n1721)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2033_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_adj_11 (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n1131)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_11.init = 16'h8080;
    LUT4 i1_4_lut_adj_12 (.A(n2326), .B(r_Rx_Data), .C(n2328), .D(r_SM_Main[0]), 
         .Z(n2128)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_12.init = 16'h2000;
    CCU2C r_Clock_Count_169_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n1618), .COUT(n1619), .S0(n69[5]), 
          .S1(n69[6]));   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169_add_4_7.INIT0 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_7.INIT1 = 16'haaa0;
    defparam r_Clock_Count_169_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_169_add_4_7.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .Z(n1940)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_3_lut.init = 16'hf7f7;
    LUT4 i1_2_lut_adj_13 (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), .Z(n1758)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i1_2_lut_adj_13.init = 16'hbbbb;
    LUT4 i2044_3_lut_4_lut (.A(n94), .B(n1721), .C(n1767), .D(n1968), 
         .Z(clk_25mhz_c_enable_3)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i2044_3_lut_4_lut.init = 16'h00b0;
    LUT4 i2037_4_lut (.A(n1956), .B(n2319), .C(r_Bit_Index[1]), .D(n1952), 
         .Z(clk_25mhz_c_enable_29)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(114[17:39])
    defparam i2037_4_lut.init = 16'h0040;
    FD1P3IX r_Clock_Count_169__i13 (.D(n69[13]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i13.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_14 (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), .Z(n1952)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_14.init = 16'heeee;
    FD1P3IX r_Clock_Count_169__i14 (.D(n69[14]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i14.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_15 (.A(n2088), .B(n13), .C(n1721), .D(n2128), 
         .Z(n1941)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_15.init = 16'h8000;
    FD1P3IX r_Clock_Count_169__i12 (.D(n69[12]), .SP(clk_25mhz_c_enable_57), 
            .CD(n929), .CK(clk_25mhz_c), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam r_Clock_Count_169__i12.GSR = "ENABLED";
    LUT4 i2051_4_lut (.A(r_Clock_Count[11]), .B(r_Clock_Count[0]), .C(r_Clock_Count[3]), 
         .D(r_Clock_Count[9]), .Z(n13)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i2051_4_lut.init = 16'h0004;
    LUT4 n2271_bdd_3_lut (.A(n2317), .B(n1419), .C(r_SM_Main[1]), .Z(n2272)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2271_bdd_3_lut.init = 16'hcaca;
    LUT4 i121_4_lut (.A(r_Clock_Count[10]), .B(r_Clock_Count[11]), .C(n1797), 
         .D(r_Clock_Count[9]), .Z(n94)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(39[18:31])
    defparam i121_4_lut.init = 16'hc888;
    LUT4 i1_2_lut_adj_16 (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .Z(n457)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam i1_2_lut_adj_16.init = 16'h2222;
    LUT4 i1_4_lut_adj_17 (.A(r_Clock_Count[14]), .B(r_Clock_Count[13]), 
         .C(r_Clock_Count[12]), .D(r_Clock_Count[15]), .Z(n2142)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i1_4_lut_adj_17.init = 16'hfffe;
    LUT4 i1_4_lut_adj_18 (.A(n2327), .B(r_SM_Main[1]), .C(n94), .D(n1721), 
         .Z(clk_25mhz_c_enable_64)) /* synthesis lut_function=(!(A+!((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_18.init = 16'h5155;
    FD1P3AX r_Bit_Index_i2 (.D(n1947), .SP(clk_25mhz_c_enable_64), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n1834), .SP(clk_25mhz_c_enable_64), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_65), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=32, LSE_RLINE=37 */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(66[10] 162[8])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    LUT4 i1611_2_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), .Z(n1767)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1611_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_19 (.A(r_SM_Main[2]), .B(n19), .C(n2319), .D(r_SM_Main[1]), 
         .Z(n929)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_19.init = 16'h5044;
    LUT4 i1276_4_lut_3_lut_4_lut (.A(n94), .B(n1721), .C(n1131), .D(r_SM_Main[0]), 
         .Z(n1419)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (D)+!B !((D)+!C)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i1276_4_lut_3_lut_4_lut.init = 16'h44b0;
    LUT4 i1_4_lut_adj_20 (.A(n2088), .B(r_SM_Main[0]), .C(n13), .D(n2086), 
         .Z(n19)) /* synthesis lut_function=(A ((C (D))+!B)+!A !(B)) */ ;
    defparam i1_4_lut_adj_20.init = 16'hb333;
    LUT4 i14_2_lut_3_lut (.A(n94), .B(n1721), .C(r_SM_Main[0]), .Z(n1432)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;   // /home/user/SDR-HLS/Testing/Uart Test/First_Implementation/source/UartRX.v(137[34:54])
    defparam i14_2_lut_3_lut.init = 16'h4f4f;
    LUT4 i1_4_lut_rep_38 (.A(r_SM_Main[2]), .B(n2319), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(clk_25mhz_c_enable_21)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_rep_38.init = 16'h4000;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

