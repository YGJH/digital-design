module fouradder(
  input [3:0]A,
  input [3:0]B,
  input Cin,
  output logic [3:0]S,
  output logic Cout
);
logic C[2:0];

FA_1B FA_1(
    .A(A[0]),
    .B(B[0]),
    .Cin(Cin),
    .S(S[0]),
    .Cout(C[0])
);
FA_1B FA_2(
    .A(A[1]),
    .B(B[1]),
    .Cin(C[0]),
    .S(S[1]),
    .Cout(C[1])
);
FA_1B FA_3(
    .A(A[2]),
    .B(B[2]),
    .Cin(C[1]),
    .S(S[2]),
    .Cout(C[2])
);
FA_1B FA_4(
    .A(A[3]),
    .B(B[3]),
    .Cin(C[2]),
    .S(S[3]),
    .Cout(Cout)
);
endmodule
