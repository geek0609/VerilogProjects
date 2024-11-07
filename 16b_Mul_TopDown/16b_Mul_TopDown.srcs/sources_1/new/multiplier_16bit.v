// multiplier_16bit.v
// Top-level module for 16-bit multiplier using top-down design approach

module multiplier_16bit(
    input  [15:0] a,      // Multiplicand
    input  [15:0] b,      // Multiplier
    output [31:0] product // Product
);

    // Internal wires for partial products
    wire [31:0] partial_products [15:0];

    // Wires for sums at each level of the adder tree
    wire [31:0] sum_level1 [7:0];
    wire [31:0] sum_level2 [3:0];
    wire [31:0] sum_level3 [1:0];
    wire [31:0] sum_level4;

    // Generate partial products
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : partial_product_gen
            partial_product pp_inst (
                .a(a),
                .b_bit(b[i]),
                .shift(i),
                .pp(partial_products[i])
            );
        end
    endgenerate

    // Level 1 Adders: Sum pairs of partial products
    generate
        for (i = 0; i < 8; i = i + 1) begin : level1_adders
            adder32 adder_inst (
                .a(partial_products[2*i]),
                .b(partial_products[2*i+1]),
                .sum(sum_level1[i])
            );
        end
    endgenerate

    // Level 2 Adders: Sum outputs of Level 1
    generate
        for (i = 0; i < 4; i = i + 1) begin : level2_adders
            adder32 adder_inst (
                .a(sum_level1[2*i]),
                .b(sum_level1[2*i+1]),
                .sum(sum_level2[i])
            );
        end
    endgenerate

    // Level 3 Adders: Sum outputs of Level 2
    generate
        for (i = 0; i < 2; i = i + 1) begin : level3_adders
            adder32 adder_inst (
                .a(sum_level2[2*i]),
                .b(sum_level2[2*i+1]),
                .sum(sum_level3[i])
            );
        end
    endgenerate

    // Level 4 Adder: Sum outputs of Level 3 to get final product
    adder32 adder_final_inst (
        .a(sum_level3[0]),
        .b(sum_level3[1]),
        .sum(sum_level4)
    );

    // Assign final product
    assign product = sum_level4;

endmodule
