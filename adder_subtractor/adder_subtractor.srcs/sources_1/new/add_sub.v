`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2024 01:21:04 PM
// Design Name: 
// Module Name: add_sub
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


module add_sub(
    input [3:0] A,
    input [3:0] B,
    input sel,
    output [3:0] R,
    output Cout
    );
    
    wire A_lt_B, A_gt_B, mcout;
    
    comparator c (A,B,, A_lt_B, A_gt_B);
    
    wire [3:0] aB, aA;
    wire [3:0] Bc;
    
    assign aA = (A_lt_B == 1'b1) ? B:
                                   A;
    
    assign aB = (A_lt_B == 1'b1) ? A:
                                   B;
    
    assign Bc[0] = aB[0]^sel;
    assign Bc[1] = aB[1]^sel;
    assign Bc[2] = aB[2]^sel;
    assign Bc[3] = aB[3]^sel;
    
    
    ripple_carry_adder_4bit result (aA,Bc,sel,R, mcout);
    
    assign Cout = (sel == 1'b1) ? A_gt_B:
                                  mcout;  
    
endmodule
