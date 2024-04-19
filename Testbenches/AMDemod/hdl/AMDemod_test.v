module AMDemod_test(
    clk,
    I_in ,
    Q_in ,
    d_out
); 

AMDemodulator AMDemodulator(
	.clk(clk),
	.I_in(I_in),
	.Q_in(Q_in),
	-d_out(d_out)
);

initial_begin
	$dumpfile("waves.vcd")
	$dumpbards
end

endmodule

