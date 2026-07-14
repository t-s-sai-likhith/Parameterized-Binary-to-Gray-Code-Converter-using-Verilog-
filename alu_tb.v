`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 21:53:49
// Design Name: 
// Module Name: alu_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module alu_tb;
  reg[3:0]A;
  reg[3:0]B;
  reg[2:0]OPCODE;
  wire[7:0]ALU_OUT;
  
  alu dut(.a(A),.b(B),.opcode(OPCODE),.alu_out(ALU_OUT));
  initial begin
    A=4'b1010;
    B=4'b0101;
        OPCODE=3'b000;
    #100 OPCODE=3'b001;
    #100 OPCODE=3'b010;
    #100 OPCODE=3'b011;
    #100 OPCODE=3'b100;
    #100 OPCODE=3'b101;
    #100 OPCODE=3'b110;
    #100 OPCODE=3'b111;
    #1000 $finish;
  end
  initial begin
    $monitor($time,"\t A=%b B=%b OPCODE=%b ALU_OUT=%b",A,B,OPCODE,ALU_OUT);
  end
endmodule
