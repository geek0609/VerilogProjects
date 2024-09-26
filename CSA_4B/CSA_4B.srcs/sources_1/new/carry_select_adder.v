module carry_select_adder(a, b, cin, sum, cout);
  input [7:0] a, b;
  input cin;
  output [7:0] sum;
  output cout;
  
  wire [3:0] sum0, sum1;
  wire c_out0, c_out1, c_out_mid;
  
  // Lower 4 bits Ripple Carry Adder
  ripple_carry_adder rca_lower (a[3:0], b[3:0], cin, sum[3:0], c_out_mid);
  
  // Higher 4 bits Ripple Carry Adder with carry-in = 0
  ripple_carry_adder rca_upper_0 (a[7:4], b[7:4], 1'b0, sum0, c_out0);
  
  // Higher 4 bits Ripple Carry Adder with carry-in = 1
  ripple_carry_adder rca_upper_1 (a[7:4], b[7:4], 1'b1, sum1, c_out1);
  
  // Select the correct sum and carry out based on the middle carry-out
  assign sum[7:4] = (c_out_mid) ? sum1 : sum0;
  assign cout = (c_out_mid) ? c_out1 : c_out0;
  
endmodule
