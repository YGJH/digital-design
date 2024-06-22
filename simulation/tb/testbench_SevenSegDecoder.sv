module testbench_SevenSegDecoder;
logic [3:0]A ; 
logic [6:0]seg;
SevenDecoder u_SevenDecoder(
  .A(A),
  .seg(seg)
);


initial 
begin 
    A = 4'b0111 ;
#10 A = 4'b1000 ;
#10 A = 4'b0011 ;
#10 A = 4'b1001 ;
#10 A = 4'b1010 ;
#10 $stop;

end 

initial
begin
  $monitor($time , "A = %b ,seg = %b " , A , seg);
end 
endmodule 