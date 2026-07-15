`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 23:03:34
// Design Name: 
// Module Name: binary_gray_tb
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

module binary_gray_tb;
  parameter size=8;
  reg[size-1:0]BINARY;
  wire[size-1:0]GRAY;
  
  binary_gray #(size) dut(.binary(BINARY),.gray(GRAY));
  
 
    initial begin
    BINARY = 8'b00000000;   // 0
    #100 BINARY = 8'b00000001;   // 1
    #100 BINARY = 8'b00000010;   // 2
    #100 BINARY = 8'b00000011;   // 3
    #100 BINARY = 8'b00000111;   // 7
    #100 BINARY = 8'b00001000;   // 8
    #100 BINARY = 8'b00001111;   // 15
    #100 BINARY = 8'b00010000;   // 16
    #100 BINARY = 8'b00011111;   // 31
    #100 BINARY = 8'b00111111;   // 63
    #100 BINARY = 8'b01111111;   // 127
    #100 BINARY = 8'b10000000;   // 128
    #100 BINARY = 8'b11111110;   // 254
    #100 BINARY = 8'b11111111;   // 255

   

    #1500 $finish;
  end
  initial begin
    $monitor($time,"\t binary=%b, gray =%b",BINARY,GRAY);
  end
endmodule
