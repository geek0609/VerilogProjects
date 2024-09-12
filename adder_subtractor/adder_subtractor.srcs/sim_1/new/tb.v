`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2024 01:37:14 PM
// Design Name: 
// Module Name: tb
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


module tb();

reg [3:0] A,B;
wire [3:0] O;
reg Sel;
wire Cout;

add_sub as (A,B,Sel, O,Cout);

initial begin

    for (integer i=0 ; i<16 ; i = i+1) begin
    for (integer j=0 ; j<16 ; j = j+1) begin
    
        A=i;
        B=j;
        Sel = 1'b0;
        
       #1;
       
       $display("%d + %d = %d ", A, B, Cout*16 + O);


    end
    end
    
    for (integer i=0 ; i<16 ; i = i+1) begin
    for (integer j=0 ; j<16 ; j = j+1) begin
    
        A=i;
        B=j;
        Sel = 1'b1;       
       
       #1;
       
       $display("%d - %d = %d negative = %b", A, B, O, ~Cout );


    end
    end
    
    
    $finish;
    end

endmodule
