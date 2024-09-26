`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 02:01:56 PM
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

    reg s,r;
    reg clk, reset;
    wire Q;
    
    jk ff (s,r,clk,reset,Q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end    
    
    initial begin
        reset = 1;
        s=0; r=0; #10;
        
        reset = 0;
        s=1; r=0; #10;
        
        s=0; r=1; #10;
        
        s=0; r=0; #10;
        
        s=1; r=1; #10;
        
        $stop;
    end
    
endmodule
