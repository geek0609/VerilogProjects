`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2024 01:33:38 PM
// Design Name: 
// Module Name: carry_select_adder_tb
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


module carry_select_adder_tb;
  reg [7:0] a, b;
  reg cin;
  wire [7:0] sum;
  wire cout;
  
  carry_select_adder uut (a, b, cin, sum, cout);
  
  initial begin
    // Test Case 1
    a = 8'b00001111; b = 8'b00000001; cin = 0;
    #10; // Wait for the result
    $display("Test Case 1: a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);
    
    // Test Case 2
    a = 8'b11110000; b = 8'b00001111; cin = 0;
    #10;
    $display("Test Case 2: a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);
    
    // Test Case 3
    a = 8'b10101010; b = 8'b01010101; cin = 1;
    #10;
    $display("Test Case 3: a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);
    
    // Test Case 4
    a = 8'b11111111; b = 8'b11111111; cin = 1;
    #10;
    $display("Test Case 4: a = %b, b = %b, cin = %b, sum = %b, cout = %b", a, b, cin, sum, cout);
    
    $finish;
  end
endmodule


