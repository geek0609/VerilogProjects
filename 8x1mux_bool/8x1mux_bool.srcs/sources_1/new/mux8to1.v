//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2024 02:50:16 PM
// Design Name: 
// Module Name: mux8to1
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


module mux8to1(
    input A,B,C,D,
    output Y
    );
    
    wire o0, o1;
    
    mux4to1 m0 (C, D, ~A, A, A, 1, o0);
    mux4to1 m1 (C ,D, 0, 1, 0, 1, o1);
    
    assign Y = ~B & o0 | B & o1;
    
endmodule
