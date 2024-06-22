module fouradder(
	input A1,
	input A2,
	input A3,
  input A4,
  input B1,
  input B2,
  input B3,
  input B4,
  input Cin,
  output logic S0, 
	output logic S1,
  output logic S2,
  output logic S3,
	output logic C4
);

logic X1 , X2 , X3 , X4 ,X5 ,X6 , X7 , X8 , X9 , X10 , X11 ,X12 ,X13 ,X14 , X15 , X16 , X17 , X18 , X19 , X20 , X21 , X22;
logic C1;
logic C2;
logic C3;

xor XOR1(X1 , A1 , B1);
xor XOR2(S0 , X1 , Cin);
and AND1(X2 , A1 , B1);
and AND2(X3 , A1 , Cin);
and AND3(X4 , B1 , Cin);
or OR1(X21 , X3 , X2);
or OR2(C1 , X21 , X4);

xor XOR3(X5 , A2 , B2);
xor XOR4(S1 , X5 , C1);
and AND4(X6 , A2 , B2);
and AND5(X7 , A2 , C1);
and AND6(X8 , B2 , C1);
or OR3(X20 , X8 , X7);
or OR4(C2 , X20 , X6);

xor XOR5(X9 , A3 , B3);
xor XOR6(S2 , X9 , C2);
and AND7(X10 , A3 , B3);
and AND8(X11 , A3 , C2);
and AND9(X12 , B3 , C2);
or OR5(X22 , X11 , X12);
or OR6(C3 , X22 , X10);

xor XOR7(X14 , A4 , B4);
xor XOR8(S3 , X14 , C3);
and AND10(X16 , A4 , B4);
and AND11(X17 , A4 , C3);
and AND12(X18 , B4 , C3);
or OR7(X19 , X18 , X16);
or OR8(C4 , X19 , X17);
endmodule