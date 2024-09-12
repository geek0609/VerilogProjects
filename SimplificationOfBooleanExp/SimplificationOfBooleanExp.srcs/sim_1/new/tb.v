`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2024 02:57:30 PM
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

    wire o;
    reg a,b,c, d;
        
    Simplifi dec (a,b,c,d,o);

    initial begin;
    
        a = 1'b0; 
        b = 1'b0; 
        c = 1'b0;
        d = 1'b0; 
        #30;
        
        a = 1'b0; 
        b = 1'b0; 
        c = 1'b0;
        d = 1'b1; 
        #30;
        
        a = 1'b0; 
        b = 1'b0; 
        c = 1'b1;
        d = 1'b0; 
        #30;
        
        a = 1'b0; 
        b = 1'b0; 
        c = 1'b1;
        d = 1'b1; 
        #30;
        
        a = 1'b0; 
        b = 1'b1; 
        c = 1'b0;
        d = 1'b0; 
        #30;
        
        a = 1'b0; 
        b = 1'b1; 
        c = 1'b0;
        d = 1'b1; 
        #30;
        
        a = 1'b0; 
        b = 1'b1; 
        c = 1'b1;
        d = 1'b0; 
        #30;
        
        a = 1'b0; 
        b = 1'b1; 
        c = 1'b1;
        d = 1'b1; 
        #30;
        
        a = 1'b1; 
        b = 1'b0; 
        c = 1'b0;
        d = 1'b0; 
        #30;
        
        a = 1'b1; 
        b = 1'b0; 
        c = 1'b0;
        d = 1'b1; 
        #30;
        
        a = 1'b1; 
        b = 1'b0; 
        c = 1'b1;
        d = 1'b0; 
        #30;
        
        a = 1'b1; 
        b = 1'b0; 
        c = 1'b1;
        d = 1'b1; 
        #30;
        
        a = 1'b1; 
        b = 1'b1; 
        c = 1'b0;
        d = 1'b0; 
        #30;
        
        a = 1'b1; 
        b = 1'b1; 
        c = 1'b0;
        d = 1'b1; 
        #30;
        
        a = 1'b1; 
        b = 1'b1; 
        c = 1'b1;
        d = 1'b0; 
        #30;
        
        a = 1'b1; 
        b = 1'b1; 
        c = 1'b1;
        d = 1'b1; 
        #30;
        

        $finish;
    end

endmodule
