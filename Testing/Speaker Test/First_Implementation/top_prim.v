// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Mar 15 12:08:38 2024
//
// Verilog Description of module top
//

module top (clk_25mhz, led, wave_outP, wave_outN) /* synthesis syn_module_defined=1 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(1[8:11])
    input clk_25mhz;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(2[13:22])
    output [7:0]led;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[15:18])
    output wave_outP;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(4[14:23])
    output wave_outN;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(5[14:23])
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(2[13:22])
    
    wire led_c_1, wave_outP_c, wave_outN_c, GND_net;
    wire [31:0]counter;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(13[13:20])
    
    wire VCC_net, n213, n212, n211, n210, n209, n208, n207, 
        n206, n205, n204, n203, n202, n201, n200, n199, clk_25mhz_c_enable_1;
    
    VLO i4 (.Z(GND_net));
    OB led_pad_7 (.I(GND_net), .O(led[7]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[15:18])
    CCU2C add_22_32 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n213), 
          .S1(clk_25mhz_c_enable_1));
    defparam add_22_32.INIT0 = 16'h555f;
    defparam add_22_32.INIT1 = 16'h0000;
    defparam add_22_32.INJECT1_0 = "NO";
    defparam add_22_32.INJECT1_1 = "NO";
    CCU2C add_22_30 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[30]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n212), .COUT(n213));
    defparam add_22_30.INIT0 = 16'h555f;
    defparam add_22_30.INIT1 = 16'h555f;
    defparam add_22_30.INJECT1_0 = "NO";
    defparam add_22_30.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB led_pad_6 (.I(GND_net), .O(led[6]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[15:18])
    GSR GSR_INST (.GSR(VCC_net));
    CCU2C add_22_28 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[28]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n211), .COUT(n212));
    defparam add_22_28.INIT0 = 16'h555f;
    defparam add_22_28.INIT1 = 16'h555f;
    defparam add_22_28.INJECT1_0 = "NO";
    defparam add_22_28.INJECT1_1 = "NO";
    CCU2C add_22_26 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[26]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n210), .COUT(n211));
    defparam add_22_26.INIT0 = 16'h555f;
    defparam add_22_26.INIT1 = 16'h555f;
    defparam add_22_26.INJECT1_0 = "NO";
    defparam add_22_26.INJECT1_1 = "NO";
    CCU2C add_22_24 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[24]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n209), .COUT(n210));
    defparam add_22_24.INIT0 = 16'h555f;
    defparam add_22_24.INIT1 = 16'h555f;
    defparam add_22_24.INJECT1_0 = "NO";
    defparam add_22_24.INJECT1_1 = "NO";
    CCU2C add_22_22 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[22]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n208), .COUT(n209));
    defparam add_22_22.INIT0 = 16'h555f;
    defparam add_22_22.INIT1 = 16'h555f;
    defparam add_22_22.INJECT1_0 = "NO";
    defparam add_22_22.INJECT1_1 = "NO";
    CCU2C add_22_20 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[20]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n207), .COUT(n208));
    defparam add_22_20.INIT0 = 16'h555f;
    defparam add_22_20.INIT1 = 16'h555f;
    defparam add_22_20.INJECT1_0 = "NO";
    defparam add_22_20.INJECT1_1 = "NO";
    CCU2C add_22_18 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n206), .COUT(n207));
    defparam add_22_18.INIT0 = 16'h555f;
    defparam add_22_18.INIT1 = 16'h555f;
    defparam add_22_18.INJECT1_0 = "NO";
    defparam add_22_18.INJECT1_1 = "NO";
    CCU2C add_22_16 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n205), .COUT(n206));
    defparam add_22_16.INIT0 = 16'h555f;
    defparam add_22_16.INIT1 = 16'h555f;
    defparam add_22_16.INJECT1_0 = "NO";
    defparam add_22_16.INJECT1_1 = "NO";
    CCU2C add_22_14 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n204), .COUT(n205));
    defparam add_22_14.INIT0 = 16'haaa0;
    defparam add_22_14.INIT1 = 16'h555f;
    defparam add_22_14.INJECT1_0 = "NO";
    defparam add_22_14.INJECT1_1 = "NO";
    CCU2C add_22_12 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n203), .COUT(n204));
    defparam add_22_12.INIT0 = 16'h555f;
    defparam add_22_12.INIT1 = 16'haaa0;
    defparam add_22_12.INJECT1_0 = "NO";
    defparam add_22_12.INJECT1_1 = "NO";
    CCU2C add_22_10 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n202), .COUT(n203));
    defparam add_22_10.INIT0 = 16'h555f;
    defparam add_22_10.INIT1 = 16'h555f;
    defparam add_22_10.INJECT1_0 = "NO";
    defparam add_22_10.INJECT1_1 = "NO";
    CCU2C add_22_8 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n201), .COUT(n202));
    defparam add_22_8.INIT0 = 16'haaa0;
    defparam add_22_8.INIT1 = 16'h555f;
    defparam add_22_8.INJECT1_0 = "NO";
    defparam add_22_8.INJECT1_1 = "NO";
    CCU2C add_22_6 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n200), .COUT(n201));
    defparam add_22_6.INIT0 = 16'h555f;
    defparam add_22_6.INIT1 = 16'haaa0;
    defparam add_22_6.INJECT1_0 = "NO";
    defparam add_22_6.INJECT1_1 = "NO";
    CCU2C add_22_4 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n199), .COUT(n200));
    defparam add_22_4.INIT0 = 16'h555f;
    defparam add_22_4.INIT1 = 16'haaa0;
    defparam add_22_4.INJECT1_0 = "NO";
    defparam add_22_4.INJECT1_1 = "NO";
    CCU2C add_22_2 (.A0(counter[0]), .B0(counter[1]), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n199));
    defparam add_22_2.INIT0 = 16'h0008;
    defparam add_22_2.INIT1 = 16'h555f;
    defparam add_22_2.INJECT1_0 = "NO";
    defparam add_22_2.INJECT1_1 = "NO";
    OB led_pad_5 (.I(GND_net), .O(led[5]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[15:18])
    OB led_pad_4 (.I(GND_net), .O(led[4]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[15:18])
    OB led_pad_3 (.I(GND_net), .O(led[3]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[15:18])
    OB led_pad_2 (.I(GND_net), .O(led[2]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[15:18])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[15:18])
    OB led_pad_0 (.I(GND_net), .O(led[0]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(3[15:18])
    OB wave_outP_pad (.I(wave_outP_c), .O(wave_outP));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(4[14:23])
    OB wave_outN_pad (.I(wave_outN_c), .O(wave_outN));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(5[14:23])
    IB clk_25mhz_pad (.I(clk_25mhz), .O(clk_25mhz_c));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(2[13:22])
    square_wave_generator swg (.counter({counter}), .clk_25mhz_c(clk_25mhz_c), 
            .clk_25mhz_c_enable_1(clk_25mhz_c_enable_1), .wave_outN_c(wave_outN_c), 
            .wave_outP_c(wave_outP_c), .led_c_1(led_c_1), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(10[23] 15[2])
    VHI i24 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module square_wave_generator
//

module square_wave_generator (counter, clk_25mhz_c, clk_25mhz_c_enable_1, 
            wave_outN_c, wave_outP_c, led_c_1, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [31:0]counter;
    input clk_25mhz_c;
    input clk_25mhz_c_enable_1;
    output wave_outN_c;
    output wave_outP_c;
    output led_c_1;
    input GND_net;
    
    wire clk_25mhz_c /* synthesis SET_AS_NETWORK=clk_25mhz_c, is_clock=1 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/top.v(2[13:22])
    wire [31:0]n133;
    
    wire wave_outP_N_67, led_N_66, VCC_net, n183, n198, n197, n196, 
        n195, n194, n193, n192, n191, n190, n189, n188, n187, 
        n186, n185, n184;
    
    FD1S3IX counter_9__i0 (.D(n133[0]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i0.GSR = "ENABLED";
    FD1P3AX wave_outN_18 (.D(wave_outP_c), .SP(clk_25mhz_c_enable_1), .CK(clk_25mhz_c), 
            .Q(wave_outN_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=10, LSE_RLINE=15 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(15[8] 24[4])
    defparam wave_outN_18.GSR = "ENABLED";
    FD1S3AX wave_outP_17 (.D(wave_outP_N_67), .CK(clk_25mhz_c), .Q(wave_outP_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=10, LSE_RLINE=15 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(15[8] 24[4])
    defparam wave_outP_17.GSR = "ENABLED";
    FD1S3AX led_19 (.D(led_N_66), .CK(clk_25mhz_c), .Q(led_c_1)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=2, LSE_LLINE=10, LSE_RLINE=15 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(15[8] 24[4])
    defparam led_19.GSR = "ENABLED";
    FD1S3IX counter_9__i31 (.D(n133[31]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[31])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i31.GSR = "ENABLED";
    CCU2C counter_9_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n183), .S1(n133[0]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_1.INIT0 = 16'h0000;
    defparam counter_9_add_4_1.INIT1 = 16'h555f;
    defparam counter_9_add_4_1.INJECT1_0 = "NO";
    defparam counter_9_add_4_1.INJECT1_1 = "NO";
    FD1S3IX counter_9__i1 (.D(n133[1]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i1.GSR = "ENABLED";
    CCU2C counter_9_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n198), .S0(n133[31]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_33.INIT0 = 16'haaa0;
    defparam counter_9_add_4_33.INIT1 = 16'h0000;
    defparam counter_9_add_4_33.INJECT1_0 = "NO";
    defparam counter_9_add_4_33.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n197), .COUT(n198), .S0(n133[29]), .S1(n133[30]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_31.INIT0 = 16'haaa0;
    defparam counter_9_add_4_31.INIT1 = 16'haaa0;
    defparam counter_9_add_4_31.INJECT1_0 = "NO";
    defparam counter_9_add_4_31.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n196), .COUT(n197), .S0(n133[27]), .S1(n133[28]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_29.INIT0 = 16'haaa0;
    defparam counter_9_add_4_29.INIT1 = 16'haaa0;
    defparam counter_9_add_4_29.INJECT1_0 = "NO";
    defparam counter_9_add_4_29.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n195), .COUT(n196), .S0(n133[25]), .S1(n133[26]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_27.INIT0 = 16'haaa0;
    defparam counter_9_add_4_27.INIT1 = 16'haaa0;
    defparam counter_9_add_4_27.INJECT1_0 = "NO";
    defparam counter_9_add_4_27.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n194), .COUT(n195), .S0(n133[23]), .S1(n133[24]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_25.INIT0 = 16'haaa0;
    defparam counter_9_add_4_25.INIT1 = 16'haaa0;
    defparam counter_9_add_4_25.INJECT1_0 = "NO";
    defparam counter_9_add_4_25.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n193), .COUT(n194), .S0(n133[21]), .S1(n133[22]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_23.INIT0 = 16'haaa0;
    defparam counter_9_add_4_23.INIT1 = 16'haaa0;
    defparam counter_9_add_4_23.INJECT1_0 = "NO";
    defparam counter_9_add_4_23.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n192), .COUT(n193), .S0(n133[19]), .S1(n133[20]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_21.INIT0 = 16'haaa0;
    defparam counter_9_add_4_21.INIT1 = 16'haaa0;
    defparam counter_9_add_4_21.INJECT1_0 = "NO";
    defparam counter_9_add_4_21.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n191), .COUT(n192), .S0(n133[17]), .S1(n133[18]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_19.INIT0 = 16'haaa0;
    defparam counter_9_add_4_19.INIT1 = 16'haaa0;
    defparam counter_9_add_4_19.INJECT1_0 = "NO";
    defparam counter_9_add_4_19.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n190), .COUT(n191), .S0(n133[15]), .S1(n133[16]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_17.INIT0 = 16'haaa0;
    defparam counter_9_add_4_17.INIT1 = 16'haaa0;
    defparam counter_9_add_4_17.INJECT1_0 = "NO";
    defparam counter_9_add_4_17.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n189), .COUT(n190), .S0(n133[13]), .S1(n133[14]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_15.INIT0 = 16'haaa0;
    defparam counter_9_add_4_15.INIT1 = 16'haaa0;
    defparam counter_9_add_4_15.INJECT1_0 = "NO";
    defparam counter_9_add_4_15.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n188), .COUT(n189), .S0(n133[11]), .S1(n133[12]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_13.INIT0 = 16'haaa0;
    defparam counter_9_add_4_13.INIT1 = 16'haaa0;
    defparam counter_9_add_4_13.INJECT1_0 = "NO";
    defparam counter_9_add_4_13.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n187), .COUT(n188), .S0(n133[9]), .S1(n133[10]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_11.INIT0 = 16'haaa0;
    defparam counter_9_add_4_11.INIT1 = 16'haaa0;
    defparam counter_9_add_4_11.INJECT1_0 = "NO";
    defparam counter_9_add_4_11.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n186), .COUT(n187), .S0(n133[7]), .S1(n133[8]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_9.INIT0 = 16'haaa0;
    defparam counter_9_add_4_9.INIT1 = 16'haaa0;
    defparam counter_9_add_4_9.INJECT1_0 = "NO";
    defparam counter_9_add_4_9.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n185), .COUT(n186), .S0(n133[5]), .S1(n133[6]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_7.INIT0 = 16'haaa0;
    defparam counter_9_add_4_7.INIT1 = 16'haaa0;
    defparam counter_9_add_4_7.INJECT1_0 = "NO";
    defparam counter_9_add_4_7.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n184), .COUT(n185), .S0(n133[3]), .S1(n133[4]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_5.INIT0 = 16'haaa0;
    defparam counter_9_add_4_5.INIT1 = 16'haaa0;
    defparam counter_9_add_4_5.INJECT1_0 = "NO";
    defparam counter_9_add_4_5.INJECT1_1 = "NO";
    CCU2C counter_9_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n183), .COUT(n184), .S0(n133[1]), .S1(n133[2]));   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9_add_4_3.INIT0 = 16'haaa0;
    defparam counter_9_add_4_3.INIT1 = 16'haaa0;
    defparam counter_9_add_4_3.INJECT1_0 = "NO";
    defparam counter_9_add_4_3.INJECT1_1 = "NO";
    FD1S3IX counter_9__i30 (.D(n133[30]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[30])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i30.GSR = "ENABLED";
    FD1S3IX counter_9__i29 (.D(n133[29]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[29])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i29.GSR = "ENABLED";
    FD1S3IX counter_9__i28 (.D(n133[28]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[28])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i28.GSR = "ENABLED";
    FD1S3IX counter_9__i27 (.D(n133[27]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[27])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i27.GSR = "ENABLED";
    FD1S3IX counter_9__i26 (.D(n133[26]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[26])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i26.GSR = "ENABLED";
    FD1S3IX counter_9__i25 (.D(n133[25]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i25.GSR = "ENABLED";
    FD1S3IX counter_9__i24 (.D(n133[24]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i24.GSR = "ENABLED";
    FD1S3IX counter_9__i23 (.D(n133[23]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i23.GSR = "ENABLED";
    FD1S3IX counter_9__i22 (.D(n133[22]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i22.GSR = "ENABLED";
    FD1S3IX counter_9__i21 (.D(n133[21]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i21.GSR = "ENABLED";
    FD1S3IX counter_9__i20 (.D(n133[20]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i20.GSR = "ENABLED";
    FD1S3IX counter_9__i19 (.D(n133[19]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i19.GSR = "ENABLED";
    FD1S3IX counter_9__i18 (.D(n133[18]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i18.GSR = "ENABLED";
    FD1S3IX counter_9__i17 (.D(n133[17]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i17.GSR = "ENABLED";
    FD1S3IX counter_9__i16 (.D(n133[16]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i16.GSR = "ENABLED";
    FD1S3IX counter_9__i15 (.D(n133[15]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i15.GSR = "ENABLED";
    FD1S3IX counter_9__i14 (.D(n133[14]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i14.GSR = "ENABLED";
    FD1S3IX counter_9__i13 (.D(n133[13]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i13.GSR = "ENABLED";
    FD1S3IX counter_9__i12 (.D(n133[12]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i12.GSR = "ENABLED";
    FD1S3IX counter_9__i11 (.D(n133[11]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i11.GSR = "ENABLED";
    FD1S3IX counter_9__i10 (.D(n133[10]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i10.GSR = "ENABLED";
    FD1S3IX counter_9__i9 (.D(n133[9]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i9.GSR = "ENABLED";
    FD1S3IX counter_9__i8 (.D(n133[8]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i8.GSR = "ENABLED";
    FD1S3IX counter_9__i7 (.D(n133[7]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i7.GSR = "ENABLED";
    FD1S3IX counter_9__i6 (.D(n133[6]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i6.GSR = "ENABLED";
    FD1S3IX counter_9__i5 (.D(n133[5]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i5.GSR = "ENABLED";
    FD1S3IX counter_9__i4 (.D(n133[4]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i4.GSR = "ENABLED";
    FD1S3IX counter_9__i3 (.D(n133[3]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i3.GSR = "ENABLED";
    FD1S3IX counter_9__i2 (.D(n133[2]), .CK(clk_25mhz_c), .CD(clk_25mhz_c_enable_1), 
            .Q(counter[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // /home/user/Master Thesis/Speaker Test/First_Implementation/source/square_wave_generator.v(17[20:31])
    defparam counter_9__i2.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(led_c_1), .B(clk_25mhz_c_enable_1), .Z(led_N_66)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_1 (.A(wave_outP_c), .B(clk_25mhz_c_enable_1), .Z(wave_outP_N_67)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h6666;
    VHI i1 (.Z(VCC_net));
    
endmodule
