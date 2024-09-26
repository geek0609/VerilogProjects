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

    reg t;
    reg clk, reset;
    wire Q;
    
    sr ff (s,clk,reset,Q);
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end    
    
    initial begin
        reset = 1;
        #10
        reset = 0;
        t=1; #10
    
        t=0; #10;
        
        t=0; #10
        
        t=1; #10
        
        t=0; #10
        
        $stop;
    end
    
endmodule
