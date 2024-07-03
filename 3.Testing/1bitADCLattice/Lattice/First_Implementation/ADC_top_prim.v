// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Jun 27 17:28:08 2024
//
// Verilog Description of module ADC_top
//

module ADC_top (clk_in, rstn, analog_cmp, analog_out, sample_rdy, 
            digital_out, pwm_out, clk_out, led, uart_tx) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(1[8:15])
    input clk_in;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(10[16:22])
    input rstn;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(11[16:20])
    input analog_cmp;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(12[16:26])
    output analog_out;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(16[17:27])
    output sample_rdy;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(17[17:27])
    output [7:0]digital_out;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(18[23:34])
    output pwm_out;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(19[17:24])
    output clk_out;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(20[17:24])
    output [7:0]led;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(21[23:26])
    output uart_tx;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(22[17:24])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(10[16:22])
    
    wire rstn_c, analog_cmp_c, analog_out_c, led_c, led_0, led_1, 
        led_2, led_3, led_4, led_5, led_6, pwm_out_c, uart_tx_c, 
        GND_net;
    wire [7:0]sigma;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(98[26:31])
    
    wire n20, n38;
    wire [2:0]r_Bit_Index;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(21[16:27])
    wire [7:0]r_Tx_Data;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(22[16:25])
    
    wire sample_rdy_c_0, o_Tx_Serial_N_256, n35, n32, n613, n614, 
        n615;
    wire [31:0]DataInReg_7__N_277;
    
    wire rstn_N_152, n3, n23, n29, n26, n1005, n1086, n1085, 
        n1084, n1083, n1082, VCC_net;
    
    VLO i1 (.Z(GND_net));
    OB digital_out_pad_5 (.I(led_1), .O(digital_out[5]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(18[23:34])
    OB digital_out_pad_6 (.I(led_0), .O(digital_out[6]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(18[23:34])
    LUT4 digital_out_i_7__I_0_i5_1_lut (.A(DataInReg_7__N_277[4]), .Z(led_2)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(89[22:38])
    defparam digital_out_i_7__I_0_i5_1_lut.init = 16'h5555;
    OB digital_out_pad_7 (.I(led_c), .O(digital_out[7]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(18[23:34])
    OB sample_rdy_pad (.I(sample_rdy_c_0), .O(sample_rdy));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(17[17:27])
    LUT4 digital_out_i_7__I_0_i4_1_lut (.A(DataInReg_7__N_277[3]), .Z(led_3)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(89[22:38])
    defparam digital_out_i_7__I_0_i4_1_lut.init = 16'h5555;
    OB analog_out_pad (.I(analog_out_c), .O(analog_out));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(16[17:27])
    LUT4 digital_out_i_7__I_0_i3_1_lut (.A(DataInReg_7__N_277[2]), .Z(led_4)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(89[22:38])
    defparam digital_out_i_7__I_0_i3_1_lut.init = 16'h5555;
    LUT4 digital_out_i_7__I_0_i2_1_lut (.A(DataInReg_7__N_277[1]), .Z(led_5)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(89[22:38])
    defparam digital_out_i_7__I_0_i2_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 digital_out_i_7__I_0_i6_1_lut (.A(DataInReg_7__N_277[5]), .Z(led_1)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(89[22:38])
    defparam digital_out_i_7__I_0_i6_1_lut.init = 16'h5555;
    OB digital_out_pad_4 (.I(led_2), .O(digital_out[4]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(18[23:34])
    CCU2C _add_1_add_4_8 (.A0(sigma[6]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(sigma[7]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n615), 
          .S0(n23), .S1(n20));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_add_4_8.INIT0 = 16'haaa0;
    defparam _add_1_add_4_8.INIT1 = 16'haaa0;
    defparam _add_1_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_add_4_8.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_6 (.A0(sigma[4]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(sigma[5]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n614), 
          .COUT(n615), .S0(n29), .S1(n26));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_add_4_6.INIT0 = 16'haaa0;
    defparam _add_1_add_4_6.INIT1 = 16'haaa0;
    defparam _add_1_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_add_4_6.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_4 (.A0(sigma[2]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(sigma[3]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n613), 
          .COUT(n614), .S0(n35), .S1(n32));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_add_4_4.INIT0 = 16'haaa0;
    defparam _add_1_add_4_4.INIT1 = 16'haaa0;
    defparam _add_1_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_add_4_4.INJECT1_1 = "NO";
    PFUMX i884 (.BLUT(n1082), .ALUT(n1005), .C0(r_Bit_Index[1]), .Z(n1083));
    OB digital_out_pad_3 (.I(led_3), .O(digital_out[3]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(18[23:34])
    OB digital_out_pad_2 (.I(led_4), .O(digital_out[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(18[23:34])
    OB digital_out_pad_1 (.I(led_5), .O(digital_out[1]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(18[23:34])
    OB digital_out_pad_0 (.I(led_6), .O(digital_out[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(18[23:34])
    OB pwm_out_pad (.I(pwm_out_c), .O(pwm_out));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(19[17:24])
    OB clk_out_pad (.I(clk_in_c), .O(clk_out));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(20[17:24])
    OB led_pad_7 (.I(led_c), .O(led[7]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(21[23:26])
    OB led_pad_6 (.I(led_0), .O(led[6]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(21[23:26])
    OB led_pad_5 (.I(led_1), .O(led[5]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(21[23:26])
    OB led_pad_4 (.I(led_2), .O(led[4]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(21[23:26])
    OB led_pad_3 (.I(led_3), .O(led[3]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(21[23:26])
    OB led_pad_2 (.I(led_4), .O(led[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(21[23:26])
    OB led_pad_1 (.I(led_5), .O(led[1]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(21[23:26])
    OB led_pad_0 (.I(led_6), .O(led[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(21[23:26])
    OB uart_tx_pad (.I(uart_tx_c), .O(uart_tx));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(22[17:24])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(10[16:22])
    IB rstn_pad (.I(rstn), .O(rstn_c));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(11[16:20])
    IB analog_cmp_pad (.I(analog_cmp), .O(analog_cmp_c));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(12[16:26])
    CCU2C _add_1_add_4_2 (.A0(analog_out_c), .B0(sigma[0]), .C0(GND_net), 
          .D0(VCC_net), .A1(sigma[1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n613), .S1(n38));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_add_4_2.INIT0 = 16'h0008;
    defparam _add_1_add_4_2.INIT1 = 16'haaa0;
    defparam _add_1_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_add_4_2.INJECT1_1 = "NO";
    LUT4 digital_out_i_7__I_0_i7_1_lut (.A(DataInReg_7__N_277[6]), .Z(led_0)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(89[22:38])
    defparam digital_out_i_7__I_0_i7_1_lut.init = 16'h5555;
    LUT4 i334_3_lut (.A(r_Bit_Index[2]), .B(r_Bit_Index[1]), .C(r_Bit_Index[0]), 
         .Z(n3)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(21[16:27])
    defparam i334_3_lut.init = 16'h6a6a;
    LUT4 r_Tx_Data_0__bdd_3_lut_886 (.A(r_Tx_Data[2]), .B(r_Bit_Index[2]), 
         .C(r_Tx_Data[6]), .Z(n1084)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam r_Tx_Data_0__bdd_3_lut_886.init = 16'he2e2;
    LUT4 i859_3_lut (.A(r_Tx_Data[3]), .B(r_Tx_Data[7]), .C(r_Bit_Index[2]), 
         .Z(n1005)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i859_3_lut.init = 16'hcaca;
    LUT4 r_Tx_Data_0__bdd_3_lut_892 (.A(r_Tx_Data[0]), .B(r_Tx_Data[4]), 
         .C(r_Bit_Index[2]), .Z(n1085)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam r_Tx_Data_0__bdd_3_lut_892.init = 16'hcaca;
    LUT4 digital_out_i_7__I_0_i1_1_lut (.A(DataInReg_7__N_277[0]), .Z(led_6)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(89[22:38])
    defparam digital_out_i_7__I_0_i1_1_lut.init = 16'h5555;
    LUT4 digital_out_i_7__I_0_i8_1_lut (.A(DataInReg_7__N_277[7]), .Z(led_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(89[22:38])
    defparam digital_out_i_7__I_0_i8_1_lut.init = 16'h5555;
    \PWM(DATA_WIDTH=8,COUNTER_WIDTH=8,OFFSET=0)  pwm_inst (.GND_net(GND_net), 
            .pwm_out_c(pwm_out_c), .clk_in_c(clk_in_c), .rstn_N_152(rstn_N_152), 
            .\DataInReg_7__N_277[0] (DataInReg_7__N_277[0]), .\DataInReg_7__N_277[7] (DataInReg_7__N_277[7]), 
            .\DataInReg_7__N_277[6] (DataInReg_7__N_277[6]), .\DataInReg_7__N_277[5] (DataInReg_7__N_277[5]), 
            .\DataInReg_7__N_277[4] (DataInReg_7__N_277[4]), .\DataInReg_7__N_277[3] (DataInReg_7__N_277[3]), 
            .\DataInReg_7__N_277[2] (DataInReg_7__N_277[2]), .\DataInReg_7__N_277[1] (DataInReg_7__N_277[1])) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(109[3] 114[2])
    L6MUX21 i889 (.D0(n1086), .D1(n1083), .SD(r_Bit_Index[0]), .Z(o_Tx_Serial_N_256));
    \uart_tx(CLKS_PER_BIT=217)  uart_tx_inst (.clk_in_c(clk_in_c), .rstn_N_152(rstn_N_152), 
            .r_Bit_Index({r_Bit_Index}), .GND_net(GND_net), .r_Tx_Data({r_Tx_Data}), 
            .led_6(led_6), .uart_tx_c(uart_tx_c), .led_c(led_c), .sample_rdy_c_0(sample_rdy_c_0), 
            .led_0(led_0), .led_1(led_1), .led_2(led_2), .led_3(led_3), 
            .led_4(led_4), .led_5(led_5), .n3(n3), .o_Tx_Serial_N_256(o_Tx_Serial_N_256)) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(94[33] 102[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 n1005_bdd_3_lut_891 (.A(r_Tx_Data[1]), .B(r_Bit_Index[2]), .C(r_Tx_Data[5]), 
         .Z(n1082)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n1005_bdd_3_lut_891.init = 16'he2e2;
    PFUMX i887 (.BLUT(n1085), .ALUT(n1084), .C0(r_Bit_Index[1]), .Z(n1086));
    \sigmadelta_adc(ACCUM_BITS=8,LPF_DEPTH_BITS=2)  SSD_ADC (.clk_in_c(clk_in_c), 
            .rstn_N_152(rstn_N_152), .analog_out_c(analog_out_c), .analog_cmp_c(analog_cmp_c), 
            .sigma({sigma}), .GND_net(GND_net), .n20(n20), .n26(n26), 
            .n38(n38), .n23(n23), .n32(n32), .n35(n35), .rstn_c(rstn_c), 
            .n29(n29), .sample_rdy_c_0(sample_rdy_c_0), .\DataInReg_7__N_277[0] (DataInReg_7__N_277[0]), 
            .\DataInReg_7__N_277[7] (DataInReg_7__N_277[7]), .\DataInReg_7__N_277[6] (DataInReg_7__N_277[6]), 
            .\DataInReg_7__N_277[5] (DataInReg_7__N_277[5]), .\DataInReg_7__N_277[4] (DataInReg_7__N_277[4]), 
            .\DataInReg_7__N_277[3] (DataInReg_7__N_277[3]), .\DataInReg_7__N_277[2] (DataInReg_7__N_277[2]), 
            .\DataInReg_7__N_277[1] (DataInReg_7__N_277[1])) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(77[3] 84[2])
    VHI i913 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module \PWM(DATA_WIDTH=8,COUNTER_WIDTH=8,OFFSET=0) 
//

module \PWM(DATA_WIDTH=8,COUNTER_WIDTH=8,OFFSET=0)  (GND_net, pwm_out_c, 
            clk_in_c, rstn_N_152, \DataInReg_7__N_277[0] , \DataInReg_7__N_277[7] , 
            \DataInReg_7__N_277[6] , \DataInReg_7__N_277[5] , \DataInReg_7__N_277[4] , 
            \DataInReg_7__N_277[3] , \DataInReg_7__N_277[2] , \DataInReg_7__N_277[1] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output pwm_out_c;
    input clk_in_c;
    input rstn_N_152;
    input \DataInReg_7__N_277[0] ;
    input \DataInReg_7__N_277[7] ;
    input \DataInReg_7__N_277[6] ;
    input \DataInReg_7__N_277[5] ;
    input \DataInReg_7__N_277[4] ;
    input \DataInReg_7__N_277[3] ;
    input \DataInReg_7__N_277[2] ;
    input \DataInReg_7__N_277[1] ;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(10[16:22])
    wire [7:0]counter;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(41[25:32])
    
    wire n14, n10, n622, VCC_net;
    wire [7:0]n37;
    
    wire n623, n1010, n1011, n998, PWMOut_N_286;
    wire [7:0]DataInReg;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(42[22:31])
    
    wire clk_in_c_enable_16, n624, n625, n4, n1099, n995, n12, 
        n1103, n1102, n987, n1105, n1104, n10_adj_299, n6;
    
    LUT4 i6_4_lut (.A(counter[2]), .B(counter[6]), .C(counter[4]), .D(counter[7]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(52[11:23])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(counter[1]), .B(counter[5]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(52[11:23])
    defparam i2_2_lut.init = 16'heeee;
    CCU2C counter_99_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n622), .COUT(n623), .S0(n37[1]), .S1(n37[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99_add_4_3.INIT0 = 16'haaa0;
    defparam counter_99_add_4_3.INIT1 = 16'haaa0;
    defparam counter_99_add_4_3.INJECT1_0 = "NO";
    defparam counter_99_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_99_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n622), .S1(n37[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99_add_4_1.INIT0 = 16'h0000;
    defparam counter_99_add_4_1.INIT1 = 16'h555f;
    defparam counter_99_add_4_1.INJECT1_0 = "NO";
    defparam counter_99_add_4_1.INJECT1_1 = "NO";
    PFUMX DataInReg_7__I_0_i16 (.BLUT(n1010), .ALUT(n1011), .C0(n998), 
          .Z(PWMOut_N_286)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=114 */ ;
    FD1S3DX PWMOut_17 (.D(PWMOut_N_286), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(pwm_out_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=114 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam PWMOut_17.GSR = "ENABLED";
    FD1S3DX counter_99__i7 (.D(n37[7]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99__i7.GSR = "ENABLED";
    FD1S3DX counter_99__i6 (.D(n37[6]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99__i6.GSR = "ENABLED";
    FD1S3DX counter_99__i5 (.D(n37[5]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99__i5.GSR = "ENABLED";
    FD1S3DX counter_99__i4 (.D(n37[4]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99__i4.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i0 (.D(\DataInReg_7__N_277[0] ), .SP(clk_in_c_enable_16), 
            .CK(clk_in_c), .CD(rstn_N_152), .Q(DataInReg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=114 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i0.GSR = "ENABLED";
    CCU2C counter_99_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n624), .COUT(n625), .S0(n37[5]), .S1(n37[6]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99_add_4_7.INIT0 = 16'haaa0;
    defparam counter_99_add_4_7.INIT1 = 16'haaa0;
    defparam counter_99_add_4_7.INJECT1_0 = "NO";
    defparam counter_99_add_4_7.INJECT1_1 = "NO";
    FD1S3DX counter_99__i3 (.D(n37[3]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99__i3.GSR = "ENABLED";
    FD1S3DX counter_99__i0 (.D(n37[0]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99__i0.GSR = "ENABLED";
    FD1S3DX counter_99__i2 (.D(n37[2]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99__i2.GSR = "ENABLED";
    FD1S3DX counter_99__i1 (.D(n37[1]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99__i1.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i7 (.D(\DataInReg_7__N_277[7] ), .SP(clk_in_c_enable_16), 
            .CK(clk_in_c), .CD(rstn_N_152), .Q(DataInReg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=114 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i7.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i6 (.D(\DataInReg_7__N_277[6] ), .SP(clk_in_c_enable_16), 
            .CK(clk_in_c), .CD(rstn_N_152), .Q(DataInReg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=114 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i6.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i5 (.D(\DataInReg_7__N_277[5] ), .SP(clk_in_c_enable_16), 
            .CK(clk_in_c), .CD(rstn_N_152), .Q(DataInReg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=114 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i5.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i4 (.D(\DataInReg_7__N_277[4] ), .SP(clk_in_c_enable_16), 
            .CK(clk_in_c), .CD(rstn_N_152), .Q(DataInReg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=114 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i4.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i3 (.D(\DataInReg_7__N_277[3] ), .SP(clk_in_c_enable_16), 
            .CK(clk_in_c), .CD(rstn_N_152), .Q(DataInReg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=114 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i3.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i2 (.D(\DataInReg_7__N_277[2] ), .SP(clk_in_c_enable_16), 
            .CK(clk_in_c), .CD(rstn_N_152), .Q(DataInReg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=114 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i2.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i1 (.D(\DataInReg_7__N_277[1] ), .SP(clk_in_c_enable_16), 
            .CK(clk_in_c), .CD(rstn_N_152), .Q(DataInReg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=114 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i1.GSR = "ENABLED";
    LUT4 DataInReg_7__I_0_i4_4_lut (.A(counter[0]), .B(counter[1]), .C(DataInReg[1]), 
         .D(DataInReg[0]), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C (D))+!B (C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i4_4_lut.init = 16'h8ecf;
    LUT4 i868_1_lut_4_lut_4_lut (.A(n1099), .B(n995), .C(n12), .D(n4), 
         .Z(n1011)) /* synthesis lut_function=(!(A (C)+!A (B (D)+!B (C)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam i868_1_lut_4_lut_4_lut.init = 16'h0b4f;
    CCU2C counter_99_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n623), .COUT(n624), .S0(n37[3]), .S1(n37[4]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99_add_4_5.INIT0 = 16'haaa0;
    defparam counter_99_add_4_5.INIT1 = 16'haaa0;
    defparam counter_99_add_4_5.INJECT1_0 = "NO";
    defparam counter_99_add_4_5.INJECT1_1 = "NO";
    LUT4 i871_4_lut (.A(n1099), .B(n1103), .C(n1102), .D(n987), .Z(n998)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam i871_4_lut.init = 16'hfffe;
    LUT4 DataInReg_7__I_0_i11_2_lut_rep_54 (.A(DataInReg[5]), .B(counter[5]), 
         .Z(n1102)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i11_2_lut_rep_54.init = 16'h6666;
    CCU2C counter_99_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n625), .S0(n37[7]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_99_add_4_9.INIT0 = 16'haaa0;
    defparam counter_99_add_4_9.INIT1 = 16'h0000;
    defparam counter_99_add_4_9.INJECT1_0 = "NO";
    defparam counter_99_add_4_9.INJECT1_1 = "NO";
    LUT4 i841_4_lut (.A(n1105), .B(n1104), .C(DataInReg[2]), .D(counter[2]), 
         .Z(n987)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam i841_4_lut.init = 16'h1001;
    LUT4 DataInReg_7__I_0_i13_2_lut_rep_55 (.A(DataInReg[6]), .B(counter[6]), 
         .Z(n1103)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i13_2_lut_rep_55.init = 16'h6666;
    LUT4 DataInReg_7__I_0_i10_3_lut_3_lut (.A(DataInReg[6]), .B(counter[6]), 
         .C(counter[5]), .Z(n10_adj_299)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i849_2_lut_3_lut_4_lut (.A(DataInReg[6]), .B(counter[6]), .C(counter[5]), 
         .D(DataInReg[5]), .Z(n995)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam i849_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 DataInReg_7__I_0_i15_2_lut_rep_51 (.A(DataInReg[7]), .B(counter[7]), 
         .Z(n1099)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i15_2_lut_rep_51.init = 16'h6666;
    LUT4 DataInReg_7__I_0_i7_2_lut_rep_56 (.A(DataInReg[3]), .B(counter[3]), 
         .Z(n1104)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i7_2_lut_rep_56.init = 16'h6666;
    LUT4 i867_1_lut_3_lut_3_lut (.A(DataInReg[4]), .B(counter[4]), .C(n6), 
         .Z(n1010)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam i867_1_lut_3_lut_3_lut.init = 16'h2b2b;
    LUT4 DataInReg_7__I_0_i9_2_lut_rep_57 (.A(DataInReg[4]), .B(counter[4]), 
         .Z(n1105)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i9_2_lut_rep_57.init = 16'h6666;
    LUT4 DataInReg_7__I_0_i12_3_lut_3_lut (.A(DataInReg[7]), .B(counter[7]), 
         .C(n10_adj_299), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 DataInReg_7__I_0_i6_3_lut_3_lut (.A(DataInReg[3]), .B(counter[3]), 
         .C(counter[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i874_4_lut (.A(counter[0]), .B(n14), .C(n10), .D(counter[3]), 
         .Z(clk_in_c_enable_16)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(52[11:23])
    defparam i874_4_lut.init = 16'h0001;
    VHI i1 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module \uart_tx(CLKS_PER_BIT=217) 
//

module \uart_tx(CLKS_PER_BIT=217)  (clk_in_c, rstn_N_152, r_Bit_Index, 
            GND_net, r_Tx_Data, led_6, uart_tx_c, led_c, sample_rdy_c_0, 
            led_0, led_1, led_2, led_3, led_4, led_5, n3, o_Tx_Serial_N_256) /* synthesis syn_module_defined=1 */ ;
    input clk_in_c;
    input rstn_N_152;
    output [2:0]r_Bit_Index;
    input GND_net;
    output [7:0]r_Tx_Data;
    input led_6;
    output uart_tx_c;
    input led_c;
    input sample_rdy_c_0;
    input led_0;
    input led_1;
    input led_2;
    input led_3;
    input led_4;
    input led_5;
    input n3;
    input o_Tx_Serial_N_256;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(10[16:22])
    
    wire n653, n734, n1098;
    wire [2:0]r_SM_Main;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(19[16:25])
    wire [15:0]n69;
    
    wire n914, clk_in_c_enable_43;
    wire [2:0]r_SM_Main_2__N_180;
    
    wire clk_in_c_enable_25, n311, n633;
    wire [15:0]r_Clock_Count;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(20[17:30])
    
    wire VCC_net, n764, n632, clk_in_c_enable_24, n3_c, n946, n752, 
        n902, n767, n631, n262, n630, n854, n749;
    wire [15:0]n121;
    
    wire n896, n770, n14, n1071, n934, n758, n832, n1072, n878, 
        n776, n860, n746, n940, n755, n629, n628, n866, n743, 
        n627, n626, n872, n779, n922, n761, n1106, n908, n884, 
        n773, n737, n740, n733, clk_in_c_enable_44, n799, n848, 
        n846, n838;
    
    LUT4 i1_2_lut_rep_50 (.A(n653), .B(n734), .Z(n1098)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(123[21:51])
    defparam i1_2_lut_rep_50.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[6]), 
         .Z(n914)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i5_1_lut_rep_53 (.A(r_SM_Main[2]), .Z(clk_in_c_enable_43)) /* synthesis lut_function=(!(A)) */ ;
    defparam i5_1_lut_rep_53.init = 16'h5555;
    FD1S3DX r_SM_Main_i0 (.D(r_SM_Main_2__N_180[0]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    FD1P3DX r_Bit_Index_i0 (.D(n311), .SP(clk_in_c_enable_25), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    CCU2C r_Clock_Count_98_add_4_17 (.A0(r_Clock_Count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n633), .S0(n69[15]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98_add_4_17.INIT0 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_17.INIT1 = 16'h0000;
    defparam r_Clock_Count_98_add_4_17.INJECT1_0 = "NO";
    defparam r_Clock_Count_98_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut (.A(r_SM_Main[2]), .B(n914), .C(n734), .D(n653), 
         .Z(n764)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0004;
    CCU2C r_Clock_Count_98_add_4_15 (.A0(r_Clock_Count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n632), .COUT(n633), .S0(n69[13]), 
          .S1(n69[14]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98_add_4_15.INIT0 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_15.INIT1 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_15.INJECT1_0 = "NO";
    defparam r_Clock_Count_98_add_4_15.INJECT1_1 = "NO";
    FD1P3DX r_Tx_Data_i0 (.D(led_6), .SP(clk_in_c_enable_24), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Tx_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Tx_Data_i0.GSR = "ENABLED";
    FD1P3BX o_Tx_Serial_56 (.D(n3_c), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .PD(rstn_N_152), .Q(uart_tx_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam o_Tx_Serial_56.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_1 (.A(r_SM_Main[2]), .B(n946), .C(n734), .D(n653), 
         .Z(n752)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_1.init = 16'h0004;
    LUT4 i1_4_lut_4_lut_adj_2 (.A(r_SM_Main[2]), .B(n902), .C(n734), .D(n653), 
         .Z(n767)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_2.init = 16'h0004;
    CCU2C r_Clock_Count_98_add_4_13 (.A0(r_Clock_Count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n631), .COUT(n632), .S0(n69[11]), 
          .S1(n69[12]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98_add_4_13.INIT0 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_13.INIT1 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_13.INJECT1_0 = "NO";
    defparam r_Clock_Count_98_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[1]), .C(r_Bit_Index[0]), 
         .Z(n262)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam i1_3_lut.init = 16'h2828;
    CCU2C r_Clock_Count_98_add_4_11 (.A0(r_Clock_Count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n630), .COUT(n631), .S0(n69[9]), 
          .S1(n69[10]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98_add_4_11.INIT0 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_11.INIT1 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_11.INJECT1_0 = "NO";
    defparam r_Clock_Count_98_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_3 (.A(r_SM_Main[2]), .B(n854), .C(n734), .D(n653), 
         .Z(n749)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_3.init = 16'h0004;
    FD1P3DX r_Clock_Count_98__i0 (.D(n752), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_4 (.A(r_SM_Main[2]), .B(n896), .C(n734), .D(n653), 
         .Z(n770)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_4.init = 16'h0004;
    LUT4 i1_4_lut (.A(r_SM_Main[2]), .B(n14), .C(n1098), .D(r_SM_Main[0]), 
         .Z(r_SM_Main_2__N_180[0])) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h0544;
    LUT4 i1_2_lut_3_lut_adj_5 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[7]), 
         .Z(n854)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_5.init = 16'he0e0;
    LUT4 n191_bdd_3_lut_879_4_lut (.A(n653), .B(n734), .C(r_SM_Main[2]), 
         .D(r_SM_Main[0]), .Z(n1071)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(123[21:51])
    defparam n191_bdd_3_lut_879_4_lut.init = 16'h010f;
    LUT4 i1_4_lut_4_lut_adj_6 (.A(r_SM_Main[2]), .B(n934), .C(n734), .D(n653), 
         .Z(n758)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_6.init = 16'h0004;
    FD1P3DX r_Tx_Data_i7 (.D(led_c), .SP(clk_in_c_enable_24), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Tx_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Tx_Data_i7.GSR = "ENABLED";
    LUT4 i28_4_lut (.A(sample_rdy_c_0), .B(n832), .C(r_SM_Main[1]), .D(n1098), 
         .Z(n14)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i28_4_lut.init = 16'hca0a;
    PFUMX i880 (.BLUT(n1072), .ALUT(n1071), .C0(r_SM_Main[1]), .Z(r_SM_Main_2__N_180[1]));
    LUT4 i1_4_lut_4_lut_adj_7 (.A(r_SM_Main[2]), .B(n878), .C(n734), .D(n653), 
         .Z(n776)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_7.init = 16'h0004;
    FD1P3DX r_Tx_Data_i6 (.D(led_0), .SP(clk_in_c_enable_24), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Tx_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Tx_Data_i6.GSR = "ENABLED";
    FD1P3DX r_Tx_Data_i5 (.D(led_1), .SP(clk_in_c_enable_24), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Tx_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Tx_Data_i5.GSR = "ENABLED";
    FD1P3DX r_Tx_Data_i4 (.D(led_2), .SP(clk_in_c_enable_24), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Tx_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Tx_Data_i4.GSR = "ENABLED";
    FD1P3DX r_Tx_Data_i3 (.D(led_3), .SP(clk_in_c_enable_24), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Tx_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Tx_Data_i3.GSR = "ENABLED";
    FD1P3DX r_Tx_Data_i2 (.D(led_4), .SP(clk_in_c_enable_24), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Tx_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Tx_Data_i2.GSR = "ENABLED";
    FD1P3DX r_Tx_Data_i1 (.D(led_5), .SP(clk_in_c_enable_24), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Tx_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Tx_Data_i1.GSR = "ENABLED";
    FD1P3DX r_Bit_Index_i1 (.D(n262), .SP(clk_in_c_enable_25), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_8 (.A(r_SM_Main[2]), .B(n860), .C(n734), .D(n653), 
         .Z(n746)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_8.init = 16'h0004;
    LUT4 i1_4_lut_4_lut_adj_9 (.A(r_SM_Main[2]), .B(n940), .C(n734), .D(n653), 
         .Z(n755)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_9.init = 16'h0004;
    CCU2C r_Clock_Count_98_add_4_9 (.A0(r_Clock_Count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n629), .COUT(n630), .S0(n69[7]), 
          .S1(n69[8]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98_add_4_9.INIT0 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_9.INIT1 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_9.INJECT1_0 = "NO";
    defparam r_Clock_Count_98_add_4_9.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_98_add_4_7 (.A0(r_Clock_Count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n628), .COUT(n629), .S0(n69[5]), 
          .S1(n69[6]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98_add_4_7.INIT0 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_7.INIT1 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_7.INJECT1_0 = "NO";
    defparam r_Clock_Count_98_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_10 (.A(r_SM_Main[2]), .B(n866), .C(n734), 
         .D(n653), .Z(n743)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_10.init = 16'h0004;
    CCU2C r_Clock_Count_98_add_4_5 (.A0(r_Clock_Count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(r_Clock_Count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n627), .COUT(n628), .S0(n69[3]), 
          .S1(n69[4]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98_add_4_5.INIT0 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_5.INIT1 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_5.INJECT1_0 = "NO";
    defparam r_Clock_Count_98_add_4_5.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_98_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n626), .COUT(n627), .S0(n69[1]), .S1(n69[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98_add_4_3.INIT0 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_3.INIT1 = 16'haaa0;
    defparam r_Clock_Count_98_add_4_3.INJECT1_0 = "NO";
    defparam r_Clock_Count_98_add_4_3.INJECT1_1 = "NO";
    CCU2C r_Clock_Count_98_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n626), .S1(n69[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98_add_4_1.INIT0 = 16'h0000;
    defparam r_Clock_Count_98_add_4_1.INIT1 = 16'h555f;
    defparam r_Clock_Count_98_add_4_1.INJECT1_0 = "NO";
    defparam r_Clock_Count_98_add_4_1.INJECT1_1 = "NO";
    FD1S3DX r_SM_Main_i2 (.D(r_SM_Main_2__N_180[2]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1S3DX r_SM_Main_i1 (.D(r_SM_Main_2__N_180[1]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i1 (.D(n743), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_11 (.A(r_SM_Main[2]), .B(n872), .C(n734), 
         .D(n653), .Z(n779)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_11.init = 16'h0004;
    LUT4 i1_4_lut_4_lut_adj_12 (.A(r_SM_Main[2]), .B(n922), .C(n734), 
         .D(n653), .Z(n761)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_12.init = 16'h0004;
    LUT4 i1_3_lut_adj_13 (.A(r_Bit_Index[2]), .B(r_Bit_Index[0]), .C(r_Bit_Index[1]), 
         .Z(n832)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_13.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_14 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[5]), 
         .Z(n896)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_14.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_adj_15 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[9]), 
         .Z(n922)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_15.init = 16'he0e0;
    LUT4 i1_4_lut_adj_16 (.A(n1106), .B(r_SM_Main[1]), .C(n734), .D(n653), 
         .Z(clk_in_c_enable_25)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_16.init = 16'h5551;
    LUT4 i1_2_lut_3_lut_3_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .Z(n908)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam i1_2_lut_3_lut_3_lut.init = 16'h5454;
    LUT4 i1_4_lut_4_lut_adj_17 (.A(r_SM_Main[2]), .B(n884), .C(n734), 
         .D(n653), .Z(n773)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_17.init = 16'h0004;
    LUT4 i1_4_lut_adj_18 (.A(n653), .B(n734), .C(n908), .D(n69[13]), 
         .Z(n737)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_18.init = 16'h1000;
    LUT4 n191_bdd_3_lut_4_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), 
         .C(n734), .D(n653), .Z(n1072)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam n191_bdd_3_lut_4_lut_4_lut.init = 16'h4440;
    LUT4 i1_2_lut (.A(r_SM_Main[1]), .B(r_Bit_Index[0]), .Z(n311)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_19 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[8]), 
         .Z(n940)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_19.init = 16'he0e0;
    LUT4 i1_4_lut_adj_20 (.A(n653), .B(n734), .C(n908), .D(n69[14]), 
         .Z(n740)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_20.init = 16'h1000;
    LUT4 i1_4_lut_4_lut_adj_21 (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(r_SM_Main[1]), 
         .D(n1098), .Z(r_SM_Main_2__N_180[2])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_21.init = 16'h4000;
    FD1P3DX r_Clock_Count_98__i2 (.D(n779), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i2.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i3 (.D(n776), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i3.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i4 (.D(n758), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i4.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i5 (.D(n770), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i5.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i6 (.D(n764), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i6.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i7 (.D(n749), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i7.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i8 (.D(n755), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i8.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i9 (.D(n761), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i9.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i10 (.D(n767), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i10.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i11 (.D(n773), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i11.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i12 (.D(n746), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i12.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i13 (.D(n737), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i13.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i14 (.D(n740), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i14.GSR = "ENABLED";
    FD1P3DX r_Clock_Count_98__i15 (.D(n733), .SP(clk_in_c_enable_43), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Clock_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(125[38:58])
    defparam r_Clock_Count_98__i15.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_22 (.A(n653), .B(n734), .C(n908), .D(n69[15]), 
         .Z(n733)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_22.init = 16'h1000;
    LUT4 i877_4_lut (.A(n1106), .B(n653), .C(n734), .D(r_SM_Main[1]), 
         .Z(clk_in_c_enable_44)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;
    defparam i877_4_lut.init = 16'h5455;
    LUT4 i1_4_lut_adj_23 (.A(n3), .B(n1098), .C(r_SM_Main[0]), .D(r_SM_Main[1]), 
         .Z(n799)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam i1_4_lut_adj_23.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_adj_24 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[11]), 
         .Z(n884)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_24.init = 16'he0e0;
    FD1P3DX r_Bit_Index_i2 (.D(n799), .SP(clk_in_c_enable_44), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=33, LSE_RCOL=2, LSE_LLINE=94, LSE_RLINE=102 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(49[9] 150[12])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_25 (.A(r_Clock_Count[13]), .B(n848), .C(n846), .D(r_Clock_Count[12]), 
         .Z(n653)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(123[21:51])
    defparam i1_4_lut_adj_25.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_adj_26 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[0]), 
         .Z(n946)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_26.init = 16'he0e0;
    LUT4 i1_4_lut_adj_27 (.A(r_Clock_Count[15]), .B(r_Clock_Count[10]), 
         .C(r_Clock_Count[8]), .D(r_Clock_Count[11]), .Z(n848)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(123[21:51])
    defparam i1_4_lut_adj_27.init = 16'hfffe;
    LUT4 i1_2_lut_adj_28 (.A(r_Clock_Count[14]), .B(r_Clock_Count[9]), .Z(n846)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(123[21:51])
    defparam i1_2_lut_adj_28.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_29 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[1]), 
         .Z(n866)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_29.init = 16'he0e0;
    LUT4 i1_4_lut_adj_30 (.A(n838), .B(r_Clock_Count[3]), .C(r_Clock_Count[5]), 
         .D(r_Clock_Count[4]), .Z(n734)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(123[21:51])
    defparam i1_4_lut_adj_30.init = 16'ha8a0;
    LUT4 i1_2_lut_3_lut_adj_31 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[2]), 
         .Z(n872)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_31.init = 16'he0e0;
    LUT4 i403_3_lut (.A(r_SM_Main[0]), .B(o_Tx_Serial_N_256), .C(r_SM_Main[1]), 
         .Z(n3_c)) /* synthesis lut_function=(A (C)+!A (B+!(C))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(19[16:25])
    defparam i403_3_lut.init = 16'he5e5;
    LUT4 i1_2_lut_3_lut_adj_32 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[3]), 
         .Z(n878)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_32.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_adj_33 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[4]), 
         .Z(n934)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_33.init = 16'he0e0;
    LUT4 i832_2_lut_rep_58 (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .Z(n1106)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i832_2_lut_rep_58.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(r_SM_Main[2]), .B(r_SM_Main[0]), .C(sample_rdy_c_0), 
         .D(r_SM_Main[1]), .Z(clk_in_c_enable_24)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_adj_34 (.A(r_Clock_Count[7]), .B(r_Clock_Count[6]), .Z(n838)) /* synthesis lut_function=(A (B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/UartTX.v(123[21:51])
    defparam i1_2_lut_adj_34.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_35 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[12]), 
         .Z(n860)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_35.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_adj_36 (.A(r_SM_Main[1]), .B(r_SM_Main[0]), .C(n69[10]), 
         .Z(n902)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_36.init = 16'he0e0;
    VHI i1 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \sigmadelta_adc(ACCUM_BITS=8,LPF_DEPTH_BITS=2) 
//

module \sigmadelta_adc(ACCUM_BITS=8,LPF_DEPTH_BITS=2)  (clk_in_c, rstn_N_152, 
            analog_out_c, analog_cmp_c, sigma, GND_net, n20, n26, 
            n38, n23, n32, n35, rstn_c, n29, sample_rdy_c_0, \DataInReg_7__N_277[0] , 
            \DataInReg_7__N_277[7] , \DataInReg_7__N_277[6] , \DataInReg_7__N_277[5] , 
            \DataInReg_7__N_277[4] , \DataInReg_7__N_277[3] , \DataInReg_7__N_277[2] , 
            \DataInReg_7__N_277[1] ) /* synthesis syn_module_defined=1 */ ;
    input clk_in_c;
    output rstn_N_152;
    output analog_out_c;
    input analog_cmp_c;
    output [7:0]sigma;
    input GND_net;
    input n20;
    input n26;
    input n38;
    input n23;
    input n32;
    input n35;
    input rstn_c;
    input n29;
    output sample_rdy_c_0;
    output \DataInReg_7__N_277[0] ;
    output \DataInReg_7__N_277[7] ;
    output \DataInReg_7__N_277[6] ;
    output \DataInReg_7__N_277[5] ;
    output \DataInReg_7__N_277[4] ;
    output \DataInReg_7__N_277[3] ;
    output \DataInReg_7__N_277[2] ;
    output \DataInReg_7__N_277[1] ;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(10[16:22])
    
    wire accum_rdy, rollover, rollover_N_142;
    wire [7:0]sigma_7__N_108;
    
    wire n634;
    wire [7:0]counter;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(100[26:33])
    
    wire VCC_net;
    wire [7:0]n37;
    
    wire n635, clk_in_c_enable_29, n415, n421;
    wire [7:0]accum;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(99[29:34])
    
    wire n423, n419, n413, n417, n10, n425, n980, n972, n10_adj_295, 
        n637, n636, n14;
    
    FD1S3DX accum_rdy_25 (.D(rollover), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(accum_rdy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_rdy_25.GSR = "ENABLED";
    FD1S3DX rollover_27 (.D(rollover_N_142), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(rollover)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(184[7] 187[6])
    defparam rollover_27.GSR = "ENABLED";
    FD1S3AX delta_22 (.D(analog_cmp_c), .CK(clk_in_c), .Q(analog_out_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(115[8] 118[4])
    defparam delta_22.GSR = "ENABLED";
    LUT4 sigma_7__I_0_i1_3_lut (.A(sigma[0]), .B(analog_out_c), .C(rollover), 
         .Z(sigma_7__N_108[0])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(142[18] 145[12])
    defparam sigma_7__I_0_i1_3_lut.init = 16'hc6c6;
    CCU2C counter_96_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n634), .COUT(n635), .S0(n37[1]), .S1(n37[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96_add_4_3.INIT0 = 16'haaa0;
    defparam counter_96_add_4_3.INIT1 = 16'haaa0;
    defparam counter_96_add_4_3.INJECT1_0 = "NO";
    defparam counter_96_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_96_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n634), .S1(n37[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96_add_4_1.INIT0 = 16'h0000;
    defparam counter_96_add_4_1.INIT1 = 16'h555f;
    defparam counter_96_add_4_1.INJECT1_0 = "NO";
    defparam counter_96_add_4_1.INJECT1_1 = "NO";
    FD1P3DX sigma_i6 (.D(n415), .SP(clk_in_c_enable_29), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(sigma[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i6.GSR = "ENABLED";
    FD1P3DX sigma_i3 (.D(n421), .SP(clk_in_c_enable_29), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(sigma[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i3.GSR = "ENABLED";
    FD1P3DX accum_i0_i0 (.D(sigma[0]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(accum[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i0.GSR = "ENABLED";
    FD1P3DX sigma_i2 (.D(n423), .SP(clk_in_c_enable_29), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(sigma[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i2.GSR = "ENABLED";
    FD1P3DX sigma_i4 (.D(n419), .SP(clk_in_c_enable_29), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(sigma[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i4.GSR = "ENABLED";
    LUT4 i429_2_lut (.A(n20), .B(rollover), .Z(n413)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i429_2_lut.init = 16'h2222;
    FD1P3DX sigma_i0 (.D(sigma_7__N_108[0]), .SP(clk_in_c_enable_29), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(sigma[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i0.GSR = "ENABLED";
    FD1S3DX counter_96__i0 (.D(n37[0]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96__i0.GSR = "ENABLED";
    FD1P3DX accum_i0_i7 (.D(sigma[7]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(accum[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i7.GSR = "ENABLED";
    FD1P3DX accum_i0_i6 (.D(sigma[6]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(accum[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i6.GSR = "ENABLED";
    FD1P3DX accum_i0_i5 (.D(sigma[5]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(accum[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i5.GSR = "ENABLED";
    FD1P3DX accum_i0_i4 (.D(sigma[4]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(accum[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i4.GSR = "ENABLED";
    FD1P3DX accum_i0_i3 (.D(sigma[3]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(accum[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i3.GSR = "ENABLED";
    FD1P3DX accum_i0_i2 (.D(sigma[2]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(accum[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i2.GSR = "ENABLED";
    FD1P3DX accum_i0_i1 (.D(sigma[1]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(accum[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i1.GSR = "ENABLED";
    FD1P3DX sigma_i7 (.D(n413), .SP(clk_in_c_enable_29), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(sigma[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i7.GSR = "ENABLED";
    LUT4 i431_2_lut (.A(n26), .B(rollover), .Z(n417)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i431_2_lut.init = 16'h2222;
    LUT4 i2_2_lut (.A(counter[1]), .B(counter[2]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i435_2_lut (.A(n38), .B(rollover), .Z(n425)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i435_2_lut.init = 16'h2222;
    FD1P3DX sigma_i5 (.D(n417), .SP(clk_in_c_enable_29), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(sigma[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i5.GSR = "ENABLED";
    FD1P3DX sigma_i1 (.D(n425), .SP(clk_in_c_enable_29), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(sigma[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=77, LSE_RLINE=84 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i1.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(n980), .B(n972), .C(sigma[4]), .D(n10_adj_295), 
         .Z(clk_in_c_enable_29)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i8_4_lut.init = 16'hff7f;
    LUT4 i834_4_lut (.A(sigma[3]), .B(sigma[7]), .C(sigma[1]), .D(sigma[2]), 
         .Z(n980)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i834_4_lut.init = 16'h8000;
    LUT4 i826_2_lut (.A(sigma[6]), .B(sigma[5]), .Z(n972)) /* synthesis lut_function=(A (B)) */ ;
    defparam i826_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(rollover), .B(sigma[0]), .Z(n10_adj_295)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut.init = 16'hbbbb;
    FD1S3DX counter_96__i1 (.D(n37[1]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96__i1.GSR = "ENABLED";
    FD1S3DX counter_96__i2 (.D(n37[2]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96__i2.GSR = "ENABLED";
    FD1S3DX counter_96__i3 (.D(n37[3]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96__i3.GSR = "ENABLED";
    FD1S3DX counter_96__i4 (.D(n37[4]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96__i4.GSR = "ENABLED";
    FD1S3DX counter_96__i5 (.D(n37[5]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96__i5.GSR = "ENABLED";
    FD1S3DX counter_96__i6 (.D(n37[6]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96__i6.GSR = "ENABLED";
    FD1S3DX counter_96__i7 (.D(n37[7]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96__i7.GSR = "ENABLED";
    CCU2C counter_96_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n637), .S0(n37[7]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96_add_4_9.INIT0 = 16'haaa0;
    defparam counter_96_add_4_9.INIT1 = 16'h0000;
    defparam counter_96_add_4_9.INJECT1_0 = "NO";
    defparam counter_96_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_96_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n636), .COUT(n637), .S0(n37[5]), .S1(n37[6]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96_add_4_7.INIT0 = 16'haaa0;
    defparam counter_96_add_4_7.INIT1 = 16'haaa0;
    defparam counter_96_add_4_7.INJECT1_0 = "NO";
    defparam counter_96_add_4_7.INJECT1_1 = "NO";
    LUT4 i430_2_lut (.A(n23), .B(rollover), .Z(n415)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i430_2_lut.init = 16'h2222;
    LUT4 i433_2_lut (.A(n32), .B(rollover), .Z(n421)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i433_2_lut.init = 16'h2222;
    CCU2C counter_96_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n635), .COUT(n636), .S0(n37[3]), .S1(n37[4]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_96_add_4_5.INIT0 = 16'haaa0;
    defparam counter_96_add_4_5.INIT1 = 16'haaa0;
    defparam counter_96_add_4_5.INJECT1_0 = "NO";
    defparam counter_96_add_4_5.INJECT1_1 = "NO";
    LUT4 i434_2_lut (.A(n35), .B(rollover), .Z(n423)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i434_2_lut.init = 16'h2222;
    LUT4 rstn_I_0_1_lut (.A(rstn_c), .Z(rstn_N_152)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(174[6:11])
    defparam rstn_I_0_1_lut.init = 16'h5555;
    LUT4 i7_4_lut (.A(counter[0]), .B(n14), .C(n10), .D(counter[3]), 
         .Z(rollover_N_142)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i6_4_lut (.A(counter[7]), .B(counter[4]), .C(counter[5]), .D(counter[6]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i432_2_lut (.A(n29), .B(rollover), .Z(n419)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i432_2_lut.init = 16'h2222;
    \box_ave(LPF_DEPTH_BITS=2)  box_ave (.clk_in_c(clk_in_c), .rstn_N_152(rstn_N_152), 
            .GND_net(GND_net), .accum({accum}), .sample_rdy_c_0(sample_rdy_c_0), 
            .accum_rdy(accum_rdy), .\DataInReg_7__N_277[0] (\DataInReg_7__N_277[0] ), 
            .\DataInReg_7__N_277[7] (\DataInReg_7__N_277[7] ), .\DataInReg_7__N_277[6] (\DataInReg_7__N_277[6] ), 
            .\DataInReg_7__N_277[5] (\DataInReg_7__N_277[5] ), .\DataInReg_7__N_277[4] (\DataInReg_7__N_277[4] ), 
            .\DataInReg_7__N_277[3] (\DataInReg_7__N_277[3] ), .\DataInReg_7__N_277[2] (\DataInReg_7__N_277[2] ), 
            .\DataInReg_7__N_277[1] (\DataInReg_7__N_277[1] )) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(163[1] 170[2])
    VHI i1 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module \box_ave(LPF_DEPTH_BITS=2) 
//

module \box_ave(LPF_DEPTH_BITS=2)  (clk_in_c, rstn_N_152, GND_net, accum, 
            sample_rdy_c_0, accum_rdy, \DataInReg_7__N_277[0] , \DataInReg_7__N_277[7] , 
            \DataInReg_7__N_277[6] , \DataInReg_7__N_277[5] , \DataInReg_7__N_277[4] , 
            \DataInReg_7__N_277[3] , \DataInReg_7__N_277[2] , \DataInReg_7__N_277[1] ) /* synthesis syn_module_defined=1 */ ;
    input clk_in_c;
    input rstn_N_152;
    input GND_net;
    input [7:0]accum;
    output sample_rdy_c_0;
    input accum_rdy;
    output \DataInReg_7__N_277[0] ;
    output \DataInReg_7__N_277[7] ;
    output \DataInReg_7__N_277[6] ;
    output \DataInReg_7__N_277[5] ;
    output \DataInReg_7__N_277[4] ;
    output \DataInReg_7__N_277[3] ;
    output \DataInReg_7__N_277[2] ;
    output \DataInReg_7__N_277[1] ;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(10[16:22])
    
    wire n619;
    wire [7:0]raw_data_d1;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(102[27:38])
    wire [1:0]count;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(101[41:46])
    wire [9:0]accum_c;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(100[41:46])
    wire [9:0]n45;
    
    wire n620;
    wire [9:0]n79;
    
    wire accumulate, n1100, sample_d1, sample_d2, latch_result;
    wire [1:0]n13;
    
    wire n621, VCC_net, n618, n617;
    
    CCU2C accum_101_add_4_7 (.A0(raw_data_d1[5]), .B0(count[1]), .C0(count[0]), 
          .D0(accum_c[5]), .A1(raw_data_d1[6]), .B1(count[1]), .C1(count[0]), 
          .D1(accum_c[6]), .CIN(n619), .COUT(n620), .S0(n45[5]), .S1(n45[6]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101_add_4_7.INIT0 = 16'h56aa;
    defparam accum_101_add_4_7.INIT1 = 16'h56aa;
    defparam accum_101_add_4_7.INJECT1_0 = "NO";
    defparam accum_101_add_4_7.INJECT1_1 = "NO";
    FD1P3DX accum_101__i0 (.D(n45[0]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(n79[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101__i0.GSR = "ENABLED";
    LUT4 equal_8_i3_2_lut_rep_52 (.A(count[0]), .B(count[1]), .Z(n1100)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(130[38:50])
    defparam equal_8_i3_2_lut_rep_52.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(count[0]), .B(count[1]), .C(sample_d1), .D(sample_d2), 
         .Z(latch_result)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(130[38:50])
    defparam i1_3_lut_4_lut.init = 16'h0010;
    FD1P3DX count_100__i0 (.D(n13[0]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(count[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam count_100__i0.GSR = "ENABLED";
    CCU2C accum_101_add_4_11 (.A0(accum_c[9]), .B0(n1100), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n621), .S0(n45[9]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101_add_4_11.INIT0 = 16'h8888;
    defparam accum_101_add_4_11.INIT1 = 16'h0000;
    defparam accum_101_add_4_11.INJECT1_0 = "NO";
    defparam accum_101_add_4_11.INJECT1_1 = "NO";
    FD1S3DX raw_data_d1_i0 (.D(accum[0]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(raw_data_d1[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i0.GSR = "ENABLED";
    FD1S3DX sample_d2_31 (.D(sample_d1), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(sample_d2)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam sample_d2_31.GSR = "ENABLED";
    FD1S3DX result_valid_33 (.D(latch_result), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(sample_rdy_c_0)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam result_valid_33.GSR = "ENABLED";
    FD1S3DX sample_d1_30 (.D(accum_rdy), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(sample_d1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam sample_d1_30.GSR = "ENABLED";
    LUT4 i489_2_lut (.A(count[1]), .B(count[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam i489_2_lut.init = 16'h6666;
    CCU2C accum_101_add_4_5 (.A0(raw_data_d1[3]), .B0(count[1]), .C0(count[0]), 
          .D0(accum_c[3]), .A1(raw_data_d1[4]), .B1(count[1]), .C1(count[0]), 
          .D1(accum_c[4]), .CIN(n618), .COUT(n619), .S0(n45[3]), .S1(n45[4]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101_add_4_5.INIT0 = 16'h56aa;
    defparam accum_101_add_4_5.INIT1 = 16'h56aa;
    defparam accum_101_add_4_5.INJECT1_0 = "NO";
    defparam accum_101_add_4_5.INJECT1_1 = "NO";
    FD1P3DX ave_data_out__i1 (.D(accum_c[2]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(\DataInReg_7__N_277[0] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out__i1.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i7 (.D(accum[7]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(raw_data_d1[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i7.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i6 (.D(accum[6]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(raw_data_d1[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i6.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i5 (.D(accum[5]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(raw_data_d1[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i5.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i4 (.D(accum[4]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(raw_data_d1[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i4.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i3 (.D(accum[3]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(raw_data_d1[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i3.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i2 (.D(accum[2]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(raw_data_d1[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i2.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i1 (.D(accum[1]), .CK(clk_in_c), .CD(rstn_N_152), 
            .Q(raw_data_d1[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i1.GSR = "ENABLED";
    FD1P3DX count_100__i1 (.D(n13[1]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(count[1]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam count_100__i1.GSR = "ENABLED";
    FD1P3DX accum_101__i9 (.D(n45[9]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(accum_c[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101__i9.GSR = "ENABLED";
    FD1P3DX accum_101__i8 (.D(n45[8]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(accum_c[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101__i8.GSR = "ENABLED";
    FD1P3DX accum_101__i7 (.D(n45[7]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(accum_c[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101__i7.GSR = "ENABLED";
    FD1P3DX accum_101__i6 (.D(n45[6]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(accum_c[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101__i6.GSR = "ENABLED";
    FD1P3DX accum_101__i5 (.D(n45[5]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(accum_c[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101__i5.GSR = "ENABLED";
    FD1P3DX accum_101__i4 (.D(n45[4]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(accum_c[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101__i4.GSR = "ENABLED";
    FD1P3DX accum_101__i3 (.D(n45[3]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(accum_c[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101__i3.GSR = "ENABLED";
    FD1P3DX accum_101__i2 (.D(n45[2]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(accum_c[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101__i2.GSR = "ENABLED";
    FD1P3DX accum_101__i1 (.D(n45[1]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(n79[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101__i1.GSR = "ENABLED";
    FD1P3DX ave_data_out__i8 (.D(accum_c[9]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(\DataInReg_7__N_277[7] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out__i8.GSR = "ENABLED";
    CCU2C accum_101_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(raw_data_d1[0]), .B1(count[1]), .C1(count[0]), 
          .D1(n79[0]), .COUT(n617), .S1(n45[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101_add_4_1.INIT0 = 16'h0000;
    defparam accum_101_add_4_1.INIT1 = 16'h56aa;
    defparam accum_101_add_4_1.INJECT1_0 = "NO";
    defparam accum_101_add_4_1.INJECT1_1 = "NO";
    FD1P3DX ave_data_out__i7 (.D(accum_c[8]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(\DataInReg_7__N_277[6] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out__i7.GSR = "ENABLED";
    FD1P3DX ave_data_out__i6 (.D(accum_c[7]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(\DataInReg_7__N_277[5] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out__i6.GSR = "ENABLED";
    FD1P3DX ave_data_out__i5 (.D(accum_c[6]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(\DataInReg_7__N_277[4] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out__i5.GSR = "ENABLED";
    FD1P3DX ave_data_out__i4 (.D(accum_c[5]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(\DataInReg_7__N_277[3] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out__i4.GSR = "ENABLED";
    FD1P3DX ave_data_out__i3 (.D(accum_c[4]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(\DataInReg_7__N_277[2] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out__i3.GSR = "ENABLED";
    FD1P3DX ave_data_out__i2 (.D(accum_c[3]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_152), .Q(\DataInReg_7__N_277[1] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out__i2.GSR = "ENABLED";
    CCU2C accum_101_add_4_9 (.A0(raw_data_d1[7]), .B0(count[1]), .C0(count[0]), 
          .D0(accum_c[7]), .A1(accum_c[8]), .B1(n1100), .C1(GND_net), 
          .D1(VCC_net), .CIN(n620), .COUT(n621), .S0(n45[7]), .S1(n45[8]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101_add_4_9.INIT0 = 16'h56aa;
    defparam accum_101_add_4_9.INIT1 = 16'h8888;
    defparam accum_101_add_4_9.INJECT1_0 = "NO";
    defparam accum_101_add_4_9.INJECT1_1 = "NO";
    CCU2C accum_101_add_4_3 (.A0(raw_data_d1[1]), .B0(count[1]), .C0(count[0]), 
          .D0(n79[1]), .A1(raw_data_d1[2]), .B1(count[1]), .C1(count[0]), 
          .D1(accum_c[2]), .CIN(n617), .COUT(n618), .S0(n45[1]), .S1(n45[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_101_add_4_3.INIT0 = 16'h56aa;
    defparam accum_101_add_4_3.INIT1 = 16'h56aa;
    defparam accum_101_add_4_3.INJECT1_0 = "NO";
    defparam accum_101_add_4_3.INJECT1_1 = "NO";
    LUT4 i487_1_lut (.A(count[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam i487_1_lut.init = 16'h5555;
    LUT4 sample_d1_I_0_2_lut (.A(sample_d1), .B(sample_d2), .Z(accumulate)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(129[22:45])
    defparam sample_d1_I_0_2_lut.init = 16'h2222;
    VHI i1 (.Z(VCC_net));
    
endmodule
