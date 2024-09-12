`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/08/2024 03:28:05 PM
// Design Name: 
// Module Name: fullAdder1
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


module fullAdder1();
    
    reg a,b,c;
    wire cout, sum;
    
    fullAdder f1 (a,b,c,sum,cout);
    
    initial begin;
        
        a=0;b=0;c=0;
        
        a = 1'b0; b=1'b0; c=1'b0; #30;
        
        a = 1'b0; b=1'b0; c=1'b1; #30;
        
        a = 1'b0; b=1'b1; c=1'b0; #30;
        
        a = 1'b0; b=1'b1; c=1'b1; #30;
        
        a = 1'b1; b=1'b0; c=1'b0; #30;
        
        a = 1'b1; b=1'b0; c=1'b1; #30;
        
        a = 1'b1; b=1'b1; c=1'b0; #30;
        
        a = 1'b1; b=1'b1; c=1'b1; #30;
        
        $finish;
        
    end
    
endmodule
