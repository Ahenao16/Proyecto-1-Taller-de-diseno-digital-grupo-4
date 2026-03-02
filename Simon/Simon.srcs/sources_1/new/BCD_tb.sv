`timescale 1ns / 1ps


module BCD_tb;
logic [3:0] binary_number;
logic [0:6] segment;

BCD dut(
.binary_number(binary_number),
.segment(segment)
    );
    
initial begin
    for (binary_number = 4'd0; binary_number < 10; binary_number++) begin
        #10;
    end
    $finish;
end
endmodule
