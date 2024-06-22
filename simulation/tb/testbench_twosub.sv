module testbench_twosub;
logic se;
logic [3:0]A , B;
logic [3:0]S, C;
logic V;

twosub u_twosub(
    .se(se),
	.A(A),
	.B(B),
    .S(S),
    .C(C),
    .V(V)
);

initial
begin
    se = 0 ; A = 4'b1111; B = 4'b1111;
#10 se = 0 ; A = 4'b0100; B = 4'b0111;
#10 se = 1 ; A = 4'b0000; B = 4'b1111;
#10 se = 1 ; A = 4'b1101; B = 4'b1010;
#10 se = 1 ; A = 4'b0111; B = 4'b1000;
#10 $stop;

end
initial 
begin 
    $monitor($time , "A = %b , B = %b , se = %b , S = %b , C = %b , V = %b " , A , B , se , S , C , V);
end
endmodule
