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


module mux4to1(input S1, S2, A,B,C,D, output Y);
  assign Y = (~S1&~S2) ? A :
             (~S1&S2) ? B :
             (S1&~S2) ? C :
                        D ;
endmodule