module clock(
    input clk , 
    input reset,
    output logic [3:0]sec_units , min_units,
    output logic [2:0]sec_tens , min_tens
);
logic [3:0] C;
unit_digit sec_unit(
    .clk(clk),
    .reset(reset),
    .c_in(1'b1),
    .qq(sec_units),
    .carry1(C[0])
);
unit_digit_mod6 sec_ten(
    .clk(clk),
    .reset(reset),
    .c_in(C[0]),
    .q(sec_tens),
    .carry1(C[1])
);
unit_digit min_unit(
    .clk(clk),
    .reset(reset),
    .c_in(C[1]),
    .qq(min_units),
    .carry1(C[2])
);
unit_digit_mod6 min_ten(
    .clk(clk),
    .reset(reset),
    .c_in(C[2]),
    .q(min_tens),
    .carry1(C[3])
);



endmodule
