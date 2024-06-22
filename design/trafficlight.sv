module trafficlight(
    input clk,
    input reset,
    output logic [1:0] R , G , Y
);

logic [3:0] q;
Fbit_count u_Fbit_count(
    .clk(clk),
    .reset(reset),
    .x(1'b0),
    .q(q)
);
RGY_combination u_RGY_combination(
    .q(q),
    .r(R), 
    .g(G),
    .y(Y)
);
endmodule
