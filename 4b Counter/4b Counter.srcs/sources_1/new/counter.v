module counter(
    input clk, reset,
    output [3:0] Q
    );

    wire j, k;
    assign j = 1'b1; // Setting J and K to 1 for toggle behavior
    assign k = 1'b1;
    assign a1 = Q[1] & Q[0];
    assign a2 = Q[2] & a1;
    assign reset_cond = Q[0] & ~Q[1] & Q[2] & Q[3];
    
    // Instantiate 4 JK flip-flops for the 4-bit counter
    jk jk_ff0 (.s(j), .r(k), .clk(clk), .reset(reset || reset_cond), .Q(Q[0])); // LSB flip-flop
    jk jk_ff1 (.s(Q[0]), .r(Q[0]), .clk(clk), .reset(reset || reset_cond ), .Q(Q[1]));
    jk jk_ff2 (.s(a1), .r(a1), .clk(clk), .reset(reset || reset_cond ), .Q(Q[2]));
    jk jk_ff3 (.s(a2), .r(a2), .clk(clk), .reset(reset || reset_cond), .Q(Q[3])); // MSB flip-flop
    

endmodule
