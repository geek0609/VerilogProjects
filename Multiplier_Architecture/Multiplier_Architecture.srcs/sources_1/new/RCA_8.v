`timescale 1ns / 1ps

module RCA8(input [7:0] A, B, input Cin, output [7:0] S, output Cout);
    wire w;
    
    RCA4 rc1(A[3:0], B[3:0], Cin, S[3:0], W);
    RCA4 rc2(A[7:4], B[7:4], W, S[7:4], Cout);
    
    
endmodule
