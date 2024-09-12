/*
-----------------------------------------------------------------------------
Module: CIC
Description:
This module implements a Cascaded Integrator-Comb (CIC) filter, commonly used 
for decimation (reducing the sampling rate) and interpolation (increasing the 
sampling rate) in digital signal processing.

Inputs:
- clk: Clock signal.
- arst: Asynchronous reset signal.
- gain: Gain control signal.
- data_in: Signed input data signal.
- data_in_valid: Valid signal for input data.

Outputs:
- data_out: Signed output data signal.
- data_out_valid: Valid signal for output data.
- data_clk: Output clock signal for the decimated data.

Parameters:
- DATA_WIDTH: Bit width for input and output data signals (default is 12).
- DECIMATION_RATIO: Decimation factor (default is 4096).
- GAIN_WIDTH: Bit width for gain control signal (default is 2).
- N_STAGES: Number of stages in the CIC filter (default is 5).
- DDELAY: Differential delay (default is 1).

Bit Width Calculation to Avoid Overflow:
For a Q-stage CIC decimation-by-D filter (diff delay = 1), overflow errors are 
avoided if the number of integrator and comb register bit widths is at least:

    register bit widths = number of bits in x(n) + {Q * log2(D)}

-----------------------------------------------------------------------------
*/

module CIC #(
    parameter DATA_WIDTH       = 12,
    parameter DECIMATION_RATIO = 4096,  // Default decimation ratio
    parameter GAIN_WIDTH       = 2,     // Bit width for gain control
    parameter N_STAGES         = 5,     // Number of CIC stages
    parameter DDELAY           = 1      // Differential delay
) (
    input  logic                         clk,
    input  logic                         arst,
    input  logic        [GAIN_WIDTH-1:0] gain,
    input  logic signed [DATA_WIDTH-1:0] data_in,
    input  logic                         data_in_valid,
    output logic signed [DATA_WIDTH-1:0] data_out,
    output logic                         data_out_valid
);

  typedef logic signed [REGISTER_WIDTH-1:0] s_register_t;
  localparam int REGISTER_WIDTH = DATA_WIDTH + (N_STAGES * $clog2(DECIMATION_RATIO * DDELAY));
  localparam int COUNT_WIDTH = $clog2(DECIMATION_RATIO);

  //=============================//
  //       Internal signals      //
  //=============================//
  s_register_t                   integrator[N_STAGES];
  s_register_t                   comb[DDELAY-1:0][N_STAGES];
  s_register_t                   comb_delay[N_STAGES];
  logic                          comb_enable;
  logic        [COUNT_WIDTH-1:0] decimation_count;
  s_register_t                   result;
  wire                           decimation_complete;

  assign decimation_complete = (decimation_count >= (DECIMATION_RATIO[COUNT_WIDTH-1:0] - {{(COUNT_WIDTH-1){1'b0}}, 1'b1}));

  always_comb begin
    result = comb_delay[N_STAGES-1] >>> (REGISTER_WIDTH - DATA_WIDTH - gain);
  end

  //=============================//
  //    Integrator section       //
  //=============================//
  always_ff @(posedge clk or posedge arst) begin
    if (arst == 1'b1) begin
      for (int i = 0; i < N_STAGES; i++) begin
        integrator[i] <= '0;
      end
      decimation_count   <= '0;
      comb_enable        <= 1'b0;
    end else begin
      if (data_in_valid == 1'b1) begin
        integrator[0]     <= s_register_t'(data_in) + integrator[0];
        for (int i = 1; i < N_STAGES; i++) begin
          integrator[i]   <= integrator[i] + integrator[i-1];
        end

        comb_enable        <= decimation_complete;
        if (decimation_complete == 1'b1) begin
          decimation_count <= '0;
        end else begin
          decimation_count <= decimation_count + {{(COUNT_WIDTH - 1) {1'b0}}, 1'b1};
        end
      end else begin
        comb_enable        <= 1'b0;
      end
    end
  end

  //=============================//
  //       Comb section          //
  //=============================//
  always_ff @(posedge clk or posedge arst) begin
    if (arst == 1'b1) begin
      data_out_valid <= 1'b0;
      data_out <= '0;
      for (int i = 0; i < N_STAGES; i++) begin
        comb_delay[i] <= '0;
        for (int j = 0; j < DDELAY; j++) begin
          comb[j][i] <= '0;
        end
      end
    end else begin
      if (comb_enable == 1'b1) begin
        for (int i = 0; i < N_STAGES; i++) begin
          for (int j = 0; j < DDELAY; j++) begin
            if (j == 0) begin
              if (i == 0) begin
                comb[0][0] <= integrator[N_STAGES-1];
              end else begin
                comb[0][i] <= comb_delay[i-1];
              end
            end else begin
              comb[j][i]   <= comb[j-1][i];
            end
          end
          if (i == 0) begin
            comb_delay[0]  <= integrator[N_STAGES-1] - comb[DDELAY-1][0];
          end else begin
            comb_delay[i]  <= comb_delay[i-1] - comb[DDELAY-1][i];
          end
        end
      end
      data_out_valid       <= comb_enable;
      data_out             <= result[DATA_WIDTH-1:0];
    end
  end

  //============================//
  //    For simulation only     //
  //============================//
  `ifdef SIMULATION
  initial begin
    $dumpfile("CIC_waves.vcd");
    $dumpvars;
  end
  `endif

endmodule
/*
-----------------------------------------------------------------------------
Version History:
-----------------------------------------------------------------------------
 2024/5/26 TH: Initial Creation
 2024/5/26 TH: Revision
 2024/7/10 TH: Made it Generic
-----------------------------------------------------------------------------
*/

