module tb_birth;
logic clk , reset;
logic [3:0] birth;

bir ubir(
    .clk(clk) , 
    .reset(reset),
    .birth(birth)
);

always #5 clk = ~clk;

initial begin
    clk = 0 ; reset = 1;
#10 reset = 0;
#500 $stop;

end
endmodule
