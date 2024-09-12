`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 01:25:20 PM
// Design Name: 
// Module Name: Tb
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


module Tb();
    
reg A,B,Bin;
wire D,Bout;
fullSub h (A,B,Bin,D,Bout);
initial begin 
    A = 1'b0; B = 1'b0; Bin = 1'b0; #20;
    A = 1'b0; B = 1'b1; Bin = 1'b0; #20;
    A = 1'b1; B = 1'b0; Bin = 1'b0; #20;
    A = 1'b1; B = 1'b1; Bin = 1'b0; #20;
    A = 1'b0; B = 1'b0; Bin = 1'b1; #20;
    A = 1'b0; B = 1'b1; Bin = 1'b1; #20;
    A = 1'b1; B = 1'b0; Bin = 1'b1; #20;
    A = 1'b1; B = 1'b1; Bin = 1'b1; #20;
$finish;
end
endmodule
