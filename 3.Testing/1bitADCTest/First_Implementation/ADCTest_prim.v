// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue May 21 13:24:54 2024
//
// Verilog Description of module ADCTest
//

module ADCTest (i_clk, i_analog, o_digital) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/ADCTest.v(1[8:15])
    input i_clk;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/ADCTest.v(2[10:15])
    input i_analog;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/ADCTest.v(3[10:18])
    output o_digital;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/ADCTest.v(4[11:20])
    
    wire i_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=i_clk_c */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/ADCTest.v(2[10:15])
    
    wire GND_net, i_analog_c, o_digital_c, VCC_net;
    
    VHI i16 (.Z(VCC_net));
    VLO i21 (.Z(GND_net));
    OB o_digital_pad (.I(o_digital_c), .O(o_digital));   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/ADCTest.v(4[11:20])
    IB i_clk_pad (.I(i_clk), .O(i_clk_c));   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/ADCTest.v(2[10:15])
    IB i_analog_pad (.I(i_analog), .O(i_analog_c));   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/ADCTest.v(3[10:18])
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3AY r_analog1_6 (.D(i_analog_c), .CK(i_clk_c), .Q(o_digital_c)) /* synthesis lse_init_val=1 */ ;   // /home/user/SDR-HLS/Testing/1bitADCTest/First_Implementation/source/ADCTest.v(10[10] 14[8])
    defparam r_analog1_6.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

