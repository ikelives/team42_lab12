module D_ff_counter(
    input btnU,
    input btnC,
    output [2:0] led_mod,
    output reg led_out
    );
    
    reg [2:0] count;
    
    always @(posedge btnC or posedge btnU) begin
    if (btnU) begin
        count <= 3'b000;
        led_out <= 1'b0;
    end else begin
        if (count == 3'b101) begin //counts to 5, six digits
        count <= 3'b000;
        led_out <= ~led_out;
   end else begin
        count <= count + 1;
        end
    end       
 end
assign led_mod = count;

endmodule