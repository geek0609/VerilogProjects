`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2024 02:48:50 PM
// Design Name: 
// Module Name: Simplifi
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


module Simplifi(
    input a,
    input b,
    input c,
    input d,
    output o
    );
    
    wire a0,a1,a2,a3,a4,a5,a6,a7,a8,a9;
    
    and (a0, ~a, ~b, ~c, ~d);
    and (a1, ~a, ~b, ~c, d);
    and (a2, ~a, ~b, c, ~d);
    and (a3, ~a, ~b, c, d);
    and (a4, a, ~b, ~c, ~d);
    and (a5, a, ~b, ~c, d);
    and (a6, a, ~b, c, ~d);
    and (a7, a, ~b, c, d);
    and (a8, a, b, c, ~d);
    and (a9, a, b, c, d);
    
    or (o, a1,a2,a3,a4,a5,a6,a7,a8,a9);
    
    
endmodule
