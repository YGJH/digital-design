module Fbit_count(
    input clk,
    input reset,
    input x,
    output logic [3:0] q
);
logic [3:0] qd;
twosub u_twosub(
	.se(x),
	.A(q),
	.B(4'b0001),
	.S(qd)
);


dff_pos_sync u_dff_pos_syn1c( 
    .d(qd[0]),
    .clk(clk),
    .reset(reset),
    .q(q[0])
);
dff_pos_sync u_dff_pos_syn2c( 
    .d(qd[1]),
    .clk(clk),
    .reset(reset),
    .q(q[1])
);
dff_pos_sync u_dff_pos_syn3c( 
    .d(qd[2]),
    .clk(clk),
    .reset(reset),
    .q(q[2])
);
dff_pos_sync u_dff_pos_syn4c( 
    .d(qd[3]),
    .clk(clk),
    .reset(reset),
    .q(q[3])
);

endmodule



