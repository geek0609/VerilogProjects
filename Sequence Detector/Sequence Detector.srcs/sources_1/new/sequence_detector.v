// 101101 Sequence Detector (Pure Verilog)
module sequence_detector (
    input wire clk,
    input wire reset,
    input wire data_in,
    output reg detect,
    output reg current_state
);

    parameter START = 4'd0;
    parameter S1    = 4'd1;
    parameter S2    = 4'd2;
    parameter S3    = 4'd3;
    parameter S4    = 4'd4;
    parameter S5    = 4'd5;

    reg [3:0] current_state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= START;
        else
            current_state <= next_state;
    end

    always @(*) begin
        next_state = current_state;
        detect = 1'b0;

        case (current_state)
            START: begin
                if (data_in)
                    next_state = S1;
                else
                    next_state = START;
            end
            S1: begin
                if (data_in)
                    next_state = S1;
                else
                    next_state = S2;
            end
            S2: begin
                if (data_in)
                    next_state = S3;
                else
                    next_state = START;
            end
            S3: begin
                if (data_in)
                    next_state = S4;
                else
                    next_state = S2;
            end
            S4: begin
                if (data_in)
                    next_state = S4;
                else
                    next_state = S5;
            end
            S5: begin
                if (data_in) begin
                    detect = 1'b1;
                    next_state = S1;
                end
                else
                    next_state = START;
            end
            default: next_state = START;
        endcase
    end

endmodule
