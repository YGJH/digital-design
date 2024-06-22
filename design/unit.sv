module unit_digit(// > 9 ==> reset
    input clk , reset , c_in,
    output [3:0] qq,
    output carry1
);

logic da , a , db , b , dc , c , dd ,d;
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
dff_pos_sync dff4(
    .d(dd),
    .clk(clk),
    .reset(reset),
    .q(d)
);

assign da = (~c_in & a) | (a & ~c & ~d) | (c_in & b & c & d);
assign db = (~c_in & b) | (c_in & b & ~c) | (c_in & b & c & ~d) | (c_in & ~b & c & d);
assign dc = (~c_in & c) | (c & ~d) | (c_in & ~a & ~c & d);
assign dd = (c_in ^ d);
assign carry1 = (c_in & a & ~b & ~c & d);
assign qq[3:0] = {a ,b  ,c , d};

endmodule

