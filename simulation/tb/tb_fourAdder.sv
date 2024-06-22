module tb_fourAdder;

logic [3:0]A ,  B , S;
logic Cin , Cout;

fouradder fa(
  .A(A),
  .B(B),
  .Cin(Cin),
  .S(S),
  .Cout(Cout)
);
initial begin
        A = 4'b0110 ; B = 4'b0011 ; Cin = 1; 
#10     A = 4'b0100 ; B = 4'b1001 ; Cin = 1; 
#10     A = 4'b0101 ; B = 4'b1111 ; Cin = 1; 
#10     A = 4'b0111 ; B = 4'b0001 ; Cin = 1; 
#10     A = 4'b0110 ; B = 4'b0011 ; Cin = 1; 
#10 $stop;
end
initial
begin
    $monitor($time , "Ä = %b , B = %b , Cin = %b , S = %b , Cout = %b" , A  , B , Cin , S , Cout);
end
endmodule

