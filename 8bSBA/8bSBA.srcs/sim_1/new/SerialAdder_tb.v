`timescale 1ns / 1ps

module SerialAdder_tb;

    parameter N = 8;
    reg clk;
    reg rst;
    reg start;
    reg [N-1:0] A_in;
    reg [N-1:0] B_in;
    wire [N-1:0] Sum_out;
    wire done;

    SerialAdder #(N) uut (
        .clk(clk),
        .rst(rst),
        .start(start),
        .A_in(A_in),
        .B_in(B_in),
        .Sum_out(Sum_out),
        .done(done)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $monitor("Time %0t: rst=%b, start=%b, done=%b, A_in=%3d, B_in=%3d, Sum_out=%3d",
                  $time, rst, start, done, A_in, B_in, Sum_out);

        rst = 1;
        start = 0;
        A_in = 0;
        B_in = 0;

        #10;
        rst = 0;

        #10;
        A_in = 8'd25;
        B_in = 8'd17;
        start = 1;
        #10;
        start = 0;

        wait(done);
        #10;
        $display("Test 1 Result: %d + %d = %d", A_in, B_in, Sum_out);

        #20;
        rst = 1; 
        #10;
        rst = 0;
        A_in = 8'd78;
        B_in = 8'd55;
        start = 1;
        #10;
        start = 0;

        wait(done);
        #10;
        $display("Test 2 Result: %d + %d = %d", A_in, B_in, Sum_out);

        #20;
        rst = 1; 
        #10;
        rst = 0;
        A_in = 8'd200;
        B_in = 8'd100;
        start = 1;
        #10;
        start = 0;

        wait(done);
        #10;
        $display("Test 3 Result: %d + %d = %d", A_in, B_in, Sum_out);

        #20;
        $finish;
    end

endmodule
