`timescale 1ps/1ps

module register
(
	input wire			clk,
	input wire			rst_n,
	input wire			we,
	input wire [3:0]	src0,
	input wire [3:0]	src1,
	input wire [3:0]	dst,
	input wire [7:0]	data,
	output wire [7:0]	data0,
	output wire [7:0]	data1,
//debug
    output wire [7:0]   debug_reg0,
    output wire [7:0]   debug_reg1,
    output wire [7:0]   debug_reg2,
    output wire [7:0]   debug_reg3,
    output wire [7:0]   debug_reg4,
    output wire [7:0]   debug_reg5,
    output wire [7:0]   debug_reg6,
    output wire [7:0]   debug_reg7,
    output wire [7:0]   debug_reg8,
    output wire [7:0]   debug_reg9,
    output wire [7:0]   debug_reg10,
    output wire [7:0]   debug_reg11,
    output wire [7:0]   debug_reg12,
    output wire [7:0]   debug_reg13,
    output wire [7:0]   debug_reg14,
    output wire [7:0]   debug_reg15
);

	reg [7:0] regis [15:0];

	always @(posedge clk) begin
		if(!rst_n) begin
			regis[0]	<= 0;
			regis[1]	<= 0;
			regis[2]	<= 0;
			regis[3]	<= 0;
			regis[4]	<= 0;
			regis[5]	<= 0;
			regis[6]	<= 0;
			regis[7]	<= 0;
			regis[8]	<= 0;
			regis[9]	<= 0;
			regis[10]	<= 0;
			regis[11]	<= 0;
			regis[12]	<= 0;
			regis[13]	<= 0;
			regis[14]	<= 0;
			regis[15]	<= 0;
		end else begin
			if (we) begin
				regis[dst] <= data;
			end
		end
	end

	assign data0 = regis[src0];
	assign data1 = regis[src1];
    
    //debug
    assign debug_reg0 = regis[0];
    assign debug_reg1 = regis[1];
    assign debug_reg2 = regis[2];
    assign debug_reg3 = regis[3];
    assign debug_reg4 = regis[4];
    assign debug_reg5 = regis[5];
    assign debug_reg6 = regis[6];
    assign debug_reg7 = regis[7];
    assign debug_reg8 = regis[8];
    assign debug_reg9 = regis[9];
    assign debug_reg10 = regis[10];
    assign debug_reg11 = regis[11];
    assign debug_reg12 = regis[12];
    assign debug_reg13 = regis[13];
    assign debug_reg14 = regis[14];
    assign debug_reg15 = regis[15];
endmodule
