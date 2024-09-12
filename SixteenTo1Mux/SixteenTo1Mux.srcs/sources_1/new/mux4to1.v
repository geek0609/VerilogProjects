
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 08:12:28 AM
// Design Name: 
// Module Name: mux4to1
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


module mux4to1(input A,B,C,D, input [1:0] S, output Y);
  assign Y = (S == 2'b00) ? A :
             (S == 2'b01) ? B :
             (S == 2'b10) ? C :
                            D ;
endmodule

