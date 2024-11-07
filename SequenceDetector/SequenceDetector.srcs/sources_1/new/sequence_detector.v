module sequence_detector (
    input clk,
    input reset,
    input seq_in,
    output reg detected
);

    // State encoding
    localparam IDLE  = 3'b000;
    localparam S1    = 3'b001;
    localparam S10   = 3'b010;
    localparam S101  = 3'b011;
    localparam S1011 = 3'b100;

    reg [2:0] state, next_state;

    // State transition
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Next state logic
    always @(*) begin
        next_state = state; // Default to stay in the current state
        case (state)
            IDLE:  if (seq_in) next_state = S1;
            S1:    if (!seq_in) next_state = S10;
            S10:   if (seq_in) next_state = S101;
                   else next_state = IDLE;
            S101:  if (seq_in) next_state = S1011;
                   else next_state = S10;
            S1011: next_state = IDLE; // After detecting 1011, go back to IDLE
        endcase
    end

    // Output logic
    always @(posedge clk or posedge reset) begin
        if (reset)
            detected <= 0;
        else if (state == S1011)
            detected <= 1;
        else
            detected <= 0;
    end

endmodule
