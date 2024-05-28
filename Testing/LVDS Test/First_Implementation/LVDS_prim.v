// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon May 20 15:59:36 2024
//
// Verilog Description of module LVDS
//

module LVDS (i_clk, i_reset, i_LVDS_p, o_clk, o_LVDS) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(1[8:12])
    input i_clk;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(3[17:22])
    input i_reset;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(4[14:21])
    input i_LVDS_p;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(5[14:22])
    output o_clk;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(8[15:20])
    output o_LVDS;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(9[17:23])
    
    wire i_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=i_clk_c */ ;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(3[17:22])
    
    wire i_reset_c, i_LVDS_p_c, o_LVDS_c, GND_net, n5, VCC_net;
    
    VLO i24 (.Z(GND_net));
    OB o_clk_pad (.I(i_clk_c), .O(o_clk));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(8[15:20])
    LUT4 i15_1_lut (.A(i_reset_c), .Z(n5)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(4[14:21])
    defparam i15_1_lut.init = 16'h5555;
    OB o_LVDS_pad (.I(o_LVDS_c), .O(o_LVDS));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(9[17:23])
    IB i_clk_pad (.I(i_clk), .O(i_clk_c));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(3[17:22])
    IB i_reset_pad (.I(i_reset), .O(i_reset_c));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(4[14:21])
    IB i_LVDS_p_pad (.I(i_LVDS_p), .O(i_LVDS_p_c));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(5[14:22])
    GSR GSR_INST (.GSR(n5));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3AX o_LVDS_5 (.D(i_LVDS_p_c), .CK(i_clk_c), .Q(o_LVDS_c));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(16[14] 18[8])
    defparam o_LVDS_5.GSR = "ENABLED";
    VHI i27 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

