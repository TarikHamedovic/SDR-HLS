// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon Aug 26 01:00:28 2024
//
// Verilog Description of module Multiplier
//

module Multiplier (Clock, ClkEn, Aclr, DataA, DataB, Result) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0/IP/Multiplier/Multiplier.v(8[8:18])
    input Clock;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0/IP/Multiplier/Multiplier.v(9[16:21])
    input ClkEn;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0/IP/Multiplier/Multiplier.v(10[16:21])
    input Aclr;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0/IP/Multiplier/Multiplier.v(11[16:20])
    input [11:0]DataA;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0/IP/Multiplier/Multiplier.v(12[23:28])
    input [11:0]DataB;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0/IP/Multiplier/Multiplier.v(13[23:28])
    output [23:0]Result;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0/IP/Multiplier/Multiplier.v(14[24:30])
    
    
    wire scuba_vlo, VCC_net;
    
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    MULT18X18D dsp_mult_0 (.A17(DataA[11]), .A16(DataA[10]), .A15(DataA[9]), 
            .A14(DataA[8]), .A13(DataA[7]), .A12(DataA[6]), .A11(DataA[5]), 
            .A10(DataA[4]), .A9(DataA[3]), .A8(DataA[2]), .A7(DataA[1]), 
            .A6(DataA[0]), .A5(scuba_vlo), .A4(scuba_vlo), .A3(scuba_vlo), 
            .A2(scuba_vlo), .A1(scuba_vlo), .A0(scuba_vlo), .B17(DataB[11]), 
            .B16(DataB[10]), .B15(DataB[9]), .B14(DataB[8]), .B13(DataB[7]), 
            .B12(DataB[6]), .B11(DataB[5]), .B10(DataB[4]), .B9(DataB[3]), 
            .B8(DataB[2]), .B7(DataB[1]), .B6(DataB[0]), .B5(scuba_vlo), 
            .B4(scuba_vlo), .B3(scuba_vlo), .B2(scuba_vlo), .B1(scuba_vlo), 
            .B0(scuba_vlo), .C17(scuba_vlo), .C16(scuba_vlo), .C15(scuba_vlo), 
            .C14(scuba_vlo), .C13(scuba_vlo), .C12(scuba_vlo), .C11(scuba_vlo), 
            .C10(scuba_vlo), .C9(scuba_vlo), .C8(scuba_vlo), .C7(scuba_vlo), 
            .C6(scuba_vlo), .C5(scuba_vlo), .C4(scuba_vlo), .C3(scuba_vlo), 
            .C2(scuba_vlo), .C1(scuba_vlo), .C0(scuba_vlo), .SIGNEDA(VCC_net), 
            .SIGNEDB(VCC_net), .SOURCEA(scuba_vlo), .SOURCEB(scuba_vlo), 
            .CLK3(scuba_vlo), .CLK2(scuba_vlo), .CLK1(scuba_vlo), .CLK0(Clock), 
            .CE3(VCC_net), .CE2(VCC_net), .CE1(VCC_net), .CE0(ClkEn), 
            .RST3(scuba_vlo), .RST2(scuba_vlo), .RST1(scuba_vlo), .RST0(Aclr), 
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
            .SRIB1(scuba_vlo), .SRIB0(scuba_vlo), .P35(Result[23]), .P34(Result[22]), 
            .P33(Result[21]), .P32(Result[20]), .P31(Result[19]), .P30(Result[18]), 
            .P29(Result[17]), .P28(Result[16]), .P27(Result[15]), .P26(Result[14]), 
            .P25(Result[13]), .P24(Result[12]), .P23(Result[11]), .P22(Result[10]), 
            .P21(Result[9]), .P20(Result[8]), .P19(Result[7]), .P18(Result[6]), 
            .P17(Result[5]), .P16(Result[4]), .P15(Result[3]), .P14(Result[2]), 
            .P13(Result[1]), .P12(Result[0])) /* synthesis syn_instantiated=1 */ ;   // /home/user/SDR-HLS/1.RTLImplementation/4.lattice/Version0/IP/Multiplier/Multiplier.v(84[16] 140[57])
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
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VHI i57 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

