`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2024 01:33:20 PM
// Design Name: 
// Module Name: tb
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


module tb();

  reg [7:0] A, B;
  reg Cin;
  wire [7:0] Sum;
  wire Cout;

  kogge_stone_adder_8bit uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

  initial begin
    for (integer i = 190 ; i<256 ;  i=i+1) begin
    for (integer j = 40 ; j<256 ;  j=j+1) begin
    for (integer c = 0; c<2 ; c=c+1) begin
            A = i;
            B = j;
            Cin = c;
            #1;
    end
    end 
    end
    $finish;
  end

  initial begin
    $monitor("A=%d B=%d Cin=%d | Sum=%d Cout=%d", A, B, Cin, Sum, Cout);
  end

endmodule
