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

    // Clock generation: 10ns period
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        // Monitor signals
        $monitor("Time %0t: rst=%b, start=%b, done=%b, A_in=%3d, B_in=%3d, Sum_out=%3d",
                  $time, rst, start, done, A_in, B_in, Sum_out);

        // Initialize inputs
        rst = 1;
        start = 0;
        A_in = 0;
        B_in = 0;

        // Apply reset
        #10;
        rst = 0;

        // First test case
        #10;
        A_in = 8'd25;
        B_in = 8'd17;
        start = 1;
        #10;
        start = 0;

        // Wait for done
        wait(done);
        #10;
        $display("Test 1 Result: %d + %d = %d", A_in, B_in, Sum_out);

        // Second test case
        #20;
        rst = 1; // Reset the system
        #10;
        rst = 0;
        A_in = 8'd100;
        B_in = 8'd55;
        start = 1;
        #10;
        start = 0;

        wait(done);
        #10;
        $display("Test 2 Result: %d + %d = %d", A_in, B_in, Sum_out);

        // Third test case
        #20;
        rst = 1; // Reset the system
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

        // Finish simulation
        #20;
        $finish;
    end

endmodule
