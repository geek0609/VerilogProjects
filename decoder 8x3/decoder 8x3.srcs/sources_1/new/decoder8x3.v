`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2024 01:48:58 PM
// Design Name: 
// Module Name: decoder8x3
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




module decoder8x3(
    output o0,
    output o1,
    output o2,
    output o3,
    output o4,
    output o5,
    output o6,
    output o7,
    input i0,
    input i1,
    input i2
    );
    
    assign o0 = ~i0 & ~i1 & ~i2;
    
    assign o1 = i0 & ~i1 & ~i2;
    
    assign o2 = ~i0 & i1 & ~i2;
    
    assign o3 = i0 & i1 & ~i2;
    
    assign o4 = ~i0 & ~i1 & i2;
    
    assign o5 = i0 & ~i1 & i2;
    
    assign o6 = ~i0 & i1 & i2;
    
    assign o7 = i0 & i1 & i2;
    
endmodule

