module testbench_fadder;
logic A , B , Cin , S , Cout;

FA_1B u_FA_1B(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

initial
begin
    A = 0 ; B = 0 ; Cin = 0;
#10 A = 0 ; B = 0 ; Cin = 1;
#10 A = 0 ; B = 1 ; Cin = 0;
#10 A = 0 ; B = 1 ; Cin = 1;
#10 A = 1 ; B = 0 ; Cin = 0;
#10 A = 1 ; B = 0 ; Cin = 1;
#10 A = 1 ; B = 1 ; Cin = 0;
#10 A = 1 ; B = 1 ; Cin = 1;
#10 $stop;

end
initial
begin
    $monitor($time , "A = %b , B = %b , Cin = %b , S = %b , Cout = %b" , A , B , Cin , S , Cout);
end
endmodule


