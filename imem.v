`timescale 1ps/1ps

module imem
(
  input  wire [7:0]  pc,
  output reg  [15:0] op
);

`include "def.h"

  always @(*) begin
    case (pc)
        0  : op = {JMP, 8'd40, 4'd0};           //colorsearch();
        1  : op = {JMP, 8'd60, 4'd0};           //goto print                                          nuriowari

        //isusedcolor()
        20 : op = {LI, 8'd0, 4'd12};            //reg12 = 0;
        21 : op = {LI, 8'd23, 4'd1};            //reg1  = 23;
        22 : op = {ADD, 4'd1, 4'd10, 4'd1};     //reg1 += reg10;
        23 : op = {LOAD, 4'd1, 4'd0, 4'd14};    //reg14 = mem[reg1];( reg14 = mem[23 + reg10]; )
        24 : op = {LOAD, 4'd1, 4'd1, 4'd15};    //reg15 = mem[1+reg1];
        25 : op = {SUB, 4'd15, 4'd14, 4'd13};   //reg13 = reg15 - reg14;
        26 : op = {ADD, 4'd14, 4'd12, 4'd15};   //do{reg15 = reg14 + reg12;
        27 : op = {LOAD, 4'd15, 4'd0, 4'd15};   //  reg15 = mem[reg15]; ( reg15 = checkarea; )
        28 : op = {LOAD, 4'd15, 4'd0, 4'd15};   //  reg15 = mem[reg15]; ( reg15 = areapat[area][i]; )
        29 : op = {CMP, 4'd11, 4'd15, 4'h0};    //  if(reg15 == reg11)
        30 : op = {JNZ, 8'd50, 4'd0};           //      return true; ( goto nurenai)
        31 : op = {ADDI, 4'd12, 8'd1};          //  reg12++;
        32 : op = {CMP, 4'd12, 4'd13, 4'h0};    //  if(reg12 == reg13)
        33 : op = {JNZ, 8'd47, 4'd0};           //      return false; ( goto nureru)
        34 : op = {JMP, 8'd26, 4'd0};           //}while(1);

        //colorsearch()
        40 : op = {CMPI, 4'd10, 8'd23};         //do{if(reg10 == 23)
        41 : op = {JNZ, 8'd1, 4'd0};            //      return false;
        42 : op = {LOAD, 4'd10, 4'h0, 4'd11};   //  reg11 = mem[reg10];
        43 : op = {CMPI, 4'd11, 8'd4};          //  if(reg11 == 4)
        44 : op = {JNZ, 8'd54, 4'd0};           //    goto irotsukita
        45 : op = {ADDI, 4'd11, 8'd1};          //  reg11++;
        46 : op = {JMP, 8'd20, 4'd0};           //  do{ if(!isusedcolor()){
        47 : op = {STORE, 4'd10, 4'd11, 4'h0};  //          mem[reg10] = reg11;                     nureru
        48 : op = {ADDI, 4'd10, 8'd1};          //          reg10++;
        49 : op = {JMP, 8'd40, 4'd0};           //          colorsearch();  (goto loop2)
        50 : op = {CMPI, 4'd11, 8'd4};          //      }else{                                      nurenai
        51 : op = {JNZ, 8'd54, 4'd0};           //          if(!(reg11 == 4)){
        52 : op = {ADDI, 4'd11, 8'd1};          //              reg11++;
        53 : op = {JMP, 8'd46, 4'd0};           //              goto loop3
        54 : op = {LI, 8'd0, 4'd1};             //          }else{reg1 = 0;                          irotsukita
        55 : op = {STORE, 4'd10, 4'd1, 4'h0};   //              mem[reg10] = reg1;
        56 : op = {SUBI, 4'd10, 8'd1};          //              reg10--;
        57 : op = {JMP, 8'd40, 4'd0};           //              goto loop2


        //print result

        //getpbstate
        60 : op = {LI, 8'hfb, 4'd8};            //reg8 = 8'hfb;
        61 : op = {LOAD, 4'd8, 4'h0, 4'd2};     //reg2 = mem[8'hfb];
        62 : op = {CMPI, 4'd9, 8'd1};           //if(reg9 == 1)
        63 : op = {JNZ, 8'd68, 4'd0};           //  goto if buttonnone

        64 : op = {CMPI, 4'd2, 8'b00000010};    //if(reg2 == 8'b00000100){
        65 : op = {JNZ, 8'd80, 4'h0};           //  goto buttonleft;}
        66 : op = {CMPI, 4'd2, 8'b00000100};    //if(reg2 == 8'b00000010){
        67 : op = {JNZ, 8'd90, 4'h0};           //  goto buttonright;}
        68 : op = {CMPI, 4'd2, 8'b00000000};    //if(reg2 == 8'b00000000){
        69 : op = {JNZ, 8'd75, 4'h0};           //  goto buttonnone;}
        70 : op = {JMP, 8'd60, 4'd0};           //goto getpbstate;

            //button none
        75 : op = {LI, 8'd0, 4'd9};             //reg9 = 0;
        76 : op = {JMP, 8'd70, 4'd0};           //goto getpbstate
            //button left
        80 : op = {CMPI, 4'd3, 8'd0};
        81 : op = {JNZ, 8'd68, 4'h0};           //if(!(reg3 == 0))
        82 : op = {SUBI, 4'd3, 8'd1};           //  reg3--;
        83 : op = {LI, 8'd1, 4'd9};             //  reg9 = 1;
        84 : op = {JMP, 8'd100, 4'h0};          //  goto changeitr
            //button right
        90 : op = {CMPI, 4'd3, 8'd22};
        91 : op = {JNZ, 8'd70, 4'h0};           //if(!(reg3 == 22))
        92 : op = {ADDI, 4'd3, 8'd1};           //  reg3++;
        93 : op = {LI, 8'd1, 4'd9};             //  reg9 = 1;
        94 : op = {JMP, 8'd100, 4'h0};          //  goto changeitr

        //changeitr
        100: op = {LI, 8'd0, 4'd5};             //reg5 = 0;
        101: op = {LI, 8'd0, 4'd7};             //reg7 = 0;
        102: op = {LOAD, 4'd3, 4'd0, 4'd4};     //reg4 = mem[reg3];
        103: op = {ADD, 4'd3, 4'd7, 4'd1};      //reg1 = reg3 + reg7;
        104: op = {SUBI, 4'd1, 8'd10};          //reg1 -= 10;                       10de hiku kaishi
        105: op = {LI, 8'b10000000, 4'd7};      //reg7 = 2'b10000000;
        106: op = {AND, 4'd1, 4'd7, 4'd7};      //reg7 = reg1 & reg7;
        107: op = {CMPI, 4'd7, 8'b10000000};    //if(reg7 == 2'b10000000)     8bit me ga 1 nara
        108: op = {JNZ, 8'd120, 4'd0};          //  goto hikiowari
        109: op = {ADDI, 4'd5, 8'd1};           //reg5++;
        110: op = {JMP, 8'd104, 4'd0};          //goto 10dehikukaishi

            //hikiowari
        120: op = {LI, 8'd0, 4'd7};             //reg7 = 0;
        121: op = {ADD, 4'd1, 4'd7, 4'd6};      //reg6 = reg1 + reg7;
        122: op = {ADDI, 4'd6, 8'd10};          //reg6 +=10;
        123: op = {JMP, 8'd140, 4'd0};          //goto show;

            //show
        140: op = {LI, 8'd159, 4'd1};           //reg1 = 159;
        141: op = {LI, 8'hfb, 4'd8};            //reg8 = 8'hfb;
        142: op = {ADD, 4'd1, 4'd5, 4'd7};      //reg7 = reg1 + reg5;                          10nokurai
        143: op = {LOAD, 4'd7, 4'h0, 4'd7};     //reg7 = mem[reg7]; (reg7 = mem[215+reg5];)
        144: op = {STORE, 4'd8, 4'd7, 4'd4};    //mem[reg8+4] = reg7;
        145: op = {ADD, 4'd1, 4'd6, 4'd7};      //reg7 = reg1 + reg6;                           1nokurai
        146: op = {LOAD, 4'd7, 4'h0, 4'd7};     //reg7 = mem[reg7];
        147: op = {STORE, 4'd8, 4'd7, 4'd3};    //mem[reg8+3] = reg7;
        148: op = {ADD, 4'd1, 4'd4, 4'd7};      //reg7 = reg1 + reg4;
        149: op = {LOAD, 4'd7, 4'h0, 4'd7};      //reg7 = mem[reg7];
        150: op = {STORE, 4'd8, 4'd7, 4'd1};    //mem[reg8+1] = reg7;
        151: op = {LI, 8'hff, 4'd7};             //reg7 = 8'hff;
        152: op = {STORE, 4'd8, 4'd7, 4'd2};    //mem[reg8+2] = reg7;(mem[reg8+2] = 8'hff;)
        153: op = {JMP, 8'd60, 4'd0};           //goto getpbstate;








      default: op = 16'bx;
    endcase
  end

endmodule
