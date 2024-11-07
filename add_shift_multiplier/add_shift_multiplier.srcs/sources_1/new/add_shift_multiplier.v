module add_shift_multiplier (
    input [3:0] A,    // 4-bit multiplicand
    input [3:0] B,    // 4-bit multiplier
    input clk,        // Clock signal
    input rst,        // Reset signal
    output reg [7:0] P // 8-bit product
);

reg [3:0] multiplier;
reg [7:0] multiplicand, temp;
reg [3:0] count;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        P <= 8'b0;
        temp <= 8'b0;
        multiplier <= B;
        multiplicand <= {4'b0, A}; // Shift A to the lower half of a register
        count <= 4'b0;
    end else if (count < 4) begin
        if (multiplier[0] == 1'b1) begin
            temp = temp + multiplicand;  // Add multiplicand if the LSB of multiplier is 1
        end
        multiplicand <= multiplicand << 1; // Left shift the multiplicand
        multiplier <= multiplier >> 1;     // Right shift the multiplier
        count = count + 1;
        P = temp; // Store the result in P
    end
end

endmodule
