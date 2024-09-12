`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2024 01:47:31 PM
// Design Name: 
// Module Name: greycode
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


module greycode(
    input i0,
    input i1,
    input i2,
    input i3,
    output o0,
    output o1,
    output o2,
    output o3
    );
    
    assign o3 = i3;
    assign o2 = i3 ^ i2;
    assign o1 = i2 ^ i1;
    assign o0 = i1 ^ i0;
    
endmodule
