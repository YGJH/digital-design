module testbench_BCDadder;

logic [3:0] addend , augend;
logic [6:0] seg;
logic output_carry , carry_out , carry_in;
BCDadder u_BCDadder (
    .addend(addend),
	 .augend(augend),
    .carry_in(carry_in),
    .seg(seg),
    .output_carry(output_carry),
    .carry_out(carry_out)
);

initial
begin
    addend = 4'b0111 ; augend = 4'b0111 ; carry_in = 1;
#10 $stop;

end

initial
begin
    $monitor($time , "addend = %b , augend = %b, carry_in = %b , carry_out = %b , output_carry = %b" , addend , augend ,carry_in , carry_out , output_carry);
end

endmodule
