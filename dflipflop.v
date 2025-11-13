module D_flipflop (
  input clk,
  input d,
  input res,
  output reg q,
  output q_bar
  );
  
  always@(posedge clk or posedge res) begin
    if 
        (res) q <=0;
    else
        q <= d;
 
  end
  assign q_bar = ~q;
  
endmodule