module twosub(
	input se,
	input [3:0] A,
	input [3:0] B,
	output logic V,
	output logic [3:0] S,
	output logic [3:0] C
);
logic [3:0] _B;

assign Cin = se;
FA_1B u_FA_1B(
    .A(A[0]),
    .B(_B[0]) ,
	.Cin(Cin),
	.S(S[0]),
	.Cout(C[0])
);

FA_1B u_FA_2B(
    .A(A[1]),
    .B(_B[1]),
	.Cin(C[0]),
    .S(S[1]),
    .Cout(C[1])
);
FA_1B u_FA_3B(
    .A(A[2]),
    .B(_B[2]),
	.Cin(C[1]),
    .S(S[2]),
    .Cout(C[2])
);
FA_1B u_FA_4B(
    .A(A[3]),
    .B(_B[3]),
    .Cin(C[2]),
	 .S(S[3]),
    .Cout(C[3])
);


xor XOR1(_B[0] , B[0] , se);
xor XOR2(_B[1] , B[1] , se);
xor XOR3(_B[2] , B[2] , se);
xor XOR4(_B[3] , B[3] , se);

assign V = C[3] ^ C[2];

endmodule




