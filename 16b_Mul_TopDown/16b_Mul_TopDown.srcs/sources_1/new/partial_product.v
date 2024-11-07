// partial_product.v
// Module to generate partial products for 16-bit multiplier

module partial_product(
    input  [15:0] a,      // Multiplicand
    input         b_bit,  // Single bit of multiplier
    input  [3:0]  shift,  // Shift amount
    output [31:0] pp      // Partial product
);

    wire [15:0] temp_pp;
    assign temp_pp = b_bit ? a : 16'b0; // Generate partial product based on b_bit
    assign pp = temp_pp << shift;       // Shift partial product by 'shift' amount

endmodule
