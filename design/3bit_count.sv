module bit_count(
    input clk, reset,
    output logic [2:0] Q,
    output logic y
);


logic [1:0] C;

always_ff @ (posedge clk)
begin
    if (reset)
    begin 
         Q[0] = 0;
         Q[1] = 0;
         Q[2] = 0;
    end
    else
    begin 
         if(clk)
            C[0] = Q[0] & 1;
            Q[0] = Q[0] ^ 1;
            C[1] = Q[1] & C[0];
            Q[1] = Q[1] ^ C[0];
            Q[2] = Q[2] ^ C[1];
            y = Q[2] & Q[1] & Q[0];
    end
end
endmodule
