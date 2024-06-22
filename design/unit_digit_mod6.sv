module unit_digit_mod6(// > 9 ==> reset
    input clk , reset , c_in,
    output logic [2:0] q,
    output logic carry1
);

logic a, b, c, da , db, dc ;
dff_pos_sync dff1(
    .d(da),
    .clk(clk),
    .reset(reset),
    .q(a)
);
dff_pos_sync dff2(
    .d(db),
    .clk(clk),
    .reset(reset),
    .q(b)
);
dff_pos_sync dff3(
    .d(dc),
    .clk(clk),
    .reset(reset),
    .q(c)
);

assign da = (a & ~b & ~c) | (~c_in & a) | (c_in & b & c);
assign db = (~c_in & b) | (b & ~c) | (c_in & ~a & ~b & c);
assign dc = (c_in ^c);
assign carry1 = (c_in & a & ~b & c);
assign q[2:0] = {a,b,c};

endmodule

