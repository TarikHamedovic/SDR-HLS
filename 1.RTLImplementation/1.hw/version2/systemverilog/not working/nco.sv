module nco # (
            parameter                            DATA_WIDTH        = 16,
            parameter                            ACCUMULATOR_WIDTH = 64, // width accumulator
            parameter                            QLUT_DEPTH        = 11 // width of table (4 * RAM depth),
)
(
    input   logic                                clk,
    input   logic                                arst,
    input   logic        [ACCUMULATOR_WIDTH-1:0] phase_increment,
    output  logic signed [DATA_WIDTH-1:0]        sinewave_out,
    output  logic signed [DATA_WIDTH-1:0]        cosinewave_out
);

            logic        [ACCUMULATOR_WIDTH-1:0] phase_accumulator;
            logic        [DATA_WIDTH-1:0]        sinewave, cosinewave;

    always_ff @ (posedge clk or posedge arst) begin
        if (arst == 1'b1) begin
            phase_accumulator <= {ACCUMULATOR_WIDTH{1'b0}};
        end
        else begin
            phase_accumulator <= phase_accumulator + phase_increment;
        end
    end

    sine_cosine                         # (
                                            .DATA_WIDTH    (DATA_WIDTH),
                                            .QLUT_DEPTH   (QLUT_DEPTH)
                                        )
                                        lut (
                                            .clk           (clk),
                                            .arst          (arst),
                                            .theta         (phase_accumulator[ACCUMULATOR_WIDTH-1:ACCUMULATOR_WIDTH-QLUT_DEPTH]),
                                            .sinewave_out  (sinewave),
                                            .cosinewave_out(cosinewave)
                                        );

    always_comb begin
        sinewave_out   = sinewave  [DATA_WIDTH-1:0];
        cosinewave_out = cosinewave[DATA_WIDTH-1:0];
    end

//============================//
  //    For simulation only     //
  //============================//
  //`ifdef SIMULATION
  initial begin
    $dumpfile("nco_waves.vcd");
    $dumpvars;
  end
  //`endif

endmodule
