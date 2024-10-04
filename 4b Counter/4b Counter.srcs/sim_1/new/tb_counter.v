module tb_counter;

    reg clk;
    reg reset;
    wire [3:0] Q;

    // Instantiate the counter
    counter uut (
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    // Clock generation
    always #5 clk = ~clk; // Toggle clock every 5ns (100MHz clock)

    initial begin
        // Initialize
        clk = 0;
        reset = 1;

        #10 reset = 0; // De-assert reset after 10ns

        #500 $finish;
    end

    // Monitor the outputs
    initial begin
        $monitor("Time = %0dns, Reset = %b, Q = %b", $time, reset, Q);
    end

endmodule
