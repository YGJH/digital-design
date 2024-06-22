module testbench_Fourbitsount;

    logic clk, reset;
    logic [3:0] ou;
    Fourbitcount u_Fourbitcount(
        .clk(clk),
        .reset(reset),
        .ou(ou)
    );
    always #5 clk = ~clk;
    initial
	 begin
        clk = 0 ; reset = 1;
        #10 reset = 0;
        #500 $stop;
    end
endmodule
