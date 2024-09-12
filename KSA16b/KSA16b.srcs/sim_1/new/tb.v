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

  reg [15:0] A, B;
  reg Cin;
  wire [15:0] Sum;
  wire Cout;

  kogge_stone_adder_16bit uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

  initial begin
    for (integer i = 65530 ; i<65536 ;  i=i+1) begin
    for (integer j = 10 ; j<65536 ;  j=j+1) begin
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
