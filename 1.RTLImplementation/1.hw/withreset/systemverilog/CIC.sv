module CIC #(
    parameter  DATA_WIDTH       = 12,
    parameter  REGISTER_WIDTH   = 64,
    parameter  DECIMATION_RATIO = 16,
    parameter  GAIN_WIDTH       = 8
) (
    input  logic                         clk,
    input  logic                         arst,
    input  logic        [GAIN_WIDTH-1:0] gain,
    input  logic signed [DATA_WIDTH-1:0] data_in,
    output logic signed [DATA_WIDTH-1:0] data_out,
    output logic                         data_clk
);

  typedef logic signed [REGISTER_WIDTH-1:0] s_register_t;
  localparam COUNT_WIDTH = $clog2(DECIMATION_RATIO);

  //=============================//
  //       Internal signals      //
  //=============================//
  s_register_t                      integrator_tmp, integrator_d_tmp;
  s_register_t                      integrator1, integrator2, integrator3, integrator4, integrator5;
  s_register_t                      comb6, comb_d6, comb7, comb_d7, comb8, comb_d8, comb9, comb_d9, comb10;
  logic                             valid_comb;
  logic                             decimation_clk;
  logic        [COUNT_WIDTH-1:0]    count;

  //=============================//
  //    Integrator section       //
  //=============================//
  always_ff @(posedge clk or posedge arst) begin
    if (arst == 1'b1) begin
      integrator1        <= '0;
      integrator2        <= '0;
      integrator3        <= '0;
      integrator4        <= '0;
      integrator5        <= '0;
      count              <= '0;
      integrator_tmp     <= '0;
      decimation_clk     <= 1'b0;
      valid_comb         <= 1'b0;
    end else begin
      integrator1        <= integrator1 + data_in;
      integrator2        <= integrator1 + integrator2;
      integrator3        <= integrator2 + integrator3;
      integrator4        <= integrator3 + integrator4;
      integrator5        <= integrator4 + integrator5;

      //=============================//
      //        Decimation           //
      //=============================//
      if (count == COUNT_WIDTH'(DECIMATION_RATIO - 1)) begin
        count            <= '0;
        integrator_tmp   <= integrator5;
        decimation_clk   <= 1'b1;
        valid_comb       <= 1'b1;
      end else if (count == COUNT_WIDTH'(DECIMATION_RATIO >> 1)) begin
        decimation_clk   <= 1'b0;
        count            <= count + 1'b1;
        valid_comb       <= 1'b0;
      end else begin
        count            <= count + 1'b1;
        valid_comb       <= 1'b0;
      end
    end
  end

  //=============================//
  //       Comb section          //
  //=============================//
  always_ff @(posedge clk or posedge arst) begin
    if (arst == 1'b1) begin
      integrator_d_tmp    <= '0;
      comb6               <= '0;
      comb_d6             <= '0;
      comb7               <= '0;
      comb_d7             <= '0;
      comb8               <= '0;
      comb_d8             <= '0;
      comb9               <= '0;
      comb_d9             <= '0;
      comb10              <= '0;
      data_clk            <= 1'b0;
    end else begin
      data_clk            <= decimation_clk;

      if (valid_comb == 1'b1) begin
        integrator_d_tmp  <= integrator_tmp;
        comb6             <= integrator_tmp - integrator_d_tmp;
        comb_d6           <= comb6;
        comb7             <= comb6 - comb_d6;
        comb_d7           <= comb7;
        comb8             <= comb7 - comb_d7;
        comb_d8           <= comb8;
        comb9             <= comb8 - comb_d8;
        comb_d9           <= comb9;
        comb10            <= comb9 - comb_d9;
      end
    end
  end

  always_comb data_out = DATA_WIDTH'(comb10 >>> (REGISTER_WIDTH - DATA_WIDTH - gain));

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
