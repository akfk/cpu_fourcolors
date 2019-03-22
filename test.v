`timescale 1ps/1ps

module test;
	reg			clk;
	reg			rst_n;
	reg [4:0]	pb;
	wire [11:0]	led;

	/* top */
	fpga fpga_inst
	(
		.clk	(clk),
		.rst_n	(rst_n),
		.pb		(pb),
		.led	(led)
	);

	always #5 clk = ~clk;

	initial begin
		$monitor($stime, "clk:%d rst:%b pb:%b led:%b", clk, rst_n, pb, led);
		rst_n <= 0;
		clk <= 0;
		pb <= 0;
#150
		rst_n <= 1;
#100000
		$finish;
	end

endmodule
