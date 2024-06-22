module SevenAndTwosub(
    input [3:0]A , B,
    input m,
    output logic [3:0]S,
    output logic [3:0]C,
    output logic V,
    output logic Cout,
    output logic [6:0]seg
);


twosub u_twosub(
    .se(m),
	.A(A),
	.B(B),
	.V(V),
	.S(S),
	.C(C)
);

SevenDecoder u_SevenDecoder(
    .A(S),
    .seg(seg)
);

assign Cout = C[3];
endmodule
