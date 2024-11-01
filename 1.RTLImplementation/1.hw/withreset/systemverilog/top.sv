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
- Utilizes an array for phase increment control
- Uses open-source or Lattice IP PLL for clock generation

Inputs:
- uart_rx_serial: Serial data input for UART communication
- rf_in: Radio Frequency input from the antenna
- clk_25mhz: 25 MHz clock input

Outputs:
- led: 8-bit output to control LEDs
- diff_out: Differential output for RF signal
- pwm_out: Pulse Width Modulation output for demodulated audio
- pwm_out_p: 4-bit Positive PWM outputs for audio
- pwm_out_n: 4-bit Negative PWM outputs for audio

-----------------------------------------------------------------------------

*/

module top #(
    parameter DATA_WIDTH           = 12,
    parameter PHASE_WIDTH          = 64,
    parameter LUT_DEPTH            = 8,
    parameter CIC_REGISTER_WIDTH   = 72,
    parameter CIC_DECIMATION_RATIO = 4096,
    parameter CIC_GAIN_WIDTH       = 2,
    parameter PWM_COUNT_WIDTH      = 10,
    parameter PWM_OFFSET           = 512
)(
    input  logic       clk_25mhz,
    input  logic       arst,
    input  logic       uart_rx_serial,
    input  logic       rf_in,

    // For simulation only   //
    input  logic signed [15:0] analog_input,

    output logic       diff_out,
    output logic       pwm_out,
    output logic [3:0] pwm_out_p,
    output logic [3:0] pwm_out_n,
    output logic [7:0] led
);

  //---------- Typedefs for convenience --------- //
  typedef logic signed [DATA_WIDTH-1 :0] s_data_t;

  // --------------- PLL Signals ---------------- //
  logic                          clk_80mhz;
  logic                          pll_lock;
  // --------------- NCO Signals ---------------- //
  logic signed [PHASE_WIDTH-1:0] phase_increment;
  //logic                        nco_cosinewave;
  //logic                        nco_sinewave;
  //logic      [PHASE_WIDTH-1:0] phase_accumulator;

  // -------------- SinCos Signals -------------- //
  s_data_t                       lo_sinewave;
  s_data_t                       lo_cosinewave;

  // -------------- Mixer Signals --------------- //
  s_data_t                       mix_sinewave;
  s_data_t                       mix_cosinewave;

  // -------------- CIC Signals ----------------- //
  logic [CIC_GAIN_WIDTH-1:0]     cic_gain;
  s_data_t                       cic_sine_out;
  logic                          cic_sine_clk;
  s_data_t                       cic_cosine_out;
  logic                          cic_cosine_clk;

  // -------------- AMDem Signals --------------- //
  s_data_t                       amdemod_out;

  // -------------- UART Signals ---------------- //
  logic                          uart_rx_data_valid;
  logic [7:0]                    uart_rx_byte;


  // NOTE: This is Lattice IP PLL
  //===========================//
  //          PLL IP           //
  //===========================//
  PLL PLL_inst (
      .CLKI (clk_25mhz),
      .CLKOP(clk_80mhz),
      .LOCK (pll_lock)
  );



  // NOTE: This is open-source PLL
  //===========================//
  //          ECP5PLL          //
  //===========================//
  /*logic [3:0] clocks; // NOTE: Only clocks[0] is needed
  always_comb clk_80mhz = clocks[0];
  ecp5pll
  #(
      .in_hz(25000000),
    .out0_hz(80000000),                 .out0_tol_hz(0),
    .out1_hz(25000000), .out1_deg( 90), .out1_tol_hz(0),
    .out2_hz(25000000), .out2_deg(180), .out2_tol_hz(0),
    .out3_hz(25000000), .out3_deg(300), .out3_tol_hz(0)
  //.reset_en(),        .standby_en(),   .dynamic_en()
  )
  ecp5pll_inst
  (
    .clk_i(clk_25mhz),
    .clk_o(clocks),
    .reset()
  );
  */

  /*
  //NOTE: If using SinCos IP uncomment
  //===========================//
  //          NCO              //
  //===========================//
  nco_sig #(
      .REGISTER_WIDTH(PHASE_WIDTH)
  ) nco_sig_inst (
      .clk              (clk_80mhz),
      .phase_increment  (phase_increment[1]),
      .phase_accumulator(phase_accumulator),
      .sinewave_out     (nco_sinewave),
      .cosinewave_out   (nco_cosinewave)
  );

  //===========================//
  //          SinCos           //
  //===========================//

  SinCos SinCos_inst (
      .Clock (clk_80mhz),
      .ClkEn (1'b1),
      .Reset (1'b0),
      .Theta (phase_accumulator[PHASE_WIDTH-1:PHASE_WIDTH-LUT_DEPTH]),
      .Sine  (lo_sinewave),
      .Cosine(lo_cosinewave)
  );
  */

  /*
  // NOTE: Written sinewave_generator module
  //===========================//
  //          NCO              //
  //===========================//
  sinewave_generator#(
     .DATA_WIDTH (DATA_WIDTH),
     .LUT_DEPTH  (LUT_DEPTH),
     .PHASE_WIDTH(PHASE_WIDTH)
  ) nco_inst (
     .clk            (clk_80mhz),
     .arst           (1'b0),
     .sample_clk_ce  (1'b1),
     .phase_increment(phase_increment[1]),
     .sinewave       (lo_sinewave),
     .cosinewave     (lo_cosinewave)
  );
  */

  //===========================//
  //          NCO              //
  //===========================//
  quarterwave_generator#(
     .DATA_WIDTH     (DATA_WIDTH),
     .QLUT_DEPTH     (LUT_DEPTH),
     .PHASE_WIDTH    (PHASE_WIDTH)
  ) nco_inst (
     .clk            (clk_80mhz),
     .arst           (arst),
     .sample_clk_ce  (1'b1),
     .phase_increment(phase_increment),
     .sinewave       (lo_sinewave),
     .cosinewave     (lo_cosinewave)
  );


  //===========================//
  //          Mixer            //
  //===========================//
  Mixer #(
      .DATA_WIDTH    (DATA_WIDTH)
  ) mixer_inst (
      .clk           (clk_80mhz),
      .arst          (arst),
      .rf_in         (rf_in),
      .sinewave_in   (lo_sinewave),
      .cosinewave_in (lo_cosinewave),
      .rf_out        (diff_out),
      .sinewave_out  (mix_sinewave),
      .cosinewave_out(mix_cosinewave)
  );

  //===========================//
  //       CIC (Sine)          //
  //===========================//
  CIC #(
      .DATA_WIDTH      (DATA_WIDTH),
      .REGISTER_WIDTH  (CIC_REGISTER_WIDTH),
      .DECIMATION_RATIO(CIC_DECIMATION_RATIO),
      .GAIN_WIDTH      (CIC_GAIN_WIDTH)
  ) cic_sine_inst (
      .clk             (clk_80mhz),
      .arst            (arst),
      .gain            (cic_gain),
      .data_in         (mix_sinewave),
      .data_out        (cic_sine_out),
      .data_clk        (cic_sine_clk)
  );

  //===========================//
  //      CIC (Cosine)         //
  //===========================//
  CIC #(
      .DATA_WIDTH      (DATA_WIDTH),
      .REGISTER_WIDTH  (CIC_REGISTER_WIDTH),
      .DECIMATION_RATIO(CIC_DECIMATION_RATIO),
      .GAIN_WIDTH      (CIC_GAIN_WIDTH)
  ) cic_cosine_inst (
      .clk             (clk_80mhz),
      .arst            (arst),
      .gain            (cic_gain),
      .data_in         (mix_cosinewave),
      .data_out        (cic_cosine_out),
      .data_clk        (cic_cosine_clk)
  );

  //===========================//
  //     AM Demodulator        //
  //===========================//
  AMDemodulator #(
      .DATA_WIDTH (DATA_WIDTH)
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
      .DATA_WIDTH   (DATA_WIDTH),
      .COUNT_WIDTH  (PWM_COUNT_WIDTH),
      .OFFSET       (PWM_OFFSET)
  ) pwm_inst (
      .clk    (clk_80mhz),
      .arst   (arst),
      .data_in(amdemod_out),
      .pwm_out(pwm_out)
  );

  //===========================//
  //          UART RX          //
  //===========================//
  uart_rx #(
      .CLKS_PER_BIT(694) // 87
  ) uart_rx_inst (
      .osc_clk    (clk_80mhz),
      .i_Rx_Serial(uart_rx_serial),
      .o_Rx_DV    (uart_rx_data_valid),
      .o_Rx_Byte  (uart_rx_byte)
  );

  always_comb begin
    led = uart_rx_byte[7:0];

    pwm_out_p = {4{ pwm_out}};
    pwm_out_n = {4{!pwm_out}};
  end

  always_ff @(posedge clk_80mhz or posedge arst) begin
    if(arst == 1'b1) begin
      phase_increment    <= '0;
      //uart_rx_data_valid <= 1'b0;
      //uart_rx_byte       <= '0;
      cic_gain           <= '0;
    end else begin

      if (uart_rx_data_valid) begin
        unique case (uart_rx_byte)
          8'd48:  cic_gain <= 2'b00;  // Keyboard 0
          8'd49:  cic_gain <= 2'b01;  // Keyboard 1
          8'd50:  cic_gain <= 2'b10;  // Keyboard 2
          8'd51:  cic_gain <= 2'b11;  // Keyboard 3
          default cic_gain <= 2'd0;
        endcase

        unique case (uart_rx_byte)
          //97:     phase_increment <= 64'h4CF41F212D77318;                  // Keyboard a --> Zavidovići 1503 kHz
          //97:     phase_increment <= 64'h0400000000000000;                 // Keyboard a --> 1.25 MHz for 80 MHz clock
          97:     phase_increment <= 64'h3dafcea68de1281;                    // Keyboard a --> 1.25 MHz for 83MHz clock
          98:     phase_increment <= 64'h1aa60f8b8911654;                    // Keyboard b --> Kossuth Budapest 540 KHz
          102:    phase_increment <= 64'h1dc38c076704516d;                   // Keyboard f --> 9650 KHz
          103:    phase_increment <= 64'h1d60d923295482c6;                   // Keyboard g --> Radio China 9525 KHz
          110:    phase_increment <= phase_increment - 64'h71b375868d170; // Keyboard n --> - 9KHz
          109:    phase_increment <= phase_increment + 64'h71b375868d170; // Keyboard m --> + 9KHz
          111:    phase_increment <= phase_increment - 64'h1436a8cdf6f3;  // Keyboard o --> - 100 Hz
          112:    phase_increment <= phase_increment + 64'h1436a8cdf6f3;  // Keyboard p --> + 100 Hz
          113:    phase_increment <= phase_increment - 64'hca22980ba57e;  // Keyboard q --> - 1KHz
          104:    phase_increment <= phase_increment + 64'hca22980ba57e;  // Keyboard r --> + 1 KHz
          default phase_increment <= '0;
        endcase
      end
    end
  end

  //============================//
  //    For simulation only     //
  //============================//
  //`ifdef SIMULATION
  initial begin
    $dumpfile("top.vcd");
    $dumpvars;
  end
  //`endif
endmodule

/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26 TH: initial creation
 2024/5/26 TH: revision
 2024/8/20 TH: Updated to use array for phase_increment
*/
