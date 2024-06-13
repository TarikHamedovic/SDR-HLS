// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed May 22 16:33:43 2024
//
// Verilog Description of module top
//

module top (i_clk, i_analog, o_digital) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(1[8:11])
    input i_clk;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(2[16:21])
    input i_analog;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(3[16:24])
    output o_digital;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(4[17:26])
    
    wire i_clk_c /* synthesis is_clock=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(2[16:21])
    wire clk_80mhz /* synthesis is_clock=1, SET_AS_NETWORK=clk_80mhz */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(7[8:17])
    
    wire i_analog_c, o_digital_c, VCC_net, GND_net;
    
    VHI i48 (.Z(VCC_net));
    IB i_analog_pad (.I(i_analog), .O(i_analog_c));   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(3[16:24])
    PLL PLL1 (.i_clk_c(i_clk_c), .clk_80mhz(clk_80mhz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(9[7] 12[4])
    GSR GSR_INST (.GSR(VCC_net));
    IB i_clk_pad (.I(i_clk), .O(i_clk_c));   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(2[16:21])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ADCTest adctest (.o_digital_c(o_digital_c), .clk_80mhz(clk_80mhz), .i_analog_c(i_analog_c)) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(16[11] 20[4])
    OB o_digital_pad (.I(o_digital_c), .O(o_digital));   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(4[17:26])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PLL
//

module PLL (i_clk_c, clk_80mhz, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input i_clk_c;
    output clk_80mhz;
    input GND_net;
    
    wire i_clk_c /* synthesis is_clock=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(2[16:21])
    wire clk_80mhz /* synthesis is_clock=1, SET_AS_NETWORK=clk_80mhz */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(7[8:17])
    
    EHXPLLL PLLInst_0 (.CLKI(i_clk_c), .CLKFB(clk_80mhz), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(clk_80mhz)) /* synthesis FREQUENCY_PIN_CLKOP="83.333333", FREQUENCY_PIN_CLKI="25.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=4, LSE_LLINE=9, LSE_RLINE=12 */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(9[7] 12[4])
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
// Verilog Description of module ADCTest
//

module ADCTest (o_digital_c, clk_80mhz, i_analog_c) /* synthesis syn_module_defined=1 */ ;
    output o_digital_c;
    input clk_80mhz;
    input i_analog_c;
    
    wire clk_80mhz /* synthesis is_clock=1, SET_AS_NETWORK=clk_80mhz */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/top.v(7[8:17])
    
    FD1S3AY r_analog_d_5 (.D(i_analog_c), .CK(clk_80mhz), .Q(o_digital_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=4, LSE_LCOL=11, LSE_RCOL=4, LSE_LLINE=16, LSE_RLINE=20 */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/ADCTest.v(9[10] 12[8])
    defparam r_analog_d_5.GSR = "ENABLED";
    
endmodule
