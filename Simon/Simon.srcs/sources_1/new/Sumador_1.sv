module Sumador_1 #(
    parameter N = 4 //Modificacion al que necesitemos 
)(
    input  logic [N-1:0] A,
    input  logic [N-1:0] B,
    input  logic cin,
    output logic [N-1:0] S,
    output logic cout
);

logic [N:0] carry;

assign carry[0] = cin;
assign cout = carry[N];

genvar i;

generate
    for(i = 0; i < N; i++) begin : FA_BLOCK

        full_adder FA (
            .a(A[i]),
            .b(B[i]),
            .cin(carry[i]),
            .sum(S[i]),
            .cout(carry[i+1])
        );

    end
endgenerate

endmodule