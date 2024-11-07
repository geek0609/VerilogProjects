`timescale 1ns / 1ps
module ALU #(parameter N = 8)(
    input [N-1:0] A, B,
    input Cin,
    output [N-1:0] Sum,
    output Cout
    );

    assign {Cout, Sum} = A + B + Cin; 

endmodule
