`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2024 01:57:38 PM
// Design Name: 
// Module Name: grey
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


module gcode( );

    reg i0, i1, i2, i3;
    wire o0, o1, o2, o3;
    
    greycode g (i0, i1, i2, i3, o0, o1, o2, o3);
       
    initial begin;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b0;
        #30;
        
        i0 = 1'b1; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b0;
        #30;
        
        i0 = 1'b0; 
        i1 = 1'b1; 
        i2 = 1'b0; 
        i3 = 1'b0;
        #30;
        
        i0 = 1'b1; 
        i1 = 1'b1; 
        i2 = 1'b0; 
        i3 = 1'b0;
        #30;
        
        i0 = 1'b0; 
        i1 = 1'b0; 
        i2 = 1'b1; 
        i3 = 1'b0;
        #30;
        
        i0 = 1'b1; 
        i1 = 1'b0; 
        i2 = 1'b1; 
        i3 = 1'b0;
        #30;
        
        i0 = 1'b0; 
        i1 = 1'b1; 
        i2 = 1'b1; 
        i3 = 1'b0;
        #30;
        
        i0 = 1'b1 ; 
        i1 = 1'b1; 
        i2 = 1'b1; 
        i3 = 1'b0;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b1;
        #30;
        
        i0 = 1'b1 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b1;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b1; 
        i2 = 1'b0; 
        i3 = 1'b1;
        #30;
        
        i0 = 1'b1 ; 
        i1 = 1'b1; 
        i2 = 1'b0; 
        i3 = 1'b1;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b1; 
        i3 = 1'b1;
        #30;
        
        i0 = 1'b1 ; 
        i1 = 1'b0; 
        i2 = 1'b1; 
        i3 = 1'b1;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b1; 
        i2 = 1'b1; 
        i3 = 1'b1;
        #30;
        
        i0 = 1'b1 ; 
        i1 = 1'b1; 
        i2 = 1'b1; 
        i3 = 1'b1;
        #30;
        
    end
    
endmodule
