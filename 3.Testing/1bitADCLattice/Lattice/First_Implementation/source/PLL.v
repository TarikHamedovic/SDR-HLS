/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.13.0.56.2 */
/* Module Version: 5.7 */
/* /home/user/FPGA/tools/diamond/usr/local/diamond/3.13/ispfpga/bin/lin64/scuba -w -n PLL -lang verilog -synth lse -arch sa5p00 -type pll -fin 25.00 -fclkop 80.00 -fclkop_tol 5.0 -phase_cntl STATIC -fb_mode 1 -fdc /home/user/Master Thesis/1bitSDR/1bitSDRLatticeTest/IP/PLL/PLL.fdc  */
/* Thu Feb 29 19:39:22 2024 */


`timescale 1 ns / 1 ps
module PLL (CLKI, CLKOP)/* synthesis NGD_DRC_MASK=1 */;
    input wire CLKI;
    output wire CLKOP;

    wire REFCLK;
    wire LOCK;
    wire CLKOP_t;
    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam PLLInst_0.PLLRST_ENA = "DISABLED" ;
    defparam PLLInst_0.INTFB_WAKE = "DISABLED" ;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED" ;
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED" ;
    defparam PLLInst_0.CLKOS3_FPHASE = 0 ;
    defparam PLLInst_0.CLKOS3_CPHASE = 0 ;
    defparam PLLInst_0.CLKOS2_FPHASE = 0 ;
    defparam PLLInst_0.CLKOS2_CPHASE = 0 ;
    defparam PLLInst_0.CLKOS_FPHASE = 0 ;
    defparam PLLInst_0.CLKOS_CPHASE = 0 ;
    defparam PLLInst_0.CLKOP_FPHASE = 0 ;
    defparam PLLInst_0.CLKOP_CPHASE = 6 ;
    defparam PLLInst_0.PLL_LOCK_MODE = 0 ;
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0 ;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING" ;
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0 ;
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING" ;
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD" ;
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED" ;
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC" ;
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED" ;
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB" ;
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED" ;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA" ;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED" ;
    defparam PLLInst_0.CLKOS3_DIV = 1 ;
    defparam PLLInst_0.CLKOS2_DIV = 1 ;
    defparam PLLInst_0.CLKOS_DIV = 1 ;
    defparam PLLInst_0.CLKOP_DIV = 7 ;
    defparam PLLInst_0.CLKFB_DIV = 10 ;
    defparam PLLInst_0.CLKI_DIV = 3 ;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP" ;
    EHXPLLL PLLInst_0 (.CLKI(CLKI), .CLKFB(CLKOP_t), .PHASESEL1(scuba_vlo), 
        .PHASESEL0(scuba_vlo), .PHASEDIR(scuba_vlo), .PHASESTEP(scuba_vlo), 
        .PHASELOADREG(scuba_vlo), .STDBY(scuba_vlo), .PLLWAKESYNC(scuba_vlo), 
        .RST(scuba_vlo), .ENCLKOP(scuba_vlo), .ENCLKOS(scuba_vlo), .ENCLKOS2(scuba_vlo), 
        .ENCLKOS3(scuba_vlo), .CLKOP(CLKOP_t), .CLKOS(), .CLKOS2(), .CLKOS3(), 
        .LOCK(LOCK), .INTLOCK(), .REFCLK(REFCLK), .CLKINTFB())
             /* synthesis FREQUENCY_PIN_CLKOP="83.333333" */
             /* synthesis FREQUENCY_PIN_CLKI="25.000000" */
             /* synthesis ICP_CURRENT="5" */
             /* synthesis LPF_RESISTOR="16" */;

    assign CLKOP = CLKOP_t;


    // exemplar begin
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKOP 83.333333
    // exemplar attribute PLLInst_0 FREQUENCY_PIN_CLKI 25.000000
    // exemplar attribute PLLInst_0 ICP_CURRENT 5
    // exemplar attribute PLLInst_0 LPF_RESISTOR 16
    // exemplar end

endmodule
