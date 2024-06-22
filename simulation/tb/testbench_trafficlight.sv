module testbench_trafficlight;
logic clk, reset;
logic [1:0] R , G , Y;

trafficlight u_trafficlight(
    .clk(clk),
    .reset(clk),
    .R(R) ,
    .G(G) ,
    .Y(Y)
);
always #5 clk = ~clk;
initial begin
        clk = 0 ; reset = 1;
    #10 reset = 0;
    #200 $stop;
    end
    endmodule