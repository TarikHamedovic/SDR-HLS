// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Sep  5 15:51:13 2024
//
// Verilog Description of module Multiplier
//

module Multiplier (Clock, ClkEn, Aclr, DataA, DataB, Result) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(8[8:18])
    input Clock;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(9[16:21])
    input ClkEn;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(10[16:21])
    input Aclr;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(11[16:20])
    input [11:0]DataA;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    input [11:0]DataB;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    output [23:0]Result;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    
    
    wire Clock_c, ClkEn_c, Aclr_c, DataA_c_11, DataA_c_10, DataA_c_9, 
        DataA_c_8, DataA_c_7, DataA_c_6, DataA_c_5, DataA_c_4, DataA_c_3, 
        DataA_c_2, DataA_c_1, DataA_c_0, DataB_c_11, DataB_c_10, DataB_c_9, 
        DataB_c_8, DataB_c_7, DataB_c_6, DataB_c_5, DataB_c_4, DataB_c_3, 
        DataB_c_2, DataB_c_1, DataB_c_0, Result_c_23, Result_c_22, 
        Result_c_21, Result_c_20, Result_c_19, Result_c_18, Result_c_17, 
        Result_c_16, Result_c_15, Result_c_14, Result_c_13, Result_c_12, 
        Result_c_11, Result_c_10, Result_c_9, Result_c_8, Result_c_7, 
        Result_c_6, Result_c_5, Result_c_4, Result_c_3, Result_c_2, 
        Result_c_1, Result_c_0, scuba_vlo, VCC_net;
    
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    MULT18X18D dsp_mult_0 (.A17(DataA_c_11), .A16(DataA_c_10), .A15(DataA_c_9), 
            .A14(DataA_c_8), .A13(DataA_c_7), .A12(DataA_c_6), .A11(DataA_c_5), 
            .A10(DataA_c_4), .A9(DataA_c_3), .A8(DataA_c_2), .A7(DataA_c_1), 
            .A6(DataA_c_0), .A5(scuba_vlo), .A4(scuba_vlo), .A3(scuba_vlo), 
            .A2(scuba_vlo), .A1(scuba_vlo), .A0(scuba_vlo), .B17(DataB_c_11), 
            .B16(DataB_c_10), .B15(DataB_c_9), .B14(DataB_c_8), .B13(DataB_c_7), 
            .B12(DataB_c_6), .B11(DataB_c_5), .B10(DataB_c_4), .B9(DataB_c_3), 
            .B8(DataB_c_2), .B7(DataB_c_1), .B6(DataB_c_0), .B5(scuba_vlo), 
            .B4(scuba_vlo), .B3(scuba_vlo), .B2(scuba_vlo), .B1(scuba_vlo), 
            .B0(scuba_vlo), .C17(scuba_vlo), .C16(scuba_vlo), .C15(scuba_vlo), 
            .C14(scuba_vlo), .C13(scuba_vlo), .C12(scuba_vlo), .C11(scuba_vlo), 
            .C10(scuba_vlo), .C9(scuba_vlo), .C8(scuba_vlo), .C7(scuba_vlo), 
            .C6(scuba_vlo), .C5(scuba_vlo), .C4(scuba_vlo), .C3(scuba_vlo), 
            .C2(scuba_vlo), .C1(scuba_vlo), .C0(scuba_vlo), .SIGNEDA(VCC_net), 
            .SIGNEDB(VCC_net), .SOURCEA(scuba_vlo), .SOURCEB(scuba_vlo), 
            .CLK3(scuba_vlo), .CLK2(scuba_vlo), .CLK1(scuba_vlo), .CLK0(Clock_c), 
            .CE3(VCC_net), .CE2(VCC_net), .CE1(VCC_net), .CE0(ClkEn_c), 
            .RST3(scuba_vlo), .RST2(scuba_vlo), .RST1(scuba_vlo), .RST0(Aclr_c), 
            .SRIA17(scuba_vlo), .SRIA16(scuba_vlo), .SRIA15(scuba_vlo), 
            .SRIA14(scuba_vlo), .SRIA13(scuba_vlo), .SRIA12(scuba_vlo), 
            .SRIA11(scuba_vlo), .SRIA10(scuba_vlo), .SRIA9(scuba_vlo), 
            .SRIA8(scuba_vlo), .SRIA7(scuba_vlo), .SRIA6(scuba_vlo), .SRIA5(scuba_vlo), 
            .SRIA4(scuba_vlo), .SRIA3(scuba_vlo), .SRIA2(scuba_vlo), .SRIA1(scuba_vlo), 
            .SRIA0(scuba_vlo), .SRIB17(scuba_vlo), .SRIB16(scuba_vlo), 
            .SRIB15(scuba_vlo), .SRIB14(scuba_vlo), .SRIB13(scuba_vlo), 
            .SRIB12(scuba_vlo), .SRIB11(scuba_vlo), .SRIB10(scuba_vlo), 
            .SRIB9(scuba_vlo), .SRIB8(scuba_vlo), .SRIB7(scuba_vlo), .SRIB6(scuba_vlo), 
            .SRIB5(scuba_vlo), .SRIB4(scuba_vlo), .SRIB3(scuba_vlo), .SRIB2(scuba_vlo), 
            .SRIB1(scuba_vlo), .SRIB0(scuba_vlo), .P35(Result_c_23), .P34(Result_c_22), 
            .P33(Result_c_21), .P32(Result_c_20), .P31(Result_c_19), .P30(Result_c_18), 
            .P29(Result_c_17), .P28(Result_c_16), .P27(Result_c_15), .P26(Result_c_14), 
            .P25(Result_c_13), .P24(Result_c_12), .P23(Result_c_11), .P22(Result_c_10), 
            .P21(Result_c_9), .P20(Result_c_8), .P19(Result_c_7), .P18(Result_c_6), 
            .P17(Result_c_5), .P16(Result_c_4), .P15(Result_c_3), .P14(Result_c_2), 
            .P13(Result_c_1), .P12(Result_c_0)) /* synthesis syn_instantiated=1 */ ;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(84[16] 140[57])
    defparam dsp_mult_0.REG_INPUTA_CLK = "CLK0";
    defparam dsp_mult_0.REG_INPUTA_CE = "CE0";
    defparam dsp_mult_0.REG_INPUTA_RST = "RST0";
    defparam dsp_mult_0.REG_INPUTB_CLK = "CLK0";
    defparam dsp_mult_0.REG_INPUTB_CE = "CE0";
    defparam dsp_mult_0.REG_INPUTB_RST = "RST0";
    defparam dsp_mult_0.REG_INPUTC_CLK = "NONE";
    defparam dsp_mult_0.REG_INPUTC_CE = "CE0";
    defparam dsp_mult_0.REG_INPUTC_RST = "RST0";
    defparam dsp_mult_0.REG_PIPELINE_CLK = "CLK0";
    defparam dsp_mult_0.REG_PIPELINE_CE = "CE0";
    defparam dsp_mult_0.REG_PIPELINE_RST = "RST0";
    defparam dsp_mult_0.REG_OUTPUT_CLK = "CLK0";
    defparam dsp_mult_0.REG_OUTPUT_CE = "CE0";
    defparam dsp_mult_0.REG_OUTPUT_RST = "RST0";
    defparam dsp_mult_0.CLK0_DIV = "ENABLED";
    defparam dsp_mult_0.CLK1_DIV = "ENABLED";
    defparam dsp_mult_0.CLK2_DIV = "ENABLED";
    defparam dsp_mult_0.CLK3_DIV = "ENABLED";
    defparam dsp_mult_0.HIGHSPEED_CLK = "NONE";
    defparam dsp_mult_0.GSR = "ENABLED";
    defparam dsp_mult_0.CAS_MATCH_REG = "FALSE";
    defparam dsp_mult_0.SOURCEB_MODE = "B_SHIFT";
    defparam dsp_mult_0.MULT_BYPASS = "DISABLED";
    defparam dsp_mult_0.RESETMODE = "ASYNC";
    OB Result_pad_21 (.I(Result_c_21), .O(Result[21]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_22 (.I(Result_c_22), .O(Result[22]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_23 (.I(Result_c_23), .O(Result[23]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_20 (.I(Result_c_20), .O(Result[20]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_19 (.I(Result_c_19), .O(Result[19]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_18 (.I(Result_c_18), .O(Result[18]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_17 (.I(Result_c_17), .O(Result[17]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_16 (.I(Result_c_16), .O(Result[16]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_15 (.I(Result_c_15), .O(Result[15]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_14 (.I(Result_c_14), .O(Result[14]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_13 (.I(Result_c_13), .O(Result[13]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_12 (.I(Result_c_12), .O(Result[12]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_11 (.I(Result_c_11), .O(Result[11]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_10 (.I(Result_c_10), .O(Result[10]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_9 (.I(Result_c_9), .O(Result[9]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_8 (.I(Result_c_8), .O(Result[8]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_7 (.I(Result_c_7), .O(Result[7]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_6 (.I(Result_c_6), .O(Result[6]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_5 (.I(Result_c_5), .O(Result[5]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_4 (.I(Result_c_4), .O(Result[4]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_3 (.I(Result_c_3), .O(Result[3]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_2 (.I(Result_c_2), .O(Result[2]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_1 (.I(Result_c_1), .O(Result[1]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    OB Result_pad_0 (.I(Result_c_0), .O(Result[0]));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(14[24:30])
    IB Clock_pad (.I(Clock), .O(Clock_c));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(9[16:21])
    IB ClkEn_pad (.I(ClkEn), .O(ClkEn_c));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(10[16:21])
    IB Aclr_pad (.I(Aclr), .O(Aclr_c));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(11[16:20])
    IB DataA_pad_11 (.I(DataA[11]), .O(DataA_c_11));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_10 (.I(DataA[10]), .O(DataA_c_10));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_9 (.I(DataA[9]), .O(DataA_c_9));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_8 (.I(DataA[8]), .O(DataA_c_8));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_7 (.I(DataA[7]), .O(DataA_c_7));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_6 (.I(DataA[6]), .O(DataA_c_6));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_5 (.I(DataA[5]), .O(DataA_c_5));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_4 (.I(DataA[4]), .O(DataA_c_4));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_3 (.I(DataA[3]), .O(DataA_c_3));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_2 (.I(DataA[2]), .O(DataA_c_2));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_1 (.I(DataA[1]), .O(DataA_c_1));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataA_pad_0 (.I(DataA[0]), .O(DataA_c_0));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(12[23:28])
    IB DataB_pad_11 (.I(DataB[11]), .O(DataB_c_11));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_10 (.I(DataB[10]), .O(DataB_c_10));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_9 (.I(DataB[9]), .O(DataB_c_9));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_8 (.I(DataB[8]), .O(DataB_c_8));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_7 (.I(DataB[7]), .O(DataB_c_7));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_6 (.I(DataB[6]), .O(DataB_c_6));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_5 (.I(DataB[5]), .O(DataB_c_5));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_4 (.I(DataB[4]), .O(DataB_c_4));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_3 (.I(DataB[3]), .O(DataB_c_3));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_2 (.I(DataB[2]), .O(DataB_c_2));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_1 (.I(DataB[1]), .O(DataB_c_1));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    IB DataB_pad_0 (.I(DataB[0]), .O(DataB_c_0));   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0-modified/impl1/source/Multiplier.v(13[23:28])
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i6 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

