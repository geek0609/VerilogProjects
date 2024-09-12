`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2024 01:19:56 PM
// Design Name: 
// Module Name: encoder8x3
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


module encoder8x3(
    input i0,
    input i1,
    input i2,
    input i3,
    input i4,
    input i5,
    input i6,
    input i7,
    output o0,
    output o1,
    output o2
    );
    
    assign o2 = i1 | i3 | i5 | i7;
    assign o1 = i2 | i3 | i6 | i7;
    assign o0 = i7 | i6 | i5 | i4;
    
    
endmodule
