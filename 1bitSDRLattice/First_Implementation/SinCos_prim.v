// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Feb 28 16:20:13 2024
//
// Verilog Description of module SinCos
//

module SinCos (Clock, ClkEn, Reset, Theta, Sine, Cosine) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(8[8:14])
    input Clock;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(9[16:21])
    input ClkEn;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(10[16:21])
    input Reset;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(11[16:21])
    input [7:0]Theta;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(12[22:27])
    output [12:0]Sine;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    output [12:0]Cosine;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    
    wire Clock_c /* synthesis is_clock=1, SET_AS_NETWORK=Clock_c */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(9[16:21])
    
    wire ClkEn_c, Reset_c, Theta_c_7, Theta_c_6, Theta_c_5, Theta_c_4, 
        Theta_c_3, Theta_c_2, Theta_c_1, Theta_c_0, Sine_c_12, Sine_c_11, 
        Sine_c_10, Sine_c_9, Sine_c_8, Sine_c_7, Sine_c_6, Sine_c_5, 
        Sine_c_4, Sine_c_3, Sine_c_2, Sine_c_1, Sine_c_0, Cosine_c_12, 
        Cosine_c_11, Cosine_c_10, Cosine_c_9, Cosine_c_8, Cosine_c_7, 
        Cosine_c_6, Cosine_c_5, Cosine_c_4, Cosine_c_3, Cosine_c_2, 
        Cosine_c_1, Cosine_c_0, func_or_inet, lx_ne0, lx_ne0_inv, 
        rom_addr0_r, rom_addr0_r_1, rom_addr0_r_2, rom_addr0_r_3, rom_addr0_r_4, 
        mx_ctrl_r, rom_addr0_r_5, cosromoutsel_i, rom_dout, rom_dout_1, 
        rom_dout_2, rom_dout_3, rom_dout_4, rom_dout_5, rom_dout_6, 
        rom_dout_7, rom_dout_8, rom_dout_9, rom_dout_10, rom_dout_11, 
        sinromoutsel, rom_dout_12, rom_dout_13, rom_dout_14, rom_dout_15, 
        rom_dout_16, rom_dout_17, rom_dout_18, rom_dout_19, rom_dout_20, 
        rom_dout_21, rom_dout_22, rom_dout_23, rom_dout_24, cosromoutsel, 
        rom_dout_25, out_sel_i, rom_dout_s, rom_dout_s_1, rom_dout_s_2, 
        rom_dout_s_3, rom_dout_s_4, rom_dout_s_5, rom_dout_s_6, rom_dout_s_7, 
        rom_dout_s_8, rom_dout_s_9, rom_dout_s_10, rom_dout_s_11, mx_ctrl_r_1, 
        rom_dout_s_12, rom_dout_c, rom_dout_c_1, rom_dout_c_2, rom_dout_c_3, 
        rom_dout_c_4, rom_dout_c_5, rom_dout_c_6, rom_dout_c_7, rom_dout_c_8, 
        rom_dout_c_9, rom_dout_c_10, rom_dout_c_11, out_sel, rom_dout_c_12, 
        sinout_pre, sinout_pre_1, sinout_pre_2, sinout_pre_3, sinout_pre_4, 
        sinout_pre_5, sinout_pre_6, sinout_pre_7, sinout_pre_8, sinout_pre_9, 
        sinout_pre_10, sinout_pre_11, sinout_pre_12, cosout_pre, cosout_pre_1, 
        cosout_pre_2, cosout_pre_3, cosout_pre_4, cosout_pre_5, cosout_pre_6, 
        cosout_pre_7, cosout_pre_8, cosout_pre_9, cosout_pre_10, cosout_pre_11, 
        cosout_pre_12, rom_addr0_r_n, rom_addr0_r_inv, rom_addr0_r_n_1, 
        rom_addr0_r_n_2, rom_addr0_r_2_inv, rom_addr0_r_1_inv, co0, 
        rom_addr0_r_n_3, rom_addr0_r_n_4, rom_addr0_r_4_inv, rom_addr0_r_3_inv, 
        co1, rom_addr0_r_n_5, rom_addr0_r_5_inv, co2, rom_dout_12_ffin, 
        rom_dout_11_ffin, rom_dout_10_ffin, rom_dout_9_ffin, rom_dout_8_ffin, 
        rom_dout_7_ffin, rom_dout_6_ffin, rom_dout_5_ffin, rom_dout_4_ffin, 
        rom_dout_3_ffin, rom_dout_2_ffin, rom_dout_1_ffin, rom_dout_ffin, 
        rom_dout_25_ffin, rom_dout_24_ffin, rom_dout_23_ffin, rom_dout_22_ffin, 
        rom_dout_21_ffin, rom_dout_20_ffin, rom_dout_19_ffin, rom_dout_18_ffin, 
        rom_dout_17_ffin, rom_dout_16_ffin, rom_dout_15_ffin, rom_dout_14_ffin, 
        rom_dout_13_ffin, rom_addr0_r_6, rom_addr0_r_7, rom_addr0_r_8, 
        rom_addr0_r_9, rom_addr0_r_10, rom_addr0_r_11, rom_dout_s_n, 
        rom_dout_inv, rom_dout_s_n_1, rom_dout_s_n_2, rom_dout_2_inv, 
        rom_dout_1_inv, co0_1, rom_dout_s_n_3, rom_dout_s_n_4, rom_dout_4_inv, 
        rom_dout_3_inv, co1_1, rom_dout_s_n_5, rom_dout_s_n_6, rom_dout_6_inv, 
        rom_dout_5_inv, co2_1, rom_dout_s_n_7, rom_dout_s_n_8, rom_dout_8_inv, 
        rom_dout_7_inv, co3, rom_dout_s_n_9, rom_dout_s_n_10, rom_dout_10_inv, 
        rom_dout_9_inv, co4, rom_dout_s_n_11, rom_dout_s_n_12, rom_dout_12_inv, 
        rom_dout_11_inv, co5, rom_dout_c_n, rom_dout_13_inv, rom_dout_c_n_1, 
        rom_dout_c_n_2, rom_dout_15_inv, rom_dout_14_inv, co0_2, rom_dout_c_n_3, 
        rom_dout_c_n_4, rom_dout_17_inv, rom_dout_16_inv, co1_2, rom_dout_c_n_5, 
        rom_dout_c_n_6, rom_dout_19_inv, rom_dout_18_inv, co2_2, rom_dout_c_n_7, 
        rom_dout_c_n_8, rom_dout_21_inv, rom_dout_20_inv, co3_1, rom_dout_c_n_9, 
        rom_dout_c_n_10, rom_dout_23_inv, rom_dout_22_inv, co4_1, rom_dout_c_n_11, 
        rom_dout_c_n_12, rom_dout_25_inv, rom_dout_24_inv, co5_1, scuba_vhi, 
        scuba_vlo;
    
    INV INV_31 (.A(rom_addr0_r_3), .Z(rom_addr0_r_3_inv));
    FD1P3DX FF_61 (.D(Theta_c_1), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_addr0_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(312[13:88])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(Theta_c_2), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_addr0_r_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(315[13:88])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(Theta_c_3), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_addr0_r_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(318[13:88])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(Theta_c_4), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_addr0_r_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(321[13:88])
    defparam FF_58.GSR = "ENABLED";
    FD1P3DX FF_57 (.D(Theta_c_5), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_addr0_r_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(324[13:88])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(Theta_c_6), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(mx_ctrl_r)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(327[13:84])
    defparam FF_56.GSR = "ENABLED";
    FD1P3DX FF_55 (.D(Theta_c_7), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(mx_ctrl_r_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(330[13:86])
    defparam FF_55.GSR = "ENABLED";
    MUX21 muxb_57 (.D0(rom_addr0_r), .D1(rom_addr0_r_n), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_6)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_53 (.D(rom_dout_11_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(355[13] 356[25])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(rom_dout_10_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(359[13] 360[25])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(rom_dout_9_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(363[13] 364[24])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(rom_dout_8_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(367[13] 368[24])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(rom_dout_7_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(371[13] 372[24])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(rom_dout_6_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(375[13] 376[24])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(rom_dout_5_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(379[13] 380[24])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(rom_dout_4_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(383[13] 384[24])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(rom_dout_3_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(387[13] 388[24])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(rom_dout_2_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(391[13] 392[24])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(rom_dout_1_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(395[13] 396[24])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(rom_dout_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(399[13] 400[22])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(rom_dout_25_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(403[13] 404[25])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(rom_dout_24_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(407[13] 408[25])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(rom_dout_23_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(411[13] 412[25])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(rom_dout_22_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(415[13] 416[25])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(rom_dout_21_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(419[13] 420[25])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(rom_dout_20_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(423[13] 424[25])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(rom_dout_19_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_19)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(427[13] 428[25])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(rom_dout_18_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_18)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(431[13] 432[25])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(rom_dout_17_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_17)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(435[13] 436[25])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(rom_dout_16_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_16)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(439[13] 440[25])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(rom_dout_15_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_15)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(443[13] 444[25])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(rom_dout_14_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(447[13] 448[25])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(rom_dout_13_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(451[13] 452[25])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(cosromoutsel_i), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(cosromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(455[13] 456[26])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(mx_ctrl_r_1), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(sinromoutsel)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(459[13] 460[26])
    defparam FF_27.GSR = "ENABLED";
    MUX21 muxb_51 (.D0(rom_dout), .D1(rom_dout_s_n), .SD(sinromoutsel), 
          .Z(rom_dout_s)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_25 (.D0(rom_dout_s), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre)) /* synthesis syn_instantiated=1 */ ;
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(scuba_vhi));
    IB Theta_pad_0 (.I(Theta[0]), .O(Theta_c_0));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(12[22:27])
    IB Theta_pad_1 (.I(Theta[1]), .O(Theta_c_1));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(12[22:27])
    IB Theta_pad_2 (.I(Theta[2]), .O(Theta_c_2));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(12[22:27])
    IB Theta_pad_3 (.I(Theta[3]), .O(Theta_c_3));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(12[22:27])
    IB Theta_pad_4 (.I(Theta[4]), .O(Theta_c_4));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(12[22:27])
    IB Theta_pad_5 (.I(Theta[5]), .O(Theta_c_5));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(12[22:27])
    IB Theta_pad_6 (.I(Theta[6]), .O(Theta_c_6));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(12[22:27])
    IB Theta_pad_7 (.I(Theta[7]), .O(Theta_c_7));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(12[22:27])
    IB Reset_pad (.I(Reset), .O(Reset_c));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(11[16:21])
    FD1P3DX FF_24 (.D(sinout_pre_1), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(599[13] 600[21])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(sinout_pre_2), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(603[13] 604[21])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(sinout_pre_3), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(607[13] 608[21])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(sinout_pre_4), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(611[13] 612[21])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(sinout_pre_5), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(615[13] 616[21])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(sinout_pre_6), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(619[13] 620[21])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(sinout_pre_7), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(623[13] 624[21])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(sinout_pre_8), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(627[13] 628[21])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(sinout_pre_9), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(631[13] 632[21])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(sinout_pre_10), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(635[13] 636[22])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(sinout_pre_11), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(639[13] 640[22])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(sinout_pre_12), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(643[13] 644[22])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(cosout_pre), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(647[13:86])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(cosout_pre_1), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(650[13] 651[23])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(cosout_pre_2), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(654[13] 655[23])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(cosout_pre_3), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(658[13] 659[23])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(cosout_pre_4), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(662[13] 663[23])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(cosout_pre_5), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(666[13] 667[23])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(cosout_pre_6), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(670[13] 671[23])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(cosout_pre_7), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(674[13] 675[23])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(cosout_pre_8), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(678[13] 679[23])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(cosout_pre_9), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(682[13] 683[23])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(cosout_pre_10), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(686[13] 687[24])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(cosout_pre_11), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(690[13] 691[24])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(cosout_pre_12), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Cosine_c_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(694[13] 695[24])
    defparam FF_0.GSR = "ENABLED";
    CCU2C neg_rom_addr0_r_n_0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_inv), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(co0), .S1(rom_addr0_r_n)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(702[11] 704[71])
    defparam neg_rom_addr0_r_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_0.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_0.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_1 (.A0(rom_addr0_r_1_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_2_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0), .COUT(co1), .S0(rom_addr0_r_n_1), 
          .S1(rom_addr0_r_n_2)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(710[11] 713[42])
    defparam neg_rom_addr0_r_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_1.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_2 (.A0(rom_addr0_r_3_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_addr0_r_4_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1), .COUT(co2), .S0(rom_addr0_r_n_3), 
          .S1(rom_addr0_r_n_4)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(719[11] 722[42])
    defparam neg_rom_addr0_r_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_2.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_addr0_r_n_3 (.A0(rom_addr0_r_5_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2), .S0(rom_addr0_r_n_5)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(728[11] 730[73])
    defparam neg_rom_addr0_r_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_addr0_r_n_3.INJECT1_0 = "NO";
    defparam neg_rom_addr0_r_n_3.INJECT1_1 = "NO";
    ROM64X1A triglut_1_0_25 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_12_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_25.initval = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    IB ClkEn_pad (.I(ClkEn), .O(ClkEn_c));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(10[16:21])
    IB Clock_pad (.I(Clock), .O(Clock_c));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(9[16:21])
    OB Cosine_pad_0 (.I(Cosine_c_0), .O(Cosine[0]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_1 (.I(Cosine_c_1), .O(Cosine[1]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_2 (.I(Cosine_c_2), .O(Cosine[2]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_3 (.I(Cosine_c_3), .O(Cosine[3]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_4 (.I(Cosine_c_4), .O(Cosine[4]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_5 (.I(Cosine_c_5), .O(Cosine[5]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_6 (.I(Cosine_c_6), .O(Cosine[6]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_7 (.I(Cosine_c_7), .O(Cosine[7]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_8 (.I(Cosine_c_8), .O(Cosine[8]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_9 (.I(Cosine_c_9), .O(Cosine[9]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_10 (.I(Cosine_c_10), .O(Cosine[10]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_11 (.I(Cosine_c_11), .O(Cosine[11]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Cosine_pad_12 (.I(Cosine_c_12), .O(Cosine[12]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(14[24:30])
    OB Sine_pad_0 (.I(Sine_c_0), .O(Sine[0]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_1 (.I(Sine_c_1), .O(Sine[1]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_2 (.I(Sine_c_2), .O(Sine[2]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_3 (.I(Sine_c_3), .O(Sine[3]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_4 (.I(Sine_c_4), .O(Sine[4]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_5 (.I(Sine_c_5), .O(Sine[5]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_6 (.I(Sine_c_6), .O(Sine[6]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_7 (.I(Sine_c_7), .O(Sine[7]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_8 (.I(Sine_c_8), .O(Sine[8]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_9 (.I(Sine_c_9), .O(Sine[9]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_10 (.I(Sine_c_10), .O(Sine[10]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    CCU2C neg_rom_dout_s_n_1 (.A0(rom_dout_1_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_2_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_1), .COUT(co1_1), .S0(rom_dout_s_n_1), 
          .S1(rom_dout_s_n_2)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(874[11] 877[43])
    defparam neg_rom_dout_s_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_1.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_2 (.A0(rom_dout_3_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_4_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_1), .COUT(co2_1), .S0(rom_dout_s_n_3), 
          .S1(rom_dout_s_n_4)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(883[11] 886[43])
    defparam neg_rom_dout_s_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_2.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_3 (.A0(rom_dout_5_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_6_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_1), .COUT(co3), .S0(rom_dout_s_n_5), 
          .S1(rom_dout_s_n_6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(892[11] 895[41])
    defparam neg_rom_dout_s_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_3.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_4 (.A0(rom_dout_7_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_8_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3), .COUT(co4), .S0(rom_dout_s_n_7), 
          .S1(rom_dout_s_n_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(901[11] 904[41])
    defparam neg_rom_dout_s_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_4.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_4.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_5 (.A0(rom_dout_9_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_10_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4), .COUT(co5), .S0(rom_dout_s_n_9), 
          .S1(rom_dout_s_n_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(910[11] 913[42])
    defparam neg_rom_dout_s_n_5.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_5.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_5.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_5.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_s_n_6 (.A0(rom_dout_11_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_12_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5), .S0(rom_dout_s_n_11), .S1(rom_dout_s_n_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(919[11] 922[42])
    defparam neg_rom_dout_s_n_6.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_6.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_6.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_6.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_13_inv), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(co0_2), .S1(rom_dout_c_n)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(936[11] 938[72])
    defparam neg_rom_dout_c_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_0.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_0.INJECT1_1 = "NO";
    INV INV_32 (.A(rom_addr0_r_4), .Z(rom_addr0_r_4_inv));
    CCU2C neg_rom_dout_c_n_1 (.A0(rom_dout_14_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_15_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_2), .COUT(co1_2), .S0(rom_dout_c_n_1), 
          .S1(rom_dout_c_n_2)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(944[11] 947[43])
    defparam neg_rom_dout_c_n_1.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_1.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_1.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_1.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_2 (.A0(rom_dout_16_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_17_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_2), .COUT(co2_2), .S0(rom_dout_c_n_3), 
          .S1(rom_dout_c_n_4)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(953[11] 956[43])
    defparam neg_rom_dout_c_n_2.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_2.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_2.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_2.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_3 (.A0(rom_dout_18_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_19_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_2), .COUT(co3_1), .S0(rom_dout_c_n_5), 
          .S1(rom_dout_c_n_6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(962[11] 965[43])
    defparam neg_rom_dout_c_n_3.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_3.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_3.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_3.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_4 (.A0(rom_dout_20_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_21_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co3_1), .COUT(co4_1), .S0(rom_dout_c_n_7), 
          .S1(rom_dout_c_n_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(971[11] 974[43])
    defparam neg_rom_dout_c_n_4.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_4.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_4.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_4.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_5 (.A0(rom_dout_22_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_23_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co4_1), .COUT(co5_1), .S0(rom_dout_c_n_9), 
          .S1(rom_dout_c_n_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(980[11] 983[44])
    defparam neg_rom_dout_c_n_5.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_5.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_5.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_5.INJECT1_1 = "NO";
    CCU2C neg_rom_dout_c_n_6 (.A0(rom_dout_24_inv), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_25_inv), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co5_1), .S0(rom_dout_c_n_11), .S1(rom_dout_c_n_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(989[11] 992[44])
    defparam neg_rom_dout_c_n_6.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_6.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_c_n_6.INJECT1_0 = "NO";
    defparam neg_rom_dout_c_n_6.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    INV INV_33 (.A(rom_addr0_r_5), .Z(rom_addr0_r_5_inv));
    OB Sine_pad_11 (.I(Sine_c_11), .O(Sine[11]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    OB Sine_pad_12 (.I(Sine_c_12), .O(Sine[12]));   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(13[24:28])
    INV INV_30 (.A(rom_addr0_r_2), .Z(rom_addr0_r_2_inv));
    INV INV_29 (.A(rom_addr0_r_1), .Z(rom_addr0_r_1_inv));
    INV INV_28 (.A(rom_addr0_r), .Z(rom_addr0_r_inv));
    XOR2 XOR2_t1 (.A(mx_ctrl_r), .B(mx_ctrl_r_1), .Z(cosromoutsel_i)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(241[10:70])
    INV INV_27 (.A(rom_dout_12), .Z(rom_dout_12_inv));
    INV INV_26 (.A(rom_dout_11), .Z(rom_dout_11_inv));
    INV INV_25 (.A(rom_dout_10), .Z(rom_dout_10_inv));
    INV INV_24 (.A(rom_dout_9), .Z(rom_dout_9_inv));
    INV INV_23 (.A(rom_dout_8), .Z(rom_dout_8_inv));
    INV INV_22 (.A(rom_dout_7), .Z(rom_dout_7_inv));
    INV INV_21 (.A(rom_dout_6), .Z(rom_dout_6_inv));
    INV INV_20 (.A(rom_dout_5), .Z(rom_dout_5_inv));
    INV INV_19 (.A(rom_dout_4), .Z(rom_dout_4_inv));
    INV INV_18 (.A(rom_dout_3), .Z(rom_dout_3_inv));
    INV INV_17 (.A(rom_dout_2), .Z(rom_dout_2_inv));
    INV INV_16 (.A(rom_dout_1), .Z(rom_dout_1_inv));
    INV INV_15 (.A(rom_dout), .Z(rom_dout_inv));
    INV INV_14 (.A(rom_dout_25), .Z(rom_dout_25_inv));
    INV INV_13 (.A(rom_dout_24), .Z(rom_dout_24_inv));
    INV INV_12 (.A(rom_dout_23), .Z(rom_dout_23_inv));
    INV INV_11 (.A(rom_dout_22), .Z(rom_dout_22_inv));
    INV INV_10 (.A(rom_dout_21), .Z(rom_dout_21_inv));
    INV INV_9 (.A(rom_dout_20), .Z(rom_dout_20_inv));
    INV INV_8 (.A(rom_dout_19), .Z(rom_dout_19_inv));
    INV INV_7 (.A(rom_dout_18), .Z(rom_dout_18_inv));
    INV INV_6 (.A(rom_dout_17), .Z(rom_dout_17_inv));
    INV INV_5 (.A(rom_dout_16), .Z(rom_dout_16_inv));
    INV INV_4 (.A(rom_dout_15), .Z(rom_dout_15_inv));
    INV INV_3 (.A(rom_dout_14), .Z(rom_dout_14_inv));
    INV INV_2 (.A(rom_dout_13), .Z(rom_dout_13_inv));
    ROM16X1A LUT4_1 (.AD0(rom_addr0_r_9), .AD1(rom_addr0_r_8), .AD2(rom_addr0_r_7), 
            .AD3(rom_addr0_r_6), .DO0(func_or_inet)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b1111111111111110;
    ROM16X1A LUT4_0 (.AD0(scuba_vlo), .AD1(rom_addr0_r_11), .AD2(rom_addr0_r_10), 
            .AD3(func_or_inet), .DO0(lx_ne0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b1111111111111110;
    INV INV_1 (.A(lx_ne0), .Z(lx_ne0_inv));
    AND2 AND2_t0 (.A(mx_ctrl_r), .B(lx_ne0_inv), .Z(out_sel_i)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(305[10:64])
    FD1P3DX FF_62 (.D(Theta_c_0), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_addr0_r)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(309[13:86])
    defparam FF_62.GSR = "ENABLED";
    MUX21 muxb_56 (.D0(rom_addr0_r_1), .D1(rom_addr0_r_n_1), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_55 (.D0(rom_addr0_r_2), .D1(rom_addr0_r_n_2), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_8)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_54 (.D0(rom_addr0_r_3), .D1(rom_addr0_r_n_3), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_53 (.D0(rom_addr0_r_4), .D1(rom_addr0_r_n_4), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_52 (.D0(rom_addr0_r_5), .D1(rom_addr0_r_n_5), .SD(mx_ctrl_r), 
          .Z(rom_addr0_r_11)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_54 (.D(rom_dout_12_ffin), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(rom_dout_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(351[13] 352[25])
    defparam FF_54.GSR = "ENABLED";
    MUX21 muxb_50 (.D0(rom_dout_1), .D1(rom_dout_s_n_1), .SD(sinromoutsel), 
          .Z(rom_dout_s_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_49 (.D0(rom_dout_2), .D1(rom_dout_s_n_2), .SD(sinromoutsel), 
          .Z(rom_dout_s_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_48 (.D0(rom_dout_3), .D1(rom_dout_s_n_3), .SD(sinromoutsel), 
          .Z(rom_dout_s_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_47 (.D0(rom_dout_4), .D1(rom_dout_s_n_4), .SD(sinromoutsel), 
          .Z(rom_dout_s_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_46 (.D0(rom_dout_5), .D1(rom_dout_s_n_5), .SD(sinromoutsel), 
          .Z(rom_dout_s_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_45 (.D0(rom_dout_6), .D1(rom_dout_s_n_6), .SD(sinromoutsel), 
          .Z(rom_dout_s_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_44 (.D0(rom_dout_7), .D1(rom_dout_s_n_7), .SD(sinromoutsel), 
          .Z(rom_dout_s_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_43 (.D0(rom_dout_8), .D1(rom_dout_s_n_8), .SD(sinromoutsel), 
          .Z(rom_dout_s_8)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_42 (.D0(rom_dout_9), .D1(rom_dout_s_n_9), .SD(sinromoutsel), 
          .Z(rom_dout_s_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_41 (.D0(rom_dout_10), .D1(rom_dout_s_n_10), .SD(sinromoutsel), 
          .Z(rom_dout_s_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_40 (.D0(rom_dout_11), .D1(rom_dout_s_n_11), .SD(sinromoutsel), 
          .Z(rom_dout_s_11)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_39 (.D0(rom_dout_12), .D1(rom_dout_s_n_12), .SD(sinromoutsel), 
          .Z(rom_dout_s_12)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_38 (.D0(rom_dout_13), .D1(rom_dout_c_n), .SD(cosromoutsel), 
          .Z(rom_dout_c)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_37 (.D0(rom_dout_14), .D1(rom_dout_c_n_1), .SD(cosromoutsel), 
          .Z(rom_dout_c_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_36 (.D0(rom_dout_15), .D1(rom_dout_c_n_2), .SD(cosromoutsel), 
          .Z(rom_dout_c_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_35 (.D0(rom_dout_16), .D1(rom_dout_c_n_3), .SD(cosromoutsel), 
          .Z(rom_dout_c_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_34 (.D0(rom_dout_17), .D1(rom_dout_c_n_4), .SD(cosromoutsel), 
          .Z(rom_dout_c_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_33 (.D0(rom_dout_18), .D1(rom_dout_c_n_5), .SD(cosromoutsel), 
          .Z(rom_dout_c_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_32 (.D0(rom_dout_19), .D1(rom_dout_c_n_6), .SD(cosromoutsel), 
          .Z(rom_dout_c_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_31 (.D0(rom_dout_20), .D1(rom_dout_c_n_7), .SD(cosromoutsel), 
          .Z(rom_dout_c_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_30 (.D0(rom_dout_21), .D1(rom_dout_c_n_8), .SD(cosromoutsel), 
          .Z(rom_dout_c_8)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_29 (.D0(rom_dout_22), .D1(rom_dout_c_n_9), .SD(cosromoutsel), 
          .Z(rom_dout_c_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_28 (.D0(rom_dout_23), .D1(rom_dout_c_n_10), .SD(cosromoutsel), 
          .Z(rom_dout_c_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_27 (.D0(rom_dout_24), .D1(rom_dout_c_n_11), .SD(cosromoutsel), 
          .Z(rom_dout_c_11)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_26 (.D0(rom_dout_25), .D1(rom_dout_c_n_12), .SD(cosromoutsel), 
          .Z(rom_dout_c_12)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_26 (.D(out_sel_i), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(out_sel)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(541[13:83])
    defparam FF_26.GSR = "ENABLED";
    MUX21 muxb_24 (.D0(rom_dout_s_1), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_23 (.D0(rom_dout_s_2), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_22 (.D0(rom_dout_s_3), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_21 (.D0(rom_dout_s_4), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_20 (.D0(rom_dout_s_5), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_19 (.D0(rom_dout_s_6), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_18 (.D0(rom_dout_s_7), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_17 (.D0(rom_dout_s_8), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_8)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_16 (.D0(rom_dout_s_9), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_15 (.D0(rom_dout_s_10), .D1(scuba_vlo), .SD(out_sel), .Z(sinout_pre_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_14 (.D0(rom_dout_s_11), .D1(scuba_vhi), .SD(out_sel), .Z(sinout_pre_11)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_13 (.D0(rom_dout_s_12), .D1(mx_ctrl_r_1), .SD(out_sel), 
          .Z(sinout_pre_12)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_12 (.D0(rom_dout_c), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_11 (.D0(rom_dout_c_1), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_1)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_10 (.D0(rom_dout_c_2), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_2)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_9 (.D0(rom_dout_c_3), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_3)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_8 (.D0(rom_dout_c_4), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_4)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_7 (.D0(rom_dout_c_5), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_5)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_6 (.D0(rom_dout_c_6), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_6)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_5 (.D0(rom_dout_c_7), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_7)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_4 (.D0(rom_dout_c_8), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_8)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_3 (.D0(rom_dout_c_9), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_9)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_2 (.D0(rom_dout_c_10), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_10)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_1 (.D0(rom_dout_c_11), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_11)) /* synthesis syn_instantiated=1 */ ;
    MUX21 muxb_0 (.D0(rom_dout_c_12), .D1(scuba_vlo), .SD(out_sel), .Z(cosout_pre_12)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_25 (.D(sinout_pre), .SP(ClkEn_c), .CK(Clock_c), .CD(Reset_c), 
            .Q(Sine_c_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(596[13:84])
    defparam FF_25.GSR = "ENABLED";
    ROM64X1A triglut_1_0_24 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_11_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_24.initval = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    ROM64X1A triglut_1_0_23 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_10_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_23.initval = 64'b1111111111111111111111111111111111111111110000000000000000000000;
    ROM64X1A triglut_1_0_22 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_9_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_22.initval = 64'b1111111111111111111111111111100000000000001111111111100000000000;
    ROM64X1A triglut_1_0_21 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_8_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_21.initval = 64'b1111111111111111111100000000011111110000001111110000011111000000;
    ROM64X1A triglut_1_0_20 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_7_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_20.initval = 64'b1111111111111100000011111000011110001110001110001110011100111000;
    ROM64X1A triglut_1_0_19 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_6_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_19.initval = 64'b1111111111000011100011100110011001001101101101001001011010110100;
    ROM64X1A triglut_1_0_18 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_5_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_18.initval = 64'b1111111000110011011010010101010100101001001001101100110001100110;
    ROM64X1A triglut_1_0_17 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_4_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_17.initval = 64'b1111100100101010110011000000000001110011011010110101010110101010;
    ROM64X1A triglut_1_0_16 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_3_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_16.initval = 64'b1110010110011100010101001111111101101010110011100000000011110000;
    ROM64X1A triglut_1_0_15 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_2_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_15.initval = 64'b1101000010100011001111010111110011001100010101100000000011001100;
    ROM64X1A triglut_1_0_14 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_1_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_14.initval = 64'b1111011011100010010110111011101001110011000000100111110010101010;
    ROM64X1A triglut_1_0_13 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_13.initval = 64'b1000100101001010011001010111111001010010011110001001001001111000;
    ROM64X1A triglut_1_0_12 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_25_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_12.initval = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    ROM64X1A triglut_1_0_11 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_24_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_11.initval = 64'b0000000000000000000000000000000000000000000000000000000000000001;
    ROM64X1A triglut_1_0_10 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_23_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_10.initval = 64'b0000000000000000000001111111111111111111111111111111111111111110;
    ROM64X1A triglut_1_0_9 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_22_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_9.initval = 64'b0000000000111111111110000000000000111111111111111111111111111110;
    ROM64X1A triglut_1_0_8 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_21_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_8.initval = 64'b0000011111000001111110000001111111000000000111111111111111111110;
    ROM64X1A triglut_1_0_7 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_20_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_7.initval = 64'b0011100111001110001110001110001111000011111000000111111111111110;
    ROM64X1A triglut_1_0_6 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_19_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_6.initval = 64'b0101101011010010010110110110010011001100111000111000011111111110;
    ROM64X1A triglut_1_0_5 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_18_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_5.initval = 64'b1100110001100110110010010010100101010101001011011001100011111110;
    ROM64X1A triglut_1_0_4 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_17_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_4.initval = 64'b1010101101010101101011011001110000000000011001101010100100111110;
    ROM64X1A triglut_1_0_3 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_16_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_3.initval = 64'b0001111000000000111001101010110111111110010101000111001101001110;
    ROM64X1A triglut_1_0_2 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_15_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_2.initval = 64'b0110011000000000110101000110011001111101011110011000101000010110;
    ROM64X1A triglut_1_0_1 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_14_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_1.initval = 64'b1010101001111100100000011001110010111011101101001000111011011110;
    ROM64X1A triglut_1_0_0 (.AD0(rom_addr0_r_6), .AD1(rom_addr0_r_7), .AD2(rom_addr0_r_8), 
            .AD3(rom_addr0_r_9), .AD4(rom_addr0_r_10), .AD5(rom_addr0_r_11), 
            .DO0(rom_dout_13_ffin)) /* synthesis syn_instantiated=1 */ ;
    defparam triglut_1_0_0.initval = 64'b0011110010010010001111001001010011111101010011001010010100100010;
    CCU2C neg_rom_dout_s_n_0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rom_dout_inv), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(co0_1), .S1(rom_dout_s_n)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/SinCos/SinCos.v(866[11] 868[72])
    defparam neg_rom_dout_s_n_0.INIT0 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_0.INIT1 = 16'b0110011010101010;
    defparam neg_rom_dout_s_n_0.INJECT1_0 = "NO";
    defparam neg_rom_dout_s_n_0.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

