`timescale 1ns / 1ps
module Top_Module #(parameter N = 8)(
    input clk, rst,
    input [N-1:0] Multiplicand,
    input [N-1:0] Multiplier,
    output [2*N-1:0] Product,
    output done
    );

    wire [N:0] RegA;       
    wire [N-1:0] RegQ, RegM, Sum;
    wire Cout, Start, Add, Shift;

    assign Product = {RegA[N-1:0], RegQ};

    ShiftReg #(N) M_Reg (
        .clk(clk), 
        .rst(0), 
        .load(Start), 
        .ShiftIn(0), 
        .Shift(0), 
        .In(Multiplicand), 
        .Out(RegM)
    );

    ShiftReg #(N) Q_Reg (
        .clk(clk), 
        .rst(0), 
        .load(Start), 
        .ShiftIn(RegA[0]),
        .Shift(Shift), 
        .In(Multiplier), 
        .Out(RegQ)
    );

    ShiftReg #(N+1) A_Reg (
        .clk(clk), 
        .rst(Start), 
        .load(Add), 
        .ShiftIn(0), 
        .Shift(Shift), 
        .In({Cout, Sum}), 
        .Out(RegA)
    );

    ALU #(N) Adder (
        .A(RegA[N-1:0]), 
        .B(RegM), 
        .Cin(0), 
        .Sum(Sum), 
        .Cout(Cout)
    );

    Controller #(N) Ctrl (
        .clk(clk), 
        .rst(rst), 
        .Q0(RegQ[0]), 
        .Start(Start), 
        .Add(Add), 
        .Shift(Shift), 
        .Done(done)
    );

endmodule
