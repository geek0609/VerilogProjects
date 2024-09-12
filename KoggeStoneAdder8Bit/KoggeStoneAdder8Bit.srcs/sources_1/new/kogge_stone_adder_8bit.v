`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2024 01:24:37 PM
// Design Name: 
// Module Name: kogge_stone_adder_8bit
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


module kogge_stone_adder_8bit(input [7:0] A, B, input Cin, output [7:0] Sum, output Cout);
  wire [7:0] G, P;  
  wire [7:0] C;        
  wire [7:0] G1, P1;    
  wire [7:0] G2, P2; 
  wire [7:0] G3, P3;  

  assign G = A & B;
  assign P = A ^ B;

  assign G1[0] = G[0] | (P[0] & Cin);
  assign G1[1] = G[1] | (P[1] & G[0]);
  assign G1[2] = G[2] | (P[2] & G[1]);
  assign G1[3] = G[3] | (P[3] & G[2]);
  assign G1[4] = G[4] | (P[4] & G[3]);
  assign G1[5] = G[5] | (P[5] & G[4]);
  assign G1[6] = G[6] | (P[6] & G[5]);
  assign G1[7] = G[7] | (P[7] & G[6]);

//  assign P1[0] = P[0];
//  assign P1[1] = P[1] & P[0];
//  assign P1[2] = P[2] & P[1];
//  assign P1[3] = P[3] & P[2];
//  assign P1[4] = P[4] & P[3];
//  assign P1[5] = P[5] & P[4];
//  assign P1[6] = P[6] & P[5];
//  assign P1[7] = P[7] & P[6];

  assign P1 = P;

  assign G2[0] = G1[0];
  assign G2[1] = G1[1];
  assign G2[2] = G1[2] | (P1[2] & G1[0]);
  assign G2[3] = G1[3] | (P1[3] & G1[1]);
  assign G2[4] = G1[4] | (P1[4] & G1[2]);
  assign G2[5] = G1[5] | (P1[5] & G1[3]);
  assign G2[6] = G1[6] | (P1[6] & G1[4]);
  assign G2[7] = G1[7] | (P1[7] & G1[5]);

//  assign P2[0] = P1[0];
//  assign P2[1] = P1[1];
//  assign P2[2] = P1[2] & P1[0];
//  assign P2[3] = P1[3] & P1[1];
//  assign P2[4] = P1[4] & P1[2];
//  assign P2[5] = P1[5] & P1[3];
//  assign P2[6] = P1[6] & P1[4];
//  assign P2[7] = P1[7] & P1[5];

  assign P2 = P1;

  assign G3[0] = G2[0];
  assign G3[1] = G2[1];
  assign G3[2] = G2[2];
  assign G3[3] = G2[3];
  assign G3[4] = G2[4] | (P2[4] & G2[0]);
  assign G3[5] = G2[5] | (P2[5] & G2[1]);
  assign G3[6] = G2[6] | (P2[6] & G2[2]);
  assign G3[7] = G2[7] | (P2[7] & G2[3]);

  assign C[0] = Cin;
  assign C[1] = G3[0];
  assign C[2] = G3[1];
  assign C[3] = G3[2];
  assign C[4] = G3[3];
  assign C[5] = G3[4];
  assign C[6] = G3[5];
  assign C[7] = G3[6];
  assign Cout = G3[7];

  assign Sum = P ^ C;
endmodule

