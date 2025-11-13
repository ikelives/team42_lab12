module T_flipflop_structural (
  input clk,
  input t,
  input res,
  output q
  );
  
  wire D;
  wire Q_internal;
  
  assign D = t ^ Q_internal;
  
  D_flipflop d1(
  .clk(clk),
  .d(D),
  .res(res),
  .q(Q_internal)
  );
  
 //always@(posedge clk) begin
 //    if (!res) q <=0;
 //    else
 //     q <= (t?~q:q);
 //  end
  assign q = Q_internal;
endmodule