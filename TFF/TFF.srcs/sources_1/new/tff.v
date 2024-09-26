`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 02:25:13 PM
// Design Name: 
// Module Name: design
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


module tff(
    input T,clk, reset,
    output reg Q
    );
    
    always @ (posedge clk or posedge reset) begin
    
    if (reset)
        Q <= 1'b0;
    else
        Q = ~Q;
    end
    
endmodule
