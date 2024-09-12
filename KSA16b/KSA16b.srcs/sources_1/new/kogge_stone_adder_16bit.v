`timescale 1ns / 1ps

module kogge_stone_adder_16bit (input [15:0] A,B, input Cin, output[15:0] Sum, output Cout);
    wire cout1;
    
    
    kogge_stone_adder_8bit k1 (A[7:0] , B[7:0], Cin, Sum[7:0], cout1 );
    kogge_stone_adder_8bit k2 (A[15:8] , B[15:8], cout1, Sum[15:8], Cout );

endmodule