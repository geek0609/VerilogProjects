`timescale 1ns / 1ps

module andGateB_tb;

    // Inputs
    reg i1, i2, i3, i4;
    reg s1, s2;

    // Output
    wire out;

    // Instantiate the Unit Under Test (UUT)
    andGaate uut (
        .i1(i1), 
        .i2(i2), 
        .i3(i3), 
        .i4(i4), 
        .s1(s1), 
        .s2(s2), 
        .out(out)
    );

    initial begin
        i1 = 0; i2 = 0; i3 = 0; i4 = 0; s1 = 0; s2 = 0;
        
        i1 = 1'b1; i2 = 1'bx; i3 = 1'bx; i4 = 1'bx; s1 = 1'b0; s2 = 1'b0;
        #10;
        $display("Test case 1: s1=%b, s2=%b, out=%b (Expected out=1)", s1, s2, out);
        
        i1 = 1'bx; i2 = 1'b1; i3 = 1'bx; i4 = 1'bx; s1 = 1'b1; s2 = 1'b0;
        #10;
        $display("Test case 2: s1=%b, s2=%b, out=%b (Expected out=1)", s1, s2, out);
        
        i1 = 1'bx; i2 = 1'bx; i3 = 1'b1; i4 = 1'bx; s1 = 1'b0; s2 = 1'b1;
        #10;
        $display("Test case 3: s1=%b, s2=%b, out=%b (Expected out=1)", s1, s2, out);
        
        i1 = 1'bx; i2 = 1'bx; i3 = 1'bx; i4 = 1'b1; s1 = 1'b1; s2 = 1'b1;
        #10;
        $display("Test case 4: s1=%b, s2=%b, out=%b (Expected out=1)", s1, s2, out);

        $finish;
    end

endmodule
