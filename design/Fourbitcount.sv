module Fourbitcount(
    input clk , reset,
    output logic [3:0] ou,
    output logic [6:0] seg
);
SevenDecoder u_SevenDecoder(
    .A(ou),
    .seg(seg)
);
logic [3:0] C;

    always_ff @ (posedge clk) 
    begin 
        if (reset)
        begin
            ou[0] = 0; 
            ou[2] = 0; 
            ou[1] = 0;
            ou[3] = 0; 
            C[0] = 0;
            C[1] = 0;
            C[2] = 0;
            C[3] = 0;
       end
       else
       begin
            C[0] = ou[0] & clk;
            ou[0] = ou[0] ^ clk;
            C[1] = ou[1] & C[0];
            ou[1] = ou[1] ^ C[0];
            C[2] = ou[2] & C[1];
            ou[2] = ou[2] ^ C[1];
            C[3] = C[2] & ou[3];
            ou[3] = ou[3] ^ C[2];
        end
    end
endmodule
