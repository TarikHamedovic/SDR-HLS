// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Jul 21 17:28:25 2024
//
// Verilog Description of module top_rx_only
//

module top_rx_only (i_Rx_Serial, clk_25mhz, led) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(1[8:19])
    input i_Rx_Serial;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(3[12:23])
    input clk_25mhz;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(4[12:21])
    output [7:0]led;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(5[18:21])
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(4[12:21])
    
    wire i_Rx_Serial_c, led_c_7, led_c_6, led_c_5, led_c_4, led_c_3, 
        led_c_2, led_c_1, led_c_0, GND_net, VCC_net;
    
    VHI i5 (.Z(VCC_net));
    \uart_rx(CLKS_PER_BIT=217)  uart_rx1 (.clk_25mhz_c(clk_25mhz_c), .led_c_0(led_c_0), 
            .GND_net(GND_net), .VCC_net(VCC_net), .led_c_7(led_c_7), .led_c_6(led_c_6), 
            .led_c_5(led_c_5), .led_c_4(led_c_4), .led_c_3(led_c_3), .led_c_2(led_c_2), 
            .led_c_1(led_c_1), .i_Rx_Serial_c(i_Rx_Serial_c)) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(23[32] 28[2])
    OB led_pad_7 (.I(led_c_7), .O(led[7]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(5[18:21])
    OB led_pad_6 (.I(led_c_6), .O(led[6]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(5[18:21])
    OB led_pad_5 (.I(led_c_5), .O(led[5]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(5[18:21])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(5[18:21])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(5[18:21])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(5[18:21])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(5[18:21])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(5[18:21])
    IB i_Rx_Serial_pad (.I(i_Rx_Serial), .O(i_Rx_Serial_c));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(3[12:23])
    IB clk_25mhz_pad (.I(clk_25mhz), .O(clk_25mhz_c));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(4[12:21])
    VLO i4 (.Z(GND_net));
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module \uart_rx(CLKS_PER_BIT=217) 
//

module \uart_rx(CLKS_PER_BIT=217)  (clk_25mhz_c, led_c_0, GND_net, VCC_net, 
            led_c_7, led_c_6, led_c_5, led_c_4, led_c_3, led_c_2, 
            led_c_1, i_Rx_Serial_c) /* synthesis syn_module_defined=1 */ ;
    input clk_25mhz_c;
    output led_c_0;
    input GND_net;
    input VCC_net;
    output led_c_7;
    output led_c_6;
    output led_c_5;
    output led_c_4;
    output led_c_3;
    output led_c_2;
    output led_c_1;
    input i_Rx_Serial_c;
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/top_rx_only.v(4[12:21])
    wire [15:0]r_Clock_Count;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(37[14:27])
    
    wire n10, r_Rx_Data, r_Rx_Data_R;
    wire [7:0]r_Rx_Byte;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(39[14:23])
    
    wire clk_25mhz_c_enable_1, clk_25mhz_c_enable_2, clk_25mhz_c_enable_12, 
        n743;
    wire [2:0]r_SM_Main_2__N_39;
    
    wire n1198, n945, clk_25mhz_c_enable_31;
    wire [2:0]r_Bit_Index;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(38[14:25])
    
    wire clk_25mhz_c_enable_29, n74;
    wire [2:0]r_SM_Main;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(41[14:23])
    
    wire n1274, n753, n667;
    wire [15:0]n69;
    
    wire n668, n1108, n1172, n666, n1035, n1049, n665, n737, 
        n957, clk_25mhz_c_enable_17, n664, n663, clk_25mhz_c_enable_33, 
        n492, n1202, clk_25mhz_c_enable_18, n662, n645, n1071, n1069, 
        n1077, n1065, n975, clk_25mhz_c_enable_32, n6, n901, n8, 
        clk_25mhz_c_enable_34, n661, n899, n1171, clk_25mhz_c_enable_35, 
        n1110, n1199, n1170, n906, n721, n109, n1200, n1114, 
        n1029, n1201, n993, n748, n1197, n759, n931, n929, n921, 
        n919, n917, n1112, n1013;
    
    LUT4 i1075_4_lut (.A(r_Clock_Count[0]), .B(r_Clock_Count[3]), .C(r_Clock_Count[7]), 
         .D(r_Clock_Count[1]), .Z(n10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1075_4_lut.init = 16'h0004;
    FD1S3AY r_Rx_Data_62 (.D(r_Rx_Data_R), .CK(clk_25mhz_c), .Q(r_Rx_Data)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(54[10] 57[6])
    defparam r_Rx_Data_62.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i0 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_1), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Rx_Byte_i0.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i5 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_2), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Rx_Byte_i5.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i1 (.D(r_Rx_Byte[0]), .SP(clk_25mhz_c_enable_12), 
            .CK(clk_25mhz_c), .Q(led_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam o_Rx_Byte_i1.GSR = "ENABLED";
    LUT4 i1066_4_lut (.A(n743), .B(r_SM_Main_2__N_39[2]), .C(n1198), .D(n945), 
         .Z(clk_25mhz_c_enable_31)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(94[11:33])
    defparam i1066_4_lut.init = 16'h0004;
    LUT4 i1_2_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), .Z(n743)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(94[11:33])
    defparam i1_2_lut.init = 16'hbbbb;
    FD1P3AX r_Bit_Index_i0 (.D(n74), .SP(clk_25mhz_c_enable_29), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i1 (.D(n1274), .CK(clk_25mhz_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 i1071_2_lut (.A(r_Clock_Count[2]), .B(r_Clock_Count[6]), .Z(n753)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1071_2_lut.init = 16'h7777;
    CCU2C r_Clock_Count_91_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n667), .COUT(n668), .S0(n69[13]), 
          .S1(n69[14]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91_add_4_15.INIT0 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_15.INIT1 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_91_add_4_15.INJECT1_1 = "NO";
    LUT4 i1036_4_lut (.A(r_Rx_Data), .B(r_Clock_Count[14]), .C(r_Clock_Count[15]), 
         .D(r_Clock_Count[12]), .Z(n1108)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1036_4_lut.init = 16'hfffe;
    FD1S3IX r_SM_Main_i0 (.D(n1172), .CK(clk_25mhz_c), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    CCU2C r_Clock_Count_91_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n666), .COUT(n667), .S0(n69[11]), 
          .S1(n69[12]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91_add_4_13.INIT0 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_13.INIT1 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_91_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(r_Clock_Count[10]), .B(n753), .C(r_Clock_Count[9]), 
         .D(n1035), .Z(n1049)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h0100;
    CCU2C r_Clock_Count_91_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n665), .COUT(n666), .S0(n69[9]), 
          .S1(n69[10]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91_add_4_11.INIT0 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_11.INIT1 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_91_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_1 (.A(r_SM_Main[0]), .B(r_Clock_Count[5]), .Z(n1035)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'h8888;
    FD1P3AX o_Rx_Byte_i8 (.D(r_Rx_Byte[7]), .SP(clk_25mhz_c_enable_12), 
            .CK(clk_25mhz_c), .Q(led_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam o_Rx_Byte_i8.GSR = "ENABLED";
    LUT4 i1051_4_lut (.A(n1198), .B(r_SM_Main_2__N_39[2]), .C(n737), .D(n957), 
         .Z(clk_25mhz_c_enable_17)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(94[11:33])
    defparam i1051_4_lut.init = 16'h0004;
    FD1P3AX o_Rx_Byte_i7 (.D(r_Rx_Byte[6]), .SP(clk_25mhz_c_enable_12), 
            .CK(clk_25mhz_c), .Q(led_c_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam o_Rx_Byte_i7.GSR = "ENABLED";
    CCU2C r_Clock_Count_91_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n664), .COUT(n665), .S0(n69[7]), 
          .S1(n69[8]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91_add_4_9.INIT0 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_9.INIT1 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_91_add_4_9.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_91_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n663), .COUT(n664), .S0(n69[5]), 
          .S1(n69[6]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91_add_4_7.INIT0 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_7.INIT1 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_91_add_4_7.INJECT1_1 = "NO";
    FD1P3AX o_Rx_Byte_i6 (.D(r_Rx_Byte[5]), .SP(clk_25mhz_c_enable_12), 
            .CK(clk_25mhz_c), .Q(led_c_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam o_Rx_Byte_i6.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i5 (.D(r_Rx_Byte[4]), .SP(clk_25mhz_c_enable_12), 
            .CK(clk_25mhz_c), .Q(led_c_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam o_Rx_Byte_i5.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i4 (.D(r_Rx_Byte[3]), .SP(clk_25mhz_c_enable_12), 
            .CK(clk_25mhz_c), .Q(led_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam o_Rx_Byte_i4.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i3 (.D(r_Rx_Byte[2]), .SP(clk_25mhz_c_enable_12), 
            .CK(clk_25mhz_c), .Q(led_c_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam o_Rx_Byte_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_2 (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), .Z(n737)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(94[11:33])
    defparam i1_2_lut_adj_2.init = 16'hbbbb;
    FD1P3IX r_Clock_Count_91__i15 (.D(n69[15]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i15.GSR = "ENABLED";
    FD1P3AX o_Rx_Byte_i2 (.D(r_Rx_Byte[1]), .SP(clk_25mhz_c_enable_12), 
            .CK(clk_25mhz_c), .Q(led_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam o_Rx_Byte_i2.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_91__i14 (.D(n69[14]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i14.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_91__i13 (.D(n69[13]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i13.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_91__i11 (.D(n69[11]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i11.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_3 (.A(r_Bit_Index[1]), .B(r_SM_Main[0]), .Z(n957)) /* synthesis lut_function=((B)+!A) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam i1_2_lut_adj_3.init = 16'hdddd;
    LUT4 i1_2_lut_rep_27 (.A(r_Clock_Count[14]), .B(r_Clock_Count[15]), 
         .Z(n1202)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_2_lut_rep_27.init = 16'heeee;
    FD1P3IX r_Clock_Count_91__i12 (.D(n69[12]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i12.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i6 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_17), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Rx_Byte_i6.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i7 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_18), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Rx_Byte_i7.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_91__i8 (.D(n69[8]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i8.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_91__i7 (.D(n69[7]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i7.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_91__i6 (.D(n69[6]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i6.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_91__i5 (.D(n69[5]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i5.GSR = "ENABLED";
    CCU2C r_Clock_Count_91_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n662), .COUT(n663), .S0(n69[3]), 
          .S1(n69[4]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91_add_4_5.INIT0 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_5.INIT1 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_91_add_4_5.INJECT1_1 = "NO";
    FD1P3IX r_Clock_Count_91__i10 (.D(n69[10]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i10.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_91__i4 (.D(n69[4]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_4 (.A(r_SM_Main[0]), .B(r_Bit_Index[1]), .Z(n945)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam i1_2_lut_adj_4.init = 16'heeee;
    LUT4 i1049_4_lut (.A(n1198), .B(r_SM_Main_2__N_39[2]), .C(n645), .D(n957), 
         .Z(clk_25mhz_c_enable_18)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(94[11:33])
    defparam i1049_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_5 (.A(n10), .B(r_Clock_Count[5]), .C(n1071), .D(n1069), 
         .Z(n1077)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_4_lut_adj_5.init = 16'hfff7;
    LUT4 i1_4_lut_adj_6 (.A(r_Clock_Count[13]), .B(n1065), .C(r_Clock_Count[9]), 
         .D(r_Clock_Count[10]), .Z(n1071)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_4_lut_adj_6.init = 16'hfffe;
    LUT4 i1064_4_lut (.A(n1198), .B(r_SM_Main_2__N_39[2]), .C(n975), .D(r_Bit_Index[1]), 
         .Z(clk_25mhz_c_enable_32)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(63[5] 130[12])
    defparam i1064_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_adj_7 (.A(r_Clock_Count[8]), .B(r_Clock_Count[4]), .Z(n1065)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_2_lut_adj_7.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), .C(r_SM_Main[0]), 
         .Z(n975)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_8 (.A(n6), .B(r_SM_Main_2__N_39[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(n901)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam i1_4_lut_adj_8.init = 16'h0800;
    LUT4 i1025_2_lut_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(r_Bit_Index[2]), 
         .Z(n8)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1025_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_3_lut_4_lut (.A(r_Clock_Count[14]), .B(r_Clock_Count[15]), 
         .C(r_Clock_Count[12]), .D(r_Clock_Count[11]), .Z(n1069)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1059_4_lut (.A(n743), .B(r_SM_Main_2__N_39[2]), .C(n1198), .D(n957), 
         .Z(clk_25mhz_c_enable_34)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(94[11:33])
    defparam i1059_4_lut.init = 16'h0004;
    LUT4 i20_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[1]), .Z(n6)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam i20_2_lut.init = 16'h6666;
    CCU2C r_Clock_Count_91_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n668), .S0(n69[15]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91_add_4_17.INIT0 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_91_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_91_add_4_17.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_91_add_4_3 (.A0(r_Clock_Count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n661), .COUT(n662), .S0(n69[1]), 
          .S1(n69[2]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91_add_4_3.INIT0 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_3.INIT1 = 16'haaa0;
    defparam r_Clock_Count_91_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_91_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_9 (.A(n8), .B(r_SM_Main_2__N_39[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(n899)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam i1_4_lut_adj_9.init = 16'h0800;
    LUT4 i1053_4_lut (.A(n1198), .B(r_SM_Main_2__N_39[2]), .C(n645), .D(n945), 
         .Z(clk_25mhz_c_enable_2)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(94[11:33])
    defparam i1053_4_lut.init = 16'h0040;
    LUT4 r_SM_Main_2__N_39_2__bdd_4_lut_1084 (.A(r_SM_Main[0]), .B(n1077), 
         .C(n753), .D(r_Rx_Data), .Z(n1171)) /* synthesis lut_function=(A (B+(C))+!A !(D)) */ ;
    defparam r_SM_Main_2__N_39_2__bdd_4_lut_1084.init = 16'ha8fd;
    LUT4 i1057_4_lut (.A(n1198), .B(r_SM_Main_2__N_39[2]), .C(n737), .D(n945), 
         .Z(clk_25mhz_c_enable_35)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(94[11:33])
    defparam i1057_4_lut.init = 16'h0004;
    LUT4 i593_2_lut (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), .Z(n645)) /* synthesis lut_function=(A (B)) */ ;
    defparam i593_2_lut.init = 16'h8888;
    LUT4 i1038_3_lut_4_lut (.A(r_Clock_Count[4]), .B(r_Clock_Count[11]), 
         .C(r_Clock_Count[8]), .D(r_Clock_Count[13]), .Z(n1110)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1038_3_lut_4_lut.init = 16'hfffe;
    LUT4 r_SM_Main_2__N_39_2__bdd_4_lut_1077 (.A(r_SM_Main_2__N_39[2]), .B(r_SM_Main[0]), 
         .C(n1199), .D(r_Bit_Index[2]), .Z(n1170)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B))) */ ;
    defparam r_SM_Main_2__N_39_2__bdd_4_lut_1077.init = 16'h6444;
    FD1P3IX r_Clock_Count_91__i3 (.D(n69[3]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i3.GSR = "ENABLED";
    FD1P3IX r_Clock_Count_91__i2 (.D(n69[2]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_10 (.A(n1110), .B(n10), .C(n1108), .D(n1049), 
         .Z(n906)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_10.init = 16'h0400;
    LUT4 i1_rep_12_4_lut (.A(n721), .B(r_Clock_Count[6]), .C(n109), .D(r_Clock_Count[7]), 
         .Z(r_SM_Main_2__N_39[2])) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_rep_12_4_lut.init = 16'heaaa;
    FD1P3IX r_Clock_Count_91__i9 (.D(n69[9]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i9.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(n901), .SP(clk_25mhz_c_enable_29), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i2 (.D(n899), .SP(clk_25mhz_c_enable_29), .CK(clk_25mhz_c), 
            .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    LUT4 i1021_2_lut_rep_25 (.A(r_Clock_Count[4]), .B(r_Clock_Count[11]), 
         .Z(n1200)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1021_2_lut_rep_25.init = 16'heeee;
    FD1S3AY r_Rx_Data_R_61 (.D(i_Rx_Serial_c), .CK(clk_25mhz_c), .Q(r_Rx_Data_R)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(54[10] 57[6])
    defparam r_Rx_Data_R_61.GSR = "ENABLED";
    LUT4 i1042_3_lut_4_lut (.A(r_Clock_Count[15]), .B(r_Clock_Count[13]), 
         .C(r_Clock_Count[8]), .D(r_Clock_Count[12]), .Z(n1114)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1042_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_11 (.A(n1029), .B(n1201), .C(r_Clock_Count[10]), 
         .D(r_Clock_Count[8]), .Z(n721)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_4_lut_adj_11.init = 16'hfffe;
    FD1P3IX r_Clock_Count_91__i1 (.D(n69[1]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_26 (.A(r_Clock_Count[15]), .B(r_Clock_Count[13]), 
         .Z(n1201)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_2_lut_rep_26.init = 16'heeee;
    LUT4 i1_3_lut (.A(r_Rx_Data), .B(r_SM_Main[0]), .C(r_Clock_Count[5]), 
         .Z(n993)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_adj_12 (.A(r_Clock_Count[5]), .B(r_Clock_Count[3]), .C(r_Clock_Count[4]), 
         .Z(n109)) /* synthesis lut_function=(A+(B (C))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(110[13:45])
    defparam i1_3_lut_adj_12.init = 16'heaea;
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_39[2]), .CK(clk_25mhz_c), .CD(n748), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i1 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_31), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Rx_Byte_i1.GSR = "ENABLED";
    FD1P3AX r_Rx_Byte_i2 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_32), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Rx_Byte_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_22 (.A(r_Bit_Index[0]), .B(r_Bit_Index[2]), .Z(n1197)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_22.init = 16'heeee;
    LUT4 i1_2_lut_rep_23 (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .Z(n1198)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam i1_2_lut_rep_23.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_13 (.A(r_SM_Main[2]), .B(r_SM_Main[1]), .C(r_SM_Main[0]), 
         .Z(n748)) /* synthesis lut_function=(A+!(B (C))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam i1_2_lut_3_lut_adj_13.init = 16'hbfbf;
    FD1P3IX r_Clock_Count_91__i0 (.D(n69[0]), .SP(clk_25mhz_c_enable_33), 
            .CD(n492), .CK(clk_25mhz_c), .Q(r_Clock_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_14 (.A(r_SM_Main[2]), .B(n759), .C(r_SM_Main_2__N_39[2]), 
         .D(r_SM_Main[1]), .Z(n492)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (C+!(D))))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_4_lut_adj_14.init = 16'h5011;
    LUT4 i699_4_lut (.A(r_SM_Main[0]), .B(n10), .C(n753), .D(n931), 
         .Z(n759)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;
    defparam i699_4_lut.init = 16'haaa2;
    LUT4 i1_4_lut_adj_15 (.A(n929), .B(n1202), .C(n921), .D(n919), .Z(n931)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_4_lut_adj_15.init = 16'hfffe;
    LUT4 i1_4_lut_adj_16 (.A(r_Clock_Count[5]), .B(r_Clock_Count[4]), .C(n917), 
         .D(r_Clock_Count[10]), .Z(n929)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_4_lut_adj_16.init = 16'hfffd;
    FD1P3AX r_Rx_Byte_i3 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_34), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Rx_Byte_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_17 (.A(r_Rx_Data), .B(r_Clock_Count[11]), .Z(n921)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_2_lut_adj_17.init = 16'heeee;
    LUT4 r_SM_Main_0__bdd_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main_2__N_39[2]), 
         .C(n906), .D(r_SM_Main[1]), .Z(n1274)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam r_SM_Main_0__bdd_4_lut.init = 16'h77f0;
    FD1P3AX r_Rx_Byte_i4 (.D(r_Rx_Data), .SP(clk_25mhz_c_enable_35), .CK(clk_25mhz_c), 
            .Q(r_Rx_Byte[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=2, LSE_LLINE=23, LSE_RLINE=28 */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam r_Rx_Byte_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_18 (.A(r_Clock_Count[9]), .B(r_Clock_Count[8]), .Z(n919)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_2_lut_adj_18.init = 16'heeee;
    CCU2C r_Clock_Count_91_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clock_Count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n661), .S1(n69[0]));   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam r_Clock_Count_91_add_4_1.INIT0 = 16'h0000;
    defparam r_Clock_Count_91_add_4_1.INIT1 = 16'h555f;
    defparam r_Clock_Count_91_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_91_add_4_1.INJECT1_1 = "NO";
    LUT4 i1040_3_lut_4_lut (.A(r_Clock_Count[9]), .B(r_Clock_Count[14]), 
         .C(r_Clock_Count[10]), .D(r_SM_Main[1]), .Z(n1112)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1040_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_19 (.A(r_Clock_Count[9]), .B(r_Clock_Count[14]), 
         .C(r_Clock_Count[12]), .D(r_Clock_Count[11]), .Z(n1029)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_2_lut_3_lut_4_lut_adj_19.init = 16'hfffe;
    PFUMX i1078 (.BLUT(n1171), .ALUT(n1170), .C0(r_SM_Main[1]), .Z(n1172));
    LUT4 i695_2_lut_rep_24 (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .Z(n1199)) /* synthesis lut_function=(A (B)) */ ;
    defparam i695_2_lut_rep_24.init = 16'h8888;
    LUT4 i1055_4_lut (.A(n1198), .B(r_SM_Main_2__N_39[2]), .C(n1197), 
         .D(n945), .Z(clk_25mhz_c_enable_1)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1055_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_adj_20 (.A(r_Clock_Count[12]), .B(r_Clock_Count[13]), 
         .Z(n917)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(111[28:48])
    defparam i1_2_lut_adj_20.init = 16'heeee;
    LUT4 i1062_4_lut (.A(n1013), .B(r_SM_Main[2]), .C(n10), .D(n1112), 
         .Z(clk_25mhz_c_enable_33)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B))) */ ;
    defparam i1062_4_lut.init = 16'h3313;
    LUT4 i1_4_lut_adj_21 (.A(n1114), .B(n1200), .C(n753), .D(n993), 
         .Z(n1013)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_21.init = 16'h0100;
    LUT4 i1_4_lut_adj_22 (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .D(r_SM_Main_2__N_39[2]), .Z(clk_25mhz_c_enable_29)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_22.init = 16'h0501;
    LUT4 i1_2_lut_adj_23 (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .Z(n74)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam i1_2_lut_adj_23.init = 16'h2222;
    LUT4 i1_4_lut_adj_24 (.A(r_SM_Main[2]), .B(r_SM_Main_2__N_39[2]), .C(r_SM_Main[0]), 
         .D(r_SM_Main[1]), .Z(clk_25mhz_c_enable_12)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // /home/user/SDR-HLS/3.Testing/Uart Test/First_Implementation/source/UartRX.v(61[10] 131[6])
    defparam i1_4_lut_adj_24.init = 16'h4000;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

