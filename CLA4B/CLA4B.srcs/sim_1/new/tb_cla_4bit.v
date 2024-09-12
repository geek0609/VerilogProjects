`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 08:16:27 AM
// Design Name: 
// Module Name: tb_cla_4bit
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


module tb_cla_4bit;

reg [3:0] A, B;  // 4-bit inputs
reg Cin;         // Carry-in
wire [3:0] Sum;  // 4-bit Sum output
wire Cout;       // Carry-out

cla_4bit uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    A = 4'b0001; B = 4'b0010; Cin = 0; #10;
    A = 4'b0101; B = 4'b0011; Cin = 0; #10;
    A = 4'b1111; B = 4'b0001; Cin = 0; #10;
    A = 4'b1001; B = 4'b0110; Cin = 1; #10;    
    A = 12; B = 12; Cin = 0; #10;
    $monitor("A=%d, B=%d, Cin=%d | Sum=%d, Cout=%d", A, B, Cin, Sum, Cout);
    $finish;
    end

endmodule
