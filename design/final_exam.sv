module finall(
    input clk,
    input reset,
    output [3:0] S,
	 output [3:0]sum,
	 output [3:0] tm
);
logic [3:0] tmp, SS , tmpp;
logic ignore;
    FourBit_dff dd1(
        .clk(clk),
        .reset(reset),
        .d(tmp),
        .q(tmpp)
    );
    StudentID st2(
        .clk(clk) ,
        .reset(reset),
        .id(SS)
    );
	 fouradder ff3(
        .A(SS),
        .B(tmpp),
        .Cin(0),
        .Cout(ignore),
        .S(sum)
   );
	assign tmp = sum;
	assign tm = tmpp;
	assign S = SS;
  
	endmodule

