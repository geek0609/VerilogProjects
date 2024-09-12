`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 12:17:01 AM
// Design Name: 
// Module Name: demux_1x8
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


module demux_1x8 (
    input in,
    input [2:0] sel,
    output [7:0] out
);

wire w0, w1; 
wire w2, w3; 
wire w4, w5;
wire w6, w7; 

demux_1x2 demux0 (.in(in), .sel(sel[2]), .out0(w0), .out1(w1));

demux_1x2 demux1 (.in(w0), .sel(sel[1]), .out0(w2), .out1(w3));
demux_1x2 demux2 (.in(w1), .sel(sel[1]), .out0(w4), .out1(w5));

demux_1x2 demux3 (.in(w2), .sel(sel[0]), .out0(out[0]), .out1(out[1]));
demux_1x2 demux4 (.in(w3), .sel(sel[0]), .out0(out[2]), .out1(out[3]));
demux_1x2 demux5 (.in(w4), .sel(sel[0]), .out0(out[4]), .out1(out[5]));
demux_1x2 demux6 (.in(w5), .sel(sel[0]), .out0(out[6]), .out1(out[7]));

endmodule




