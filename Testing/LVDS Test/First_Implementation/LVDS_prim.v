// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Apr 19 17:26:31 2024
//
// Verilog Description of module LVDS
//

module LVDS (i_clk, i_reset, i_LVDS_p, i_LVDS_n, o_clk, o_LVDS) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(1[8:12])
    input i_clk;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(3[13:18])
    input i_reset;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(4[13:20])
    input i_LVDS_p;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(5[13:21])
    input i_LVDS_n;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(6[13:21])
    output o_clk;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(8[14:19])
    output o_LVDS;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(9[13:19])
    
    wire i_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=i_clk_c */ ;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(3[13:18])
    
    wire VCC_net, i_reset_c, i_LVDS_p_c, i_LVDS_n_c, o_LVDS_c, n1, 
        GND_net, n6, n7;
    
    VLO i26 (.Z(GND_net));
    OB o_clk_pad (.I(i_clk_c), .O(o_clk));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(8[14:19])
    VHI i27 (.Z(VCC_net));
    LUT4 i17_1_lut (.A(i_LVDS_p_c), .Z(n7)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(5[13:21])
    defparam i17_1_lut.init = 16'h5555;
    OB o_LVDS_pad (.I(o_LVDS_c), .O(o_LVDS));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(9[13:19])
    IB i_clk_pad (.I(i_clk), .O(i_clk_c));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(3[13:18])
    IB i_reset_pad (.I(i_reset), .O(i_reset_c));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(4[13:20])
    IB i_LVDS_p_pad (.I(i_LVDS_p), .O(i_LVDS_p_c));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(5[13:21])
    IB i_LVDS_n_pad (.I(i_LVDS_n), .O(i_LVDS_n_c));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(6[13:21])
    GSR GSR_INST (.GSR(n6));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3IX o_LVDS_6 (.D(n1), .CK(i_clk_c), .CD(n7), .Q(o_LVDS_c));   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(17[11] 19[5])
    defparam o_LVDS_6.GSR = "ENABLED";
    LUT4 i16_1_lut (.A(i_reset_c), .Z(n6)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(4[13:20])
    defparam i16_1_lut.init = 16'h5555;
    LUT4 i_LVDS_n_I_0_i1_2_lut (.A(i_LVDS_n_c), .B(i_LVDS_p_c), .Z(n1)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/user/SDR-HLS/Testing/LVDS Test/LVDS.v(18[19:40])
    defparam i_LVDS_n_I_0_i1_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

