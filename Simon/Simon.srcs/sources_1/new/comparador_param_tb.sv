`timescale 1ns / 1ps


module comparador_param_tb;

parameter Width=3;
logic [Width-1:0] a;
logic [Width-1:0] b;
logic gt;
logic eq;
logic lt;
    
    comparador_param #(
    .Width(Width)
    ) dut (
    .a(a),
    .b(b),
    .gt(gt),
    .eq(eq),
    .lt(lt)
    );
    
initial begin

a=3'b001;
b=3'b010; #10;

a=3'b101;
b=3'b011; #10;

a=3'b111;
b=3'b111; #10;

$finish;

end
endmodule
