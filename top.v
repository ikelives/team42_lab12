module top(
    input btnU,
    input btnC,
    //reset and clock
    output [6:0] led
    );


D_ff_counter counter(
    .btnU(btnU),
    .btnC(btnC),
    .led_mod(led[5:3]),
    .led_out(led[6])
);

wire [3:0] qclk;
assign led[2:0] = qclk[2:0];

T_flipflop_structural flip1(
.t(1),
.clk(btnC),
.q(qclk[0]),
.res(btnU)
);

T_flipflop_structural flip2(
.t(1),
.clk(qclk[0]),
.q(qclk[1]),
.res(btnU)
);

T_flipflop_structural flip3(
.t(1),
.clk(qclk[1]),
.q(qclk[2]),
.res(btnU)
);



endmodule