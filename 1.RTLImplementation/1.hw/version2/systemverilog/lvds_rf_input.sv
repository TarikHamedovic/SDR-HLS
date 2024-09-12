module lvds_rf_input # (
            parameter                   DATA_WIDTH = 12
)
(
    input   logic                         clk,
    input   logic                         arst,
    input   logic                         lvds_in,
    output  logic                         integrator_out,
    output  logic signed [DATA_WIDTH-1:0] data_out
);
            logic [1:0]                   metastable;

    always_ff @ (posedge clk or posedge arst) begin
        if(arst == 1'b1) begin
           metastable     <= 2'b00;
        end else begin
           integrator_out <= lvds_in;
           metastable     <= {metastable[0], integrator_out};
        end
    end

    always_ff @ (posedge clk or posedge arst) begin
        if (arst == 1'b1) begin
            data_out <= {DATA_WIDTH{1'b0}};
        end else begin
            data_out <= metastable[1] ? {DATA_WIDTH{1'b1}} : {{(DATA_WIDTH-1){1'b0}}, 1'b1};
        end
    end

endmodule
