`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 01:53:45 PM
// Design Name: 
// Module Name: sr
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


module sr(
    input s,r,clk, reset,
    output reg Q
    );
    
    always @ (posedge clk or posedge reset) begin
    
    if (reset)
        Q <= 1'b0;
    else
        case ({s,r})
            2'b00: Q <= Q;
            2'b01: Q <= 1'b0;
            2'b10: Q <= 1'b1;
            2'b11: Q <= 1'bx;
            
         endcase
    end
    
    
endmodule
