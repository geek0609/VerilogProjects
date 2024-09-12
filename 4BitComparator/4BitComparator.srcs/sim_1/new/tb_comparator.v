`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2024 11:48:05 PM
// Design Name: 
// Module Name: tb_comparator
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


module tb_comparator;

reg [3:0] A;
reg [3:0] B;
wire A_eq_B;
wire A_lt_B;
wire A_gt_B;

comparator uut (A, B, A_eq_B, A_lt_B, A_gt_B);

initial begin
    A = 4; B = 4;
    #10;

    A = 3; B = 7;
    #10;

    A = 9; B = 5;
    #10;

    A = 0; B = 15;
    #10;
    $monitor("A=%d, B=%d | A_eq_B=%b, A_lt_B=%b, A_gt_B=%b", A, B, A_eq_B, A_lt_B, A_gt_B);

    $finish;
end

endmodule
