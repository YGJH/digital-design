module sele (
		input [3:0]in,
		input se1,
		input se2,
        output logic Y
);

logic X1 , X2 , X3 , X4 , X5 , X6 , X7 , X8 , Xsele , X11;
and AND1(X1 , se1 , se2);
and ADN2(X2 , in[0] , X1);

and AND3(X3 , se1 ,  ~se2);
and AND4(X4 , X3 ,  in[1]);

and AND66(X5 , ~se1 , se2);
and AND5(X6 , X5 , in[2]);

and AND6(X7 , ~se1 , ~se2);
and AND7(X8 , X7 , in[3]);

or OR1(X9 , X8 , X6);
or OR2(X10 , X4 , X2);
or OR3(Y ,  X9 , X10);

endmodule


