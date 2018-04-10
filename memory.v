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
      for(i = 0; i < 33; i = i + 1) begin
        mem[i] <= 8'h0;
      end
                        // map index
                                mem[33] <= 8'd67;
                                mem[34] <= 8'd70;
                                mem[35] <= 8'd73;
                                mem[36] <= 8'd76;
                                mem[37] <= 8'd80;
                                mem[38] <= 8'd86;
                                mem[39] <= 8'd92;
                                mem[40] <= 8'd97;
                                mem[41] <= 8'd100;
                                mem[42] <= 8'd103;
                                mem[43] <= 8'd108;
                                mem[44] <= 8'd117;
                                mem[45] <= 8'd121;
                                mem[46] <= 8'd122;
                                mem[47] <= 8'd128;
                                mem[48] <= 8'd136;
                                mem[49] <= 8'd140;
                                mem[50] <= 8'd142;
                                mem[51] <= 8'd150;
                                mem[52] <= 8'd154;
                                mem[53] <= 8'd159;
                                mem[54] <= 8'd160;
                                mem[55] <= 8'd166;
                                mem[56] <= 8'd171;
                                mem[57] <= 8'd173;
                                mem[58] <= 8'd179;
                                mem[59] <= 8'd184;
                                mem[60] <= 8'd187;
                                mem[61] <= 8'd194;
                                mem[62] <= 8'd198;
                                mem[63] <= 8'd202;
                                mem[64] <= 8'd205;
                                mem[65] <= 8'd213;
                                mem[66] <= 8'd215;


                        // area 0

                                mem[67] <= 8'd21;
                                mem[68] <= 8'd19;
                                mem[69] <= 8'd10;
                        // area 1

                                mem[70] <= 8'd24;
                                mem[71] <= 8'd5;
                                mem[72] <= 8'd27;
                        // area 2

                                mem[73] <= 8'd10;
                                mem[74] <= 8'd31;
                                mem[75] <= 8'd17;
                        // area 3

                                mem[76] <= 8'd4;
                                mem[77] <= 8'd18;
                                mem[78] <= 8'd31;
                                mem[79] <= 8'd12;
                        // area 4

                                mem[80] <= 8'd20;
                                mem[81] <= 8'd24;
                                mem[82] <= 8'd27;
                                mem[83] <= 8'd7;
                                mem[84] <= 8'd18;
                                mem[85] <= 8'd3;
                        // area 5

                                mem[86] <= 8'd11;
                                mem[87] <= 8'd1;
                                mem[88] <= 8'd27;
                                mem[89] <= 8'd9;
                                mem[90] <= 8'd10;
                                mem[91] <= 8'd24;
                        // area 6

                                mem[92] <= 8'd13;
                                mem[93] <= 8'd15;
                                mem[94] <= 8'd22;
                                mem[95] <= 8'd14;
                                mem[96] <= 8'd28;
                        // area 7

                                mem[97] <= 8'd4;
                                mem[98] <= 8'd18;
                                mem[99] <= 8'd27;
                        // area 8

                                mem[100] <= 8'd31;
                                mem[101] <= 8'd9;
                                mem[102] <= 8'd27;
                        // area 9

                                mem[103] <= 8'd5;
                                mem[104] <= 8'd27;
                                mem[105] <= 8'd8;
                                mem[106] <= 8'd31;
                                mem[107] <= 8'd10;
                        // area 10

                                mem[108] <= 8'd0;
                                mem[109] <= 8'd21;
                                mem[110] <= 8'd11;
                                mem[111] <= 8'd5;
                                mem[112] <= 8'd9;
                                mem[113] <= 8'd31;
                                mem[114] <= 8'd2;
                                mem[115] <= 8'd17;
                                mem[116] <= 8'd19;
                        // area 11

                                mem[117] <= 8'd21;
                                mem[118] <= 8'd24;
                                mem[119] <= 8'd5;
                                mem[120] <= 8'd10;
                        // area 12

                                mem[121] <= 8'd3;
                        // area 13

                                mem[122] <= 8'd21;
                                mem[123] <= 8'd19;
                                mem[124] <= 8'd17;
                                mem[125] <= 8'd15;
                                mem[126] <= 8'd6;
                                mem[127] <= 8'd28;
                        // area 14

                                mem[128] <= 8'd22;
                                mem[129] <= 8'd29;
                                mem[130] <= 8'd6;
                                mem[131] <= 8'd28;
                                mem[132] <= 8'd30;
                                mem[133] <= 8'd26;
                                mem[134] <= 8'd16;
                                mem[135] <= 8'd25;
                        // area 15

                                mem[136] <= 8'd13;
                                mem[137] <= 8'd17;
                                mem[138] <= 8'd22;
                                mem[139] <= 8'd6;
                        // area 16

                                mem[140] <= 8'd14;
                                mem[141] <= 8'd26;
                        // area 17

                                mem[142] <= 8'd19;
                                mem[143] <= 8'd10;
                                mem[144] <= 8'd2;
                                mem[145] <= 8'd31;
                                mem[146] <= 8'd25;
                                mem[147] <= 8'd22;
                                mem[148] <= 8'd15;
                                mem[149] <= 8'd13;
                        // area 18

                                mem[150] <= 8'd7;
                                mem[151] <= 8'd4;
                                mem[152] <= 8'd3;
                                mem[153] <= 8'd32;
                        // area 19

                                mem[154] <= 8'd21;
                                mem[155] <= 8'd0;
                                mem[156] <= 8'd10;
                                mem[157] <= 8'd17;
                                mem[158] <= 8'd13;
                        // area 20

                                mem[159] <= 8'd4;
                        // area 21

                                mem[160] <= 8'd13;
                                mem[161] <= 8'd19;
                                mem[162] <= 8'd0;
                                mem[163] <= 8'd10;
                                mem[164] <= 8'd11;
                                mem[165] <= 8'd24;
                        // area 22

                                mem[166] <= 8'd15;
                                mem[167] <= 8'd17;
                                mem[168] <= 8'd25;
                                mem[169] <= 8'd14;
                                mem[170] <= 8'd6;
                        // area 23

                                mem[171] <= 8'd31;
                                mem[172] <= 8'd29;
                        // area 24

                                mem[173] <= 8'd21;
                                mem[174] <= 8'd11;
                                mem[175] <= 8'd5;
                                mem[176] <= 8'd1;
                                mem[177] <= 8'd27;
                                mem[178] <= 8'd4;
                        // area 25

                                mem[179] <= 8'd17;
                                mem[180] <= 8'd31;
                                mem[181] <= 8'd29;
                                mem[182] <= 8'd14;
                                mem[183] <= 8'd22;
                        // area 26

                                mem[184] <= 8'd30;
                                mem[185] <= 8'd14;
                                mem[186] <= 8'd16;
                        // area 27

                                mem[187] <= 8'd1;
                                mem[188] <= 8'd24;
                                mem[189] <= 8'd4;
                                mem[190] <= 8'd7;
                                mem[191] <= 8'd5;
                                mem[192] <= 8'd9;
                                mem[193] <= 8'd8;
                        // area 28

                                mem[194] <= 8'd13;
                                mem[195] <= 8'd6;
                                mem[196] <= 8'd14;
                                mem[197] <= 8'd30;
                        // area 29

                                mem[198] <= 8'd25;
                                mem[199] <= 8'd23;
                                mem[200] <= 8'd14;
                                mem[201] <= 8'd31;
                        // area 30

                                mem[202] <= 8'd28;
                                mem[203] <= 8'd14;
                                mem[204] <= 8'd26;
                        // area 31

                                mem[205] <= 8'd2;
                                mem[206] <= 8'd10;
                                mem[207] <= 8'd9;
                                mem[208] <= 8'd8;
                                mem[209] <= 8'd17;
                                mem[210] <= 8'd25;
                                mem[211] <= 8'd29;
                                mem[212] <= 8'd23;
                        // area 32

                                mem[213] <= 8'd18;
                                mem[214] <= 8'd3;

                        // LED pattern
                                mem[215] <= 8'b10000001; //0
                                mem[216] <= 8'b11001111; //1
                                mem[217] <= 8'b00000110; //2
                                mem[218] <= 8'b00000110; //3
                                mem[219] <= 8'b01001100; //4
                                mem[220] <= 8'b00100100; //5
                                mem[221] <= 8'b00100000; //6
                                mem[222] <= 8'b00001100; //7
                                mem[223] <= 8'b10000000; //8
                                mem[224] <= 8'b00000100; //9

      for(i = 225; i < 256; i = i + 1) begin
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
