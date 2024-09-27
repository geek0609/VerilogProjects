module SISOBDR (
    input clk,
    input reset,
    input dir,
    input serial_in,
    output reg serial_out
);
    reg [3:0] register; 

    always @(posedge clk or posedge reset) begin
        if (reset)
            register <= 4'b0000;
        else begin
            if (dir)
                register <= {serial_in, register[3:1]};
            else
                register <= {register[2:0], serial_in};
        end
        
   
    end
    
    always @(posedge clk) begin
        serial_out <= register[3]; 
    end
endmodule
