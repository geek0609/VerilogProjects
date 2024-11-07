`timescale 1ns / 1ps
module Controller #(parameter N = 8)(
    input clk, rst,
    input Q0,
    output reg Start,
    output reg Add,
    output reg Shift,
    output reg Done
    );

    reg [$clog2(N+1):0] count;
    
    reg [1:0] state;
    
    parameter IDLE = 2'b00;
    parameter ADD = 2'b01;
    parameter SHIFT = 2'b10;
    parameter DONE = 2'b11;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= N;
            Start <= 1;
            Add <= 0;
            Shift <= 0;
            Done <= 0;
            state <= IDLE;
        end 
        
        
        else begin
            case (state)
                IDLE: begin
                    Start <= 0;
                    if (count > 0) begin
                        if (Q0 == 1) begin
                            Add <= 1;
                            state <= ADD;
                        end else begin
                            Shift <= 1;
                            state <= SHIFT;
                        end
                    end else begin
                        Done <= 1;
                        state <= DONE;
                    end
                end
                
                
                ADD: begin
                    Add <= 0;
                    Shift <= 1;
                    state <= SHIFT;
                end
                
                
                SHIFT: begin
                    Shift <= 0;
                    count <= count - 1;
                    state <= IDLE;
                end
                
                
                DONE: begin
                    Done <= 1;
                end
            endcase
        end
    end
endmodule
