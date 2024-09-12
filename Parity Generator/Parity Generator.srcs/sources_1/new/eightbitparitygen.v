`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2024 01:18:23 PM
// Design Name: 
// Module Name: eightbitparitygen
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


module eightbitparitygen(
    input [7:0] in, 
    input type, 
    output reg o
    );
    
    always @ (*) begin
    
    if (type == 0)
        o = ~(^in);
    else
        o = ^in; 
    end
    
endmodule
