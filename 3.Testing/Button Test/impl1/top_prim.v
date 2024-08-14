// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon Aug  5 19:12:13 2024
//
// Verilog Description of module top
//

module top (clk_25mhz, btn, led) /* synthesis syn_module_defined=1 */ ;   // /home/user/SDR-HLS/3.Testing/Button Test/top.v(1[8:11])
    input clk_25mhz;   // /home/user/SDR-HLS/3.Testing/Button Test/top.v(2[15:24])
    input btn;   // /home/user/SDR-HLS/3.Testing/Button Test/top.v(3[15:18])
    output led;   // /home/user/SDR-HLS/3.Testing/Button Test/top.v(4[15:18])
    
    wire clk_25mhz_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_25mhz_c */ ;   // /home/user/SDR-HLS/3.Testing/Button Test/top.v(2[15:24])
    
    wire GND_net, btn_c, led_c, btn_N_2, VCC_net;
    
    VHI i16 (.Z(VCC_net));
    VLO i21 (.Z(GND_net));
    OB led_pad (.I(led_c), .O(led));   // /home/user/SDR-HLS/3.Testing/Button Test/top.v(4[15:18])
    IB clk_25mhz_pad (.I(clk_25mhz), .O(clk_25mhz_c));   // /home/user/SDR-HLS/3.Testing/Button Test/top.v(2[15:24])
    IB btn_pad (.I(btn), .O(btn_c));   // /home/user/SDR-HLS/3.Testing/Button Test/top.v(3[15:18])
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3AX led_7 (.D(btn_N_2), .CK(clk_25mhz_c), .Q(led_c));   // /home/user/SDR-HLS/3.Testing/Button Test/top.v(7[8] 13[4])
    defparam led_7.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 btn_I_0_1_lut (.A(btn_c), .Z(btn_N_2)) /* synthesis lut_function=(!(A)) */ ;   // /home/user/SDR-HLS/3.Testing/Button Test/top.v(10[13] 12[7])
    defparam btn_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

