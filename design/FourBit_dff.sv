module FourBit_dff(
    input clk , reset,
    input [3:0] d,
    output [3:0] q
);

    dff_pos_sync df1(
        .clk(clk),
        .reset(reset),
        .d(d[0]),
        .q(q[0])
    );
    dff_pos_sync df2(
        .clk(clk),
        .reset(reset),
        .d(d[1]),
        .q(q[1])
    );
    dff_pos_sync df3(
        .clk(clk),
        .reset(reset),
        .d(d[2]),
        .q(q[2])
    );
    dff_pos_sync df4(
        .clk(clk),
        .reset(reset),
        .d(d[3]),
        .q(q[3])
    );
endmodule
