module testbench_SevenAndTwosub;

logic [3:0] S , A , B , C;
logic [6:0] seg;
logic Cout , m , V;

SevenAndTwosub u_SevenAndTwosub(
    .A(A),
    .B(B),
    .m(B),
    .S(S),
    .C(C),
    .V(V),
    .Cout(Cout),
    .seg(seg)
);
initial
begin
    m = 0 ; A = 4'b1111; B = 4'b1111;
#10 m = 0 ; A = 4'b0100; B = 4'b0111;
#10 m = 1 ; A = 4'b0000; B = 4'b1111;
#10 m = 1 ; A = 4'b1101; B = 4'b1010;
#10 m = 1 ; A = 4'b0111; B = 4'b1000;
#10 $stop;

end
initial 
begin 
    $monitor($time , "A = %b , B = %b , m = %b , S = %b , C = %b , V = %b Cout = %b " , A , B , m , S , C , V , Cout);
end
endmodule
