module FA_1B(
    input A,
    input B,
    input Cin,
    output logic S,
    output logic Cout
);

logic X1;
logic A1 , A2;

xor XOR1(X1 , A , B);
xor XOR2(S , X1 , Cin);
and AND1(A1 , X1 , Cin);
and AND2(A2 , A , B);
or OR1(Cout , A1 , A2);

endmodule
