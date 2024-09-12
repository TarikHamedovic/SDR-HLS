module am_receiver #(
    parameter int DATA_WIDTH     = 12,
    parameter int QLUT_DEPTH     = 11,
    parameter int PHASE_WIDTH    = 64,
    parameter int CIC_DECIMATION = 4096,
    parameter int CIC_STAGES     = 5,
    parameter int CIC_GAIN_WIDTH = 2
) (
    input  logic                             clk,
    input  logic                             arst,
    input  logic        [   PHASE_WIDTH-1:0] phase_increment,
    input  logic        [CIC_GAIN_WIDTH-1:0] cic_gain,
    input  logic signed [    DATA_WIDTH-1:0] data_in,
    output logic                             demodulated_valid,
    output logic signed [    DATA_WIDTH-1:0] demodulated_out
);

  //----- Typedefs for convenience ---//
  typedef logic signed [DATA_WIDTH-1 : 0] s_data_t;
  // ------ SinCos Signals ---- //
  s_data_t lo_sinewave, lo_cosinewave;
  // ------ Mixer Signals ---- //
  s_data_t mix_sinewave, mix_cosinewave;
  // ------ CIC Signals ---- //
  s_data_t cic_sine_out, cic_cosine_out;
  logic cic_out_enable;

  //===========================//
  //          NCO              //
  //===========================//
  nco #(
      .DATA_WIDTH (DATA_WIDTH),
      .QLUT_DEPTH (QLUT_DEPTH),
      .PHASE_WIDTH(PHASE_WIDTH)
  ) nco_inst (
      .clk            (clk),
      .arst           (arst),
      .phase_increment(phase_increment),
      .sinewave       (lo_sinewave),
      .cosinewave     (lo_cosinewave)
  );

  //===========================//
  //          Mixer            //
  //===========================//
  mixer #(
      .DATA_WIDTH(DATA_WIDTH)
  ) mixer_inst (
      .clk           (clk),
      .arst          (arst),
      .data_in       (data_in),
      .sinewave_in   (lo_sinewave),
      .cosinewave_in (lo_cosinewave),
      .sinewave_out  (mix_sinewave),
      .cosinewave_out(mix_cosinewave)
  );

  //===========================//
  //       CIC (Sine)          //
  //===========================//
  cic #(
      .DATA_WIDTH      (DATA_WIDTH),
      .DECIMATION_RATIO(CIC_DECIMATION),
      .GAIN_WIDTH      (CIC_GAIN_WIDTH),
      .N_STAGES        (CIC_STAGES),
      .DDELAY          (1)
  ) cic_sine_inst (
      .clk             (clk),
      .arst            (arst),
      .gain            (cic_gain),
      .data_in_valid   (1'b1),
      .data_in         (mix_sinewave),
      .data_out_valid  (cic_out_enable),
      .data_out        (cic_sine_out)
  );

  //===========================//
  //      CIC (Cosine)         //
  //===========================//
  cic #(
      .DATA_WIDTH      (DATA_WIDTH),
      .DECIMATION_RATIO(CIC_DECIMATION),
      .GAIN_WIDTH      (CIC_GAIN_WIDTH),
      .N_STAGES        (CIC_STAGES),
      .DDELAY          (1)
  ) cic_cosine_inst (
      .clk             (clk),
      .arst            (arst),
      .gain            (cic_gain),
      .data_in_valid   (1'b1),
      .data_in         (mix_cosinewave),
      .data_out_valid  (),
      .data_out        (cic_cosine_out)
  );
  //===========================//
  //     AM Demodulator        //
  //===========================//

  am_demod #(
      .DATA_WIDTH    (DATA_WIDTH)
  ) am_demod_inst (
      .clk           (clk),
      .arst          (arst),
      .in_valid      (cic_out_enable),
      .inphase       (cic_sine_out),
      .quadrature    (cic_cosine_out),
      .demod_valid   (demodulated_valid),
      .demod         (demodulated_out)
  );

endmodule
