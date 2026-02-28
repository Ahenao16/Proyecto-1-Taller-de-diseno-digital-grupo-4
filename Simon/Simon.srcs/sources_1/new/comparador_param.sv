`timescale 1ns / 1ps

module comparador_param #(
parameter Width=3)
(
input logic [Width-1:0] a,
input logic [Width-1:0] b,
output logic gt,
output logic eq,
output logic lt
    );
    
    always_comb begin
        if (a>b) begin 
        gt = 1;
        eq = 0;
        lt = 0;
        end
        else if (a==b) begin 
        gt = 0;
        eq = 1;
        lt = 0;
        end
        else begin
        gt = 0;
        eq = 0;
        lt = 1;
        end
    end
    
endmodule
