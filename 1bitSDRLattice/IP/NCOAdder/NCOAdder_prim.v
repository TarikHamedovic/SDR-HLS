// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Feb 28 16:18:38 2024
//
// Verilog Description of module NCOAdder
//

module NCOAdder (DataA, DataB, Clock, Reset, Result) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(8[8:16])
    input [63:0]DataA;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(9[23:28])
    input [63:0]DataB;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(10[23:28])
    input Clock;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(11[16:21])
    input Reset;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(12[16:21])
    output [63:0]Result;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(13[24:30])
    
    wire Clock /* synthesis is_clock=1, SET_AS_NETWORK=Clock */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(11[16:21])
    
    wire tsum0, tsum1, tsum2, co0, tsum3, tsum4, co1, tsum5, 
        tsum6, co2, tsum7, tsum8, co3, tsum9, tsum10, co4, tsum11, 
        tsum12, co5, tsum13, tsum14, co6, tsum15, tsum16, co7, 
        tsum17, tsum18, co8, tsum19, tsum20, co9, tsum21, tsum22, 
        co10, tsum23, tsum24, co11, tsum25, tsum26, co12, tsum27, 
        tsum28, co13, tsum29, tsum30, co14, tsum31, tsum32, co15, 
        tsum33, tsum34, co16, tsum35, tsum36, co17, tsum37, tsum38, 
        co18, tsum39, tsum40, co19, tsum41, tsum42, co20, tsum43, 
        tsum44, co21, tsum45, tsum46, co22, tsum47, tsum48, co23, 
        tsum49, tsum50, co24, tsum51, tsum52, co25, tsum53, tsum54, 
        co26, tsum55, tsum56, co27, tsum57, tsum58, co28, tsum59, 
        tsum60, co29, tsum61, tsum62, co30, tsum63, scuba_vhi, 
        scuba_vlo, co31;
    
    FD1P3DX FF_62 (.D(tsum62), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[62])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(181[13:85])
    defparam FF_62.GSR = "ENABLED";
    FD1P3DX FF_61 (.D(tsum61), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[61])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(184[13:85])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(tsum60), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[60])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(187[13:85])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(tsum59), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[59])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(190[13:85])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(tsum58), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[58])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(193[13:85])
    defparam FF_58.GSR = "ENABLED";
    FD1P3DX FF_57 (.D(tsum57), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[57])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(196[13:85])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(tsum56), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[56])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(199[13:85])
    defparam FF_56.GSR = "ENABLED";
    FD1P3DX FF_55 (.D(tsum55), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[55])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(202[13:85])
    defparam FF_55.GSR = "ENABLED";
    FD1P3DX FF_54 (.D(tsum54), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[54])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(205[13:85])
    defparam FF_54.GSR = "ENABLED";
    FD1P3DX FF_53 (.D(tsum53), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[53])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(208[13:85])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(tsum52), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[52])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(211[13:85])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(tsum51), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[51])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(214[13:85])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(tsum50), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[50])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(217[13:85])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(tsum49), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[49])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(220[13:85])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(tsum48), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[48])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(223[13:85])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(tsum47), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[47])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(226[13:85])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(tsum46), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[46])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(229[13:85])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(tsum45), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[45])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(232[13:85])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(tsum44), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[44])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(235[13:85])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(tsum43), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[43])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(238[13:85])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(tsum42), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[42])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(241[13:85])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(tsum41), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[41])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(244[13:85])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(tsum40), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[40])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(247[13:85])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(tsum39), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[39])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(250[13:85])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(tsum38), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[38])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(253[13:85])
    defparam FF_38.GSR = "ENABLED";
    FD1P3DX FF_37 (.D(tsum37), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[37])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(256[13:85])
    defparam FF_37.GSR = "ENABLED";
    FD1P3DX FF_36 (.D(tsum36), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[36])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(259[13:85])
    defparam FF_36.GSR = "ENABLED";
    FD1P3DX FF_35 (.D(tsum35), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[35])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(262[13:85])
    defparam FF_35.GSR = "ENABLED";
    FD1P3DX FF_34 (.D(tsum34), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[34])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(265[13:85])
    defparam FF_34.GSR = "ENABLED";
    FD1P3DX FF_33 (.D(tsum33), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[33])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(268[13:85])
    defparam FF_33.GSR = "ENABLED";
    FD1P3DX FF_32 (.D(tsum32), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[32])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(271[13:85])
    defparam FF_32.GSR = "ENABLED";
    FD1P3DX FF_31 (.D(tsum31), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[31])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(274[13:85])
    defparam FF_31.GSR = "ENABLED";
    FD1P3DX FF_30 (.D(tsum30), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[30])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(277[13:85])
    defparam FF_30.GSR = "ENABLED";
    FD1P3DX FF_29 (.D(tsum29), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[29])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(280[13:85])
    defparam FF_29.GSR = "ENABLED";
    FD1P3DX FF_28 (.D(tsum28), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[28])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(283[13:85])
    defparam FF_28.GSR = "ENABLED";
    FD1P3DX FF_27 (.D(tsum27), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[27])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(286[13:85])
    defparam FF_27.GSR = "ENABLED";
    FD1P3DX FF_26 (.D(tsum26), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[26])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(289[13:85])
    defparam FF_26.GSR = "ENABLED";
    FD1P3DX FF_25 (.D(tsum25), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[25])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(292[13:85])
    defparam FF_25.GSR = "ENABLED";
    FD1P3DX FF_24 (.D(tsum24), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[24])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(295[13:85])
    defparam FF_24.GSR = "ENABLED";
    FD1P3DX FF_23 (.D(tsum23), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[23])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(298[13:85])
    defparam FF_23.GSR = "ENABLED";
    FD1P3DX FF_22 (.D(tsum22), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[22])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(301[13:85])
    defparam FF_22.GSR = "ENABLED";
    FD1P3DX FF_21 (.D(tsum21), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[21])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(304[13:85])
    defparam FF_21.GSR = "ENABLED";
    FD1P3DX FF_20 (.D(tsum20), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[20])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(307[13:85])
    defparam FF_20.GSR = "ENABLED";
    FD1P3DX FF_19 (.D(tsum19), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[19])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(310[13:85])
    defparam FF_19.GSR = "ENABLED";
    FD1P3DX FF_18 (.D(tsum18), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[18])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(313[13:85])
    defparam FF_18.GSR = "ENABLED";
    FD1P3DX FF_17 (.D(tsum17), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[17])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(316[13:85])
    defparam FF_17.GSR = "ENABLED";
    FD1P3DX FF_16 (.D(tsum16), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[16])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(319[13:85])
    defparam FF_16.GSR = "ENABLED";
    FD1P3DX FF_15 (.D(tsum15), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[15])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(322[13:85])
    defparam FF_15.GSR = "ENABLED";
    FD1P3DX FF_14 (.D(tsum14), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[14])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(325[13:85])
    defparam FF_14.GSR = "ENABLED";
    FD1P3DX FF_13 (.D(tsum13), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[13])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(328[13:85])
    defparam FF_13.GSR = "ENABLED";
    FD1P3DX FF_12 (.D(tsum12), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[12])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(331[13:85])
    defparam FF_12.GSR = "ENABLED";
    FD1P3DX FF_11 (.D(tsum11), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[11])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(334[13:85])
    defparam FF_11.GSR = "ENABLED";
    FD1P3DX FF_10 (.D(tsum10), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[10])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(337[13:85])
    defparam FF_10.GSR = "ENABLED";
    FD1P3DX FF_9 (.D(tsum9), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[9])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(340[13:82])
    defparam FF_9.GSR = "ENABLED";
    FD1P3DX FF_8 (.D(tsum8), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[8])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(343[13:82])
    defparam FF_8.GSR = "ENABLED";
    FD1P3DX FF_7 (.D(tsum7), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[7])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(346[13:82])
    defparam FF_7.GSR = "ENABLED";
    FD1P3DX FF_6 (.D(tsum6), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[6])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(349[13:82])
    defparam FF_6.GSR = "ENABLED";
    FD1P3DX FF_5 (.D(tsum5), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(352[13:82])
    defparam FF_5.GSR = "ENABLED";
    FD1P3DX FF_4 (.D(tsum4), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(355[13:82])
    defparam FF_4.GSR = "ENABLED";
    FD1P3DX FF_3 (.D(tsum3), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(358[13:82])
    defparam FF_3.GSR = "ENABLED";
    FD1P3DX FF_2 (.D(tsum2), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(361[13:82])
    defparam FF_2.GSR = "ENABLED";
    FD1P3DX FF_1 (.D(tsum1), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(364[13:82])
    defparam FF_1.GSR = "ENABLED";
    FD1P3DX FF_0 (.D(tsum0), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(367[13:82])
    defparam FF_0.GSR = "ENABLED";
    CCU2C addsub_0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[0]), .B1(DataB[0]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .COUT(co0), .S1(tsum0)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(374[11] 376[47])
    defparam addsub_0.INIT0 = 16'b0110011010101010;
    defparam addsub_0.INIT1 = 16'b0110011010101010;
    defparam addsub_0.INJECT1_0 = "NO";
    defparam addsub_0.INJECT1_1 = "NO";
    CCU2C addsub_1 (.A0(DataA[1]), .B0(DataB[1]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[2]), .B1(DataB[2]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(tsum1), .S1(tsum2)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(382[11] 384[55])
    defparam addsub_1.INIT0 = 16'b0110011010101010;
    defparam addsub_1.INIT1 = 16'b0110011010101010;
    defparam addsub_1.INJECT1_0 = "NO";
    defparam addsub_1.INJECT1_1 = "NO";
    CCU2C addsub_2 (.A0(DataA[3]), .B0(DataB[3]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[4]), .B1(DataB[4]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .COUT(co2), .S0(tsum3), .S1(tsum4)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(390[11] 392[55])
    defparam addsub_2.INIT0 = 16'b0110011010101010;
    defparam addsub_2.INIT1 = 16'b0110011010101010;
    defparam addsub_2.INJECT1_0 = "NO";
    defparam addsub_2.INJECT1_1 = "NO";
    CCU2C addsub_3 (.A0(DataA[5]), .B0(DataB[5]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[6]), .B1(DataB[6]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co2), .COUT(co3), .S0(tsum5), .S1(tsum6)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(398[11] 400[55])
    defparam addsub_3.INIT0 = 16'b0110011010101010;
    defparam addsub_3.INIT1 = 16'b0110011010101010;
    defparam addsub_3.INJECT1_0 = "NO";
    defparam addsub_3.INJECT1_1 = "NO";
    CCU2C addsub_4 (.A0(DataA[7]), .B0(DataB[7]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[8]), .B1(DataB[8]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co3), .COUT(co4), .S0(tsum7), .S1(tsum8)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(406[11] 408[55])
    defparam addsub_4.INIT0 = 16'b0110011010101010;
    defparam addsub_4.INIT1 = 16'b0110011010101010;
    defparam addsub_4.INJECT1_0 = "NO";
    defparam addsub_4.INJECT1_1 = "NO";
    CCU2C addsub_5 (.A0(DataA[9]), .B0(DataB[9]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[10]), .B1(DataB[10]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co4), .COUT(co5), .S0(tsum9), .S1(tsum10)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(414[11] 416[56])
    defparam addsub_5.INIT0 = 16'b0110011010101010;
    defparam addsub_5.INIT1 = 16'b0110011010101010;
    defparam addsub_5.INJECT1_0 = "NO";
    defparam addsub_5.INJECT1_1 = "NO";
    CCU2C addsub_6 (.A0(DataA[11]), .B0(DataB[11]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[12]), .B1(DataB[12]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co5), .COUT(co6), .S0(tsum11), .S1(tsum12)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(422[11] 424[57])
    defparam addsub_6.INIT0 = 16'b0110011010101010;
    defparam addsub_6.INIT1 = 16'b0110011010101010;
    defparam addsub_6.INJECT1_0 = "NO";
    defparam addsub_6.INJECT1_1 = "NO";
    CCU2C addsub_7 (.A0(DataA[13]), .B0(DataB[13]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[14]), .B1(DataB[14]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co6), .COUT(co7), .S0(tsum13), .S1(tsum14)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(430[11] 432[57])
    defparam addsub_7.INIT0 = 16'b0110011010101010;
    defparam addsub_7.INIT1 = 16'b0110011010101010;
    defparam addsub_7.INJECT1_0 = "NO";
    defparam addsub_7.INJECT1_1 = "NO";
    CCU2C addsub_8 (.A0(DataA[15]), .B0(DataB[15]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[16]), .B1(DataB[16]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co7), .COUT(co8), .S0(tsum15), .S1(tsum16)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(438[11] 440[57])
    defparam addsub_8.INIT0 = 16'b0110011010101010;
    defparam addsub_8.INIT1 = 16'b0110011010101010;
    defparam addsub_8.INJECT1_0 = "NO";
    defparam addsub_8.INJECT1_1 = "NO";
    CCU2C addsub_9 (.A0(DataA[17]), .B0(DataB[17]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[18]), .B1(DataB[18]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co8), .COUT(co9), .S0(tsum17), .S1(tsum18)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(446[11] 448[57])
    defparam addsub_9.INIT0 = 16'b0110011010101010;
    defparam addsub_9.INIT1 = 16'b0110011010101010;
    defparam addsub_9.INJECT1_0 = "NO";
    defparam addsub_9.INJECT1_1 = "NO";
    CCU2C addsub_10 (.A0(DataA[19]), .B0(DataB[19]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[20]), .B1(DataB[20]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co9), .COUT(co10), .S0(tsum19), .S1(tsum20)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(454[11] 456[58])
    defparam addsub_10.INIT0 = 16'b0110011010101010;
    defparam addsub_10.INIT1 = 16'b0110011010101010;
    defparam addsub_10.INJECT1_0 = "NO";
    defparam addsub_10.INJECT1_1 = "NO";
    CCU2C addsub_11 (.A0(DataA[21]), .B0(DataB[21]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[22]), .B1(DataB[22]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co10), .COUT(co11), .S0(tsum21), .S1(tsum22)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(462[11] 464[59])
    defparam addsub_11.INIT0 = 16'b0110011010101010;
    defparam addsub_11.INIT1 = 16'b0110011010101010;
    defparam addsub_11.INJECT1_0 = "NO";
    defparam addsub_11.INJECT1_1 = "NO";
    CCU2C addsub_12 (.A0(DataA[23]), .B0(DataB[23]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[24]), .B1(DataB[24]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co11), .COUT(co12), .S0(tsum23), .S1(tsum24)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(470[11] 472[59])
    defparam addsub_12.INIT0 = 16'b0110011010101010;
    defparam addsub_12.INIT1 = 16'b0110011010101010;
    defparam addsub_12.INJECT1_0 = "NO";
    defparam addsub_12.INJECT1_1 = "NO";
    CCU2C addsub_13 (.A0(DataA[25]), .B0(DataB[25]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[26]), .B1(DataB[26]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co12), .COUT(co13), .S0(tsum25), .S1(tsum26)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(478[11] 480[59])
    defparam addsub_13.INIT0 = 16'b0110011010101010;
    defparam addsub_13.INIT1 = 16'b0110011010101010;
    defparam addsub_13.INJECT1_0 = "NO";
    defparam addsub_13.INJECT1_1 = "NO";
    CCU2C addsub_14 (.A0(DataA[27]), .B0(DataB[27]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[28]), .B1(DataB[28]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co13), .COUT(co14), .S0(tsum27), .S1(tsum28)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(486[11] 488[59])
    defparam addsub_14.INIT0 = 16'b0110011010101010;
    defparam addsub_14.INIT1 = 16'b0110011010101010;
    defparam addsub_14.INJECT1_0 = "NO";
    defparam addsub_14.INJECT1_1 = "NO";
    CCU2C addsub_15 (.A0(DataA[29]), .B0(DataB[29]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[30]), .B1(DataB[30]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co14), .COUT(co15), .S0(tsum29), .S1(tsum30)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(494[11] 496[59])
    defparam addsub_15.INIT0 = 16'b0110011010101010;
    defparam addsub_15.INIT1 = 16'b0110011010101010;
    defparam addsub_15.INJECT1_0 = "NO";
    defparam addsub_15.INJECT1_1 = "NO";
    CCU2C addsub_16 (.A0(DataA[31]), .B0(DataB[31]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[32]), .B1(DataB[32]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co15), .COUT(co16), .S0(tsum31), .S1(tsum32)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(502[11] 504[59])
    defparam addsub_16.INIT0 = 16'b0110011010101010;
    defparam addsub_16.INIT1 = 16'b0110011010101010;
    defparam addsub_16.INJECT1_0 = "NO";
    defparam addsub_16.INJECT1_1 = "NO";
    CCU2C addsub_17 (.A0(DataA[33]), .B0(DataB[33]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[34]), .B1(DataB[34]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co16), .COUT(co17), .S0(tsum33), .S1(tsum34)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(510[11] 512[59])
    defparam addsub_17.INIT0 = 16'b0110011010101010;
    defparam addsub_17.INIT1 = 16'b0110011010101010;
    defparam addsub_17.INJECT1_0 = "NO";
    defparam addsub_17.INJECT1_1 = "NO";
    CCU2C addsub_18 (.A0(DataA[35]), .B0(DataB[35]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[36]), .B1(DataB[36]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co17), .COUT(co18), .S0(tsum35), .S1(tsum36)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(518[11] 520[59])
    defparam addsub_18.INIT0 = 16'b0110011010101010;
    defparam addsub_18.INIT1 = 16'b0110011010101010;
    defparam addsub_18.INJECT1_0 = "NO";
    defparam addsub_18.INJECT1_1 = "NO";
    CCU2C addsub_19 (.A0(DataA[37]), .B0(DataB[37]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[38]), .B1(DataB[38]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co18), .COUT(co19), .S0(tsum37), .S1(tsum38)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(526[11] 528[59])
    defparam addsub_19.INIT0 = 16'b0110011010101010;
    defparam addsub_19.INIT1 = 16'b0110011010101010;
    defparam addsub_19.INJECT1_0 = "NO";
    defparam addsub_19.INJECT1_1 = "NO";
    CCU2C addsub_20 (.A0(DataA[39]), .B0(DataB[39]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[40]), .B1(DataB[40]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co19), .COUT(co20), .S0(tsum39), .S1(tsum40)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(534[11] 536[59])
    defparam addsub_20.INIT0 = 16'b0110011010101010;
    defparam addsub_20.INIT1 = 16'b0110011010101010;
    defparam addsub_20.INJECT1_0 = "NO";
    defparam addsub_20.INJECT1_1 = "NO";
    CCU2C addsub_21 (.A0(DataA[41]), .B0(DataB[41]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[42]), .B1(DataB[42]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co20), .COUT(co21), .S0(tsum41), .S1(tsum42)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(542[11] 544[59])
    defparam addsub_21.INIT0 = 16'b0110011010101010;
    defparam addsub_21.INIT1 = 16'b0110011010101010;
    defparam addsub_21.INJECT1_0 = "NO";
    defparam addsub_21.INJECT1_1 = "NO";
    CCU2C addsub_22 (.A0(DataA[43]), .B0(DataB[43]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[44]), .B1(DataB[44]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co21), .COUT(co22), .S0(tsum43), .S1(tsum44)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(550[11] 552[59])
    defparam addsub_22.INIT0 = 16'b0110011010101010;
    defparam addsub_22.INIT1 = 16'b0110011010101010;
    defparam addsub_22.INJECT1_0 = "NO";
    defparam addsub_22.INJECT1_1 = "NO";
    CCU2C addsub_23 (.A0(DataA[45]), .B0(DataB[45]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[46]), .B1(DataB[46]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co22), .COUT(co23), .S0(tsum45), .S1(tsum46)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(558[11] 560[59])
    defparam addsub_23.INIT0 = 16'b0110011010101010;
    defparam addsub_23.INIT1 = 16'b0110011010101010;
    defparam addsub_23.INJECT1_0 = "NO";
    defparam addsub_23.INJECT1_1 = "NO";
    CCU2C addsub_24 (.A0(DataA[47]), .B0(DataB[47]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[48]), .B1(DataB[48]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co23), .COUT(co24), .S0(tsum47), .S1(tsum48)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(566[11] 568[59])
    defparam addsub_24.INIT0 = 16'b0110011010101010;
    defparam addsub_24.INIT1 = 16'b0110011010101010;
    defparam addsub_24.INJECT1_0 = "NO";
    defparam addsub_24.INJECT1_1 = "NO";
    CCU2C addsub_25 (.A0(DataA[49]), .B0(DataB[49]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[50]), .B1(DataB[50]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co24), .COUT(co25), .S0(tsum49), .S1(tsum50)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(574[11] 576[59])
    defparam addsub_25.INIT0 = 16'b0110011010101010;
    defparam addsub_25.INIT1 = 16'b0110011010101010;
    defparam addsub_25.INJECT1_0 = "NO";
    defparam addsub_25.INJECT1_1 = "NO";
    CCU2C addsub_26 (.A0(DataA[51]), .B0(DataB[51]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[52]), .B1(DataB[52]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co25), .COUT(co26), .S0(tsum51), .S1(tsum52)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(582[11] 584[59])
    defparam addsub_26.INIT0 = 16'b0110011010101010;
    defparam addsub_26.INIT1 = 16'b0110011010101010;
    defparam addsub_26.INJECT1_0 = "NO";
    defparam addsub_26.INJECT1_1 = "NO";
    CCU2C addsub_27 (.A0(DataA[53]), .B0(DataB[53]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[54]), .B1(DataB[54]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co26), .COUT(co27), .S0(tsum53), .S1(tsum54)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(590[11] 592[59])
    defparam addsub_27.INIT0 = 16'b0110011010101010;
    defparam addsub_27.INIT1 = 16'b0110011010101010;
    defparam addsub_27.INJECT1_0 = "NO";
    defparam addsub_27.INJECT1_1 = "NO";
    CCU2C addsub_28 (.A0(DataA[55]), .B0(DataB[55]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[56]), .B1(DataB[56]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co27), .COUT(co28), .S0(tsum55), .S1(tsum56)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(598[11] 600[59])
    defparam addsub_28.INIT0 = 16'b0110011010101010;
    defparam addsub_28.INIT1 = 16'b0110011010101010;
    defparam addsub_28.INJECT1_0 = "NO";
    defparam addsub_28.INJECT1_1 = "NO";
    CCU2C addsub_29 (.A0(DataA[57]), .B0(DataB[57]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[58]), .B1(DataB[58]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co28), .COUT(co29), .S0(tsum57), .S1(tsum58)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(606[11] 608[59])
    defparam addsub_29.INIT0 = 16'b0110011010101010;
    defparam addsub_29.INIT1 = 16'b0110011010101010;
    defparam addsub_29.INJECT1_0 = "NO";
    defparam addsub_29.INJECT1_1 = "NO";
    CCU2C addsub_30 (.A0(DataA[59]), .B0(DataB[59]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[60]), .B1(DataB[60]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co29), .COUT(co30), .S0(tsum59), .S1(tsum60)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(614[11] 616[59])
    defparam addsub_30.INIT0 = 16'b0110011010101010;
    defparam addsub_30.INIT1 = 16'b0110011010101010;
    defparam addsub_30.INJECT1_0 = "NO";
    defparam addsub_30.INJECT1_1 = "NO";
    CCU2C addsub_31 (.A0(DataA[61]), .B0(DataB[61]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(DataA[62]), .B1(DataB[62]), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co30), .COUT(co31), .S0(tsum61), .S1(tsum62)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(622[11] 624[59])
    defparam addsub_31.INIT0 = 16'b0110011010101010;
    defparam addsub_31.INIT1 = 16'b0110011010101010;
    defparam addsub_31.INJECT1_0 = "NO";
    defparam addsub_31.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C addsub_32 (.A0(DataA[63]), .B0(DataB[63]), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co31), .S0(tsum63)) /* synthesis syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(634[11] 636[49])
    defparam addsub_32.INIT0 = 16'b0110011010101010;
    defparam addsub_32.INIT1 = 16'b0110011010101010;
    defparam addsub_32.INJECT1_0 = "NO";
    defparam addsub_32.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    FD1P3DX FF_63 (.D(tsum63), .SP(scuba_vhi), .CK(Clock), .CD(Reset), 
            .Q(Result[63])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/NCOAdder/NCOAdder.v(178[13:85])
    defparam FF_63.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

