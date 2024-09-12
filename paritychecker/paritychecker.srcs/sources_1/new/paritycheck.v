`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 02:51:19 PM
// Design Name: 
// Module Name: paritycheck
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


module paritycheck(
    input [7:0] in,
    input parity,
    input type,
    output reg checker
    );
    
    wire parity_gen, g;
    assign parity_gen = ^in;
    assign g = (parity ^ ~parity_gen);
    always @ (*) begin
        if (type == 0)
            checker = ~(g);
         else
            checker = (g);
         end
    
endmodule
