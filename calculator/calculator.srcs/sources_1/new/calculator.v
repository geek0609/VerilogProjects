module calculator (
    input clk,            // Clock signal
    input [7:0] sw,       // Switches 0-7
    output reg [6:0] seg, // 7-segment display segments
    output reg dp,        // Decimal point (not used)
    output reg [3:0] an   // Anodes for the 4-digit 7-segment display
);

    reg [3:0] a = 0;
    reg [3:0] b = 0;
    reg [7:0] result = 0;
    reg [16:0] clkdiv = 0;

    // Clock divider for display refresh rate
    always @(posedge clk) begin
        clkdiv <= clkdiv + 1;
    end

    wire [1:0] refresh_counter = clkdiv[16:15]; // 2-bit counter for multiplexing digits

    // Load values into registers a or b on the rising edge of sw[4]
    always @(posedge sw[4]) begin
        if (sw[5] == 0)
            a <= sw[3:0]; // Load into register a
        else
            b <= sw[3:0]; // Load into register b
    end

    // Perform operation based on sw[7:6]
    always @(*) begin
        case (sw[7:6])
            2'b00: result = a + b;                  // Addition
            2'b01: result = a - b;                  // Subtraction
            2'b10: result = a * b;                  // Multiplication
            2'b11: result = (b != 0) ? a / b : 8'hEE; // Division with divide-by-zero check
            default: result = 8'h00;
        endcase
    end

    // 7-segment display multiplexing and segment assignment
    always @(*) begin
        dp = 1; // Decimal point off
        case (refresh_counter)
            2'b00: begin
                an = 4'b1110; // Activate least significant digit
                seg = seg_decoder(result[3:0]);
            end
            2'b01: begin
                an = 4'b1101; // Next digit
                seg = seg_decoder(result[7:4]);
            end
            2'b10: begin
                an = 4'b1011; // Display register b
                seg = seg_decoder(b);
            end
            2'b11: begin
                an = 4'b0111; // Display register a
                seg = seg_decoder(a);
            end
            default: begin
                an = 4'b1111;
                seg = 7'b1111111;
            end
        endcase
    end

    // Function to decode 4-bit binary to 7-segment display encoding
    function [6:0] seg_decoder;
        input [3:0] nibble;
        begin
            case (nibble)
                4'h0: seg_decoder = 7'b1000000;
                4'h1: seg_decoder = 7'b1111001;
                4'h2: seg_decoder = 7'b0100100;
                4'h3: seg_decoder = 7'b0110000;
                4'h4: seg_decoder = 7'b0011001;
                4'h5: seg_decoder = 7'b0010010;
                4'h6: seg_decoder = 7'b0000010;
                4'h7: seg_decoder = 7'b1111000;
                4'h8: seg_decoder = 7'b0000000;
                4'h9: seg_decoder = 7'b0010000;
                4'hA: seg_decoder = 7'b0001000;
                4'hB: seg_decoder = 7'b0000011;
                4'hC: seg_decoder = 7'b1000110;
                4'hD: seg_decoder = 7'b0100001;
                4'hE: seg_decoder = 7'b0000110;
                4'hF: seg_decoder = 7'b0001110;
                default: seg_decoder = 7'b1111111; // Blank display
            endcase
        end
    endfunction

endmodule
