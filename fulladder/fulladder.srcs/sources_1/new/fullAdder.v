`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 03:11:18 PM
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(
    input a,
    input b,
    input c,
    output sum,
    output cout
    );
    
    wire a1, x1 ;
    
    and (a1, a,b);
    xor (x1, a,b);
    
    wire a2;
    
    and (a2, x1, c);
    xor (sum, x1, c);
   
    or (cout, a1, a2);
    
    
endmodule
