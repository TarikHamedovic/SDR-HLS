module clock_divider #(
    parameter DIV_FACTOR = 4
)(
    input wire clk_in,
    input wire rstn,
    output reg clk_out
);

integer count;
integer half_div;

initial begin
    half_div = DIV_FACTOR / 2;
end

always @(posedge clk_in or negedge rstn) begin
    if (!rstn) begin
        count <= 0;
        clk_out <= 1'b0;
    end else begin
        if (count < (half_div - 1)) begin
            count <= count + 1;
        end else begin
            count <= 0;
            clk_out <= ~clk_out;
        end
    end
end

endmodule
