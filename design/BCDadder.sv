module BCDadder (
    input [3:0] addend , augend,
    input carry_in,
    output logic [6:0] seg,
    output logic output_carry,
    output logic carry_out
);
//BCDadder u_BCDadder(
  //  .addend(SW[3:0]),
	// .augend(SW[7:4]),
   // .carry_in(SW[8]),
   // .seg(HEX0),
   // .output_carry(LED[0]),
    //.carry_out(LED[1])
//);
logic [3:0] ou , ou2;
fouradder u_fouradder(
    .A1(addend[0]),
	.A2(addend[1]),
	.A3(addend[2]),
    .A4(addend[3]),
    .B1(augend[0]),
    .B2(augend[1]),
    .B3(augend[2]),
    .B4(augend[3]),
    .Cin(carry_in),
    .S0(ou[0]), 
	.S1(ou[1]),
    .S2(ou[2]),
    .S3(ou[3]),
    .C4(carry_out)
);

assign output_carry = carry_out | (ou[3] & ou[2]) | (ou[3] & ou[1]);
fouradder u_fouradder2(
    .A1(ou[0]),
	.A2(ou[1]),
	.A3(ou[2]),
    .A4(ou[3]),
    .B1(0),
    .B2(output_carry),
    .B3(output_carry),
    .B4(0),
    .Cin(0),
    .S0(ou2[0]), 
	.S1(ou2[1]),
    .S2(ou2[2]),
    .S3(ou2[3])
);

SevenDecoder u_SevenDecoder(
    .A(ou2),
    .seg(seg)
);


endmodule



