`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2024 10:47:02 AM
// Design Name: 
// Module Name: TestBench
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

module TestBench;
    reg clk;
    reg rst;
    reg a;
    reg b;
    reg valid;
    wire sum;
    wire carry_out;
    
    // Instantiate the SerialBusAdder module
    SerialBusAdder uut (
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .valid(valid),
        .sum(sum),
        .carry_out(carry_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Generate a clock signal with a period of 10 units
    end

    // Test sequence
    initial begin
        // Initialize all inputs
        rst = 1;
        valid = 0;
        a = 0;
        b = 0;
        #10 rst = 0; // Release reset after 10 time units
        
        // Test Case 1: Add 5 (00000101) + 3 (00000011)
        valid = 1;
        
        // Bit 0
        a = 1; b = 1; #10;
        // Bit 1
        a = 0; b = 1; #10;
        // Bit 2
        a = 1; b = 0; #10;
        // Bits 3 to 7
        a = 0; b = 0; #10; #10; #10; #10; #10;

        valid = 0; // End of inputs
        #50; // Wait and observe the results

        $finish; // End of simulation
    end
endmodule
