`timescale 1ps/1ps

module memory
(
  input  wire       clk,
  input  wire       rst_n,
  input  wire       we,
  input  wire [7:0] in,
  input  wire [7:0] addr,
  output wire [7:0] out,

  //debug
  output wire [7:0] debug_memory0,
  output wire [7:0] debug_memory1,
  output wire [7:0] debug_memory2,
  output wire [7:0] debug_memory3,
  output wire [7:0] debug_memory4,
  output wire [7:0] debug_memory5,
  output wire [7:0] debug_memory6,
  output wire [7:0] debug_memory7,
  output wire [7:0] debug_memory8,
  output wire [7:0] debug_memory9,
  output wire [7:0] debug_memory10,
  output wire [7:0] debug_memory11,
  output wire [7:0] debug_memory12,
  output wire [7:0] debug_memory13,
  output wire [7:0] debug_memory14,
  output wire [7:0] debug_memory15,
  output wire [7:0] debug_memory16,
  output wire [7:0] debug_memory17,
  output wire [7:0] debug_memory18,
  output wire [7:0] debug_memory19,
  output wire [7:0] debug_memory20,
  output wire [7:0] debug_memory21,
  output wire [7:0] debug_memory22,
  output wire [7:0] debug_memory23,
  output wire [7:0] debug_memory24,
  output wire [7:0] debug_memory25,
  output wire [7:0] debug_memory26,
  output wire [7:0] debug_memory27,
  output wire [7:0] debug_memory28,
  output wire [7:0] debug_memory29,
  output wire [7:0] debug_memory30,
  output wire [7:0] debug_memory31,
  output wire [7:0] debug_memory32
);

  integer i;
  reg [7:0] mem [255:0];

  always @(posedge clk) begin
    if (!rst_n) begin
      for(i = 0; i < 23; i = i + 1) begin
        mem[i] <= 8'h0;
      end
 //the area number means (全国地方公共団体コード末尾2桁)-1

//map index
        mem[23] <= 8'd47;
        mem[24] <= 8'd52;
        mem[25] <= 8'd57;
        mem[26] <= 8'd63;
        mem[27] <= 8'd69;
        mem[28] <= 8'd75;
        mem[29] <= 8'd80;
        mem[30] <= 8'd87;
        mem[31] <= 8'd93;
        mem[32] <= 8'd98;
        mem[33] <= 8'd102;
        mem[34] <= 8'd106;
        mem[35] <= 8'd110;
        mem[36] <= 8'd117;
        mem[37] <= 8'd122;
        mem[38] <= 8'd126;
        mem[39] <= 8'd132;
        mem[40] <= 8'd137;
        mem[41] <= 8'd142;
        mem[42] <= 8'd145;
        mem[43] <= 8'd149;
        mem[44] <= 8'd153;
        mem[45] <= 8'd156;
        mem[46] <= 8'd159;

        //area 0
        mem[47] <= 8'd1;
        mem[48] <= 8'd2;
        mem[49] <= 8'd3;
        mem[50] <= 8'd4;
        mem[51] <= 8'd5;

        //area 1
        mem[52] <= 8'd0;
        mem[53] <= 8'd2;
        mem[54] <= 8'd5;
        mem[55] <= 8'd6;
        mem[56] <= 8'd7;

        //area 2
        mem[57] <= 8'd0;
        mem[58] <= 8'd1;
        mem[59] <= 8'd3;
        mem[60] <= 8'd7;
        mem[61] <= 8'd8;
        mem[62] <= 8'd12;

        //area 3
        mem[63] <= 8'd0;
        mem[64] <= 8'd2;
        mem[65] <= 8'd4;
        mem[66] <= 8'd12;
        mem[67] <= 8'd13;
        mem[68] <= 8'd15;

        //area 4
        mem[69] <= 8'd3;
        mem[70] <= 8'd0;
        mem[71] <= 8'd5;
        mem[72] <= 8'd15;
        mem[73] <= 8'd16;
        mem[74] <= 8'd17;

        //area 5
        mem[75] <= 8'd0;
        mem[76] <= 8'd1;
        mem[77] <= 8'd4;
        mem[78] <= 8'd6;
        mem[79] <= 8'd17;

        //area 6
        mem[80] <= 8'd1;
        mem[81] <= 8'd5;
        mem[82] <= 8'd7;
        mem[83] <= 8'd17;
        mem[84] <= 8'd20;
        mem[85] <= 8'd21;
        mem[86] <= 8'd22;

        //area 7
        mem[87] <= 8'd1;
        mem[88] <= 8'd2;
        mem[89] <= 8'd6;
        mem[90] <= 8'd8;
        mem[91] <= 8'd10;
        mem[92] <= 8'd22;

        //area 8
        mem[93] <= 8'd2;
        mem[94] <= 8'd7;
        mem[95] <= 8'd9;
        mem[96] <= 8'd10;
        mem[97] <= 8'd12;

        //area 9
        mem[98] <= 8'd8;
        mem[99] <= 8'd10;
        mem[100] <= 8'd11;
        mem[101] <= 8'd12;

        //area 10
        mem[102] <= 8'd7;
        mem[103] <= 8'd8;
        mem[104] <= 8'd9;
        mem[105] <= 8'd11;

        //area 11
        mem[106] <= 8'd14;
        mem[107] <= 8'd12;
        mem[108] <= 8'd9;
        mem[109] <= 8'd10;

        //area 12
        mem[110] <= 8'd11;
        mem[111] <= 8'd14;
        mem[112] <= 8'd2;
        mem[113] <= 8'd3;
        mem[114] <= 8'd13;
        mem[115] <= 8'd9;
        mem[116] <= 8'd8;

        //area 13
        mem[117] <= 8'd3;
        mem[118] <= 8'd12;
        mem[119] <= 8'd14;
        mem[120] <= 8'd15;
        mem[121] <= 8'd19;

        //area 14
        mem[122] <= 8'd11;
        mem[123] <= 8'd12;
        mem[124] <= 8'd13;
        mem[125] <= 8'd19;

        //area 15
        mem[126] <= 8'd4;
        mem[127] <= 8'd3;
        mem[128] <= 8'd13;
        mem[129] <= 8'd16;
        mem[130] <= 8'd18;
        mem[131] <= 8'd19;

        //area 16
        mem[132] <= 8'd4;
        mem[133] <= 8'd15;
        mem[134] <= 8'd18;
        mem[135] <= 8'd17;
        mem[136] <= 8'd20;

        //area 17
        mem[137] <= 8'd4;
        mem[138] <= 8'd5;
        mem[139] <= 8'd6;
        mem[140] <= 8'd16;
        mem[141] <= 8'd20;

        //area 18
        mem[142] <= 8'd15;
        mem[143] <= 8'd16;
        mem[144] <= 8'd19;

        //area 19
        mem[145] <= 8'd13;
        mem[146] <= 8'd14;
        mem[147] <= 8'd15;
        mem[148] <= 8'd18;

        //area 20
        mem[149] <= 8'd21;
        mem[150] <= 8'd16;
        mem[151] <= 8'd17;
        mem[152] <= 8'd6;

        //area 21
        mem[153] <= 8'd20;
        mem[154] <= 8'd22;
        mem[155] <= 8'd6;

        //area 22
        mem[156] <= 8'd21;
        mem[157] <= 8'd6;
        mem[158] <= 8'd7;

	// LED pattern
                                mem[159] <= 8'b11000000; //0
                                mem[160] <= 8'b11111001; //1
                                mem[161] <= 8'b10100100; //2
                                mem[162] <= 8'b10110000; //3
                                mem[163] <= 8'b10011001; //4
                                mem[164] <= 8'b10010010; //5
                                mem[165] <= 8'b10000010; //6
                                mem[166] <= 8'b11011000; //7
                                mem[167] <= 8'b10000000; //8
                                mem[168] <= 8'b10010000; //9

      for(i = 169; i < 256; i = i + 1) begin
        mem[i] <= 8'h0;
      end
    end else begin
      if (we) begin
        mem[addr] <= in;
      end
    end
  end

  assign out = mem[addr];
  
  //debug
  assign debug_memory0 = mem[0];
  assign debug_memory1 = mem[1];
  assign debug_memory2 = mem[2];
  assign debug_memory3 = mem[3];
  assign debug_memory4 = mem[4];
  assign debug_memory5 = mem[5];
  assign debug_memory6 = mem[6];
  assign debug_memory7 = mem[7];
  assign debug_memory8 = mem[8];
  assign debug_memory9 = mem[9];
  assign debug_memory10 = mem[10];
  assign debug_memory11 = mem[11];
  assign debug_memory12 = mem[12];
  assign debug_memory13 = mem[13];
  assign debug_memory14 = mem[14];
  assign debug_memory15 = mem[15];
  assign debug_memory16 = mem[16];
  assign debug_memory17 = mem[17];
  assign debug_memory18 = mem[18];
  assign debug_memory19 = mem[19];
  assign debug_memory20 = mem[20];
  assign debug_memory21 = mem[21];
  assign debug_memory22 = mem[22];
  assign debug_memory23 = mem[23];
  assign debug_memory24 = mem[24];
  assign debug_memory25 = mem[25];
  assign debug_memory26 = mem[26];
  assign debug_memory27 = mem[27];
  assign debug_memory28 = mem[28];
  assign debug_memory29 = mem[29];
  assign debug_memory30 = mem[30];
  assign debug_memory31 = mem[31];
  assign debug_memory32 = mem[32];

endmodule
