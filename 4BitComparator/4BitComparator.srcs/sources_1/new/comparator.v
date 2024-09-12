`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2024 11:47:22 PM
// Design Name: 
// Module Name: comparator
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


module comparator (
    input [3:0] A,
    input [3:0] B,
    output A_eq_B,
    output A_lt_B,
    output A_gt_B
);

wire [3:0] xnor_result, lt_check ;


assign xnor_result = ~(A^B);

assign A_eq_B = & xnor_result[3:0];

assign lt_check[3] = (~A[3] & B[3]);
assign lt_check[2] = xnor_result[3] & (~A[2] & B[2]);
assign lt_check[1] = xnor_result[3] & xnor_result[2] & (~A[1] & B[1]);
assign lt_check[0] = xnor_result[3] & xnor_result[2] & xnor_result[1] & (~A[0] & B[0]);
assign A_lt_B = | lt_check[3:0];


assign A_gt_B = (~A_lt_B & ~A_eq_B);

endmodule

