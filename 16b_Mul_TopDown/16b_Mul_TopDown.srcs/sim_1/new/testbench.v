// testbench.v
// Testbench for multiplier_16bit

`timescale 1ns / 1ps

module testbench;

    reg [15:0] a;
    reg [15:0] b;
    wire [31:0] product;

    // Instantiate the multiplier
    multiplier_16bit uut (
        .a(a),
        .b(b),
        .product(product)
    );

    initial begin
        // Test cases
        a = 16'h1234; b = 16'h5678;
        #10;
        a = 16'hFFFF; b = 16'h0001;
        #10;
        a = 16'hABCD; b = 16'hEF01;
        #10;
        a = 16'h0000; b = 16'hFFFF;
        #10;
        $finish;
    end

    initial begin
        $monitor("Time=%0d a=%h b=%h product=%h", $time, a, b, product);
    end

endmodule
