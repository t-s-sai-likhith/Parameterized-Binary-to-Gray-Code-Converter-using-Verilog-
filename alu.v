`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 21:52:52
// Design Name: 
// Module Name: alu
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


module alu(a,b,opcode,alu_out);
  input[3:0]a;
  input[3:0]b;
  input[2:0]opcode;
  output reg[7:0]alu_out;
  always @(*)
    begin
      case(opcode)
        3'b000:alu_out=a+b;
        3'b001:alu_out=a-b;
        3'b010:alu_out=a*b;
        3'b011:alu_out=a/b;
        3'b100:alu_out=a&b;
        3'b101:alu_out=a|b;
        3'b110:alu_out=~(a&b);
        3'b111:alu_out=~(a|b);
        
        default:alu_out=8'b0;
      endcase
    end
endmodule
