module testbench_4bit_count;
    logic clk , reset , x;
    logic [3:0] q;
Fbit_count u_Fbit_count(
    .clk(clk),
    .reset(reset),
    .x(x),
    .q(q)
);

always #5 clk = ~clk; //每過5單位時間，clk反向
initial begin
    clk = 0 ; reset = 1 ; x = 0;
#10 reset = 0;
#200 x = 1;
#200 $stop;
end

endmodule
