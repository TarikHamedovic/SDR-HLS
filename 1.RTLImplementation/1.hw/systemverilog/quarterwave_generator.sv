
module quarterwave_generator #(
    parameter DATA_WIDTH  = 12,
              QLUT_DEPTH  = 8,
              PHASE_WIDTH = 64
) (
    input  logic                             clk,
    input  logic                             arst,
    input  logic                             sample_clk_ce,
    input  logic         [PHASE_WIDTH-1:0]   phase_increment,
    output logic  signed [DATA_WIDTH -1:0]   sinewave,
    output logic  signed [DATA_WIDTH -1:0]   cosinewave
);

  logic         [           1:0] sine_negate;
  logic         [QLUT_DEPTH-3:0] sine_index;
  logic signed  [DATA_WIDTH-1:0] sine_table_value;

  logic         [           1:0] cosine_negate;
  logic         [QLUT_DEPTH-3:0] cosine_index;
  logic signed  [DATA_WIDTH-1:0] cosine_table_value;

  logic         [PHASE_WIDTH-1:0] phase_accumulator;

  // Instantiate quarterwave_table for sine and cosine
  quarterwave_table #( .QLUT_DEPTH(QLUT_DEPTH), .DATA_WIDTH(DATA_WIDTH) ) sinewave_inst (
      .address(sine_index),
      .value  (sine_table_value)
  );

  quarterwave_table #( .QLUT_DEPTH(QLUT_DEPTH), .DATA_WIDTH(DATA_WIDTH) ) cosinewave_inst (
      .address(cosine_index),
      .value  (cosine_table_value)
  );

  always_ff @(posedge clk or posedge arst) begin
    if      (arst == 1'b1)          phase_accumulator <= '0;
    else if (sample_clk_ce == 1'b1) phase_accumulator <= PHASE_WIDTH'(phase_accumulator + phase_increment);
  end

  always_ff @(posedge clk or posedge arst) begin
    if (arst == 1'b1) begin
      sine_negate        <= 2'b00;
      sine_index         <= '0;
      sinewave           <= '0;

      cosine_negate      <= 2'b00;
      cosine_index       <= '0;
      cosinewave         <= '0;
    end else if (sample_clk_ce == 1'b1) begin
      // Clock #1
      sine_negate[0]     <= phase_accumulator[PHASE_WIDTH-1];
      cosine_negate [0]  <= phase_accumulator[PHASE_WIDTH-1] ^ phase_accumulator[PHASE_WIDTH-2];

      if (phase_accumulator[(PHASE_WIDTH-2)]) begin
         sine_index      <= ~phase_accumulator[PHASE_WIDTH-3:(PHASE_WIDTH-QLUT_DEPTH)];
         cosine_index    <=  phase_accumulator[PHASE_WIDTH-3:(PHASE_WIDTH-QLUT_DEPTH)];
      end else begin
         sine_index      <=  phase_accumulator[PHASE_WIDTH-3:(PHASE_WIDTH-QLUT_DEPTH)];
         cosine_index    <= ~phase_accumulator[PHASE_WIDTH-3:(PHASE_WIDTH-QLUT_DEPTH)];
      end
      // Clock #2
      sine_negate  [1]   <= sine_negate  [0];
      cosine_negate[1]   <= cosine_negate[0];
      // Output Clock
      sinewave           <= sine_negate  [1] ? -sine_table_value   : sine_table_value;
      cosinewave         <= cosine_negate[1] ? -cosine_table_value : cosine_table_value;
    end
  end
  
  `ifdef SIMULATION
  initial begin
    $dumpfile("quarterwave.vcd");
    $dumpvars;
  end
  `endif
endmodule
    