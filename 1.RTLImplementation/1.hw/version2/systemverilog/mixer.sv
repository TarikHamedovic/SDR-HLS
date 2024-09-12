module mixer # (
            parameter                        DATA_WIDTH = 12
)
(
    input   logic                            clk,
    input   logic                            arst,
    input   logic signed [DATA_WIDTH-1:0]    data_in,
    input   logic signed [DATA_WIDTH-1:0]    sinewave_in,
    input   logic signed [DATA_WIDTH-1:0]    cosinewave_in,
    output  logic signed [DATA_WIDTH-1:0]    sinewave_out,
    output  logic signed [DATA_WIDTH-1:0]    cosinewave_out
);
            localparam                       DATA_WIDTHD = (DATA_WIDTH * 2);
            logic signed [DATA_WIDTHD-1:0]   sinewave_prod, cosinewave_prod;


    always_ff@(posedge clk or posedge arst) begin
        if(arst == 1'b1) begin
            sinewave_prod   <= {DATA_WIDTHD{1'b0}};
            cosinewave_prod <= {DATA_WIDTHD{1'b0}};
        end else begin
            sinewave_prod   <= data_in * sinewave_in;
            cosinewave_prod <= data_in * cosinewave_in;
        end
    end

    always_comb begin
        sinewave_out   = sinewave_prod  [DATA_WIDTH-1:0];
        cosinewave_out = cosinewave_prod[DATA_WIDTH-1:0];
    end

endmodule
