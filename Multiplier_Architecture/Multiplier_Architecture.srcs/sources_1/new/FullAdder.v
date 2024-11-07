`timescale 1ns / 1ps

module FullAdder(input A, B, Cin, output S, Cout);
    assign S = A ^ B ^ Cin;               // Sum
    assign Cout = (A & B) | (B & Cin) | (Cin & A); // Carry-out
endmodule
