// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon Jun 24 01:01:56 2024
//
// Verilog Description of module ADC_top
//

module ADC_top (clk_in, rstn, digital_out, analog_cmp, analog_out, 
            sample_rdy, pwm_out) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(67[8:15])
    input clk_in;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(87[14:20])
    input rstn;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(88[14:18])
    output [7:0]digital_out;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(96[14:25])
    input analog_cmp;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(89[14:24])
    output analog_out;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(94[14:24])
    output sample_rdy;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(95[14:24])
    output pwm_out;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(97[14:21])
    
    wire clk_in_c /* synthesis is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(87[14:20])
    wire clk_80mhz /* synthesis SET_AS_NETWORK=clk_80mhz, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(125[9:18])
    
    wire rstn_c, analog_cmp_c, analog_out_c, sample_rdy_c, pwm_out_c;
    wire [7:0]digital_out_i;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(108[24:37])
    
    wire VCC_net, GND_net;
    wire [9:0]sigma;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(98[26:31])
    
    wire n246, n245, n48, digital_out_c_7, digital_out_c_6, digital_out_c_5, 
        digital_out_c_4, digital_out_c_3, digital_out_c_2, digital_out_c_1, 
        digital_out_c_0, rstn_N_51, n30, n45, n27, n24, n42, n39, 
        n36, n33, n247, n248;
    
    VHI i6 (.Z(VCC_net));
    PLL PLL1 (.clk_in_c(clk_in_c), .clk_80mhz(clk_80mhz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(123[5] 126[2])
    OB digital_out_pad_3 (.I(digital_out_c_3), .O(digital_out[3]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(96[14:25])
    LUT4 digital_out_i_7__I_0_i4_1_lut (.A(digital_out_i[3]), .Z(digital_out_c_3)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(157[24:40])
    defparam digital_out_i_7__I_0_i4_1_lut.init = 16'h5555;
    OB digital_out_pad_4 (.I(digital_out_c_4), .O(digital_out[4]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(96[14:25])
    OB digital_out_pad_5 (.I(digital_out_c_5), .O(digital_out[5]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(96[14:25])
    OB digital_out_pad_6 (.I(digital_out_c_6), .O(digital_out[6]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(96[14:25])
    CCU2C _add_1_add_4_4 (.A0(sigma[2]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(sigma[3]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n245), 
          .COUT(n246), .S0(n45), .S1(n42));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_add_4_4.INIT0 = 16'haaa0;
    defparam _add_1_add_4_4.INIT1 = 16'haaa0;
    defparam _add_1_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_add_4_4.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_8 (.A0(sigma[6]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(sigma[7]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n247), 
          .COUT(n248), .S0(n33), .S1(n30));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_add_4_8.INIT0 = 16'haaa0;
    defparam _add_1_add_4_8.INIT1 = 16'haaa0;
    defparam _add_1_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_add_4_8.INJECT1_1 = "NO";
    OB digital_out_pad_7 (.I(digital_out_c_7), .O(digital_out[7]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(96[14:25])
    GSR GSR_INST (.GSR(VCC_net));
    CCU2C _add_1_add_4_2 (.A0(analog_out_c), .B0(sigma[0]), .C0(GND_net), 
          .D0(VCC_net), .A1(sigma[1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n245), .S1(n48));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_add_4_2.INIT0 = 16'h0008;
    defparam _add_1_add_4_2.INIT1 = 16'haaa0;
    defparam _add_1_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_add_4_2.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_10 (.A0(sigma[8]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sigma[9]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n248), .S0(n27), .S1(n24));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_add_4_10.INIT0 = 16'haaa0;
    defparam _add_1_add_4_10.INIT1 = 16'haaa0;
    defparam _add_1_add_4_10.INJECT1_0 = "NO";
    defparam _add_1_add_4_10.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_6 (.A0(sigma[4]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(sigma[5]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n246), 
          .COUT(n247), .S0(n39), .S1(n36));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(144[26:39])
    defparam _add_1_add_4_6.INIT0 = 16'haaa0;
    defparam _add_1_add_4_6.INIT1 = 16'haaa0;
    defparam _add_1_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_add_4_6.INJECT1_1 = "NO";
    OB digital_out_pad_2 (.I(digital_out_c_2), .O(digital_out[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(96[14:25])
    OB digital_out_pad_1 (.I(digital_out_c_1), .O(digital_out[1]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(96[14:25])
    OB digital_out_pad_0 (.I(digital_out_c_0), .O(digital_out[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(96[14:25])
    OB analog_out_pad (.I(analog_out_c), .O(analog_out));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(94[14:24])
    OB sample_rdy_pad (.I(sample_rdy_c), .O(sample_rdy));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(95[14:24])
    OB pwm_out_pad (.I(pwm_out_c), .O(pwm_out));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(97[14:21])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(87[14:20])
    IB rstn_pad (.I(rstn), .O(rstn_c));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(88[14:18])
    IB analog_cmp_pad (.I(analog_cmp), .O(analog_cmp_c));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(89[14:24])
    LUT4 digital_out_i_7__I_0_i1_1_lut (.A(digital_out_i[0]), .Z(digital_out_c_0)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(157[24:40])
    defparam digital_out_i_7__I_0_i1_1_lut.init = 16'h5555;
    LUT4 digital_out_i_7__I_0_i8_1_lut (.A(digital_out_i[7]), .Z(digital_out_c_7)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(157[24:40])
    defparam digital_out_i_7__I_0_i8_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    LUT4 digital_out_i_7__I_0_i3_1_lut (.A(digital_out_i[2]), .Z(digital_out_c_2)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(157[24:40])
    defparam digital_out_i_7__I_0_i3_1_lut.init = 16'h5555;
    LUT4 digital_out_i_7__I_0_i2_1_lut (.A(digital_out_i[1]), .Z(digital_out_c_1)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(157[24:40])
    defparam digital_out_i_7__I_0_i2_1_lut.init = 16'h5555;
    LUT4 digital_out_i_7__I_0_i6_1_lut (.A(digital_out_i[5]), .Z(digital_out_c_5)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(157[24:40])
    defparam digital_out_i_7__I_0_i6_1_lut.init = 16'h5555;
    LUT4 digital_out_i_7__I_0_i7_1_lut (.A(digital_out_i[6]), .Z(digital_out_c_6)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(157[24:40])
    defparam digital_out_i_7__I_0_i7_1_lut.init = 16'h5555;
    LUT4 digital_out_i_7__I_0_i5_1_lut (.A(digital_out_i[4]), .Z(digital_out_c_4)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(157[24:40])
    defparam digital_out_i_7__I_0_i5_1_lut.init = 16'h5555;
    \PWM(DATA_WIDTH=8,COUNTER_WIDTH=8,OFFSET=0)  pwm_inst (.pwm_out_c(pwm_out_c), 
            .clk_80mhz(clk_80mhz), .rstn_N_51(rstn_N_51), .digital_out_c_0(digital_out_c_0), 
            .digital_out_c_7(digital_out_c_7), .digital_out_c_6(digital_out_c_6), 
            .digital_out_c_5(digital_out_c_5), .digital_out_c_4(digital_out_c_4), 
            .digital_out_c_3(digital_out_c_3), .digital_out_c_2(digital_out_c_2), 
            .digital_out_c_1(digital_out_c_1), .GND_net(GND_net), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(173[1] 178[2])
    sigmadelta_adc SSD_ADC (.n48(n48), .clk_80mhz(clk_80mhz), .rstn_N_51(rstn_N_51), 
            .analog_out_c(analog_out_c), .analog_cmp_c(analog_cmp_c), .sigma({sigma}), 
            .GND_net(GND_net), .VCC_net(VCC_net), .n36(n36), .rstn_c(rstn_c), 
            .n33(n33), .n30(n30), .n27(n27), .n24(n24), .n39(n39), 
            .n42(n42), .n45(n45), .digital_out_i({digital_out_i}), .sample_rdy_c(sample_rdy_c)) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(139[1] 146[3])
    
endmodule
//
// Verilog Description of module PLL
//

module PLL (clk_in_c, clk_80mhz, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_in_c;
    output clk_80mhz;
    input GND_net;
    
    wire clk_in_c /* synthesis is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(87[14:20])
    wire clk_80mhz /* synthesis SET_AS_NETWORK=clk_80mhz, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(125[9:18])
    
    EHXPLLL PLLInst_0 (.CLKI(clk_in_c), .CLKFB(clk_80mhz), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(clk_80mhz)) /* synthesis FREQUENCY_PIN_CLKOP="83.333333", FREQUENCY_PIN_CLKI="25.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=126 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(123[5] 126[2])
    defparam PLLInst_0.CLKI_DIV = 3;
    defparam PLLInst_0.CLKFB_DIV = 10;
    defparam PLLInst_0.CLKOP_DIV = 7;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 6;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \PWM(DATA_WIDTH=8,COUNTER_WIDTH=8,OFFSET=0) 
//

module \PWM(DATA_WIDTH=8,COUNTER_WIDTH=8,OFFSET=0)  (pwm_out_c, clk_80mhz, 
            rstn_N_51, digital_out_c_0, digital_out_c_7, digital_out_c_6, 
            digital_out_c_5, digital_out_c_4, digital_out_c_3, digital_out_c_2, 
            digital_out_c_1, GND_net, VCC_net) /* synthesis syn_module_defined=1 */ ;
    output pwm_out_c;
    input clk_80mhz;
    input rstn_N_51;
    input digital_out_c_0;
    input digital_out_c_7;
    input digital_out_c_6;
    input digital_out_c_5;
    input digital_out_c_4;
    input digital_out_c_3;
    input digital_out_c_2;
    input digital_out_c_1;
    input GND_net;
    input VCC_net;
    
    wire clk_80mhz /* synthesis SET_AS_NETWORK=clk_80mhz, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(125[9:18])
    wire [7:0]counter;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(41[25:32])
    wire [7:0]DataInReg;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(42[22:31])
    
    wire n4, PWMOut_N_110, n468, n419, n420, n408, n464, n405, 
        n466, n12, clk_80mhz_enable_13, n10, n6;
    wire [7:0]n37;
    
    wire n253, n252, n251, n250, n465, n14, n10_adj_119, n467, 
        n397;
    
    LUT4 DataInReg_7__I_0_i4_4_lut (.A(counter[0]), .B(counter[1]), .C(DataInReg[1]), 
         .D(DataInReg[0]), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C (D))+!B (C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i4_4_lut.init = 16'h8ecf;
    FD1S3DX PWMOut_17 (.D(PWMOut_N_110), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(pwm_out_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=173, LSE_RLINE=178 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam PWMOut_17.GSR = "ENABLED";
    LUT4 DataInReg_7__I_0_i9_2_lut_rep_16 (.A(DataInReg[4]), .B(counter[4]), 
         .Z(n468)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i9_2_lut_rep_16.init = 16'h6666;
    PFUMX DataInReg_7__I_0_i16 (.BLUT(n419), .ALUT(n420), .C0(n408), .Z(PWMOut_N_110)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=173, LSE_RLINE=178 */ ;
    LUT4 DataInReg_7__I_0_i11_2_lut_rep_12 (.A(DataInReg[5]), .B(counter[5]), 
         .Z(n464)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i11_2_lut_rep_12.init = 16'h6666;
    LUT4 i294_2_lut_3_lut_4_lut (.A(DataInReg[6]), .B(counter[6]), .C(counter[5]), 
         .D(DataInReg[5]), .Z(n405)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam i294_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i308_1_lut_4_lut_4_lut (.A(n466), .B(n405), .C(n12), .D(n4), 
         .Z(n420)) /* synthesis lut_function=(!(A (C)+!A (B (D)+!B (C)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam i308_1_lut_4_lut_4_lut.init = 16'h0b4f;
    FD1P3DX DataInReg_i0_i0 (.D(digital_out_c_0), .SP(clk_80mhz_enable_13), 
            .CK(clk_80mhz), .CD(rstn_N_51), .Q(DataInReg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=173, LSE_RLINE=178 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i0.GSR = "ENABLED";
    LUT4 DataInReg_7__I_0_i10_3_lut_3_lut (.A(DataInReg[6]), .B(counter[6]), 
         .C(counter[5]), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i307_1_lut_3_lut_3_lut (.A(DataInReg[4]), .B(counter[4]), .C(n6), 
         .Z(n419)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam i307_1_lut_3_lut_3_lut.init = 16'h2b2b;
    FD1S3DX counter_41__i0 (.D(n37[0]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41__i0.GSR = "ENABLED";
    FD1S3DX counter_41__i7 (.D(n37[7]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41__i7.GSR = "ENABLED";
    FD1S3DX counter_41__i6 (.D(n37[6]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41__i6.GSR = "ENABLED";
    FD1S3DX counter_41__i5 (.D(n37[5]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41__i5.GSR = "ENABLED";
    FD1S3DX counter_41__i4 (.D(n37[4]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41__i4.GSR = "ENABLED";
    FD1S3DX counter_41__i3 (.D(n37[3]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41__i3.GSR = "ENABLED";
    FD1S3DX counter_41__i2 (.D(n37[2]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41__i2.GSR = "ENABLED";
    FD1S3DX counter_41__i1 (.D(n37[1]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41__i1.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i7 (.D(digital_out_c_7), .SP(clk_80mhz_enable_13), 
            .CK(clk_80mhz), .CD(rstn_N_51), .Q(DataInReg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=173, LSE_RLINE=178 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i7.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i6 (.D(digital_out_c_6), .SP(clk_80mhz_enable_13), 
            .CK(clk_80mhz), .CD(rstn_N_51), .Q(DataInReg[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=173, LSE_RLINE=178 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i6.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i5 (.D(digital_out_c_5), .SP(clk_80mhz_enable_13), 
            .CK(clk_80mhz), .CD(rstn_N_51), .Q(DataInReg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=173, LSE_RLINE=178 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i5.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i4 (.D(digital_out_c_4), .SP(clk_80mhz_enable_13), 
            .CK(clk_80mhz), .CD(rstn_N_51), .Q(DataInReg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=173, LSE_RLINE=178 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i4.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i3 (.D(digital_out_c_3), .SP(clk_80mhz_enable_13), 
            .CK(clk_80mhz), .CD(rstn_N_51), .Q(DataInReg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=173, LSE_RLINE=178 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i3.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i2 (.D(digital_out_c_2), .SP(clk_80mhz_enable_13), 
            .CK(clk_80mhz), .CD(rstn_N_51), .Q(DataInReg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=173, LSE_RLINE=178 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i2.GSR = "ENABLED";
    FD1P3DX DataInReg_i0_i1 (.D(digital_out_c_1), .SP(clk_80mhz_enable_13), 
            .CK(clk_80mhz), .CD(rstn_N_51), .Q(DataInReg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=173, LSE_RLINE=178 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(50[13] 60[7])
    defparam DataInReg_i0_i1.GSR = "ENABLED";
    CCU2C counter_41_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n253), .S0(n37[7]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41_add_4_9.INIT0 = 16'haaa0;
    defparam counter_41_add_4_9.INIT1 = 16'h0000;
    defparam counter_41_add_4_9.INJECT1_0 = "NO";
    defparam counter_41_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_41_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n252), .COUT(n253), .S0(n37[5]), .S1(n37[6]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41_add_4_7.INIT0 = 16'haaa0;
    defparam counter_41_add_4_7.INIT1 = 16'haaa0;
    defparam counter_41_add_4_7.INJECT1_0 = "NO";
    defparam counter_41_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_41_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n251), .COUT(n252), .S0(n37[3]), .S1(n37[4]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41_add_4_5.INIT0 = 16'haaa0;
    defparam counter_41_add_4_5.INIT1 = 16'haaa0;
    defparam counter_41_add_4_5.INJECT1_0 = "NO";
    defparam counter_41_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_41_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n250), .COUT(n251), .S0(n37[1]), .S1(n37[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41_add_4_3.INIT0 = 16'haaa0;
    defparam counter_41_add_4_3.INIT1 = 16'haaa0;
    defparam counter_41_add_4_3.INJECT1_0 = "NO";
    defparam counter_41_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_41_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n250), .S1(n37[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(51[18:32])
    defparam counter_41_add_4_1.INIT0 = 16'h0000;
    defparam counter_41_add_4_1.INIT1 = 16'h555f;
    defparam counter_41_add_4_1.INJECT1_0 = "NO";
    defparam counter_41_add_4_1.INJECT1_1 = "NO";
    LUT4 DataInReg_7__I_0_i15_2_lut_rep_14 (.A(DataInReg[7]), .B(counter[7]), 
         .Z(n466)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i15_2_lut_rep_14.init = 16'h6666;
    LUT4 DataInReg_7__I_0_i13_2_lut_rep_13 (.A(DataInReg[6]), .B(counter[6]), 
         .Z(n465)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i13_2_lut_rep_13.init = 16'h6666;
    LUT4 i314_4_lut (.A(counter[0]), .B(n14), .C(n10_adj_119), .D(counter[3]), 
         .Z(clk_80mhz_enable_13)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(52[11:23])
    defparam i314_4_lut.init = 16'h0001;
    LUT4 DataInReg_7__I_0_i12_3_lut_3_lut (.A(DataInReg[7]), .B(counter[7]), 
         .C(n10), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i6_4_lut (.A(counter[6]), .B(counter[7]), .C(counter[1]), .D(counter[5]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(52[11:23])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(counter[2]), .B(counter[4]), .Z(n10_adj_119)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(52[11:23])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 DataInReg_7__I_0_i7_2_lut_rep_15 (.A(DataInReg[3]), .B(counter[3]), 
         .Z(n467)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i7_2_lut_rep_15.init = 16'h6666;
    LUT4 i316_4_lut (.A(n466), .B(n465), .C(n464), .D(n397), .Z(n408)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam i316_4_lut.init = 16'hfffe;
    LUT4 DataInReg_7__I_0_i6_3_lut_3_lut (.A(DataInReg[3]), .B(counter[3]), 
         .C(counter[2]), .Z(n6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam DataInReg_7__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i286_4_lut (.A(n468), .B(n467), .C(DataInReg[2]), .D(counter[2]), 
         .Z(n397)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/PWM.v(55[11:50])
    defparam i286_4_lut.init = 16'h1001;
    
endmodule
//
// Verilog Description of module sigmadelta_adc
//

module sigmadelta_adc (n48, clk_80mhz, rstn_N_51, analog_out_c, analog_cmp_c, 
            sigma, GND_net, VCC_net, n36, rstn_c, n33, n30, n27, 
            n24, n39, n42, n45, digital_out_i, sample_rdy_c) /* synthesis syn_module_defined=1 */ ;
    input n48;
    input clk_80mhz;
    output rstn_N_51;
    output analog_out_c;
    input analog_cmp_c;
    output [9:0]sigma;
    input GND_net;
    input VCC_net;
    input n36;
    input rstn_c;
    input n33;
    input n30;
    input n27;
    input n24;
    input n39;
    input n42;
    input n45;
    output [7:0]digital_out_i;
    output sample_rdy_c;
    
    wire clk_80mhz /* synthesis SET_AS_NETWORK=clk_80mhz, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(125[9:18])
    
    wire rollover, n182, accum_rdy, rollover_N_41, clk_80mhz_enable_18, 
        n174, n385, n387, n172, n170, n168, n166;
    wire [9:0]counter;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(100[26:33])
    wire [9:0]n1;
    wire [7:0]accum;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(99[29:34])
    
    wire n7, n345, n9, n8, n12, n264, n263, n262, n261, n260;
    wire [9:0]sigma_9__N_1;
    
    wire n176, n178, n180;
    
    LUT4 i129_2_lut (.A(n48), .B(rollover), .Z(n182)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i129_2_lut.init = 16'h2222;
    FD1S3DX accum_rdy_25 (.D(rollover), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(accum_rdy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_rdy_25.GSR = "ENABLED";
    FD1S3DX rollover_27 (.D(rollover_N_41), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(rollover)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(184[7] 187[6])
    defparam rollover_27.GSR = "ENABLED";
    FD1S3AX delta_22 (.D(analog_cmp_c), .CK(clk_80mhz), .Q(analog_out_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(115[8] 118[4])
    defparam delta_22.GSR = "ENABLED";
    FD1P3DX sigma_i5 (.D(n174), .SP(clk_80mhz_enable_18), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(sigma[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i5.GSR = "ENABLED";
    LUT4 i275_4_lut (.A(sigma[9]), .B(sigma[4]), .C(sigma[3]), .D(sigma[6]), 
         .Z(n385)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i275_4_lut.init = 16'h8000;
    LUT4 i277_4_lut (.A(sigma[5]), .B(sigma[8]), .C(sigma[7]), .D(sigma[2]), 
         .Z(n387)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i277_4_lut.init = 16'h8000;
    FD1P3DX sigma_i6 (.D(n172), .SP(clk_80mhz_enable_18), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(sigma[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i6.GSR = "ENABLED";
    FD1P3DX sigma_i7 (.D(n170), .SP(clk_80mhz_enable_18), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(sigma[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i7.GSR = "ENABLED";
    FD1P3DX sigma_i8 (.D(n168), .SP(clk_80mhz_enable_18), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(sigma[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i8.GSR = "ENABLED";
    FD1P3DX sigma_i9 (.D(n166), .SP(clk_80mhz_enable_18), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(sigma[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i9.GSR = "ENABLED";
    FD1S3DX counter_39__i9 (.D(n1[9]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39__i9.GSR = "ENABLED";
    FD1P3DX accum_i0_i0 (.D(sigma[2]), .SP(rollover), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i0.GSR = "ENABLED";
    FD1S3DX counter_39__i0 (.D(n1[0]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39__i0.GSR = "ENABLED";
    FD1S3DX counter_39__i8 (.D(n1[8]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39__i8.GSR = "ENABLED";
    FD1S3DX counter_39__i7 (.D(n1[7]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39__i7.GSR = "ENABLED";
    FD1S3DX counter_39__i6 (.D(n1[6]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39__i6.GSR = "ENABLED";
    FD1S3DX counter_39__i5 (.D(n1[5]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39__i5.GSR = "ENABLED";
    FD1S3DX counter_39__i4 (.D(n1[4]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39__i4.GSR = "ENABLED";
    FD1S3DX counter_39__i3 (.D(n1[3]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39__i3.GSR = "ENABLED";
    FD1S3DX counter_39__i2 (.D(n1[2]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39__i2.GSR = "ENABLED";
    FD1S3DX counter_39__i1 (.D(n1[1]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39__i1.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(n7), .B(counter[9]), .C(counter[0]), .D(n345), 
         .Z(rollover_N_41)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i4_4_lut.init = 16'h8000;
    LUT4 i2_2_lut (.A(counter[8]), .B(counter[2]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i5_4_lut (.A(n9), .B(counter[5]), .C(n8), .D(counter[7]), .Z(n345)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(rollover), .B(sigma[0]), .Z(n12)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i3_2_lut (.A(counter[6]), .B(counter[4]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i3_2_lut.init = 16'h8888;
    CCU2C counter_39_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n264), .S0(n1[9]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39_add_4_11.INIT0 = 16'haaa0;
    defparam counter_39_add_4_11.INIT1 = 16'h0000;
    defparam counter_39_add_4_11.INJECT1_0 = "NO";
    defparam counter_39_add_4_11.INJECT1_1 = "NO";
    CCU2C counter_39_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n263), .COUT(n264), .S0(n1[7]), .S1(n1[8]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39_add_4_9.INIT0 = 16'haaa0;
    defparam counter_39_add_4_9.INIT1 = 16'haaa0;
    defparam counter_39_add_4_9.INJECT1_0 = "NO";
    defparam counter_39_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_39_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n262), .COUT(n263), .S0(n1[5]), .S1(n1[6]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39_add_4_7.INIT0 = 16'haaa0;
    defparam counter_39_add_4_7.INIT1 = 16'haaa0;
    defparam counter_39_add_4_7.INJECT1_0 = "NO";
    defparam counter_39_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_39_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n261), .COUT(n262), .S0(n1[3]), .S1(n1[4]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39_add_4_5.INIT0 = 16'haaa0;
    defparam counter_39_add_4_5.INIT1 = 16'haaa0;
    defparam counter_39_add_4_5.INJECT1_0 = "NO";
    defparam counter_39_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_39_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n260), .COUT(n261), .S0(n1[1]), .S1(n1[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39_add_4_3.INIT0 = 16'haaa0;
    defparam counter_39_add_4_3.INIT1 = 16'haaa0;
    defparam counter_39_add_4_3.INJECT1_0 = "NO";
    defparam counter_39_add_4_3.INJECT1_1 = "NO";
    CCU2C counter_39_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n260), .S1(n1[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(185[14:28])
    defparam counter_39_add_4_1.INIT0 = 16'h0000;
    defparam counter_39_add_4_1.INIT1 = 16'h555f;
    defparam counter_39_add_4_1.INJECT1_0 = "NO";
    defparam counter_39_add_4_1.INJECT1_1 = "NO";
    FD1P3DX accum_i0_i7 (.D(sigma[9]), .SP(rollover), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i7.GSR = "ENABLED";
    FD1P3DX accum_i0_i6 (.D(sigma[8]), .SP(rollover), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i6.GSR = "ENABLED";
    FD1P3DX accum_i0_i5 (.D(sigma[7]), .SP(rollover), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i5.GSR = "ENABLED";
    FD1P3DX accum_i0_i4 (.D(sigma[6]), .SP(rollover), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i4.GSR = "ENABLED";
    FD1P3DX accum_i0_i3 (.D(sigma[5]), .SP(rollover), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i3.GSR = "ENABLED";
    FD1P3DX accum_i0_i2 (.D(sigma[4]), .SP(rollover), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i2.GSR = "ENABLED";
    FD1P3DX accum_i0_i1 (.D(sigma[3]), .SP(rollover), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam accum_i0_i1.GSR = "ENABLED";
    LUT4 i125_2_lut (.A(n36), .B(rollover), .Z(n174)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i125_2_lut.init = 16'h2222;
    LUT4 rstn_I_0_1_lut (.A(rstn_c), .Z(rstn_N_51)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(174[6:11])
    defparam rstn_I_0_1_lut.init = 16'h5555;
    FD1P3DX sigma_i0 (.D(sigma_9__N_1[0]), .SP(clk_80mhz_enable_18), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(sigma[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i0.GSR = "ENABLED";
    FD1P3DX sigma_i4 (.D(n176), .SP(clk_80mhz_enable_18), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(sigma[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i4.GSR = "ENABLED";
    FD1P3DX sigma_i3 (.D(n178), .SP(clk_80mhz_enable_18), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(sigma[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i3.GSR = "ENABLED";
    FD1P3DX sigma_i2 (.D(n180), .SP(clk_80mhz_enable_18), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(sigma[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i2.GSR = "ENABLED";
    FD1P3DX sigma_i1 (.D(n182), .SP(clk_80mhz_enable_18), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(sigma[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=3, LSE_LLINE=139, LSE_RLINE=146 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam sigma_i1.GSR = "ENABLED";
    LUT4 i2_2_lut_adj_1 (.A(counter[3]), .B(counter[1]), .Z(n8)) /* synthesis lut_function=(A (B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(186[15:23])
    defparam i2_2_lut_adj_1.init = 16'h8888;
    LUT4 i124_2_lut (.A(n33), .B(rollover), .Z(n172)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i124_2_lut.init = 16'h2222;
    LUT4 i123_2_lut (.A(n30), .B(rollover), .Z(n170)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i123_2_lut.init = 16'h2222;
    LUT4 i122_2_lut (.A(n27), .B(rollover), .Z(n168)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i122_2_lut.init = 16'h2222;
    LUT4 i110_2_lut (.A(n24), .B(rollover), .Z(n166)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i110_2_lut.init = 16'h2222;
    LUT4 sigma_9__I_0_i1_3_lut (.A(sigma[0]), .B(analog_out_c), .C(rollover), 
         .Z(sigma_9__N_1[0])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(142[18] 145[12])
    defparam sigma_9__I_0_i1_3_lut.init = 16'hc6c6;
    LUT4 i126_2_lut (.A(n39), .B(rollover), .Z(n176)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i126_2_lut.init = 16'h2222;
    LUT4 i127_2_lut (.A(n42), .B(rollover), .Z(n178)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i127_2_lut.init = 16'h2222;
    LUT4 i10_4_lut (.A(n385), .B(sigma[1]), .C(n387), .D(n12), .Z(clk_80mhz_enable_18)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i10_4_lut.init = 16'hff7f;
    LUT4 i128_2_lut (.A(n45), .B(rollover), .Z(n180)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(137[14] 147[8])
    defparam i128_2_lut.init = 16'h2222;
    \box_ave(LPF_DEPTH_BITS=3)  box_ave (.digital_out_i({digital_out_i}), 
            .clk_80mhz(clk_80mhz), .rstn_N_51(rstn_N_51), .accum({accum}), 
            .sample_rdy_c(sample_rdy_c), .accum_rdy(accum_rdy), .GND_net(GND_net), 
            .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/sigmadelta_adc.v(163[1] 170[2])
    
endmodule
//
// Verilog Description of module \box_ave(LPF_DEPTH_BITS=3) 
//

module \box_ave(LPF_DEPTH_BITS=3)  (digital_out_i, clk_80mhz, rstn_N_51, 
            accum, sample_rdy_c, accum_rdy, GND_net, VCC_net) /* synthesis syn_module_defined=1 */ ;
    output [7:0]digital_out_i;
    input clk_80mhz;
    input rstn_N_51;
    input [7:0]accum;
    output sample_rdy_c;
    input accum_rdy;
    input GND_net;
    input VCC_net;
    
    wire clk_80mhz /* synthesis SET_AS_NETWORK=clk_80mhz, is_clock=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/adc_top.v(125[9:18])
    
    wire latch_result;
    wire [10:0]accum_c;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(100[41:46])
    wire [7:0]raw_data_d1;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(102[27:38])
    
    wire sample_d2, sample_d1;
    wire [2:0]count;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(101[41:46])
    
    wire accumulate;
    wire [2:0]n17;
    
    wire n375;
    wire [10:0]n86;
    wire [10:0]n49;
    
    wire n258, n257, n4, n256, n255, n254;
    
    FD1P3DX ave_data_out_i0_i0 (.D(accum_c[3]), .SP(latch_result), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(digital_out_i[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i0.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i0 (.D(accum[0]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(raw_data_d1[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i0.GSR = "ENABLED";
    FD1S3DX sample_d2_31 (.D(sample_d1), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(sample_d2)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam sample_d2_31.GSR = "ENABLED";
    FD1S3DX result_valid_33 (.D(latch_result), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(sample_rdy_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam result_valid_33.GSR = "ENABLED";
    FD1P3DX count_42__i0 (.D(n17[0]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(count[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam count_42__i0.GSR = "ENABLED";
    FD1S3DX sample_d1_30 (.D(accum_rdy), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(sample_d1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam sample_d1_30.GSR = "ENABLED";
    LUT4 i265_2_lut (.A(sample_d2), .B(count[2]), .Z(n375)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i265_2_lut.init = 16'heeee;
    FD1P3DX accum_40__i0 (.D(n49[0]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(n86[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i0.GSR = "ENABLED";
    FD1P3DX accum_40__i10 (.D(n49[10]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum_c[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i10.GSR = "ENABLED";
    FD1P3DX accum_40__i9 (.D(n49[9]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum_c[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i9.GSR = "ENABLED";
    FD1P3DX accum_40__i8 (.D(n49[8]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum_c[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i8.GSR = "ENABLED";
    FD1P3DX accum_40__i7 (.D(n49[7]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum_c[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i7.GSR = "ENABLED";
    FD1P3DX accum_40__i6 (.D(n49[6]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum_c[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i6.GSR = "ENABLED";
    FD1P3DX accum_40__i5 (.D(n49[5]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum_c[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i5.GSR = "ENABLED";
    FD1P3DX accum_40__i4 (.D(n49[4]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum_c[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i4.GSR = "ENABLED";
    FD1P3DX accum_40__i3 (.D(n49[3]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(accum_c[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i3.GSR = "ENABLED";
    FD1P3DX accum_40__i2 (.D(n49[2]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(n86[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i2.GSR = "ENABLED";
    FD1P3DX accum_40__i1 (.D(n49[1]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(n86[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40__i1.GSR = "ENABLED";
    FD1P3DX count_42__i2 (.D(n17[2]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(count[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam count_42__i2.GSR = "ENABLED";
    FD1P3DX count_42__i1 (.D(n17[1]), .SP(accumulate), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(count[1]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam count_42__i1.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i7 (.D(accum[7]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(raw_data_d1[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i7.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i6 (.D(accum[6]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(raw_data_d1[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i6.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i5 (.D(accum[5]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(raw_data_d1[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i5.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i4 (.D(accum[4]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(raw_data_d1[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i4.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i3 (.D(accum[3]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(raw_data_d1[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i3.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i2 (.D(accum[2]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(raw_data_d1[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i2.GSR = "ENABLED";
    FD1S3DX raw_data_d1_i1 (.D(accum[1]), .CK(clk_80mhz), .CD(rstn_N_51), 
            .Q(raw_data_d1[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(121[11] 126[5])
    defparam raw_data_d1_i1.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i7 (.D(accum_c[10]), .SP(latch_result), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(digital_out_i[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i7.GSR = "ENABLED";
    CCU2C accum_40_add_4_11 (.A0(count[1]), .B0(count[0]), .C0(count[2]), 
          .D0(accum_c[9]), .A1(count[1]), .B1(count[0]), .C1(count[2]), 
          .D1(accum_c[10]), .CIN(n258), .S0(n49[9]), .S1(n49[10]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_11.INIT0 = 16'hfe00;
    defparam accum_40_add_4_11.INIT1 = 16'hfe00;
    defparam accum_40_add_4_11.INJECT1_0 = "NO";
    defparam accum_40_add_4_11.INJECT1_1 = "NO";
    CCU2C accum_40_add_4_9 (.A0(raw_data_d1[7]), .B0(n4), .C0(count[2]), 
          .D0(accum_c[7]), .A1(count[1]), .B1(count[0]), .C1(count[2]), 
          .D1(accum_c[8]), .CIN(n257), .COUT(n258), .S0(n49[7]), .S1(n49[8]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_9.INIT0 = 16'h56aa;
    defparam accum_40_add_4_9.INIT1 = 16'hfe00;
    defparam accum_40_add_4_9.INJECT1_0 = "NO";
    defparam accum_40_add_4_9.INJECT1_1 = "NO";
    CCU2C accum_40_add_4_7 (.A0(raw_data_d1[5]), .B0(n4), .C0(count[2]), 
          .D0(accum_c[5]), .A1(raw_data_d1[6]), .B1(n4), .C1(count[2]), 
          .D1(accum_c[6]), .CIN(n256), .COUT(n257), .S0(n49[5]), .S1(n49[6]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_7.INIT0 = 16'h56aa;
    defparam accum_40_add_4_7.INIT1 = 16'h56aa;
    defparam accum_40_add_4_7.INJECT1_0 = "NO";
    defparam accum_40_add_4_7.INJECT1_1 = "NO";
    CCU2C accum_40_add_4_5 (.A0(raw_data_d1[3]), .B0(n4), .C0(count[2]), 
          .D0(accum_c[3]), .A1(raw_data_d1[4]), .B1(n4), .C1(count[2]), 
          .D1(accum_c[4]), .CIN(n255), .COUT(n256), .S0(n49[3]), .S1(n49[4]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_5.INIT0 = 16'h56aa;
    defparam accum_40_add_4_5.INIT1 = 16'h56aa;
    defparam accum_40_add_4_5.INJECT1_0 = "NO";
    defparam accum_40_add_4_5.INJECT1_1 = "NO";
    FD1P3DX ave_data_out_i0_i6 (.D(accum_c[9]), .SP(latch_result), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(digital_out_i[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i6.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i5 (.D(accum_c[8]), .SP(latch_result), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(digital_out_i[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i5.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i4 (.D(accum_c[7]), .SP(latch_result), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(digital_out_i[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i4.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i3 (.D(accum_c[6]), .SP(latch_result), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(digital_out_i[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i3.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i2 (.D(accum_c[5]), .SP(latch_result), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(digital_out_i[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i2.GSR = "ENABLED";
    FD1P3DX ave_data_out_i0_i1 (.D(accum_c[4]), .SP(latch_result), .CK(clk_80mhz), 
            .CD(rstn_N_51), .Q(digital_out_i[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=163, LSE_RLINE=170 */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(176[14] 178[8])
    defparam ave_data_out_i0_i1.GSR = "ENABLED";
    CCU2C accum_40_add_4_3 (.A0(raw_data_d1[1]), .B0(n4), .C0(count[2]), 
          .D0(n86[1]), .A1(raw_data_d1[2]), .B1(n4), .C1(count[2]), 
          .D1(n86[2]), .CIN(n254), .COUT(n255), .S0(n49[1]), .S1(n49[2]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_3.INIT0 = 16'h56aa;
    defparam accum_40_add_4_3.INIT1 = 16'h56aa;
    defparam accum_40_add_4_3.INJECT1_0 = "NO";
    defparam accum_40_add_4_3.INJECT1_1 = "NO";
    CCU2C accum_40_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(raw_data_d1[0]), .B1(n4), .C1(count[2]), 
          .D1(n86[0]), .COUT(n254), .S1(n49[0]));   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(161[17:46])
    defparam accum_40_add_4_1.INIT0 = 16'h0000;
    defparam accum_40_add_4_1.INIT1 = 16'h56aa;
    defparam accum_40_add_4_1.INJECT1_0 = "NO";
    defparam accum_40_add_4_1.INJECT1_1 = "NO";
    LUT4 i152_3_lut (.A(count[2]), .B(count[1]), .C(count[0]), .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam i152_3_lut.init = 16'h6a6a;
    LUT4 i145_2_lut (.A(count[1]), .B(count[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam i145_2_lut.init = 16'h6666;
    LUT4 sample_d1_I_0_2_lut (.A(sample_d1), .B(sample_d2), .Z(accumulate)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(129[22:45])
    defparam sample_d1_I_0_2_lut.init = 16'h2222;
    LUT4 i4_4_lut (.A(n375), .B(count[1]), .C(sample_d1), .D(count[0]), 
         .Z(latch_result)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i4_4_lut.init = 16'h0010;
    LUT4 i1_2_lut (.A(count[0]), .B(count[1]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(130[38:50])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i143_1_lut (.A(count[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/1bitADCLattice/Lattice/First_Implementation/source/box_ave.v(142[31:43])
    defparam i143_1_lut.init = 16'h5555;
    
endmodule
