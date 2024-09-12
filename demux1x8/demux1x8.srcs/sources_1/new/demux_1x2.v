`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 12:16:23 AM
// Design Name: 
// Module Name: demux_1x2
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


module demux_1x2 (
    input in,
    input sel,
    output out0,
    output out1
);

assign out0 = (sel == 0) ? in : 0;
assign out1 = (sel == 1) ? in : 0;

endmodule
