`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 01:22:02 PM
// Design Name: 
// Module Name: fullSub
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


module fullSub(
    input A,
    input B,
    input Bin,
    output D,
    output Bout
    );
    
    assign D = A^B^Bin;
    assign Bout = ~A & B | Bin & ~(A^B);
    
    
endmodule
