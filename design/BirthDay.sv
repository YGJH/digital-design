module bir(
    input clk , reset,
    output [3:0]birth
);


logic [3:0] dd , da;
dff_pos_sync uf1(
    .clk(clk),
    .reset(reset),
    .d(dd[0]),
    .q(da[0])
);
dff_pos_sync uf2(
    .clk(clk),
    .reset(reset),
    .d(dd[1]),
    .q(da[1])
);
dff_pos_sync uf3(
    .clk(clk),
    .reset(reset),
    .d(dd[2]),
    .q(da[2])
);
dff_pos_sync uf4(
    .clk(clk),
    .reset(reset),
    .d(dd[3]),
    .q(da[3])
);

assign dd[0] = (~da[3] & ~da[0])  || (da[2] & da[0]);
assign dd[1] = (~da[0] & da[2]) || (~da[0] & da[1]) || (~da[3] & da[0] & ~da[1]);
assign dd[2] = (da[2] & ~da[1]) || (da[3] & ~da[1]);
assign dd[3] = (~da[1] & ~da[0]);
assign birth = da;
endmodule

