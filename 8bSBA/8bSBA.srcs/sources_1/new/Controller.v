module Controller #(parameter N = 8)(
    input clk, rst, start,
    output reg load,
    output reg shift,
    output reg done
    );

    reg [$clog2(N+1):0] count;
    reg [1:0] state;

    parameter IDLE  = 2'b00;
    parameter LOAD  = 2'b01;
    parameter SHIFT = 2'b10;
    parameter DONE  = 2'b11;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            load  <= 0;
            shift <= 0;
            done  <= 0;
            count <= N;
            state <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0;
                    if (start) begin
                        load  <= 1;
                        count <= N;
                        state <= LOAD;
                    end
                end
                LOAD: begin
                    load  <= 0;
                    shift <= 1;
                    state <= SHIFT;
                end
                SHIFT: begin
                    if (count > 0) begin
                        count <= count - 1;
                        if (count == 1) begin
                            shift <= 0;
                            done  <= 1;
                            state <= DONE;
                        end
                    end
                end
                DONE: begin
                end
                default: state <= IDLE;
            endcase
        end
    end

endmodule
