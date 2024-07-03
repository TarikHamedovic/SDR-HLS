module sawtooth_generator #(
    parameter WIDTH = 8,
    parameter DIV_FACTOR = 256  // Frequency division factor
)(
    input wire clk,
    input wire rstn,
    output reg [WIDTH-1:0] sawtooth_out
);

reg [$clog2(DIV_FACTOR)-1:0] counter;

always @(posedge clk or negedge rstn) begin
    if (!rstn) begin
        sawtooth_out <= 0;
        counter <= 0;
    end else begin
        if (counter == (DIV_FACTOR - 1)) begin
            counter <= 0;
            sawtooth_out <= sawtooth_out + 1;
        end else begin
            counter <= counter + 1;
        end
    end
end

endmodule
