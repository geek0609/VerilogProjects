`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 08:42:43 AM
// Design Name: 
// Module Name: rca4
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


module rca4(input [3:0] a, b, input cin, output [3:0] s, output cout);
  wire c1, c2, c3;

  fa fa0(a[0], b[0], cin, s[0], c1);
  fa fa1(a[1], b[1], c1, s[1], c2);
  fa fa2(a[2], b[2], c2, s[2], c3);
  fa fa3(a[3], b[3], c3, s[3], cout);
endmodule

