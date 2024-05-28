// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun May 26 11:22:16 2024
//
// Verilog Description of module ADC_top
//

module ADC_top (clk_in, rstn, digital_out, analog_cmp, analog_out, 
            sample_rdy, pwm_out) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(67[8:15])
    input clk_in;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(84[7:13])
    input rstn;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(85[7:11])
    output [7:0]digital_out;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(91[14:25])
    input analog_cmp;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(86[7:17])
    output analog_out;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(89[8:18])
    output sample_rdy;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(90[9:19])
    output pwm_out;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(92[8:15])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(84[7:13])
    
    wire rstn_c, analog_cmp_c, analog_out_c, sample_rdy_c, digital_out_c_7, 
        digital_out_c_6, digital_out_c_5, digital_out_c_4, digital_out_c_3, 
        digital_out_c_2, digital_out_c_1, digital_out_c_0, pwm_out_c;
    wire [9:0]digital_out_i;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(103[24:37])
    
    wire VCC_net;
    wire [9:0]sigma;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(98[26:31])
    
    wire n323, n324, n322, GND_net;
    wire [9:0]counter_adj_132;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(10[25:32])
    wire [9:0]DataInReg;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(11[22:31])
    
    wire cout;
    wire [9:0]DataInReg_9__N_107;
    
    wire n24, n27, n30, n33, n36, n39, n42, n45, n48, n331, 
        n330, n329, n328, n326, n325;
    
    VHI i6 (.Z(VCC_net));
    GSR GSR_INST (.GSR(VCC_net));
    OB digital_out_pad_3 (.I(digital_out_c_3), .O(digital_out[3]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(91[14:25])
    FD1S3AX _add_1_i7 (.D(cout), .CK(clk_in_c), .Q(pwm_out_c));
    defparam _add_1_i7.GSR = "ENABLED";
    OB digital_out_pad_4 (.I(digital_out_c_4), .O(digital_out[4]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(91[14:25])
    CCU2C _add_1_add_4_4 (.A0(counter_adj_132[1]), .B0(DataInReg[1]), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_adj_132[2]), .B1(DataInReg[2]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n322), .COUT(n323));
    defparam _add_1_add_4_4.INIT0 = 16'h9995;
    defparam _add_1_add_4_4.INIT1 = 16'h9995;
    defparam _add_1_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_add_4_4.INJECT1_1 = "NO";
    OB digital_out_pad_5 (.I(digital_out_c_5), .O(digital_out[5]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(91[14:25])
    LUT4 digital_out_i_9__I_0_i4_1_lut (.A(DataInReg_9__N_107[3]), .Z(digital_out_c_3)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(139[24:40])
    defparam digital_out_i_9__I_0_i4_1_lut.init = 16'h5555;
    OB digital_out_pad_6 (.I(digital_out_c_6), .O(digital_out[6]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(91[14:25])
    VLO i1 (.Z(GND_net));
    OB digital_out_pad_7 (.I(digital_out_c_7), .O(digital_out[7]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(91[14:25])
    LUT4 digital_out_i_9__I_0_i1_1_lut (.A(DataInReg_9__N_107[0]), .Z(digital_out_c_0)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(139[24:40])
    defparam digital_out_i_9__I_0_i1_1_lut.init = 16'h5555;
    LUT4 digital_out_i_9__I_0_i2_1_lut (.A(DataInReg_9__N_107[1]), .Z(digital_out_c_1)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(139[24:40])
    defparam digital_out_i_9__I_0_i2_1_lut.init = 16'h5555;
    LUT4 digital_out_i_9__I_0_i5_1_lut (.A(DataInReg_9__N_107[4]), .Z(digital_out_c_4)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(139[24:40])
    defparam digital_out_i_9__I_0_i5_1_lut.init = 16'h5555;
    LUT4 digital_out_i_9__I_0_i6_1_lut (.A(DataInReg_9__N_107[5]), .Z(digital_out_c_5)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(139[24:40])
    defparam digital_out_i_9__I_0_i6_1_lut.init = 16'h5555;
    LUT4 digital_out_i_9__I_0_i3_1_lut (.A(DataInReg_9__N_107[2]), .Z(digital_out_c_2)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(139[24:40])
    defparam digital_out_i_9__I_0_i3_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 digital_out_i_9__I_0_i7_1_lut (.A(DataInReg_9__N_107[6]), .Z(digital_out_c_6)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(139[24:40])
    defparam digital_out_i_9__I_0_i7_1_lut.init = 16'h5555;
    LUT4 digital_out_i_9__I_0_i8_1_lut (.A(DataInReg_9__N_107[7]), .Z(digital_out_c_7)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(139[24:40])
    defparam digital_out_i_9__I_0_i8_1_lut.init = 16'h5555;
    CCU2C _add_1_120_add_4_10 (.A0(sigma[8]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sigma[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n331), .S0(n27), .S1(n24));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_120_add_4_10.INIT0 = 16'haaa0;
    defparam _add_1_120_add_4_10.INIT1 = 16'haaa0;
    defparam _add_1_120_add_4_10.INJECT1_0 = "NO";
    defparam _add_1_120_add_4_10.INJECT1_1 = "NO";
    CCU2C _add_1_120_add_4_8 (.A0(sigma[6]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sigma[7]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n330), .COUT(n331), .S0(n33), .S1(n30));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_120_add_4_8.INIT0 = 16'haaa0;
    defparam _add_1_120_add_4_8.INIT1 = 16'haaa0;
    defparam _add_1_120_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_120_add_4_8.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter_adj_132[0]), .B1(DataInReg[0]), .C1(GND_net), .D1(VCC_net), 
          .COUT(n322));
    defparam _add_1_add_4_2.INIT0 = 16'h000f;
    defparam _add_1_add_4_2.INIT1 = 16'h9995;
    defparam _add_1_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_add_4_2.INJECT1_1 = "NO";
    CCU2C _add_1_120_add_4_6 (.A0(sigma[4]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sigma[5]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n329), .COUT(n330), .S0(n39), .S1(n36));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_120_add_4_6.INIT0 = 16'haaa0;
    defparam _add_1_120_add_4_6.INIT1 = 16'haaa0;
    defparam _add_1_120_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_120_add_4_6.INJECT1_1 = "NO";
    CCU2C _add_1_120_add_4_4 (.A0(sigma[2]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sigma[3]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n328), .COUT(n329), .S0(n45), .S1(n42));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_120_add_4_4.INIT0 = 16'haaa0;
    defparam _add_1_120_add_4_4.INIT1 = 16'haaa0;
    defparam _add_1_120_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_120_add_4_4.INJECT1_1 = "NO";
    CCU2C _add_1_120_add_4_2 (.A0(analog_out_c), .B0(sigma[0]), .C0(GND_net), 
          .D0(VCC_net), .A1(sigma[1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n328), .S1(n48));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_120_add_4_2.INIT0 = 16'h0008;
    defparam _add_1_120_add_4_2.INIT1 = 16'haaa0;
    defparam _add_1_120_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_120_add_4_2.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_12 (.A0(counter_adj_132[9]), .B0(DataInReg[9]), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n326), .S1(cout));
    defparam _add_1_add_4_12.INIT0 = 16'h9995;
    defparam _add_1_add_4_12.INIT1 = 16'h0000;
    defparam _add_1_add_4_12.INJECT1_0 = "NO";
    defparam _add_1_add_4_12.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_10 (.A0(counter_adj_132[7]), .B0(DataInReg[7]), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_adj_132[8]), .B1(DataInReg[8]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n325), .COUT(n326));
    defparam _add_1_add_4_10.INIT0 = 16'h9995;
    defparam _add_1_add_4_10.INIT1 = 16'h9995;
    defparam _add_1_add_4_10.INJECT1_0 = "NO";
    defparam _add_1_add_4_10.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_8 (.A0(counter_adj_132[5]), .B0(DataInReg[5]), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_adj_132[6]), .B1(DataInReg[6]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n324), .COUT(n325));
    defparam _add_1_add_4_8.INIT0 = 16'h9995;
    defparam _add_1_add_4_8.INIT1 = 16'h9995;
    defparam _add_1_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_add_4_8.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_6 (.A0(counter_adj_132[3]), .B0(DataInReg[3]), .C0(GND_net), 
          .D0(VCC_net), .A1(counter_adj_132[4]), .B1(DataInReg[4]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n323), .COUT(n324));
    defparam _add_1_add_4_6.INIT0 = 16'h9995;
    defparam _add_1_add_4_6.INIT1 = 16'h9995;
    defparam _add_1_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_add_4_6.INJECT1_1 = "NO";
    PWM pwm_inst (.counter({counter_adj_132}), .clk_in_c(clk_in_c), .DataInReg({DataInReg}), 
        .\DataInReg_9__N_107[0] (DataInReg_9__N_107[0]), .\DataInReg_9__N_107[8] (DataInReg_9__N_107[8]), 
        .\DataInReg_9__N_107[7] (DataInReg_9__N_107[7]), .\DataInReg_9__N_107[6] (DataInReg_9__N_107[6]), 
        .\DataInReg_9__N_107[5] (DataInReg_9__N_107[5]), .\DataInReg_9__N_107[4] (DataInReg_9__N_107[4]), 
        .\DataInReg_9__N_107[3] (DataInReg_9__N_107[3]), .\DataInReg_9__N_107[2] (DataInReg_9__N_107[2]), 
        .\DataInReg_9__N_107[1] (DataInReg_9__N_107[1]), .GND_net(GND_net), 
        .VCC_net(VCC_net), .\digital_out_i[9] (digital_out_i[9])) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(153[1] 157[2])
    OB digital_out_pad_2 (.I(digital_out_c_2), .O(digital_out[2]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(91[14:25])
    OB digital_out_pad_1 (.I(digital_out_c_1), .O(digital_out[1]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(91[14:25])
    OB digital_out_pad_0 (.I(digital_out_c_0), .O(digital_out[0]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(91[14:25])
    OB analog_out_pad (.I(analog_out_c), .O(analog_out));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(89[8:18])
    OB sample_rdy_pad (.I(sample_rdy_c), .O(sample_rdy));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(90[9:19])
    OB pwm_out_pad (.I(pwm_out_c), .O(pwm_out));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(92[8:15])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(84[7:13])
    IB rstn_pad (.I(rstn), .O(rstn_c));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(85[7:11])
    IB analog_cmp_pad (.I(analog_cmp), .O(analog_cmp_c));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(86[7:17])
    \sigmadelta_adc(ADC_WIDTH=10,LPF_DEPTH_BITS=2)  SSD_ADC (.n39(n39), .sigma({sigma}), 
            .clk_in_c(clk_in_c), .n42(n42), .analog_out_c(analog_out_c), 
            .analog_cmp_c(analog_cmp_c), .n24(n24), .n45(n45), .n48(n48), 
            .n30(n30), .n27(n27), .GND_net(GND_net), .VCC_net(VCC_net), 
            .rstn_c(rstn_c), .n33(n33), .n36(n36), .\DataInReg_9__N_107[0] (DataInReg_9__N_107[0]), 
            .sample_rdy_c(sample_rdy_c), .\digital_out_i[9] (digital_out_i[9]), 
            .\DataInReg_9__N_107[8] (DataInReg_9__N_107[8]), .\DataInReg_9__N_107[7] (DataInReg_9__N_107[7]), 
            .\DataInReg_9__N_107[6] (DataInReg_9__N_107[6]), .\DataInReg_9__N_107[5] (DataInReg_9__N_107[5]), 
            .\DataInReg_9__N_107[4] (DataInReg_9__N_107[4]), .\DataInReg_9__N_107[3] (DataInReg_9__N_107[3]), 
            .\DataInReg_9__N_107[2] (DataInReg_9__N_107[2]), .\DataInReg_9__N_107[1] (DataInReg_9__N_107[1])) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(121[1] 128[3])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PWM
//

module PWM (counter, clk_in_c, DataInReg, \DataInReg_9__N_107[0] , \DataInReg_9__N_107[8] , 
            \DataInReg_9__N_107[7] , \DataInReg_9__N_107[6] , \DataInReg_9__N_107[5] , 
            \DataInReg_9__N_107[4] , \DataInReg_9__N_107[3] , \DataInReg_9__N_107[2] , 
            \DataInReg_9__N_107[1] , GND_net, VCC_net, \digital_out_i[9] ) /* synthesis syn_module_defined=1 */ ;
    output [9:0]counter;
    input clk_in_c;
    output [9:0]DataInReg;
    input \DataInReg_9__N_107[0] ;
    input \DataInReg_9__N_107[8] ;
    input \DataInReg_9__N_107[7] ;
    input \DataInReg_9__N_107[6] ;
    input \DataInReg_9__N_107[5] ;
    input \DataInReg_9__N_107[4] ;
    input \DataInReg_9__N_107[3] ;
    input \DataInReg_9__N_107[2] ;
    input \DataInReg_9__N_107[1] ;
    input GND_net;
    input VCC_net;
    input \digital_out_i[9] ;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(84[7:13])
    wire [9:0]n45;
    
    wire clk_in_c_enable_11;
    wire [9:0]n87;
    
    wire n17, n15, n11, n12, n337, n336, n335, n334, n333;
    
    FD1S3AX counter_42__i0 (.D(n45[0]), .CK(clk_in_c), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42__i0.GSR = "ENABLED";
    FD1P3AX DataInReg_i0_i0 (.D(\DataInReg_9__N_107[0] ), .SP(clk_in_c_enable_11), 
            .CK(clk_in_c), .Q(DataInReg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=153, LSE_RLINE=157 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(13[8] 23[5])
    defparam DataInReg_i0_i0.GSR = "ENABLED";
    FD1P3AX DataInReg_i0_i9 (.D(n87[9]), .SP(clk_in_c_enable_11), .CK(clk_in_c), 
            .Q(DataInReg[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=153, LSE_RLINE=157 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(13[8] 23[5])
    defparam DataInReg_i0_i9.GSR = "ENABLED";
    FD1P3AX DataInReg_i0_i8 (.D(\DataInReg_9__N_107[8] ), .SP(clk_in_c_enable_11), 
            .CK(clk_in_c), .Q(DataInReg[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=153, LSE_RLINE=157 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(13[8] 23[5])
    defparam DataInReg_i0_i8.GSR = "ENABLED";
    FD1P3AX DataInReg_i0_i7 (.D(\DataInReg_9__N_107[7] ), .SP(clk_in_c_enable_11), 
            .CK(clk_in_c), .Q(DataInReg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=153, LSE_RLINE=157 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(13[8] 23[5])
    defparam DataInReg_i0_i7.GSR = "ENABLED";
    FD1P3AX DataInReg_i0_i6 (.D(\DataInReg_9__N_107[6] ), .SP(clk_in_c_enable_11), 
            .CK(clk_in_c), .Q(DataInReg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=153, LSE_RLINE=157 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(13[8] 23[5])
    defparam DataInReg_i0_i6.GSR = "ENABLED";
    FD1P3AX DataInReg_i0_i5 (.D(\DataInReg_9__N_107[5] ), .SP(clk_in_c_enable_11), 
            .CK(clk_in_c), .Q(DataInReg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=153, LSE_RLINE=157 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(13[8] 23[5])
    defparam DataInReg_i0_i5.GSR = "ENABLED";
    FD1P3AX DataInReg_i0_i4 (.D(\DataInReg_9__N_107[4] ), .SP(clk_in_c_enable_11), 
            .CK(clk_in_c), .Q(DataInReg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=153, LSE_RLINE=157 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(13[8] 23[5])
    defparam DataInReg_i0_i4.GSR = "ENABLED";
    FD1P3AX DataInReg_i0_i3 (.D(\DataInReg_9__N_107[3] ), .SP(clk_in_c_enable_11), 
            .CK(clk_in_c), .Q(DataInReg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=153, LSE_RLINE=157 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(13[8] 23[5])
    defparam DataInReg_i0_i3.GSR = "ENABLED";
    FD1P3AX DataInReg_i0_i2 (.D(\DataInReg_9__N_107[2] ), .SP(clk_in_c_enable_11), 
            .CK(clk_in_c), .Q(DataInReg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=153, LSE_RLINE=157 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(13[8] 23[5])
    defparam DataInReg_i0_i2.GSR = "ENABLED";
    FD1P3AX DataInReg_i0_i1 (.D(\DataInReg_9__N_107[1] ), .SP(clk_in_c_enable_11), 
            .CK(clk_in_c), .Q(DataInReg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=153, LSE_RLINE=157 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(13[8] 23[5])
    defparam DataInReg_i0_i1.GSR = "ENABLED";
    FD1S3AX counter_42__i9 (.D(n45[9]), .CK(clk_in_c), .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42__i9.GSR = "ENABLED";
    LUT4 i267_4_lut (.A(n17), .B(n15), .C(n11), .D(n12), .Z(clk_in_c_enable_11)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(16[7:19])
    defparam i267_4_lut.init = 16'h0001;
    LUT4 i7_4_lut (.A(counter[4]), .B(counter[8]), .C(counter[6]), .D(counter[9]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(16[7:19])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(counter[2]), .B(counter[1]), .Z(n15)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(16[7:19])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(counter[0]), .B(counter[5]), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(16[7:19])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_2_lut (.A(counter[7]), .B(counter[3]), .Z(n12)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(16[7:19])
    defparam i2_2_lut.init = 16'heeee;
    FD1S3AX counter_42__i8 (.D(n45[8]), .CK(clk_in_c), .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42__i8.GSR = "ENABLED";
    FD1S3AX counter_42__i7 (.D(n45[7]), .CK(clk_in_c), .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42__i7.GSR = "ENABLED";
    FD1S3AX counter_42__i6 (.D(n45[6]), .CK(clk_in_c), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42__i6.GSR = "ENABLED";
    FD1S3AX counter_42__i5 (.D(n45[5]), .CK(clk_in_c), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42__i5.GSR = "ENABLED";
    FD1S3AX counter_42__i4 (.D(n45[4]), .CK(clk_in_c), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42__i4.GSR = "ENABLED";
    FD1S3AX counter_42__i3 (.D(n45[3]), .CK(clk_in_c), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42__i3.GSR = "ENABLED";
    FD1S3AX counter_42__i2 (.D(n45[2]), .CK(clk_in_c), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42__i2.GSR = "ENABLED";
    FD1S3AX counter_42__i1 (.D(n45[1]), .CK(clk_in_c), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42__i1.GSR = "ENABLED";
    CCU2C counter_42_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n337), .S0(n45[9]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42_add_4_11.INIT0 = 16'haaa0;
    defparam counter_42_add_4_11.INIT1 = 16'h0000;
    defparam counter_42_add_4_11.INJECT1_0 = "NO";
    defparam counter_42_add_4_11.INJECT1_1 = "NO";
    CCU2C counter_42_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n336), .COUT(n337), .S0(n45[7]), .S1(n45[8]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42_add_4_9.INIT0 = 16'haaa0;
    defparam counter_42_add_4_9.INIT1 = 16'haaa0;
    defparam counter_42_add_4_9.INJECT1_0 = "NO";
    defparam counter_42_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_42_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n335), .COUT(n336), .S0(n45[5]), .S1(n45[6]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42_add_4_7.INIT0 = 16'haaa0;
    defparam counter_42_add_4_7.INIT1 = 16'haaa0;
    defparam counter_42_add_4_7.INJECT1_0 = "NO";
    defparam counter_42_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_42_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n334), .COUT(n335), .S0(n45[3]), .S1(n45[4]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42_add_4_5.INIT0 = 16'haaa0;
    defparam counter_42_add_4_5.INIT1 = 16'haaa0;
    defparam counter_42_add_4_5.INJECT1_0 = "NO";
    defparam counter_42_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_42_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n333), .COUT(n334), .S0(n45[1]), .S1(n45[2]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42_add_4_3.INIT0 = 16'haaa0;
    defparam counter_42_add_4_3.INIT1 = 16'haaa0;
    defparam counter_42_add_4_3.INJECT1_0 = "NO";
    defparam counter_42_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_42_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n333), .S1(n45[0]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(15[14:28])
    defparam counter_42_add_4_1.INIT0 = 16'h0000;
    defparam counter_42_add_4_1.INIT1 = 16'h555f;
    defparam counter_42_add_4_1.INJECT1_0 = "NO";
    defparam counter_42_add_4_1.INJECT1_1 = "NO";
    LUT4 i115_1_lut (.A(\digital_out_i[9] ), .Z(n87[9])) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/PWM.v(16[3] 17[35])
    defparam i115_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module \sigmadelta_adc(ADC_WIDTH=10,LPF_DEPTH_BITS=2) 
//

module \sigmadelta_adc(ADC_WIDTH=10,LPF_DEPTH_BITS=2)  (n39, sigma, clk_in_c, 
            n42, analog_out_c, analog_cmp_c, n24, n45, n48, n30, 
            n27, GND_net, VCC_net, rstn_c, n33, n36, \DataInReg_9__N_107[0] , 
            sample_rdy_c, \digital_out_i[9] , \DataInReg_9__N_107[8] , 
            \DataInReg_9__N_107[7] , \DataInReg_9__N_107[6] , \DataInReg_9__N_107[5] , 
            \DataInReg_9__N_107[4] , \DataInReg_9__N_107[3] , \DataInReg_9__N_107[2] , 
            \DataInReg_9__N_107[1] ) /* synthesis syn_module_defined=1 */ ;
    input n39;
    output [9:0]sigma;
    input clk_in_c;
    input n42;
    output analog_out_c;
    input analog_cmp_c;
    input n24;
    input n45;
    input n48;
    input n30;
    input n27;
    input GND_net;
    input VCC_net;
    input rstn_c;
    input n33;
    input n36;
    output \DataInReg_9__N_107[0] ;
    output sample_rdy_c;
    output \digital_out_i[9] ;
    output \DataInReg_9__N_107[8] ;
    output \DataInReg_9__N_107[7] ;
    output \DataInReg_9__N_107[6] ;
    output \DataInReg_9__N_107[5] ;
    output \DataInReg_9__N_107[4] ;
    output \DataInReg_9__N_107[3] ;
    output \DataInReg_9__N_107[2] ;
    output \DataInReg_9__N_107[1] ;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(84[7:13])
    
    wire rollover, n272, clk_in_c_enable_20, rstn_N_55, n262, n423, 
        n425, n12, n274, accum_rdy, rollover_N_43, n276;
    wire [9:0]accum;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(99[29:34])
    
    wire n17, n15, n11, n12_adj_129;
    wire [9:0]counter;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(100[26:33])
    wire [9:0]n1;
    
    wire n278, n266, n264;
    wire [9:0]sigma_9__N_1;
    
    wire n321, n320, n317, n319, n318, n268, n270;
    
    LUT4 i167_2_lut (.A(n39), .B(rollover), .Z(n272)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i167_2_lut.init = 16'h2222;
    FD1P3DX sigma_i9 (.D(n262), .SP(clk_in_c_enable_20), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(sigma[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i9.GSR = "ENABLED";
    LUT4 i10_4_lut (.A(n423), .B(sigma[2]), .C(n425), .D(n12), .Z(clk_in_c_enable_20)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i10_4_lut.init = 16'hff7f;
    LUT4 i168_2_lut (.A(n42), .B(rollover), .Z(n274)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i168_2_lut.init = 16'h2222;
    FD1S3DX accum_rdy_25 (.D(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum_rdy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_rdy_25.GSR = "ENABLED";
    FD1S3DX rollover_27 (.D(rollover_N_43), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(rollover)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(184[7] 187[6])
    defparam rollover_27.GSR = "ENABLED";
    FD1S3AX delta_22 (.D(analog_cmp_c), .CK(clk_in_c), .Q(analog_out_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(115[8] 118[4])
    defparam delta_22.GSR = "ENABLED";
    LUT4 i150_2_lut (.A(n24), .B(rollover), .Z(n262)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i150_2_lut.init = 16'h2222;
    LUT4 i169_2_lut (.A(n45), .B(rollover), .Z(n276)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i169_2_lut.init = 16'h2222;
    FD1P3DX accum_i0_i0 (.D(sigma[0]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i0.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(n17), .B(n15), .C(n11), .D(n12_adj_129), .Z(rollover_N_43)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i9_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(counter[3]), .B(counter[2]), .C(counter[1]), .D(counter[9]), 
         .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i7_4_lut.init = 16'h8000;
    FD1S3DX counter_41__i0 (.D(n1[0]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41__i0.GSR = "ENABLED";
    LUT4 i170_2_lut (.A(n48), .B(rollover), .Z(n278)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i170_2_lut.init = 16'h2222;
    LUT4 i5_2_lut (.A(counter[6]), .B(counter[4]), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i5_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(counter[0]), .B(counter[5]), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i2_2_lut (.A(counter[7]), .B(counter[8]), .Z(n12_adj_129)) /* synthesis lut_function=(A (B)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i164_2_lut (.A(n30), .B(rollover), .Z(n266)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i164_2_lut.init = 16'h2222;
    LUT4 i163_2_lut (.A(n27), .B(rollover), .Z(n264)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i163_2_lut.init = 16'h2222;
    LUT4 i261_4_lut (.A(sigma[6]), .B(sigma[8]), .C(sigma[1]), .D(sigma[9]), 
         .Z(n423)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i261_4_lut.init = 16'h8000;
    FD1S3DX counter_41__i9 (.D(n1[9]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41__i9.GSR = "ENABLED";
    FD1S3DX counter_41__i8 (.D(n1[8]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41__i8.GSR = "ENABLED";
    FD1S3DX counter_41__i7 (.D(n1[7]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41__i7.GSR = "ENABLED";
    FD1S3DX counter_41__i6 (.D(n1[6]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41__i6.GSR = "ENABLED";
    FD1S3DX counter_41__i5 (.D(n1[5]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41__i5.GSR = "ENABLED";
    FD1S3DX counter_41__i4 (.D(n1[4]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41__i4.GSR = "ENABLED";
    FD1S3DX counter_41__i3 (.D(n1[3]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41__i3.GSR = "ENABLED";
    FD1S3DX counter_41__i2 (.D(n1[2]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41__i2.GSR = "ENABLED";
    FD1S3DX counter_41__i1 (.D(n1[1]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41__i1.GSR = "ENABLED";
    LUT4 i263_4_lut (.A(sigma[5]), .B(sigma[3]), .C(sigma[7]), .D(sigma[4]), 
         .Z(n425)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i263_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_1 (.A(rollover), .B(sigma[0]), .Z(n12)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_1.init = 16'hbbbb;
    FD1P3DX sigma_i0 (.D(sigma_9__N_1[0]), .SP(clk_in_c_enable_20), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(sigma[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i0.GSR = "ENABLED";
    FD1P3DX accum_i0_i9 (.D(sigma[9]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i9.GSR = "ENABLED";
    FD1P3DX accum_i0_i8 (.D(sigma[8]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i8.GSR = "ENABLED";
    FD1P3DX accum_i0_i7 (.D(sigma[7]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i7.GSR = "ENABLED";
    FD1P3DX accum_i0_i6 (.D(sigma[6]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i6.GSR = "ENABLED";
    FD1P3DX accum_i0_i5 (.D(sigma[5]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i5.GSR = "ENABLED";
    FD1P3DX accum_i0_i4 (.D(sigma[4]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i4.GSR = "ENABLED";
    FD1P3DX accum_i0_i3 (.D(sigma[3]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i3.GSR = "ENABLED";
    FD1P3DX accum_i0_i2 (.D(sigma[2]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i2.GSR = "ENABLED";
    FD1P3DX accum_i0_i1 (.D(sigma[1]), .SP(rollover), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(accum[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i1.GSR = "ENABLED";
    CCU2C counter_41_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n321), .S0(n1[9]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41_add_4_11.INIT0 = 16'haaa0;
    defparam counter_41_add_4_11.INIT1 = 16'h0000;
    defparam counter_41_add_4_11.INJECT1_0 = "NO";
    defparam counter_41_add_4_11.INJECT1_1 = "NO";
    CCU2C counter_41_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n320), .COUT(n321), .S0(n1[7]), .S1(n1[8]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41_add_4_9.INIT0 = 16'haaa0;
    defparam counter_41_add_4_9.INIT1 = 16'haaa0;
    defparam counter_41_add_4_9.INJECT1_0 = "NO";
    defparam counter_41_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_41_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n317), .S1(n1[0]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41_add_4_1.INIT0 = 16'h0000;
    defparam counter_41_add_4_1.INIT1 = 16'h555f;
    defparam counter_41_add_4_1.INJECT1_0 = "NO";
    defparam counter_41_add_4_1.INJECT1_1 = "NO";
    CCU2C counter_41_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n319), .COUT(n320), .S0(n1[5]), .S1(n1[6]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41_add_4_7.INIT0 = 16'haaa0;
    defparam counter_41_add_4_7.INIT1 = 16'haaa0;
    defparam counter_41_add_4_7.INJECT1_0 = "NO";
    defparam counter_41_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_41_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n318), .COUT(n319), .S0(n1[3]), .S1(n1[4]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41_add_4_5.INIT0 = 16'haaa0;
    defparam counter_41_add_4_5.INIT1 = 16'haaa0;
    defparam counter_41_add_4_5.INJECT1_0 = "NO";
    defparam counter_41_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_41_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n317), .COUT(n318), .S0(n1[1]), .S1(n1[2]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_41_add_4_3.INIT0 = 16'haaa0;
    defparam counter_41_add_4_3.INIT1 = 16'haaa0;
    defparam counter_41_add_4_3.INJECT1_0 = "NO";
    defparam counter_41_add_4_3.INJECT1_1 = "NO";
    LUT4 rstn_I_0_1_lut (.A(rstn_c), .Z(rstn_N_55)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(174[6:11])
    defparam rstn_I_0_1_lut.init = 16'h5555;
    FD1P3DX sigma_i8 (.D(n264), .SP(clk_in_c_enable_20), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(sigma[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i8.GSR = "ENABLED";
    FD1P3DX sigma_i7 (.D(n266), .SP(clk_in_c_enable_20), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(sigma[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i7.GSR = "ENABLED";
    FD1P3DX sigma_i6 (.D(n268), .SP(clk_in_c_enable_20), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(sigma[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i6.GSR = "ENABLED";
    FD1P3DX sigma_i5 (.D(n270), .SP(clk_in_c_enable_20), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(sigma[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i5.GSR = "ENABLED";
    FD1P3DX sigma_i4 (.D(n272), .SP(clk_in_c_enable_20), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(sigma[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i4.GSR = "ENABLED";
    LUT4 i165_2_lut (.A(n33), .B(rollover), .Z(n268)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i165_2_lut.init = 16'h2222;
    FD1P3DX sigma_i3 (.D(n274), .SP(clk_in_c_enable_20), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(sigma[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i3.GSR = "ENABLED";
    LUT4 sigma_9__I_0_i1_3_lut (.A(sigma[0]), .B(analog_out_c), .C(rollover), 
         .Z(sigma_9__N_1[0])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(142[18] 145[12])
    defparam sigma_9__I_0_i1_3_lut.init = 16'hc6c6;
    FD1P3DX sigma_i2 (.D(n276), .SP(clk_in_c_enable_20), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(sigma[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i2.GSR = "ENABLED";
    LUT4 i166_2_lut (.A(n36), .B(rollover), .Z(n270)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i166_2_lut.init = 16'h2222;
    FD1P3DX sigma_i1 (.D(n278), .SP(clk_in_c_enable_20), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(sigma[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=121, LSE_RLINE=128 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i1.GSR = "ENABLED";
    \box_ave(ADC_WIDTH=10,LPF_DEPTH_BITS=2)  box_ave (.\DataInReg_9__N_107[0] (\DataInReg_9__N_107[0] ), 
            .clk_in_c(clk_in_c), .rstn_N_55(rstn_N_55), .accum({accum}), 
            .sample_rdy_c(sample_rdy_c), .accum_rdy(accum_rdy), .GND_net(GND_net), 
            .VCC_net(VCC_net), .\digital_out_i[9] (\digital_out_i[9] ), 
            .\DataInReg_9__N_107[8] (\DataInReg_9__N_107[8] ), .\DataInReg_9__N_107[7] (\DataInReg_9__N_107[7] ), 
            .\DataInReg_9__N_107[6] (\DataInReg_9__N_107[6] ), .\DataInReg_9__N_107[5] (\DataInReg_9__N_107[5] ), 
            .\DataInReg_9__N_107[4] (\DataInReg_9__N_107[4] ), .\DataInReg_9__N_107[3] (\DataInReg_9__N_107[3] ), 
            .\DataInReg_9__N_107[2] (\DataInReg_9__N_107[2] ), .\DataInReg_9__N_107[1] (\DataInReg_9__N_107[1] )) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/sigmadelta_adc.v(163[1] 170[2])
    
endmodule
//
// Verilog Description of module \box_ave(ADC_WIDTH=10,LPF_DEPTH_BITS=2) 
//

module \box_ave(ADC_WIDTH=10,LPF_DEPTH_BITS=2)  (\DataInReg_9__N_107[0] , 
            clk_in_c, rstn_N_55, accum, sample_rdy_c, accum_rdy, GND_net, 
            VCC_net, \digital_out_i[9] , \DataInReg_9__N_107[8] , \DataInReg_9__N_107[7] , 
            \DataInReg_9__N_107[6] , \DataInReg_9__N_107[5] , \DataInReg_9__N_107[4] , 
            \DataInReg_9__N_107[3] , \DataInReg_9__N_107[2] , \DataInReg_9__N_107[1] ) /* synthesis syn_module_defined=1 */ ;
    output \DataInReg_9__N_107[0] ;
    input clk_in_c;
    input rstn_N_55;
    input [9:0]accum;
    output sample_rdy_c;
    input accum_rdy;
    input GND_net;
    input VCC_net;
    output \digital_out_i[9] ;
    output \DataInReg_9__N_107[8] ;
    output \DataInReg_9__N_107[7] ;
    output \DataInReg_9__N_107[6] ;
    output \DataInReg_9__N_107[5] ;
    output \DataInReg_9__N_107[4] ;
    output \DataInReg_9__N_107[3] ;
    output \DataInReg_9__N_107[2] ;
    output \DataInReg_9__N_107[1] ;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/adc_top.v(84[7:13])
    
    wire latch_result;
    wire [11:0]accum_c;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(100[41:46])
    wire [9:0]raw_data_d1;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(102[27:38])
    
    wire sample_d2, sample_d1, accumulate;
    wire [11:0]n53;
    wire [1:0]count;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(101[41:46])
    wire [1:0]n13;
    wire [11:0]n93;
    
    wire n343, n455, n342, n341, n340, n339, n338;
    
    FD1P3DX ave_data_out_i0_i0 (.D(accum_c[2]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(\DataInReg_9__N_107[0] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i0.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i0 (.D(accum[0]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(raw_data_d1[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i0.GSR = "ENABLED";
    FD1S3DX sample_d2_31 (.D(sample_d1), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(sample_d2)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam sample_d2_31.GSR = "ENABLED";
    FD1S3DX result_valid_33 (.D(latch_result), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(sample_rdy_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam result_valid_33.GSR = "ENABLED";
    FD1S3DX sample_d1_30 (.D(accum_rdy), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(sample_d1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam sample_d1_30.GSR = "ENABLED";
    FD1P3DX accum_40__i11 (.D(n53[11]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(accum_c[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i11.GSR = "ENABLED";
    FD1P3DX accum_40__i10 (.D(n53[10]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(accum_c[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i10.GSR = "ENABLED";
    FD1P3DX accum_40__i9 (.D(n53[9]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(accum_c[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i9.GSR = "ENABLED";
    FD1P3DX accum_40__i8 (.D(n53[8]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(accum_c[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i8.GSR = "ENABLED";
    FD1P3DX accum_40__i7 (.D(n53[7]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(accum_c[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i7.GSR = "ENABLED";
    FD1P3DX accum_40__i6 (.D(n53[6]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(accum_c[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i6.GSR = "ENABLED";
    FD1P3DX accum_40__i5 (.D(n53[5]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(accum_c[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i5.GSR = "ENABLED";
    FD1P3DX accum_40__i4 (.D(n53[4]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(accum_c[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i4.GSR = "ENABLED";
    FD1P3DX accum_40__i3 (.D(n53[3]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(accum_c[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i3.GSR = "ENABLED";
    FD1P3DX count_43__i0 (.D(n13[0]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(count[0]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam count_43__i0.GSR = "ENABLED";
    FD1P3DX accum_40__i2 (.D(n53[2]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(accum_c[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i2.GSR = "ENABLED";
    FD1P3DX accum_40__i1 (.D(n53[1]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(n93[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i1.GSR = "ENABLED";
    FD1P3DX accum_40__i0 (.D(n53[0]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(n93[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i0.GSR = "ENABLED";
    LUT4 sample_d1_I_0_2_lut (.A(sample_d1), .B(sample_d2), .Z(accumulate)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(129[22:45])
    defparam sample_d1_I_0_2_lut.init = 16'h2222;
    FD1P3DX count_43__i1 (.D(n13[1]), .SP(accumulate), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(count[1]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam count_43__i1.GSR = "ENABLED";
    CCU2C accum_40_add_4_13 (.A0(accum_c[11]), .B0(n455), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n343), .S0(n53[11]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_13.INIT0 = 16'h8888;
    defparam accum_40_add_4_13.INIT1 = 16'h0000;
    defparam accum_40_add_4_13.INJECT1_0 = "NO";
    defparam accum_40_add_4_13.INJECT1_1 = "NO";
    CCU2C accum_40_add_4_11 (.A0(raw_data_d1[9]), .B0(count[1]), .C0(count[0]), 
          .D0(accum_c[9]), .A1(accum_c[10]), .B1(n455), .C1(GND_net), 
          .D1(VCC_net), .CIN(n342), .COUT(n343), .S0(n53[9]), .S1(n53[10]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_11.INIT0 = 16'h56aa;
    defparam accum_40_add_4_11.INIT1 = 16'h8888;
    defparam accum_40_add_4_11.INJECT1_0 = "NO";
    defparam accum_40_add_4_11.INJECT1_1 = "NO";
    CCU2C accum_40_add_4_9 (.A0(raw_data_d1[7]), .B0(count[1]), .C0(count[0]), 
          .D0(accum_c[7]), .A1(raw_data_d1[8]), .B1(count[1]), .C1(count[0]), 
          .D1(accum_c[8]), .CIN(n341), .COUT(n342), .S0(n53[7]), .S1(n53[8]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_9.INIT0 = 16'h56aa;
    defparam accum_40_add_4_9.INIT1 = 16'h56aa;
    defparam accum_40_add_4_9.INJECT1_0 = "NO";
    defparam accum_40_add_4_9.INJECT1_1 = "NO";
    CCU2C accum_40_add_4_7 (.A0(raw_data_d1[5]), .B0(count[1]), .C0(count[0]), 
          .D0(accum_c[5]), .A1(raw_data_d1[6]), .B1(count[1]), .C1(count[0]), 
          .D1(accum_c[6]), .CIN(n340), .COUT(n341), .S0(n53[5]), .S1(n53[6]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_7.INIT0 = 16'h56aa;
    defparam accum_40_add_4_7.INIT1 = 16'h56aa;
    defparam accum_40_add_4_7.INJECT1_0 = "NO";
    defparam accum_40_add_4_7.INJECT1_1 = "NO";
    CCU2C accum_40_add_4_5 (.A0(raw_data_d1[3]), .B0(count[1]), .C0(count[0]), 
          .D0(accum_c[3]), .A1(raw_data_d1[4]), .B1(count[1]), .C1(count[0]), 
          .D1(accum_c[4]), .CIN(n339), .COUT(n340), .S0(n53[3]), .S1(n53[4]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_5.INIT0 = 16'h56aa;
    defparam accum_40_add_4_5.INIT1 = 16'h56aa;
    defparam accum_40_add_4_5.INJECT1_0 = "NO";
    defparam accum_40_add_4_5.INJECT1_1 = "NO";
    CCU2C accum_40_add_4_3 (.A0(raw_data_d1[1]), .B0(count[1]), .C0(count[0]), 
          .D0(n93[1]), .A1(raw_data_d1[2]), .B1(count[1]), .C1(count[0]), 
          .D1(accum_c[2]), .CIN(n338), .COUT(n339), .S0(n53[1]), .S1(n53[2]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_3.INIT0 = 16'h56aa;
    defparam accum_40_add_4_3.INIT1 = 16'h56aa;
    defparam accum_40_add_4_3.INJECT1_0 = "NO";
    defparam accum_40_add_4_3.INJECT1_1 = "NO";
    FD1S3DX raw_data_d1_i9 (.D(accum[9]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(raw_data_d1[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i9.GSR = "ENABLED";
    CCU2C accum_40_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(raw_data_d1[0]), .B1(count[1]), .C1(count[0]), 
          .D1(n93[0]), .COUT(n338), .S1(n53[0]));   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_1.INIT0 = 16'h0000;
    defparam accum_40_add_4_1.INIT1 = 16'h56aa;
    defparam accum_40_add_4_1.INJECT1_0 = "NO";
    defparam accum_40_add_4_1.INJECT1_1 = "NO";
    FD1S3DX raw_data_d1_i8 (.D(accum[8]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(raw_data_d1[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i8.GSR = "ENABLED";
    LUT4 i3_3_lut_4_lut (.A(count[0]), .B(count[1]), .C(sample_d1), .D(sample_d2), 
         .Z(latch_result)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(130[38:50])
    defparam i3_3_lut_4_lut.init = 16'h0010;
    FD1S3DX raw_data_d1_i7 (.D(accum[7]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(raw_data_d1[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i7.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i6 (.D(accum[6]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(raw_data_d1[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i6.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i5 (.D(accum[5]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(raw_data_d1[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i5.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i4 (.D(accum[4]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(raw_data_d1[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i4.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i3 (.D(accum[3]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(raw_data_d1[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i3.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i2 (.D(accum[2]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(raw_data_d1[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i2.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i1 (.D(accum[1]), .CK(clk_in_c), .CD(rstn_N_55), 
            .Q(raw_data_d1[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i1.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i9 (.D(accum_c[11]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(\digital_out_i[9] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i9.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i8 (.D(accum_c[10]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(\DataInReg_9__N_107[8] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i8.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i7 (.D(accum_c[9]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(\DataInReg_9__N_107[7] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i7.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i6 (.D(accum_c[8]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(\DataInReg_9__N_107[6] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i6.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i5 (.D(accum_c[7]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(\DataInReg_9__N_107[5] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i5.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i4 (.D(accum_c[6]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(\DataInReg_9__N_107[4] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i4.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i3 (.D(accum_c[5]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(\DataInReg_9__N_107[3] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i3.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i2 (.D(accum_c[4]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(\DataInReg_9__N_107[2] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i2.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i1 (.D(accum_c[3]), .SP(latch_result), .CK(clk_in_c), 
            .CD(rstn_N_55), .Q(\DataInReg_9__N_107[1] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i1.GSR = "ENABLED";
    LUT4 i178_1_lut (.A(count[0]), .Z(n13[0])) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam i178_1_lut.init = 16'h5555;
    LUT4 equal_7_i3_2_lut_rep_15 (.A(count[0]), .B(count[1]), .Z(n455)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(130[38:50])
    defparam equal_7_i3_2_lut_rep_15.init = 16'heeee;
    LUT4 i180_2_lut (.A(count[1]), .B(count[0]), .Z(n13[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/Testing/1bitADCLattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam i180_2_lut.init = 16'h6666;
    
endmodule
