`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 01:27:31 PM
// Design Name: 
// Module Name: andGaate
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


module andGaate(
    input i1, i2, i3,i4, s1,s2,
    output out
    );
    
    or (out, (i1 & ~s1 & ~s2), (i2 & s1 & ~s2), (i3 & ~s1 & s2), (i4 & s1 & s2)) ;
endmodule
