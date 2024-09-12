`timescale 1ns / 1ps

module SerialBusAdder (
    input clk,
    input rst,
    input a,        // Serial input bit for operand A
    input b,        // Serial input bit for operand B
    input valid,    // Signal to indicate valid input bits
    output reg sum, // Serial output bit for the sum
    output reg carry_out // Carry-out bit
);
    reg carry_in;  // Carry-in bit
    reg [7:0] sum_register;  // Register to hold the intermediate sum (assuming 8-bit numbers)
    reg [7:0] carry_register; // Register to hold the intermediate carry

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            sum <= 0;
            carry_out <= 0;
            carry_in <= 0;
            sum_register <= 8'b0;
            carry_register <= 8'b0;
        end else if (valid) begin
            // Full-adder logic for the serial addition
            sum_register = (a ^ b ^ carry_in);
            carry_register = (a & b) | (carry_in & (a ^ b));
            
            // Update outputs
            sum <= sum_register[0]; // Output the LSB of the sum
            carry_out <= carry_register[0]; // Output the LSB of the carry

            // Shift registers for next bit
            sum_register = sum_register >> 1;
            carry_register = carry_register >> 1;
            carry_in <= carry_register[0]; // Update carry-in for next bit
        end
    end
endmodule

