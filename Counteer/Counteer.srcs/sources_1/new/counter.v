`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 01:14:23 PM
// Design Name: 
// Module Name: counter
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


module counter (
    input clk,
    input reset,
    output [2:0] Q  // 3-bit output for the counter
);

    wire Q0, Q1, Q2;

    jk jk_ff0 (.j(1'b1), .k(1'b1), .clk(clk), .reset(reset), .Q(Q0)); // LSB
    jk jk_ff1 (.j(Q0),  .k(Q0),  .clk(clk), .reset(reset), .Q(Q1));   // Middle bit
    jk jk_ff2 (.j(Q1),  .k(Q1),  .clk(clk), .reset(reset), .Q(Q2));   // MSB

    assign Q = {Q2, Q1, Q0};

endmodule

