`timescale 1ns / 1ps
module tb();
    reg A,B,C,D;
    wire Y;
    
    mux8to1 Yes(A,B,C,D,Y);
    initial begin 
        A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0; #20;
        A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1; #20;
        A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0; #20;
        A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1; #20;
        A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0; #20;
        A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1; #20;
        A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0; #20;
        A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; #20;
        A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0; #20;
        A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1; #20;
        A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0; #20;
        A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1; #20;
        A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0; #20;
        A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b1; #20;
        A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0; #20;
        A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1; #20;
        $finish;
    end
        
endmodule