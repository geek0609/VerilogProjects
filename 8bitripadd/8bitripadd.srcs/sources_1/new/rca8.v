`timescale 1ns / 1ps


module rca8(input [7:0] a, b, input cin, output [7:0] s, output cout);
  wire c4;

  rca4 rca4_0(a[3:0], b[3:0], cin, s[3:0], c4);
  rca4 rca4_1(a[7:4], b[7:4], c4, s[7:4], cout);
endmodule