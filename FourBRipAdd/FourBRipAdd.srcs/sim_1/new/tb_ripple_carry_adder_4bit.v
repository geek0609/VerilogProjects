`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 08:32:04 AM
// Design Name: 
// Module Name: tb_ripple_carry_adder_4bit
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


module tb_ripple_carry_adder_4bit;
  reg [3:0] A, B;
  reg Cin;
  wire [3:0] Sum;
  wire Cout;

  ripple_carry_adder_4bit uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

  initial begin
    // Test Case 1: 0 + 0 + 0
    A = 4'b0000; B = 4'b0000; Cin = 0; #10;
    // Test Case 2: 1 + 1 + 0
    A = 4'b0001; B = 4'b0001; Cin = 0; #10;
    // Test Case 3: 5 + 3 + 0
    A = 4'b0101; B = 4'b0011; Cin = 0; #10;
    // Test Case 4: 7 + 8 + 0
    A = 4'b0111; B = 4'b1000; Cin = 0; #10;
    // Test Case 5: 15 + 1 + 1
    A = 4'b1111; B = 4'b0001; Cin = 1; #10;
    // Test Case 6: 9 + 7 + 1
    A = 4'b1010; B = 4'b0111; Cin = 0; #10;
    $finish;
  end

  initial begin
    $monitor("Time=%0d A=%b B=%b Cin=%b | Sum=%b Cout=%b", $time, A, B, Cin, Sum, Cout);
  end
endmodule
