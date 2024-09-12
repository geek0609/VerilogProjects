`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 08:44:17 AM
// Design Name: 
// Module Name: tb_rca8
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


module tb_rca8;
  reg [7:0] a, b;
  reg cin;
  wire [7:0] s;
  wire cout;

  rca8 uut(a, b, cin, s, cout);

  initial begin
    a = 8'b00000000; b = 8'b00000000; cin = 0; #10;
    a = 8'b00000001; b = 8'b00000010; cin = 0; #10;
    a = 8'b00110011; b = 8'b01010101; cin = 1; #10;
    a = 8'b10000001; b = 8'b01111110; cin = 0; #10;
    a = 8'b11111111; b = 8'b11111111; cin = 1; #10;
    $finish;
  end

endmodule