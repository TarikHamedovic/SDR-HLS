// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Feb 28 13:14:04 2024
//
// Verilog Description of module Multiplier
//

module Multiplier (Clock, ClkEn, Aclr, DataA, DataB, Result) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(8[8:18])
    input Clock;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(9[16:21])
    input ClkEn;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(10[16:21])
    input Aclr;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(11[16:20])
    input [11:0]DataA;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(12[23:28])
    input [11:0]DataB;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(13[23:28])
    output [23:0]Result;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(14[24:30])
    
    wire Clock /* synthesis is_clock=1, SET_AS_NETWORK=Clock */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(9[16:21])
    
    wire rego_o_0, rego_o_1, rego_o_2, rego_o_3, rego_o_4, rego_o_5, 
        rego_o_6, rego_o_7, Multiplier_0_pp_0_0, Multiplier_0_pp_2_4, 
        Multiplier_0_pp_4_8, s_Multiplier_0_0_2, Multiplier_0_pp_1_2, 
        s_Multiplier_0_0_3, s_Multiplier_0_0_4, co_Multiplier_0_0_1, s_Multiplier_0_0_5, 
        s_Multiplier_0_0_6, co_Multiplier_0_0_2, s_Multiplier_0_0_7, s_Multiplier_0_0_8, 
        co_Multiplier_0_0_3, s_Multiplier_0_0_9, s_Multiplier_0_0_10, 
        co_Multiplier_0_0_4, s_Multiplier_0_0_11, s_Multiplier_0_0_12, 
        co_Multiplier_0_0_5, s_Multiplier_0_0_13, s_Multiplier_0_0_14, 
        Multiplier_0_pp_0_13, co_Multiplier_0_0_6, s_Multiplier_0_0_15, 
        s_Multiplier_0_0_16, Multiplier_0_pp_1_15, co_Multiplier_0_0_7, 
        s_Multiplier_0_0_17, co_Multiplier_0_0_8, s_Multiplier_0_1_6, 
        Multiplier_0_pp_3_6, s_Multiplier_0_1_7, s_Multiplier_0_1_8, co_Multiplier_0_1_1, 
        s_Multiplier_0_1_9, s_Multiplier_0_1_10, co_Multiplier_0_1_2, 
        s_Multiplier_0_1_11, s_Multiplier_0_1_12, co_Multiplier_0_1_3, 
        s_Multiplier_0_1_13, s_Multiplier_0_1_14, co_Multiplier_0_1_4, 
        s_Multiplier_0_1_15, s_Multiplier_0_1_16, co_Multiplier_0_1_5, 
        s_Multiplier_0_1_17, s_Multiplier_0_1_18, Multiplier_0_pp_2_17, 
        co_Multiplier_0_1_6, s_Multiplier_0_1_19, s_Multiplier_0_1_20, 
        Multiplier_0_pp_3_19, co_Multiplier_0_1_7, s_Multiplier_0_1_21, 
        co_Multiplier_0_1_8, s_Multiplier_0_2_10, Multiplier_0_pp_5_10, 
        s_Multiplier_0_2_11, s_Multiplier_0_2_12, co_Multiplier_0_2_1, 
        s_Multiplier_0_2_13, s_Multiplier_0_2_14, co_Multiplier_0_2_2, 
        s_Multiplier_0_2_15, s_Multiplier_0_2_16, co_Multiplier_0_2_3, 
        s_Multiplier_0_2_17, s_Multiplier_0_2_18, co_Multiplier_0_2_4, 
        s_Multiplier_0_2_19, s_Multiplier_0_2_20, co_Multiplier_0_2_5, 
        s_Multiplier_0_2_21, s_Multiplier_0_2_22, Multiplier_0_pp_4_21, 
        co_Multiplier_0_2_6, s_Multiplier_0_2_23, Multiplier_0_pp_5_23, 
        co_Multiplier_0_2_7, f_Multiplier_0_pp_2_4, f_s_Multiplier_0_0_4, 
        f_s_Multiplier_0_1_6, f_Multiplier_0_pp_2_5, f_s_Multiplier_0_0_6, 
        f_s_Multiplier_0_0_5, co_Multiplier_0_3_1, f_s_Multiplier_0_1_8, 
        f_s_Multiplier_0_1_7, f_s_Multiplier_0_0_8, f_s_Multiplier_0_0_7, 
        co_Multiplier_0_3_2, f_s_Multiplier_0_1_10, f_s_Multiplier_0_1_9, 
        f_s_Multiplier_0_0_10, f_s_Multiplier_0_0_9, co_Multiplier_0_3_3, 
        f_s_Multiplier_0_1_12, f_s_Multiplier_0_1_11, f_s_Multiplier_0_0_12, 
        f_s_Multiplier_0_0_11, co_Multiplier_0_3_4, f_s_Multiplier_0_1_14, 
        f_s_Multiplier_0_1_13, f_s_Multiplier_0_0_14, f_s_Multiplier_0_0_13, 
        co_Multiplier_0_3_5, f_s_Multiplier_0_1_16, f_s_Multiplier_0_1_15, 
        f_s_Multiplier_0_0_16, f_s_Multiplier_0_0_15, co_Multiplier_0_3_6, 
        f_s_Multiplier_0_1_18, f_s_Multiplier_0_1_17, f_s_Multiplier_0_0_17, 
        co_Multiplier_0_3_7, f_s_Multiplier_0_1_20, f_s_Multiplier_0_1_19, 
        co_Multiplier_0_3_8, f_s_Multiplier_0_1_21, co_Multiplier_0_3_9, 
        co_Multiplier_0_3_10, rego_o_8, f_Multiplier_0_pp_4_8, s_Multiplier_0_3_8, 
        rego_o_9, rego_o_10, f_s_Multiplier_0_2_10, f_Multiplier_0_pp_4_9, 
        s_Multiplier_0_3_10, s_Multiplier_0_3_9, co_t_Multiplier_0_4_1, 
        rego_o_11, rego_o_12, f_s_Multiplier_0_2_12, f_s_Multiplier_0_2_11, 
        s_Multiplier_0_3_12, s_Multiplier_0_3_11, co_t_Multiplier_0_4_2, 
        rego_o_13, rego_o_14, f_s_Multiplier_0_2_14, f_s_Multiplier_0_2_13, 
        s_Multiplier_0_3_14, s_Multiplier_0_3_13, co_t_Multiplier_0_4_3, 
        rego_o_15, rego_o_16, f_s_Multiplier_0_2_16, f_s_Multiplier_0_2_15, 
        s_Multiplier_0_3_16, s_Multiplier_0_3_15, co_t_Multiplier_0_4_4, 
        rego_o_17, rego_o_18, f_s_Multiplier_0_2_18, f_s_Multiplier_0_2_17, 
        s_Multiplier_0_3_18, s_Multiplier_0_3_17, co_t_Multiplier_0_4_5, 
        rego_o_19, rego_o_20, f_s_Multiplier_0_2_20, f_s_Multiplier_0_2_19, 
        s_Multiplier_0_3_20, s_Multiplier_0_3_19, co_t_Multiplier_0_4_6, 
        rego_o_21, rego_o_22, f_s_Multiplier_0_2_22, f_s_Multiplier_0_2_21, 
        s_Multiplier_0_3_22, s_Multiplier_0_3_21, co_t_Multiplier_0_4_7, 
        rego_o_23, f_s_Multiplier_0_2_23, s_Multiplier_0_3_23, co_t_Multiplier_0_4_8, 
        Multiplier_0_pp_0_2, Multiplier_0_pp_0_1, Multiplier_0_cin_lr_0, 
        Multiplier_0_pp_0_4, Multiplier_0_pp_0_3, mco, Multiplier_0_pp_0_6, 
        Multiplier_0_pp_0_5, mco_1, Multiplier_0_pp_0_8, Multiplier_0_pp_0_7, 
        mco_2, Multiplier_0_pp_0_10, Multiplier_0_pp_0_9, mco_3, regb_b_0, 
        mfco, Multiplier_0_pp_0_12, Multiplier_0_pp_0_11, mco_4, regb_b_1, 
        Multiplier_0_mult_0_5_n1, Multiplier_0_mult_0_5_n2, Multiplier_0_pp_1_4, 
        Multiplier_0_pp_1_3, Multiplier_0_cin_lr_2, Multiplier_0_pp_1_6, 
        Multiplier_0_pp_1_5, mco_5, Multiplier_0_pp_1_8, Multiplier_0_pp_1_7, 
        mco_6, Multiplier_0_pp_1_10, Multiplier_0_pp_1_9, mco_7, Multiplier_0_pp_1_12, 
        Multiplier_0_pp_1_11, mco_8, mfco_1, Multiplier_0_pp_1_14, Multiplier_0_pp_1_13, 
        mco_9, regb_b_2, regb_b_3, Multiplier_0_mult_2_5_n1, Multiplier_0_mult_2_5_n2, 
        Multiplier_0_pp_2_6, Multiplier_0_pp_2_5, Multiplier_0_cin_lr_4, 
        Multiplier_0_pp_2_8, Multiplier_0_pp_2_7, mco_10, Multiplier_0_pp_2_10, 
        Multiplier_0_pp_2_9, mco_11, Multiplier_0_pp_2_12, Multiplier_0_pp_2_11, 
        mco_12, Multiplier_0_pp_2_14, Multiplier_0_pp_2_13, mco_13, 
        mfco_2, Multiplier_0_pp_2_16, Multiplier_0_pp_2_15, mco_14, 
        regb_b_4, regb_b_5, Multiplier_0_mult_4_5_n1, Multiplier_0_mult_4_5_n2, 
        Multiplier_0_pp_3_8, Multiplier_0_pp_3_7, Multiplier_0_cin_lr_6, 
        Multiplier_0_pp_3_10, Multiplier_0_pp_3_9, mco_15, Multiplier_0_pp_3_12, 
        Multiplier_0_pp_3_11, mco_16, Multiplier_0_pp_3_14, Multiplier_0_pp_3_13, 
        mco_17, Multiplier_0_pp_3_16, Multiplier_0_pp_3_15, mco_18, 
        mfco_3, Multiplier_0_pp_3_18, Multiplier_0_pp_3_17, mco_19, 
        regb_b_6, regb_b_7, Multiplier_0_mult_6_5_n1, Multiplier_0_mult_6_5_n2, 
        Multiplier_0_pp_4_10, Multiplier_0_pp_4_9, Multiplier_0_cin_lr_8, 
        rega_a_0, Multiplier_0_pp_4_12, Multiplier_0_pp_4_11, mco_20, 
        Multiplier_0_pp_4_14, Multiplier_0_pp_4_13, mco_21, Multiplier_0_pp_4_16, 
        Multiplier_0_pp_4_15, mco_22, Multiplier_0_pp_4_18, Multiplier_0_pp_4_17, 
        mco_23, mfco_4, Multiplier_0_pp_4_20, Multiplier_0_pp_4_19, 
        mco_24, regb_b_8, regb_b_9, Multiplier_0_mult_8_5_n1, Multiplier_0_mult_8_5_n2, 
        Multiplier_0_pp_5_12, Multiplier_0_pp_5_11, Multiplier_0_cin_lr_10, 
        rega_a_2, Multiplier_0_mult_10_0_n1, rega_a_1, Multiplier_0_mult_10_0_n0, 
        Multiplier_0_pp_5_14, Multiplier_0_pp_5_13, mco_25, rega_a_4, 
        Multiplier_0_mult_10_1_n1, rega_a_3, Multiplier_0_mult_10_1_n0, 
        Multiplier_0_pp_5_16, Multiplier_0_pp_5_15, mco_26, rega_a_6, 
        Multiplier_0_mult_10_2_n1, rega_a_5, Multiplier_0_mult_10_2_n0, 
        Multiplier_0_pp_5_18, Multiplier_0_pp_5_17, mco_27, rega_a_8, 
        Multiplier_0_mult_10_3_n1, rega_a_7, Multiplier_0_mult_10_3_n0, 
        Multiplier_0_pp_5_20, Multiplier_0_pp_5_19, mco_28, rega_a_10, 
        Multiplier_0_mult_10_4_n1, rega_a_9, Multiplier_0_mult_10_4_n0, 
        mfco_5, Multiplier_0_pp_5_22, Multiplier_0_pp_5_21, mco_29, 
        regb_b_10, regb_b_11, scuba_vhi, scuba_vlo, rega_a_11, Multiplier_0_mult_10_5_n2, 
        Multiplier_0_mult_10_5_n0;
    
    ND2 ND2_t25 (.A(rega_a_11), .B(regb_b_1), .Z(Multiplier_0_mult_0_5_n1)) /* synthesis syn_instantiated=1 */ ;
    AND2 AND2_t24 (.A(rega_a_0), .B(regb_b_2), .Z(Multiplier_0_pp_1_2)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(382[10:72])
    ND2 ND2_t22 (.A(rega_a_11), .B(regb_b_3), .Z(Multiplier_0_mult_2_5_n1)) /* synthesis syn_instantiated=1 */ ;
    AND2 AND2_t21 (.A(rega_a_0), .B(regb_b_4), .Z(Multiplier_0_pp_2_4)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(388[10:72])
    ND2 ND2_t19 (.A(rega_a_11), .B(regb_b_5), .Z(Multiplier_0_mult_4_5_n1)) /* synthesis syn_instantiated=1 */ ;
    AND2 AND2_t18 (.A(rega_a_0), .B(regb_b_6), .Z(Multiplier_0_pp_3_6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(394[10:72])
    ND2 ND2_t16 (.A(rega_a_11), .B(regb_b_7), .Z(Multiplier_0_mult_6_5_n1)) /* synthesis syn_instantiated=1 */ ;
    AND2 AND2_t15 (.A(rega_a_0), .B(regb_b_8), .Z(Multiplier_0_pp_4_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(400[10:72])
    ND2 ND2_t13 (.A(rega_a_11), .B(regb_b_9), .Z(Multiplier_0_mult_8_5_n1)) /* synthesis syn_instantiated=1 */ ;
    AND2 AND2_t12 (.A(rega_a_0), .B(regb_b_10), .Z(Multiplier_0_pp_5_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(406[10:74])
    ND2 ND2_t10 (.A(rega_a_0), .B(regb_b_11), .Z(Multiplier_0_mult_10_0_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t9 (.A(rega_a_3), .B(regb_b_11), .Z(Multiplier_0_mult_10_1_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t8 (.A(rega_a_2), .B(regb_b_11), .Z(Multiplier_0_mult_10_1_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t7 (.A(rega_a_5), .B(regb_b_11), .Z(Multiplier_0_mult_10_2_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t6 (.A(rega_a_4), .B(regb_b_11), .Z(Multiplier_0_mult_10_2_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t5 (.A(rega_a_7), .B(regb_b_11), .Z(Multiplier_0_mult_10_3_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t4 (.A(rega_a_6), .B(regb_b_11), .Z(Multiplier_0_mult_10_3_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t3 (.A(rega_a_9), .B(regb_b_11), .Z(Multiplier_0_mult_10_4_n1)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t2 (.A(rega_a_8), .B(regb_b_11), .Z(Multiplier_0_mult_10_4_n0)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t1 (.A(rega_a_11), .B(regb_b_10), .Z(Multiplier_0_mult_10_5_n2)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t0 (.A(rega_a_10), .B(regb_b_11), .Z(Multiplier_0_mult_10_5_n0)) /* synthesis syn_instantiated=1 */ ;
    FD1P3DX FF_99 (.D(DataA[0]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(432[13:82])
    defparam FF_99.GSR = "ENABLED";
    FD1P3DX FF_98 (.D(DataA[1]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(435[13:82])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(DataA[2]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(438[13:82])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(DataA[3]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(441[13:82])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(DataA[4]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(444[13:82])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(DataA[5]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(447[13:82])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(DataA[6]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(450[13:82])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(DataA[7]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(453[13:82])
    defparam FF_92.GSR = "ENABLED";
    FD1P3DX FF_91 (.D(DataA[8]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(456[13:82])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(DataA[9]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(459[13:82])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(DataA[10]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(462[13:84])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(DataA[11]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rega_a_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(465[13:84])
    defparam FF_88.GSR = "ENABLED";
    FD1P3DX FF_87 (.D(DataB[0]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(468[13:82])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(DataB[1]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(471[13:82])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(DataB[2]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(474[13:82])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(DataB[3]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(477[13:82])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(DataB[4]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(480[13:82])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(DataB[5]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(483[13:82])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(DataB[6]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(486[13:82])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(DataB[7]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(489[13:82])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(DataB[8]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(492[13:82])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(DataB[9]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(495[13:82])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(DataB[10]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(498[13:84])
    defparam FF_77.GSR = "ENABLED";
    FD1P3DX FF_76 (.D(DataB[11]), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(regb_b_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(501[13:84])
    defparam FF_76.GSR = "ENABLED";
    FD1P3DX FF_75 (.D(rego_o_0), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(504[13:83])
    defparam FF_75.GSR = "ENABLED";
    FD1P3DX FF_74 (.D(rego_o_1), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(507[13:83])
    defparam FF_74.GSR = "ENABLED";
    FD1P3DX FF_73 (.D(rego_o_2), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(510[13:83])
    defparam FF_73.GSR = "ENABLED";
    FD1P3DX FF_72 (.D(rego_o_3), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(513[13:83])
    defparam FF_72.GSR = "ENABLED";
    FD1P3DX FF_71 (.D(rego_o_4), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(516[13:83])
    defparam FF_71.GSR = "ENABLED";
    FD1P3DX FF_70 (.D(rego_o_5), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(519[13:83])
    defparam FF_70.GSR = "ENABLED";
    FD1P3DX FF_69 (.D(rego_o_6), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(522[13:83])
    defparam FF_69.GSR = "ENABLED";
    FD1P3DX FF_68 (.D(rego_o_7), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(525[13:83])
    defparam FF_68.GSR = "ENABLED";
    FD1P3DX FF_67 (.D(rego_o_8), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(528[13:83])
    defparam FF_67.GSR = "ENABLED";
    FD1P3DX FF_66 (.D(rego_o_9), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(531[13:83])
    defparam FF_66.GSR = "ENABLED";
    FD1P3DX FF_65 (.D(rego_o_10), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[10])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(534[13:85])
    defparam FF_65.GSR = "ENABLED";
    FD1P3DX FF_64 (.D(rego_o_11), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[11])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(537[13:85])
    defparam FF_64.GSR = "ENABLED";
    FD1P3DX FF_63 (.D(rego_o_12), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[12])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(540[13:85])
    defparam FF_63.GSR = "ENABLED";
    FD1P3DX FF_62 (.D(rego_o_13), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[13])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(543[13:85])
    defparam FF_62.GSR = "ENABLED";
    FD1P3DX FF_61 (.D(rego_o_14), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[14])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(546[13:85])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(rego_o_15), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[15])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(549[13:85])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(rego_o_16), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[16])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(552[13:85])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(rego_o_17), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[17])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(555[13:85])
    defparam FF_58.GSR = "ENABLED";
    FD1P3DX FF_57 (.D(rego_o_18), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[18])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(558[13:85])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(rego_o_19), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[19])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(561[13:85])
    defparam FF_56.GSR = "ENABLED";
    FD1P3DX FF_55 (.D(rego_o_20), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[20])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(564[13:85])
    defparam FF_55.GSR = "ENABLED";
    FD1P3DX FF_54 (.D(rego_o_21), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[21])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(567[13:85])
    defparam FF_54.GSR = "ENABLED";
    FD1P3DX FF_53 (.D(rego_o_22), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[22])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(570[13:85])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(rego_o_23), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(Result[23])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(573[13:85])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(Multiplier_0_pp_0_0), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rego_o_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(576[13] 577[35])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(Multiplier_0_pp_0_1), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rego_o_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(580[13] 581[35])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(s_Multiplier_0_0_2), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rego_o_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(584[13] 585[34])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(s_Multiplier_0_0_3), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(rego_o_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(588[13] 589[34])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(s_Multiplier_0_0_4), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(592[13] 593[34])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(s_Multiplier_0_0_5), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(596[13] 597[34])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(s_Multiplier_0_0_6), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(600[13] 601[34])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(s_Multiplier_0_0_7), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(604[13] 605[34])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(s_Multiplier_0_0_8), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(608[13] 609[34])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(s_Multiplier_0_0_9), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(612[13] 613[34])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(s_Multiplier_0_0_10), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(616[13] 617[35])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(s_Multiplier_0_0_11), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(620[13] 621[35])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(s_Multiplier_0_0_12), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(624[13] 625[35])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(s_Multiplier_0_0_13), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(628[13] 629[35])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(s_Multiplier_0_0_14), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(632[13] 633[35])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(s_Multiplier_0_0_15), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_15)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(636[13] 637[35])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(s_Multiplier_0_0_16), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_16)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(640[13] 641[35])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(s_Multiplier_0_0_17), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_0_17)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(644[13] 645[35])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(Multiplier_0_pp_2_4), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_Multiplier_0_pp_2_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(648[13] 649[35])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(Multiplier_0_pp_2_5), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_Multiplier_0_pp_2_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(652[13] 653[35])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(s_Multiplier_0_1_6), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(656[13] 657[34])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(s_Multiplier_0_1_7), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(660[13] 661[34])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(s_Multiplier_0_1_8), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(664[13] 665[34])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(s_Multiplier_0_1_9), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(668[13] 669[34])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(s_Multiplier_0_1_10), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(672[13] 673[35])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(s_Multiplier_0_1_11), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(676[13] 677[35])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(s_Multiplier_0_1_12), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(680[13] 681[35])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(s_Multiplier_0_1_13), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(684[13] 685[35])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(s_Multiplier_0_1_14), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(688[13] 689[35])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(s_Multiplier_0_1_15), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_15)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(692[13] 693[35])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(s_Multiplier_0_1_16), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_16)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(696[13] 697[35])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(s_Multiplier_0_1_17), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_17)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(700[13] 701[35])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(s_Multiplier_0_1_18), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_18)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(704[13] 705[35])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(s_Multiplier_0_1_19), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_19)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(708[13] 709[35])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(s_Multiplier_0_1_20), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(712[13] 713[35])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(s_Multiplier_0_1_21), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_1_21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(716[13] 717[35])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(Multiplier_0_pp_4_8), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_Multiplier_0_pp_4_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(720[13] 721[35])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(Multiplier_0_pp_4_9), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_Multiplier_0_pp_4_9)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(724[13] 725[35])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(s_Multiplier_0_2_10), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_10)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(728[13] 729[35])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(s_Multiplier_0_2_11), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_11)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(732[13] 733[35])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(s_Multiplier_0_2_12), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_12)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(736[13] 737[35])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(s_Multiplier_0_2_13), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_13)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(740[13] 741[35])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(s_Multiplier_0_2_14), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_14)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(744[13] 745[35])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(s_Multiplier_0_2_15), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_15)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(748[13] 749[35])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(s_Multiplier_0_2_16), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_16)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(752[13] 753[35])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(s_Multiplier_0_2_17), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_17)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(756[13] 757[35])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(s_Multiplier_0_2_18), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_18)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(760[13] 761[35])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(s_Multiplier_0_2_19), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_19)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(764[13] 765[35])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(s_Multiplier_0_2_20), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(768[13] 769[35])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(s_Multiplier_0_2_21), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(772[13] 773[35])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(s_Multiplier_0_2_22), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(776[13] 777[35])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(s_Multiplier_0_2_23), .SP(ClkEn), .CK(Clock), .CD(Aclr), 
            .Q(f_s_Multiplier_0_2_23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(780[13] 781[35])
    defparam FF_0.GSR = "ENABLED";
    CCU2C Multiplier_0_cin_lr_add_0 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(Multiplier_0_cin_lr_0)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(788[11] 790[76])
    defparam Multiplier_0_cin_lr_add_0.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_0.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_0.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_0_6 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(mfco), .S0(Multiplier_0_pp_0_13)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(796[11] 798[79])
    defparam Multiplier_0_Cadd_0_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_0_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_0_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_0_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_2 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(Multiplier_0_cin_lr_2)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(804[11] 806[76])
    defparam Multiplier_0_cin_lr_add_2.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_2.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_2.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_2_6 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(mfco_1), .S0(Multiplier_0_pp_1_15)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(812[11] 815[17])
    defparam Multiplier_0_Cadd_2_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_2_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_2_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_2_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_4 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(Multiplier_0_cin_lr_4)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(821[11] 823[76])
    defparam Multiplier_0_cin_lr_add_4.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_4.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_4.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_4_6 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(mfco_2), .S0(Multiplier_0_pp_2_17)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(829[11] 832[17])
    defparam Multiplier_0_Cadd_4_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_4_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_4_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_4_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_6 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(Multiplier_0_cin_lr_6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(838[11] 840[76])
    defparam Multiplier_0_cin_lr_add_6.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_6.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_6.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_6_6 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(mfco_3), .S0(Multiplier_0_pp_3_19)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(846[11] 849[17])
    defparam Multiplier_0_Cadd_6_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_6_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_6_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_6_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_8 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(Multiplier_0_cin_lr_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(855[11] 857[76])
    defparam Multiplier_0_cin_lr_add_8.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_8.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_8.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_8.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_8_6 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(mfco_4), .S0(Multiplier_0_pp_4_21)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(863[11] 866[17])
    defparam Multiplier_0_Cadd_8_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_8_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_8_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_8_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_cin_lr_add_10 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(Multiplier_0_cin_lr_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(872[11] 874[77])
    defparam Multiplier_0_cin_lr_add_10.INIT0 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_10.INIT1 = 16'b0000000000000000;
    defparam Multiplier_0_cin_lr_add_10.INJECT1_0 = "NO";
    defparam Multiplier_0_cin_lr_add_10.INJECT1_1 = "NO";
    CCU2C Multiplier_0_Cadd_10_6 (.A0(scuba_vhi), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(mfco_5), .S0(Multiplier_0_pp_5_23)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(880[11] 883[17])
    defparam Multiplier_0_Cadd_10_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_10_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_Cadd_10_6.INJECT1_0 = "NO";
    defparam Multiplier_0_Cadd_10_6.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_0_1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(Multiplier_0_pp_0_2), .B1(Multiplier_0_pp_1_2), 
          .C1(scuba_vhi), .D1(scuba_vhi), .COUT(co_Multiplier_0_0_1), 
          .S1(s_Multiplier_0_0_2)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(889[11] 892[36])
    defparam Cadd_Multiplier_0_0_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_0_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_2 (.A0(Multiplier_0_pp_0_3), .B0(Multiplier_0_pp_1_3), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_0_4), .B1(Multiplier_0_pp_1_4), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_0_1), .COUT(co_Multiplier_0_0_2), 
          .S0(s_Multiplier_0_0_3), .S1(s_Multiplier_0_0_4)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(898[11] 901[86])
    defparam Multiplier_0_add_0_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_3 (.A0(Multiplier_0_pp_0_5), .B0(Multiplier_0_pp_1_5), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_0_6), .B1(Multiplier_0_pp_1_6), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_0_2), .COUT(co_Multiplier_0_0_3), 
          .S0(s_Multiplier_0_0_5), .S1(s_Multiplier_0_0_6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(907[11] 910[86])
    defparam Multiplier_0_add_0_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_4 (.A0(Multiplier_0_pp_0_7), .B0(Multiplier_0_pp_1_7), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_0_8), .B1(Multiplier_0_pp_1_8), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_0_3), .COUT(co_Multiplier_0_0_4), 
          .S0(s_Multiplier_0_0_7), .S1(s_Multiplier_0_0_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(916[11] 919[86])
    defparam Multiplier_0_add_0_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_5 (.A0(Multiplier_0_pp_0_9), .B0(Multiplier_0_pp_1_9), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_0_10), .B1(Multiplier_0_pp_1_10), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_0_4), .COUT(co_Multiplier_0_0_5), 
          .S0(s_Multiplier_0_0_9), .S1(s_Multiplier_0_0_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(925[11] 928[87])
    defparam Multiplier_0_add_0_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_6 (.A0(Multiplier_0_pp_0_11), .B0(Multiplier_0_pp_1_11), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_0_12), .B1(Multiplier_0_pp_1_12), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_0_5), .COUT(co_Multiplier_0_0_6), 
          .S0(s_Multiplier_0_0_11), .S1(s_Multiplier_0_0_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(934[11] 937[88])
    defparam Multiplier_0_add_0_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_7 (.A0(Multiplier_0_pp_0_13), .B0(Multiplier_0_pp_1_13), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(Multiplier_0_pp_1_14), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_0_6), .COUT(co_Multiplier_0_0_7), 
          .S0(s_Multiplier_0_0_13), .S1(s_Multiplier_0_0_14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(943[11] 946[88])
    defparam Multiplier_0_add_0_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_0_8 (.A0(scuba_vlo), .B0(Multiplier_0_pp_1_15), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_0_7), .COUT(co_Multiplier_0_0_8), 
          .S0(s_Multiplier_0_0_15), .S1(s_Multiplier_0_0_16)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(952[11] 955[62])
    defparam Multiplier_0_add_0_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_0_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_0_8.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_0_9 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co_Multiplier_0_0_8), .S0(s_Multiplier_0_0_17)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(961[11] 964[24])
    defparam Cadd_Multiplier_0_0_9.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_9.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_0_9.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_0_9.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_1_1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(Multiplier_0_pp_2_6), .B1(Multiplier_0_pp_3_6), 
          .C1(scuba_vhi), .D1(scuba_vhi), .COUT(co_Multiplier_0_1_1), 
          .S1(s_Multiplier_0_1_6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(970[11] 973[36])
    defparam Cadd_Multiplier_0_1_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_1_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_2 (.A0(Multiplier_0_pp_2_7), .B0(Multiplier_0_pp_3_7), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_2_8), .B1(Multiplier_0_pp_3_8), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_1_1), .COUT(co_Multiplier_0_1_2), 
          .S0(s_Multiplier_0_1_7), .S1(s_Multiplier_0_1_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(979[11] 982[86])
    defparam Multiplier_0_add_1_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_3 (.A0(Multiplier_0_pp_2_9), .B0(Multiplier_0_pp_3_9), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_2_10), .B1(Multiplier_0_pp_3_10), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_1_2), .COUT(co_Multiplier_0_1_3), 
          .S0(s_Multiplier_0_1_9), .S1(s_Multiplier_0_1_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(988[11] 991[87])
    defparam Multiplier_0_add_1_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_4 (.A0(Multiplier_0_pp_2_11), .B0(Multiplier_0_pp_3_11), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_2_12), .B1(Multiplier_0_pp_3_12), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_1_3), .COUT(co_Multiplier_0_1_4), 
          .S0(s_Multiplier_0_1_11), .S1(s_Multiplier_0_1_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(997[11] 1000[88])
    defparam Multiplier_0_add_1_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_5 (.A0(Multiplier_0_pp_2_13), .B0(Multiplier_0_pp_3_13), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_2_14), .B1(Multiplier_0_pp_3_14), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_1_4), .COUT(co_Multiplier_0_1_5), 
          .S0(s_Multiplier_0_1_13), .S1(s_Multiplier_0_1_14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1006[11] 1009[88])
    defparam Multiplier_0_add_1_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_6 (.A0(Multiplier_0_pp_2_15), .B0(Multiplier_0_pp_3_15), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_2_16), .B1(Multiplier_0_pp_3_16), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_1_5), .COUT(co_Multiplier_0_1_6), 
          .S0(s_Multiplier_0_1_15), .S1(s_Multiplier_0_1_16)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1015[11] 1018[88])
    defparam Multiplier_0_add_1_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_7 (.A0(Multiplier_0_pp_2_17), .B0(Multiplier_0_pp_3_17), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(Multiplier_0_pp_3_18), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_1_6), .COUT(co_Multiplier_0_1_7), 
          .S0(s_Multiplier_0_1_17), .S1(s_Multiplier_0_1_18)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1024[11] 1027[88])
    defparam Multiplier_0_add_1_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_1_8 (.A0(scuba_vlo), .B0(Multiplier_0_pp_3_19), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_1_7), .COUT(co_Multiplier_0_1_8), 
          .S0(s_Multiplier_0_1_19), .S1(s_Multiplier_0_1_20)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1033[11] 1036[62])
    defparam Multiplier_0_add_1_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_1_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_1_8.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_1_9 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co_Multiplier_0_1_8), .S0(s_Multiplier_0_1_21)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1042[11] 1045[24])
    defparam Cadd_Multiplier_0_1_9.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_9.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_1_9.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_1_9.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_2_1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(Multiplier_0_pp_4_10), .B1(Multiplier_0_pp_5_10), 
          .C1(scuba_vhi), .D1(scuba_vhi), .COUT(co_Multiplier_0_2_1), 
          .S1(s_Multiplier_0_2_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1051[11] 1054[36])
    defparam Cadd_Multiplier_0_2_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_2_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_2_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_2_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_2 (.A0(Multiplier_0_pp_4_11), .B0(Multiplier_0_pp_5_11), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_4_12), .B1(Multiplier_0_pp_5_12), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_2_1), .COUT(co_Multiplier_0_2_2), 
          .S0(s_Multiplier_0_2_11), .S1(s_Multiplier_0_2_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1060[11] 1063[88])
    defparam Multiplier_0_add_2_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_3 (.A0(Multiplier_0_pp_4_13), .B0(Multiplier_0_pp_5_13), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_4_14), .B1(Multiplier_0_pp_5_14), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_2_2), .COUT(co_Multiplier_0_2_3), 
          .S0(s_Multiplier_0_2_13), .S1(s_Multiplier_0_2_14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1069[11] 1072[88])
    defparam Multiplier_0_add_2_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_4 (.A0(Multiplier_0_pp_4_15), .B0(Multiplier_0_pp_5_15), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_4_16), .B1(Multiplier_0_pp_5_16), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_2_3), .COUT(co_Multiplier_0_2_4), 
          .S0(s_Multiplier_0_2_15), .S1(s_Multiplier_0_2_16)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1078[11] 1081[88])
    defparam Multiplier_0_add_2_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_5 (.A0(Multiplier_0_pp_4_17), .B0(Multiplier_0_pp_5_17), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_4_18), .B1(Multiplier_0_pp_5_18), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_2_4), .COUT(co_Multiplier_0_2_5), 
          .S0(s_Multiplier_0_2_17), .S1(s_Multiplier_0_2_18)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1087[11] 1090[88])
    defparam Multiplier_0_add_2_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_6 (.A0(Multiplier_0_pp_4_19), .B0(Multiplier_0_pp_5_19), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(Multiplier_0_pp_4_20), .B1(Multiplier_0_pp_5_20), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_2_5), .COUT(co_Multiplier_0_2_6), 
          .S0(s_Multiplier_0_2_19), .S1(s_Multiplier_0_2_20)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1096[11] 1099[88])
    defparam Multiplier_0_add_2_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_7 (.A0(Multiplier_0_pp_4_21), .B0(Multiplier_0_pp_5_21), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(Multiplier_0_pp_5_22), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_2_6), .COUT(co_Multiplier_0_2_7), 
          .S0(s_Multiplier_0_2_21), .S1(s_Multiplier_0_2_22)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1105[11] 1108[88])
    defparam Multiplier_0_add_2_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_2_8 (.A0(scuba_vlo), .B0(Multiplier_0_pp_5_23), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_2_7), .S0(s_Multiplier_0_2_23)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1114[11] 1117[43])
    defparam Multiplier_0_add_2_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_2_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_2_8.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_3_1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(f_s_Multiplier_0_0_4), .B1(f_Multiplier_0_pp_2_4), 
          .C1(scuba_vhi), .D1(scuba_vhi), .COUT(co_Multiplier_0_3_1), 
          .S1(rego_o_4)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1123[11] 1126[36])
    defparam Cadd_Multiplier_0_3_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_1.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_3_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_2 (.A0(f_s_Multiplier_0_0_5), .B0(f_Multiplier_0_pp_2_5), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(f_s_Multiplier_0_0_6), .B1(f_s_Multiplier_0_1_6), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_3_1), .COUT(co_Multiplier_0_3_2), 
          .S0(rego_o_5), .S1(rego_o_6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1132[11] 1135[86])
    defparam Multiplier_0_add_3_2.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_2.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_2.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_3 (.A0(f_s_Multiplier_0_0_7), .B0(f_s_Multiplier_0_1_7), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(f_s_Multiplier_0_0_8), .B1(f_s_Multiplier_0_1_8), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_3_2), .COUT(co_Multiplier_0_3_3), 
          .S0(rego_o_7), .S1(s_Multiplier_0_3_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1141[11] 1144[86])
    defparam Multiplier_0_add_3_3.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_3.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_3.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_4 (.A0(f_s_Multiplier_0_0_9), .B0(f_s_Multiplier_0_1_9), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(f_s_Multiplier_0_0_10), 
          .B1(f_s_Multiplier_0_1_10), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co_Multiplier_0_3_3), .COUT(co_Multiplier_0_3_4), .S0(s_Multiplier_0_3_9), 
          .S1(s_Multiplier_0_3_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1150[11] 1153[87])
    defparam Multiplier_0_add_3_4.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_4.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_4.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_5 (.A0(f_s_Multiplier_0_0_11), .B0(f_s_Multiplier_0_1_11), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(f_s_Multiplier_0_0_12), 
          .B1(f_s_Multiplier_0_1_12), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co_Multiplier_0_3_4), .COUT(co_Multiplier_0_3_5), .S0(s_Multiplier_0_3_11), 
          .S1(s_Multiplier_0_3_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1159[11] 1162[88])
    defparam Multiplier_0_add_3_5.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_5.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_5.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_6 (.A0(f_s_Multiplier_0_0_13), .B0(f_s_Multiplier_0_1_13), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(f_s_Multiplier_0_0_14), 
          .B1(f_s_Multiplier_0_1_14), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co_Multiplier_0_3_5), .COUT(co_Multiplier_0_3_6), .S0(s_Multiplier_0_3_13), 
          .S1(s_Multiplier_0_3_14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1168[11] 1171[88])
    defparam Multiplier_0_add_3_6.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_6.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_6.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_6.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_7 (.A0(f_s_Multiplier_0_0_15), .B0(f_s_Multiplier_0_1_15), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(f_s_Multiplier_0_0_16), 
          .B1(f_s_Multiplier_0_1_16), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co_Multiplier_0_3_6), .COUT(co_Multiplier_0_3_7), .S0(s_Multiplier_0_3_15), 
          .S1(s_Multiplier_0_3_16)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1177[11] 1180[88])
    defparam Multiplier_0_add_3_7.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_7.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_7.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_7.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_8 (.A0(f_s_Multiplier_0_0_17), .B0(f_s_Multiplier_0_1_17), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(f_s_Multiplier_0_1_18), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_3_7), .COUT(co_Multiplier_0_3_8), 
          .S0(s_Multiplier_0_3_17), .S1(s_Multiplier_0_3_18)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1186[11] 1189[88])
    defparam Multiplier_0_add_3_8.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_8.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_8.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_8.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_9 (.A0(scuba_vlo), .B0(f_s_Multiplier_0_1_19), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(f_s_Multiplier_0_1_20), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_3_8), .COUT(co_Multiplier_0_3_9), 
          .S0(s_Multiplier_0_3_19), .S1(s_Multiplier_0_3_20)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1195[11] 1198[62])
    defparam Multiplier_0_add_3_9.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_9.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_9.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_9.INJECT1_1 = "NO";
    CCU2C Multiplier_0_add_3_10 (.A0(scuba_vlo), .B0(f_s_Multiplier_0_1_21), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_Multiplier_0_3_9), .COUT(co_Multiplier_0_3_10), 
          .S0(s_Multiplier_0_3_21), .S1(s_Multiplier_0_3_22)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1204[11] 1207[63])
    defparam Multiplier_0_add_3_10.INIT0 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_10.INIT1 = 16'b0110011010101010;
    defparam Multiplier_0_add_3_10.INJECT1_0 = "NO";
    defparam Multiplier_0_add_3_10.INJECT1_1 = "NO";
    CCU2C Cadd_Multiplier_0_3_11 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co_Multiplier_0_3_10), .S0(s_Multiplier_0_3_23)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1213[11] 1216[24])
    defparam Cadd_Multiplier_0_3_11.INIT0 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_11.INIT1 = 16'b0110011010101010;
    defparam Cadd_Multiplier_0_3_11.INJECT1_0 = "NO";
    defparam Cadd_Multiplier_0_3_11.INJECT1_1 = "NO";
    CCU2C Cadd_t_Multiplier_0_4_1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(s_Multiplier_0_3_8), .B1(f_Multiplier_0_pp_4_8), 
          .C1(scuba_vhi), .D1(scuba_vhi), .COUT(co_t_Multiplier_0_4_1), 
          .S1(rego_o_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1222[11] 1224[100])
    defparam Cadd_t_Multiplier_0_4_1.INIT0 = 16'b0110011010101010;
    defparam Cadd_t_Multiplier_0_4_1.INIT1 = 16'b0110011010101010;
    defparam Cadd_t_Multiplier_0_4_1.INJECT1_0 = "NO";
    defparam Cadd_t_Multiplier_0_4_1.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_2 (.A0(s_Multiplier_0_3_9), .B0(f_Multiplier_0_pp_4_9), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(s_Multiplier_0_3_10), .B1(f_s_Multiplier_0_2_10), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_Multiplier_0_4_1), 
          .COUT(co_t_Multiplier_0_4_2), .S0(rego_o_9), .S1(rego_o_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1230[11] 1233[69])
    defparam t_Multiplier_0_add_4_2.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_2.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_2.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_2.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_3 (.A0(s_Multiplier_0_3_11), .B0(f_s_Multiplier_0_2_11), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(s_Multiplier_0_3_12), .B1(f_s_Multiplier_0_2_12), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_Multiplier_0_4_2), 
          .COUT(co_t_Multiplier_0_4_3), .S0(rego_o_11), .S1(rego_o_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1239[11] 1242[70])
    defparam t_Multiplier_0_add_4_3.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_3.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_3.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_3.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_4 (.A0(s_Multiplier_0_3_13), .B0(f_s_Multiplier_0_2_13), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(s_Multiplier_0_3_14), .B1(f_s_Multiplier_0_2_14), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_Multiplier_0_4_3), 
          .COUT(co_t_Multiplier_0_4_4), .S0(rego_o_13), .S1(rego_o_14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1248[11] 1251[70])
    defparam t_Multiplier_0_add_4_4.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_4.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_4.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_4.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_5 (.A0(s_Multiplier_0_3_15), .B0(f_s_Multiplier_0_2_15), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(s_Multiplier_0_3_16), .B1(f_s_Multiplier_0_2_16), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_Multiplier_0_4_4), 
          .COUT(co_t_Multiplier_0_4_5), .S0(rego_o_15), .S1(rego_o_16)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1257[11] 1260[70])
    defparam t_Multiplier_0_add_4_5.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_5.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_5.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_5.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_6 (.A0(s_Multiplier_0_3_17), .B0(f_s_Multiplier_0_2_17), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(s_Multiplier_0_3_18), .B1(f_s_Multiplier_0_2_18), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_Multiplier_0_4_5), 
          .COUT(co_t_Multiplier_0_4_6), .S0(rego_o_17), .S1(rego_o_18)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1266[11] 1269[70])
    defparam t_Multiplier_0_add_4_6.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_6.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_6.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_6.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_7 (.A0(s_Multiplier_0_3_19), .B0(f_s_Multiplier_0_2_19), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(s_Multiplier_0_3_20), .B1(f_s_Multiplier_0_2_20), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_Multiplier_0_4_6), 
          .COUT(co_t_Multiplier_0_4_7), .S0(rego_o_19), .S1(rego_o_20)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1275[11] 1278[70])
    defparam t_Multiplier_0_add_4_7.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_7.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_7.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_7.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_8 (.A0(s_Multiplier_0_3_21), .B0(f_s_Multiplier_0_2_21), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(s_Multiplier_0_3_22), .B1(f_s_Multiplier_0_2_22), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_Multiplier_0_4_7), 
          .COUT(co_t_Multiplier_0_4_8), .S0(rego_o_21), .S1(rego_o_22)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1284[11] 1287[70])
    defparam t_Multiplier_0_add_4_8.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_8.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_8.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_8.INJECT1_1 = "NO";
    CCU2C t_Multiplier_0_add_4_9 (.A0(s_Multiplier_0_3_23), .B0(f_s_Multiplier_0_2_23), 
          .C0(scuba_vhi), .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(co_t_Multiplier_0_4_8), 
          .S0(rego_o_23)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1293[11] 1296[45])
    defparam t_Multiplier_0_add_4_9.INIT0 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_9.INIT1 = 16'b0110011010101010;
    defparam t_Multiplier_0_add_4_9.INJECT1_0 = "NO";
    defparam t_Multiplier_0_add_4_9.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_0 (.A0(rega_a_0), .B0(regb_b_1), .C0(rega_a_1), 
          .D0(regb_b_0), .A1(rega_a_1), .B1(regb_b_1), .C1(rega_a_2), 
          .D1(regb_b_0), .CIN(Multiplier_0_cin_lr_0), .COUT(mco), .S0(Multiplier_0_pp_0_1), 
          .S1(Multiplier_0_pp_0_2)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1302[11] 1305[20])
    defparam Multiplier_0_mult_0_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_1 (.A0(rega_a_2), .B0(regb_b_1), .C0(rega_a_3), 
          .D0(regb_b_0), .A1(rega_a_3), .B1(regb_b_1), .C1(rega_a_4), 
          .D1(regb_b_0), .CIN(mco), .COUT(mco_1), .S0(Multiplier_0_pp_0_3), 
          .S1(Multiplier_0_pp_0_4)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1311[11] 1313[85])
    defparam Multiplier_0_mult_0_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_2 (.A0(rega_a_4), .B0(regb_b_1), .C0(rega_a_5), 
          .D0(regb_b_0), .A1(rega_a_5), .B1(regb_b_1), .C1(rega_a_6), 
          .D1(regb_b_0), .CIN(mco_1), .COUT(mco_2), .S0(Multiplier_0_pp_0_5), 
          .S1(Multiplier_0_pp_0_6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1319[11] 1322[22])
    defparam Multiplier_0_mult_0_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_3 (.A0(rega_a_6), .B0(regb_b_1), .C0(rega_a_7), 
          .D0(regb_b_0), .A1(rega_a_7), .B1(regb_b_1), .C1(rega_a_8), 
          .D1(regb_b_0), .CIN(mco_2), .COUT(mco_3), .S0(Multiplier_0_pp_0_7), 
          .S1(Multiplier_0_pp_0_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1328[11] 1331[22])
    defparam Multiplier_0_mult_0_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_4 (.A0(rega_a_8), .B0(regb_b_1), .C0(rega_a_9), 
          .D0(regb_b_0), .A1(rega_a_9), .B1(regb_b_1), .C1(rega_a_10), 
          .D1(regb_b_0), .CIN(mco_3), .COUT(mco_4), .S0(Multiplier_0_pp_0_9), 
          .S1(Multiplier_0_pp_0_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1337[11] 1340[22])
    defparam Multiplier_0_mult_0_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_0_5 (.A0(rega_a_10), .B0(regb_b_1), .C0(Multiplier_0_mult_0_5_n2), 
          .D0(scuba_vhi), .A1(Multiplier_0_mult_0_5_n1), .B1(scuba_vhi), 
          .C1(scuba_vhi), .D1(scuba_vhi), .CIN(mco_4), .COUT(mfco), 
          .S0(Multiplier_0_pp_0_11), .S1(Multiplier_0_pp_0_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1346[11] 1349[48])
    defparam Multiplier_0_mult_0_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_0_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_0_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_0 (.A0(rega_a_0), .B0(regb_b_3), .C0(rega_a_1), 
          .D0(regb_b_2), .A1(rega_a_1), .B1(regb_b_3), .C1(rega_a_2), 
          .D1(regb_b_2), .CIN(Multiplier_0_cin_lr_2), .COUT(mco_5), .S0(Multiplier_0_pp_1_3), 
          .S1(Multiplier_0_pp_1_4)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1355[11] 1358[22])
    defparam Multiplier_0_mult_2_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_1 (.A0(rega_a_2), .B0(regb_b_3), .C0(rega_a_3), 
          .D0(regb_b_2), .A1(rega_a_3), .B1(regb_b_3), .C1(rega_a_4), 
          .D1(regb_b_2), .CIN(mco_5), .COUT(mco_6), .S0(Multiplier_0_pp_1_5), 
          .S1(Multiplier_0_pp_1_6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1364[11] 1367[22])
    defparam Multiplier_0_mult_2_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_2 (.A0(rega_a_4), .B0(regb_b_3), .C0(rega_a_5), 
          .D0(regb_b_2), .A1(rega_a_5), .B1(regb_b_3), .C1(rega_a_6), 
          .D1(regb_b_2), .CIN(mco_6), .COUT(mco_7), .S0(Multiplier_0_pp_1_7), 
          .S1(Multiplier_0_pp_1_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1373[11] 1376[22])
    defparam Multiplier_0_mult_2_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_3 (.A0(rega_a_6), .B0(regb_b_3), .C0(rega_a_7), 
          .D0(regb_b_2), .A1(rega_a_7), .B1(regb_b_3), .C1(rega_a_8), 
          .D1(regb_b_2), .CIN(mco_7), .COUT(mco_8), .S0(Multiplier_0_pp_1_9), 
          .S1(Multiplier_0_pp_1_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1382[11] 1385[22])
    defparam Multiplier_0_mult_2_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_4 (.A0(rega_a_8), .B0(regb_b_3), .C0(rega_a_9), 
          .D0(regb_b_2), .A1(rega_a_9), .B1(regb_b_3), .C1(rega_a_10), 
          .D1(regb_b_2), .CIN(mco_8), .COUT(mco_9), .S0(Multiplier_0_pp_1_11), 
          .S1(Multiplier_0_pp_1_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1391[11] 1394[22])
    defparam Multiplier_0_mult_2_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_2_5 (.A0(rega_a_10), .B0(regb_b_3), .C0(Multiplier_0_mult_2_5_n2), 
          .D0(scuba_vhi), .A1(Multiplier_0_mult_2_5_n1), .B1(scuba_vhi), 
          .C1(scuba_vlo), .D1(regb_b_2), .CIN(mco_9), .COUT(mfco_1), 
          .S0(Multiplier_0_pp_1_13), .S1(Multiplier_0_pp_1_14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1400[11] 1403[50])
    defparam Multiplier_0_mult_2_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_2_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_2_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_0 (.A0(rega_a_0), .B0(regb_b_5), .C0(rega_a_1), 
          .D0(regb_b_4), .A1(rega_a_1), .B1(regb_b_5), .C1(rega_a_2), 
          .D1(regb_b_4), .CIN(Multiplier_0_cin_lr_4), .COUT(mco_10), .S0(Multiplier_0_pp_2_5), 
          .S1(Multiplier_0_pp_2_6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1409[11] 1412[23])
    defparam Multiplier_0_mult_4_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_1 (.A0(rega_a_2), .B0(regb_b_5), .C0(rega_a_3), 
          .D0(regb_b_4), .A1(rega_a_3), .B1(regb_b_5), .C1(rega_a_4), 
          .D1(regb_b_4), .CIN(mco_10), .COUT(mco_11), .S0(Multiplier_0_pp_2_7), 
          .S1(Multiplier_0_pp_2_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1418[11] 1421[23])
    defparam Multiplier_0_mult_4_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_2 (.A0(rega_a_4), .B0(regb_b_5), .C0(rega_a_5), 
          .D0(regb_b_4), .A1(rega_a_5), .B1(regb_b_5), .C1(rega_a_6), 
          .D1(regb_b_4), .CIN(mco_11), .COUT(mco_12), .S0(Multiplier_0_pp_2_9), 
          .S1(Multiplier_0_pp_2_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1427[11] 1430[23])
    defparam Multiplier_0_mult_4_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_3 (.A0(rega_a_6), .B0(regb_b_5), .C0(rega_a_7), 
          .D0(regb_b_4), .A1(rega_a_7), .B1(regb_b_5), .C1(rega_a_8), 
          .D1(regb_b_4), .CIN(mco_12), .COUT(mco_13), .S0(Multiplier_0_pp_2_11), 
          .S1(Multiplier_0_pp_2_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1436[11] 1439[23])
    defparam Multiplier_0_mult_4_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_4 (.A0(rega_a_8), .B0(regb_b_5), .C0(rega_a_9), 
          .D0(regb_b_4), .A1(rega_a_9), .B1(regb_b_5), .C1(rega_a_10), 
          .D1(regb_b_4), .CIN(mco_13), .COUT(mco_14), .S0(Multiplier_0_pp_2_13), 
          .S1(Multiplier_0_pp_2_14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1445[11] 1448[23])
    defparam Multiplier_0_mult_4_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_4_5 (.A0(rega_a_10), .B0(regb_b_5), .C0(Multiplier_0_mult_4_5_n2), 
          .D0(scuba_vhi), .A1(Multiplier_0_mult_4_5_n1), .B1(scuba_vhi), 
          .C1(scuba_vlo), .D1(regb_b_4), .CIN(mco_14), .COUT(mfco_2), 
          .S0(Multiplier_0_pp_2_15), .S1(Multiplier_0_pp_2_16)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1454[11] 1457[50])
    defparam Multiplier_0_mult_4_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_4_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_4_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_0 (.A0(rega_a_0), .B0(regb_b_7), .C0(rega_a_1), 
          .D0(regb_b_6), .A1(rega_a_1), .B1(regb_b_7), .C1(rega_a_2), 
          .D1(regb_b_6), .CIN(Multiplier_0_cin_lr_6), .COUT(mco_15), .S0(Multiplier_0_pp_3_7), 
          .S1(Multiplier_0_pp_3_8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1463[11] 1466[23])
    defparam Multiplier_0_mult_6_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_1 (.A0(rega_a_2), .B0(regb_b_7), .C0(rega_a_3), 
          .D0(regb_b_6), .A1(rega_a_3), .B1(regb_b_7), .C1(rega_a_4), 
          .D1(regb_b_6), .CIN(mco_15), .COUT(mco_16), .S0(Multiplier_0_pp_3_9), 
          .S1(Multiplier_0_pp_3_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1472[11] 1475[23])
    defparam Multiplier_0_mult_6_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_2 (.A0(rega_a_4), .B0(regb_b_7), .C0(rega_a_5), 
          .D0(regb_b_6), .A1(rega_a_5), .B1(regb_b_7), .C1(rega_a_6), 
          .D1(regb_b_6), .CIN(mco_16), .COUT(mco_17), .S0(Multiplier_0_pp_3_11), 
          .S1(Multiplier_0_pp_3_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1481[11] 1484[23])
    defparam Multiplier_0_mult_6_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_3 (.A0(rega_a_6), .B0(regb_b_7), .C0(rega_a_7), 
          .D0(regb_b_6), .A1(rega_a_7), .B1(regb_b_7), .C1(rega_a_8), 
          .D1(regb_b_6), .CIN(mco_17), .COUT(mco_18), .S0(Multiplier_0_pp_3_13), 
          .S1(Multiplier_0_pp_3_14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1490[11] 1493[23])
    defparam Multiplier_0_mult_6_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_4 (.A0(rega_a_8), .B0(regb_b_7), .C0(rega_a_9), 
          .D0(regb_b_6), .A1(rega_a_9), .B1(regb_b_7), .C1(rega_a_10), 
          .D1(regb_b_6), .CIN(mco_18), .COUT(mco_19), .S0(Multiplier_0_pp_3_15), 
          .S1(Multiplier_0_pp_3_16)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1499[11] 1502[23])
    defparam Multiplier_0_mult_6_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_6_5 (.A0(rega_a_10), .B0(regb_b_7), .C0(Multiplier_0_mult_6_5_n2), 
          .D0(scuba_vhi), .A1(Multiplier_0_mult_6_5_n1), .B1(scuba_vhi), 
          .C1(scuba_vlo), .D1(regb_b_6), .CIN(mco_19), .COUT(mfco_3), 
          .S0(Multiplier_0_pp_3_17), .S1(Multiplier_0_pp_3_18)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1508[11] 1511[50])
    defparam Multiplier_0_mult_6_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_6_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_6_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_0 (.A0(rega_a_0), .B0(regb_b_9), .C0(rega_a_1), 
          .D0(regb_b_8), .A1(rega_a_1), .B1(regb_b_9), .C1(rega_a_2), 
          .D1(regb_b_8), .CIN(Multiplier_0_cin_lr_8), .COUT(mco_20), .S0(Multiplier_0_pp_4_9), 
          .S1(Multiplier_0_pp_4_10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1517[11] 1520[23])
    defparam Multiplier_0_mult_8_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_1 (.A0(rega_a_2), .B0(regb_b_9), .C0(rega_a_3), 
          .D0(regb_b_8), .A1(rega_a_3), .B1(regb_b_9), .C1(rega_a_4), 
          .D1(regb_b_8), .CIN(mco_20), .COUT(mco_21), .S0(Multiplier_0_pp_4_11), 
          .S1(Multiplier_0_pp_4_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1526[11] 1529[23])
    defparam Multiplier_0_mult_8_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_2 (.A0(rega_a_4), .B0(regb_b_9), .C0(rega_a_5), 
          .D0(regb_b_8), .A1(rega_a_5), .B1(regb_b_9), .C1(rega_a_6), 
          .D1(regb_b_8), .CIN(mco_21), .COUT(mco_22), .S0(Multiplier_0_pp_4_13), 
          .S1(Multiplier_0_pp_4_14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1535[11] 1538[23])
    defparam Multiplier_0_mult_8_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_3 (.A0(rega_a_6), .B0(regb_b_9), .C0(rega_a_7), 
          .D0(regb_b_8), .A1(rega_a_7), .B1(regb_b_9), .C1(rega_a_8), 
          .D1(regb_b_8), .CIN(mco_22), .COUT(mco_23), .S0(Multiplier_0_pp_4_15), 
          .S1(Multiplier_0_pp_4_16)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1544[11] 1547[23])
    defparam Multiplier_0_mult_8_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_4 (.A0(rega_a_8), .B0(regb_b_9), .C0(rega_a_9), 
          .D0(regb_b_8), .A1(rega_a_9), .B1(regb_b_9), .C1(rega_a_10), 
          .D1(regb_b_8), .CIN(mco_23), .COUT(mco_24), .S0(Multiplier_0_pp_4_17), 
          .S1(Multiplier_0_pp_4_18)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1553[11] 1556[23])
    defparam Multiplier_0_mult_8_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_4.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_8_5 (.A0(rega_a_10), .B0(regb_b_9), .C0(Multiplier_0_mult_8_5_n2), 
          .D0(scuba_vhi), .A1(Multiplier_0_mult_8_5_n1), .B1(scuba_vhi), 
          .C1(scuba_vlo), .D1(regb_b_8), .CIN(mco_24), .COUT(mfco_4), 
          .S0(Multiplier_0_pp_4_19), .S1(Multiplier_0_pp_4_20)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1562[11] 1565[50])
    defparam Multiplier_0_mult_8_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_8_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_8_5.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_0 (.A0(Multiplier_0_mult_10_0_n0), .B0(scuba_vhi), 
          .C0(rega_a_1), .D0(regb_b_10), .A1(Multiplier_0_mult_10_0_n1), 
          .B1(scuba_vhi), .C1(rega_a_2), .D1(regb_b_10), .CIN(Multiplier_0_cin_lr_10), 
          .COUT(mco_25), .S0(Multiplier_0_pp_5_11), .S1(Multiplier_0_pp_5_12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1571[11] 1574[50])
    defparam Multiplier_0_mult_10_0.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_0.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_0.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_0.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_1 (.A0(Multiplier_0_mult_10_1_n0), .B0(scuba_vhi), 
          .C0(rega_a_3), .D0(regb_b_10), .A1(Multiplier_0_mult_10_1_n1), 
          .B1(scuba_vhi), .C1(rega_a_4), .D1(regb_b_10), .CIN(mco_25), 
          .COUT(mco_26), .S0(Multiplier_0_pp_5_13), .S1(Multiplier_0_pp_5_14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1580[11] 1583[23])
    defparam Multiplier_0_mult_10_1.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_1.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_1.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_1.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_2 (.A0(Multiplier_0_mult_10_2_n0), .B0(scuba_vhi), 
          .C0(rega_a_5), .D0(regb_b_10), .A1(Multiplier_0_mult_10_2_n1), 
          .B1(scuba_vhi), .C1(rega_a_6), .D1(regb_b_10), .CIN(mco_26), 
          .COUT(mco_27), .S0(Multiplier_0_pp_5_15), .S1(Multiplier_0_pp_5_16)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1589[11] 1592[23])
    defparam Multiplier_0_mult_10_2.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_2.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_2.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_2.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_3 (.A0(Multiplier_0_mult_10_3_n0), .B0(scuba_vhi), 
          .C0(rega_a_7), .D0(regb_b_10), .A1(Multiplier_0_mult_10_3_n1), 
          .B1(scuba_vhi), .C1(rega_a_8), .D1(regb_b_10), .CIN(mco_27), 
          .COUT(mco_28), .S0(Multiplier_0_pp_5_17), .S1(Multiplier_0_pp_5_18)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1598[11] 1601[23])
    defparam Multiplier_0_mult_10_3.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_3.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_3.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_3.INJECT1_1 = "NO";
    CCU2C Multiplier_0_mult_10_4 (.A0(Multiplier_0_mult_10_4_n0), .B0(scuba_vhi), 
          .C0(rega_a_9), .D0(regb_b_10), .A1(Multiplier_0_mult_10_4_n1), 
          .B1(scuba_vhi), .C1(rega_a_10), .D1(regb_b_10), .CIN(mco_28), 
          .COUT(mco_29), .S0(Multiplier_0_pp_5_19), .S1(Multiplier_0_pp_5_20)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1607[11] 1610[23])
    defparam Multiplier_0_mult_10_4.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_4.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_4.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_4.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C Multiplier_0_mult_10_5 (.A0(Multiplier_0_mult_10_5_n0), .B0(scuba_vhi), 
          .C0(Multiplier_0_mult_10_5_n2), .D0(scuba_vhi), .A1(rega_a_11), 
          .B1(regb_b_11), .C1(scuba_vlo), .D1(regb_b_10), .CIN(mco_29), 
          .COUT(mfco_5), .S0(Multiplier_0_pp_5_21), .S1(Multiplier_0_pp_5_22)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(1620[11] 1623[50])
    defparam Multiplier_0_mult_10_5.INIT0 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_5.INIT1 = 16'b0111100010001000;
    defparam Multiplier_0_mult_10_5.INJECT1_0 = "NO";
    defparam Multiplier_0_mult_10_5.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    AND2 AND2_t27 (.A(rega_a_0), .B(regb_b_0), .Z(Multiplier_0_pp_0_0)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/Multiplier/Multiplier.v(376[10:72])
    ND2 ND2_t26 (.A(rega_a_11), .B(regb_b_0), .Z(Multiplier_0_mult_0_5_n2)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t23 (.A(rega_a_11), .B(regb_b_2), .Z(Multiplier_0_mult_2_5_n2)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t20 (.A(rega_a_11), .B(regb_b_4), .Z(Multiplier_0_mult_4_5_n2)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t17 (.A(rega_a_11), .B(regb_b_6), .Z(Multiplier_0_mult_6_5_n2)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t14 (.A(rega_a_11), .B(regb_b_8), .Z(Multiplier_0_mult_8_5_n2)) /* synthesis syn_instantiated=1 */ ;
    ND2 ND2_t11 (.A(rega_a_1), .B(regb_b_11), .Z(Multiplier_0_mult_10_0_n1)) /* synthesis syn_instantiated=1 */ ;
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

