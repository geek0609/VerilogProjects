`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 08:31:27 AM
// Design Name: 
// Module Name: ripple_carry_adder_4bit
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


module ripple_carry_adder_4bit(input [3:0] A, input [3:0] B, input Cin, output [3:0] Sum, output Cout);
  wire [2:0] carry;  // Internal carry wires

  full_adder fa0 (A[0], B[0], Cin,  Sum[0], carry[0]);
  full_adder fa1 (A[1], B[1], carry[0], Sum[1], carry[1]);
  full_adder fa2 (A[2], B[2], carry[1], Sum[2], carry[2]);
  full_adder fa3 (A[3], B[3], carry[2], Sum[3], Cout);
endmodule

