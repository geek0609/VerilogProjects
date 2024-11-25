`timescale 1ns/1ps

module tb_sequence_detector;

    reg clk;
    reg reset;
    reg data_in;
    wire detect;
    wire [3:0] current_state;

    // Instantiate the detector
    sequence_detector uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .detect(detect),
        .current_state (current_state)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        data_in = 0;

        // Release reset after 15ns
        #15;
        reset = 0;

        // Apply test vector: includes '101101' sequence
        // Example bitstream: 1 0 1 1 0 1 0 1 1 0 1
        #10; data_in = 1;
        #10; data_in = 0;
        #10; data_in = 1;
        #10; data_in = 1;
        #10; data_in = 0;
        #10; data_in = 1; // Detection here
        #10; data_in = 0;
        #10; data_in = 1;
        #10; data_in = 1;
        #10; data_in = 0;
        #10; data_in = 1; // Detection here
        #10;
        $stop;
    end

    initial begin
        $monitor("Time=%0t | data_in=%b | detect=%b", $time, data_in, detect);
    end

endmodule
