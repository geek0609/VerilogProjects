`timescale 1ns / 1ps

module calculator_tb;

    reg clk;
    reg [7:0] sw;
    wire [6:0] seg;
    wire dp;
    wire [3:0] an;

    // Instantiate the calculator module
    calculator uut (
        .clk(clk),
        .sw(sw),
        .seg(seg),
        .dp(dp),
        .an(an)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz clock (adjust as needed)
    end

    // Test sequence
    initial begin
        // Initialize switches
        sw = 8'b00000000;

        // Wait for global reset
        #100;

        // Test case 1: Load 5 into register a
        sw[3:0] = 4'b0101; // Value 5
        sw[5] = 0;         // Select register a
        #10 sw[4] = 1;     // Trigger load
        #10 sw[4] = 0;

        // Test case 2: Load 3 into register b
        sw[3:0] = 4'b0011; // Value 3
        sw[5] = 1;         // Select register b
        #10 sw[4] = 1;     // Trigger load
        #10 sw[4] = 0;

        // Test case 3: Addition (5 + 3)
        sw[7:6] = 2'b00;   // Select add operation
        #100;

        // Test case 4: Subtraction (5 - 3)
        sw[7:6] = 2'b01;   // Select subtract operation
        #100;

        // Test case 5: Multiplication (5 * 3)
        sw[7:6] = 2'b10;   // Select multiply operation
        #100;

        // Test case 6: Division (5 / 3)
        sw[7:6] = 2'b11;   // Select divide operation
        #100;

        // Test case 7: Division by zero (5 / 0)
        // Load 0 into register b
        sw[3:0] = 4'b0000; // Value 0
        sw[5] = 1;         // Select register b
        #10 sw[4] = 1;     // Trigger load
        #10 sw[4] = 0;
        sw[7:6] = 2'b11;   // Select divide operation
        #100;

        // End simulation
        $stop;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0d ns, sw=%b, a=%d, b=%d, operation=%b, result=%h, seg=%b, an=%b",
                 $time, sw, uut.a, uut.b, sw[7:6], uut.result, seg, an);
    end

endmodule
