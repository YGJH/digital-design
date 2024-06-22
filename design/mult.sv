module tree2eightDecoder(
  input A1,
  input A2,
  input A3,
  output S0,
  output S1,
  output S2,
  output S3,
  output S4,
  output S5,
  output S6,
  output S7
);
logic X4 , X6 ,X7 , X8 ,X9 , X10 , X11 , X12 ;

//0
and AND1( X4 , ~A1 , ~A2 );
and AND2( S0 , X4  , ~A3 );
//1
and AND3( X6 , A1 , ~A2);
and AND4( S1 , ~A3 , X6);
//2
and AND5(X7 , A2 , ~A1);
and AND6(S2 , ~A3 , X7 );
//3 
and AND8( X8 , A1 , A2);
and AND9( S3 , ~A3 , X8);
//4
and AND10( X9 , A3, ~A1);
and AND11( S4 , X9 , ~A2);
//5
and AND12( X10 , A3 , A1);
and AND13( S5 , X10 , ~A2);
//6 
and AND14( X11 , A2 , A3);
and AND15( S6 , X11 , ~A1);
//7
and AND16(X12 , A2 , A3);
and AND17(S7 , X12 , A1);

endmodule