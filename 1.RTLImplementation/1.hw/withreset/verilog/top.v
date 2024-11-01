/*
-----------------------------------------------------------------------------
Module Name: top
Description:
This module is the top-level module for a simple 1-bit FPGA Software Defined Radio (SDR) receiver
using a Lattice MachXO2 FPGA. The design aims to use minimal external components,
with the core functionalities being implemented within the FPGA. The receiver can handle
long and medium wave signals and includes an AM demodulator.

Features:
- Minimal external components (resistors, capacitors, crystal oscillator)
- Direct antenna connection to LVDS input
- Sampling performed using random noise at the antenna
- Control of RX frequency and RF gain via USB to UART interface
- Internal oscillator with optional external crystal oscillator for better performance
- Integration of PLL, NCO, Mixer, CIC filters, AM demodulator, and PWM modules

Inputs:
- rx_serial: Serial data input for UART communication
- rf_in: Radio Frequency input from the antenna
- clk_25mhz: 25 MHz clock input
- arst: Asynchronous reset signal

Outputs:
- tx_serial: Serial data output for UART communication
- led: 8-bit output to control LEDs
- diff_out: Differential output for RF signal
- pwm_out: Pulse Width Modulation output for demodulated audio
- pwm_out_p1, pwm_out_p2, pwm_out_p3, pwm_out_p4: Positive PWM outputs for audio
- pwm_out_n1, pwm_out_n2, pwm_out_n3, pwm_out_n4: Negative PWM outputs for audio
- sin_gen: Sine wave generator output
- sin_out: Sine wave output
- cic_clk: Clock output for CIC filter

-----------------------------------------------------------------------------
*/

module top (
    input wire        clk_25mhz,
    input wire        rx_serial,
    input wire        rf_in,
    input wire        arst,

    output wire       diff_out,
    output wire       pwm_out,
    output wire       pwm_out_p1,
    output wire       pwm_out_p2,
    output wire       pwm_out_p3,
    output wire       pwm_out_p4,
    output wire       pwm_out_n1,
    output wire       pwm_out_n2,
    output wire       pwm_out_n3,
    output wire       pwm_out_n4,
    output wire [7:0] led
);

    localparam DATA_WIDTH           = 12;
    localparam PHASE_WIDTH          = 64;
    localparam CIC_REGISTER_WIDTH   = 72;
    localparam CIC_GAIN_WIDTH       = 8;
    localparam CIC_DECIMATION_RATIO = 4096;
    localparam PWM_COUNTER_WIDTH    = 10;
    localparam PWM_OFFSET           = 512;

    wire clk_80mhz;

    // Internal Registers

    // ------ NCO Signals ------ //
    reg signed [63:0] phase_inc_gen;
    reg signed [63:0] phase_inc_gen1;
    wire cos_output;
    wire sin_output;
    wire [63:0] phase_acc;

    // ------ SinCos Signals ---- //
    wire signed [12:0] lo_sinewave;
    wire signed [12:0] lo_cosinewave;

    // ------ Mixer Signals ---- //
    wire signed [11:0] mix_sinewave;
    wire signed [11:0] mix_cosinewave;

    // ------ CIC Signals ---- //
    reg [7:0] cic_gain;
    wire signed [11:0] cic_sine_out;
    wire cic_sine_clk;
    wire signed [11:0] cic_cosine_out;
    wire cic_cosine_clk;

    // ------- AMDem Signals-- //
    wire signed [11:0] amdemod_out;

    // ----- UART Signals ------ //
    reg rx_data_valid;
    reg [7:0] rx_byte;
    wire rx_data_valid1;
    wire [7:0] rx_byte1;

    //===========================//
    //          PLL              //
    //===========================//
    PLL PLL_inst (
        .CLKI (clk_25mhz),
        .CLKOP(clk_80mhz)
    );

    //===========================//
    //          NCO              //
    //===========================//
    nco_sig #(
        .WIDTH(PHASE_WIDTH)
    ) nco_sig_inst (
        .clk           (clk_80mhz),
        .arst          (arst),
        .phase_inc_carr(phase_inc_gen1),
        .phase_accum   (phase_acc),
        .sin_out       (sin_output),
        .cos_out       (cos_output)
    );

    //===========================//
    //          SinCos           //
    //===========================//
    SinCos SinCos_inst (
        .Clock (clk_80mhz),
        .ClkEn (1'b1),
        .Reset (arst),
        .Theta (phase_acc[63:56]),
        .Sine  (lo_sinewave),
        .Cosine(lo_cosinewave)
    );

    //===========================//
    //          Mixer            //
    //===========================//
    Mixer #(
        .INPUT_WIDTH(DATA_WIDTH)
    ) mixer_inst (
        .clk           (clk_80mhz),
        .arst          (arst),
        .rf_in         (rf_in),
        .sinewave_in   (lo_sinewave[12:1]),
        .cosinewave_in (lo_cosinewave[12:1]),
        .rf_out        (diff_out),
        .sinewave_out  (mix_sinewave),
        .cosinewave_out(mix_cosinewave)
    );

    //===========================//
    //          CIC (Sine)       //
    //===========================//
    CIC #(
        .INPUT_WIDTH(DATA_WIDTH),
        .REGISTER_WIDTH(CIC_REGISTER_WIDTH),
        .DECIMATION_RATIO(CIC_DECIMATION_RATIO),
        .GAIN_WIDTH(CIC_GAIN_WIDTH)
    ) cic_sine_inst (
        .clk     (clk_80mhz),
        .arst    (arst),
        .gain    (cic_gain),
        .data_in (mix_sinewave),
        .data_out(cic_sine_out),
        .data_clk(cic_sine_clk)
    );

    //===========================//
    //      CIC (Cosine)         //
    //===========================//
    CIC #(
        .INPUT_WIDTH(DATA_WIDTH),
        .REGISTER_WIDTH(CIC_REGISTER_WIDTH),
        .DECIMATION_RATIO(CIC_DECIMATION_RATIO),
        .GAIN_WIDTH(CIC_GAIN_WIDTH)
    ) cic_cosine_inst (
        .clk     (clk_80mhz),
        .arst    (arst),
        .gain    (cic_gain),
        .data_in (mix_cosinewave),
        .data_out(cic_cosine_out),
        .data_clk(cic_cosine_clk)
    );

    //===========================//
    //     AM Demodulator        //
    //===========================//
    AMDemodulator #(
        .INPUT_WIDTH(DATA_WIDTH)
    ) AMDemodulator_inst (
        .clk        (cic_sine_clk),
        .arst       (arst),
        .inphase    (cic_sine_out),
        .quadrature (cic_cosine_out),
        .amdemod_out(amdemod_out)
    );

    //===========================//
    //          PWM              //
    //===========================//
    PWM #(
        .INPUT_WIDTH(DATA_WIDTH),
        .COUNTER_WIDTH(PWM_COUNTER_WIDTH),
        .OFFSET(PWM_OFFSET)
    ) pwm_inst (
        .clk(clk_80mhz),
        .arst(arst),
        .data_in(amdemod_out),
        .pwm_out(pwm_out)
    );

    //===========================//
    //          UART RX          //
    //===========================//
    uart_rx #(
        .CLKS_PER_BIT(87)
    ) uart_rx_inst (
        .osc_clk      (clk_80mhz),
        .i_Rx_Serial  (rx_serial),
        .o_Rx_DV      (rx_data_valid1),
        .o_Rx_Byte    (rx_byte1)
    );

    assign led[0] = rx_byte[0];
    assign led[1] = rx_byte[1];
    assign led[2] = rx_byte[2];
    assign led[3] = rx_byte[3];
    assign led[4] = rx_byte[4];
    assign led[5] = rx_byte[5];
    assign led[6] = rx_byte[6];
    assign led[7] = rx_byte[7];

    assign pwm_out_p1 = pwm_out;
    assign pwm_out_p2 = pwm_out;
    assign pwm_out_p3 = pwm_out;
    assign pwm_out_p4 = pwm_out;
    assign pwm_out_n1 = ~pwm_out;
    assign pwm_out_n2 = ~pwm_out;
    assign pwm_out_n3 = ~pwm_out;
    assign pwm_out_n4 = ~pwm_out;

    always @(posedge clk_80mhz or posedge arst) begin
        if (arst) begin
            phase_inc_gen1 <= '0;
            rx_data_valid  <= 1'b0;
            rx_byte        <= '0;
            cic_gain       <= '0;
            phase_inc_gen  <= '0;
        end else begin
            phase_inc_gen1 <= phase_inc_gen;
            rx_data_valid <= rx_data_valid1;
            rx_byte <= rx_byte1;

            if (rx_data_valid) begin
                unique case (rx_byte)
                    7'd48: cic_gain <= 7'd0;   // 0
                     7'd49: cic_gain <= 7'd1;  // 1
                     7'd50: cic_gain <= 7'd2;  // 2
                     7'd51: cic_gain <= 7'd3;  // 3
                endcase

                unique case (rx_byte)
                    97:  phase_inc_gen <= 64'h4CF41F212D77318;               // a Zavidovići 1503 kHz
                    98:  phase_inc_gen <= 64'h1aa60f8b8911654;               // b Kossuth Budapest 540 KHz
                    102: phase_inc_gen <= 64'h1dc38c076704516d;              // f 9650 KHz
                    103: phase_inc_gen <= 64'h1d60d923295482c6;              // g Radio China 9525 KHz
                    110: phase_inc_gen <= phase_inc_gen - 64'h71b375868d170; // n - 9KHz
                    109: phase_inc_gen <= phase_inc_gen + 64'h71b375868d170; // m + 9KHz
                    111: phase_inc_gen <= phase_inc_gen - 64'h1436a8cdf6f3;  // o - 100 Hz
                    112: phase_inc_gen <= phase_inc_gen + 64'h1436a8cdf6f3;  // p + 100 Hz
                    113: phase_inc_gen <= phase_inc_gen - 64'hca22980ba57e;  // q - 1KHz
                    104: phase_inc_gen <= phase_inc_gen + 64'hca22980ba57e;  // r + 1 KHz
                endcase
            end
        end
    end
endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26 TH: Initial creation
 2024/5/26 TH: Revision
 2024/8/15 TH: Added arst to top module and instantiated modules
*/
