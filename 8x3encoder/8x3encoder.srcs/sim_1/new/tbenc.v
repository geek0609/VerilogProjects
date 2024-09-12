`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2024 01:25:40 PM
// Design Name: 
// Module Name: tbenc
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


module tbenc();
    
    reg i0, i1, i2, i3, i4, i5, i6, i7;
    wire o0, o1, o2;
    encoder8x3 enctb (i0, i1, i2, i3, i4, i5, i6, i7, o0, o1, o2);
    
    initial begin;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b0;
        i4 = 1'b0 ; 
        i5 = 1'b0; 
        i6 = 1'b0; 
        i7 = 1'b0;
        #30;
        
        i0 = 1'b1 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b0;
        i4 = 1'b0 ; 
        i5 = 1'b0; 
        i6 = 1'b0; 
        i7 = 1'b0;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b1; 
        i2 = 1'b0; 
        i3 = 1'b0;
        i4 = 1'b0 ; 
        i5 = 1'b0; 
        i6 = 1'b0; 
        i7 = 1'b0;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b1; 
        i3 = 1'b0;
        i4 = 1'b0 ; 
        i5 = 1'b0; 
        i6 = 1'b0; 
        i7 = 1'b0;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b1;
        i4 = 1'b0; 
        i5 = 1'b0; 
        i6 = 1'b0; 
        i7 = 1'b0;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b0;
        i4 = 1'b1 ; 
        i5 = 1'b0; 
        i6 = 1'b0; 
        i7 = 1'b0;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b0;
        i4 = 1'b0 ; 
        i5 = 1'b1; 
        i6 = 1'b0; 
        i7 = 1'b0;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b0;
        i4 = 1'b0 ; 
        i5 = 1'b0; 
        i6 = 1'b1; 
        i7 = 1'b0;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b0;
        i4 = 1'b0 ; 
        i5 = 1'b0; 
        i6 = 1'b1; 
        i7 = 1'b0;
        #30;
        
        i0 = 1'b0 ; 
        i1 = 1'b0; 
        i2 = 1'b0; 
        i3 = 1'b0;
        i4 = 1'b0 ; 
        i5 = 1'b0; 
        i6 = 1'b0; 
        i7 = 1'b1;
        #30;
        
        
          
        $finish;
    end
    
endmodule
