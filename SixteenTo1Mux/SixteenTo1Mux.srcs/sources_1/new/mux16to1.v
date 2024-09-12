
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


module mux16to1(input [15:0] I, input [3:0] S, output Y);
  wire [3:0] mux4_outputs;
  
  mux4to1 mux0 (I[3:0],   S[1:0], mux4_outputs[0]);
  mux4to1 mux1 (I[7:4],   S[1:0], mux4_outputs[1]);
  mux4to1 mux2 (I[11:8],  S[1:0], mux4_outputs[2]);
  mux4to1 mux3 (I[15:12], S[1:0], mux4_outputs[3]);

  mux4to1 mux4 (mux4_outputs, S[3:2], Y);
endmodule
