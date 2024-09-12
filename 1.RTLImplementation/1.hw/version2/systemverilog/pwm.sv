module pwm # (
            parameter                     DATA_WIDTH = 12
)
(
    input   logic                         clk,
    input   logic                         arst,
    input   logic                         data_valid,
    input   logic signed [DATA_WIDTH-1:0] data,
    output  logic                         pwm_out
);
    logic [DATA_WIDTH-1:0]                count;
    logic [DATA_WIDTH-1:0]                data_reg;
    logic [DATA_WIDTH-1:0]                compare_reg;

    always_ff @ (posedge clk or posedge arst) begin
        if (arst == 1'b1) begin
            count       <= {DATA_WIDTH{1'b0}};
            data_reg    <= {DATA_WIDTH{1'b0}};
            compare_reg <= {1'b1, {DATA_WIDTH-1{1'b0}}};
            pwm_out     <= 1'b0;
        end
        else begin
            if (data_valid) begin
                data_reg    <= 1'b1 + data + {1'b0, {DATA_WIDTH-1{1'b1}}};
            end
            count   <= count + 1'b1;
            if (&count) begin
                compare_reg <= data_reg;
            end
            pwm_out <= (count > compare_reg);
        end
    end

endmodule

