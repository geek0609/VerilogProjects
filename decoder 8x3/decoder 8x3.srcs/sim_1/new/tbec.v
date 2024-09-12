`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2024 01:55:38 PM
// Design Name: 
// Module Name: tbec
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


module tbec();
    
    wire o0, o1, o2, o3, o4, o5, o6, o7;
    reg i0, i1, i2;
        
    decoder8x3 dec (o0, o1, o2, o3, o4, o5, o6, o7, i0,i1,i2);

    initial begin;
    
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        #30;
        
        i0 = 1'b1; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b1; 
        i2 = 1'b0; 
        #30;
        
        i0 = 1'b1 ; 
        i1 = 1'b1; 
        i2 = 1'b0; 
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b1; 
        #30;
        
        i0 = 1'b1 ; 
        i1 = 1'b0; 
        i2 = 1'b1; 
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b1; 
        i2 = 1'b1; 
        #30;
        
        i0 = 1'b1 ; 
        i1 = 1'b1; 
        i2 = 1'b1; 
        #30;
    
        $finish;
    end

endmodule
