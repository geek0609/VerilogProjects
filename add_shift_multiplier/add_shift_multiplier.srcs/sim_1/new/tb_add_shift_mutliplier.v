module tb_add_shift_multiplier;

reg [3:0] A; // 4-bit multiplicand
reg [3:0] B; // 4-bit multiplier
reg clk, rst; // Clock and reset
wire [7:0] P; // 8-bit product

// Instantiate the multiplier module
add_shift_multiplier uut (
    .A(A),
    .B(B),
    .clk(clk),
    .rst(rst),
    .P(P)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    // Test case 1
    clk = 0;
    rst = 1;
    #10;  // Reset the system
    rst = 0;
    A = 4'b1110;  // A = 10
    B = 4'b0011;  // B = 3
    rst = 1;
    #10;  // Reset the system
    rst = 0;
    #50;          // Wait for multiplication

    // Test case 2
    rst = 1; #10;  // Reset the system
    rst = 0;
    A = 4'b0100;  // A = 6
    B = 4'b0111;  // B = 5
    rst = 1; 
    #10;  // Reset the system
    rst = 0;
    
    #100
    A = 4'b0110;  // A = 6
    B = 4'b0101;  // B = 5
    // Test case 2
    rst = 1; 
    #10;  // Reset the system
    rst = 0;
    #100

    $stop;        // End simulation
end

endmodule
