module StudentID(
    input clk , reset,
    output [3:0] id
);

logic [3:0]dd , da;
dff_pos_sync u_dff1(
    .d(dd[0]),
    .clk(clk),
    .reset(reset),
    .q(da[0])
);
dff_pos_sync u_dff2(
    .d(dd[1]),
    .clk(clk),
    .reset(reset),
    .q(da[1])
);
dff_pos_sync u_dff3(
    .d(dd[2]),
    .clk(clk),
    .reset(reset),
    .q(da[2])
);
dff_pos_sync u_dff4(
    .d(dd[3]),
    .clk(clk),
    .reset(reset),
    .q(da[3])
);
assign dd[0]=(~da[0] & da[1]) || (da[2] & ~da[1]);
assign dd[1]=~da[1] & da[0];
assign dd[2]=(~da[3]&da[2]&~da[1] & da[0])||(~da[3]&~da[2]&~da[1]&~da[0])||(~da[3]&~da[2]&~da[0]);
assign dd[3]=(da[3] & da[0]) || (da[2]&~da[0]);
assign id = da;
endmodule
