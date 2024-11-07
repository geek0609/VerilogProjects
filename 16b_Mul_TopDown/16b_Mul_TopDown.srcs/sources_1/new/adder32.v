// adder32.v
// Module for 32-bit adder

module adder32(
    input  [31:0] a,   // Input operand A
    input  [31:0] b,   // Input operand B
    output [31:0] sum  // Sum output
);

    assign sum = a + b; // Perform addition

endmodule
