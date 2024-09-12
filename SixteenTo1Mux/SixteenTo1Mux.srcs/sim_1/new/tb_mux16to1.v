`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 08:13:54 AM
// Design Name: 
// Module Name: tb_mux16to1
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

module tb_mux16to1;
  reg [15:0] I;
  reg [3:0] S;
  wire Y;

  mux16to1 uut (.I(I), .S(S), .Y(Y));

  initial begin
    I = 16'hA5A5; // Example input
    S = 4'b0000; #10; // Select I[0]
    S = 4'b0001; #10; // Select I[1]
    S = 4'b0010; #10; // Select I[2]
    S = 4'b0011; #10; // Select I[3]
    S = 4'b0100; #10; // Select I[4]
    S = 4'b0101; #10; // Select I[5]
    S = 4'b0110; #10; // Select I[6]
    S = 4'b0111; #10; // Select I[7]
    S = 4'b1000; #10; // Select I[8]
    S = 4'b1001; #10; // Select I[9]
    S = 4'b1010; #10; // Select I[10]
    S = 4'b1011; #10; // Select I[11]
    S = 4'b1100; #10; // Select I[12]
    S = 4'b1101; #10; // Select I[13]
    S = 4'b1110; #10; // Select I[14]
    S = 4'b1111; #10; // Select I[15]
    $finish;
  end

endmodule
