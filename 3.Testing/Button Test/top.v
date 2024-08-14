module top(
   input wire clk_25mhz,
   input wire btn,
   output reg led  
);

always @(posedge clk_25mhz) begin  
   if (btn == 1'b1) begin
      led <= 1'b0;
   end else begin
      led <= 1'b1;
   end
end

endmodule
