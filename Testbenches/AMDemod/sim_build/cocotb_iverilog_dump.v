module cocotb_iverilog_dump();
initial begin
    $dumpfile("sim_build/AMDemodulator.fst");
    $dumpvars(0, AMDemodulator);
end
endmodule
