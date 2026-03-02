`timescale 1ns / 1ps


module digit_separator_tb;
 logic [6:0] number;
 logic [3:0] tents;
 logic [3:0] units;
 
 digit_separator dut(
 .number(number),
 .tents(tents),
 .units(units)
    );
    
initial begin
number = 7'b101111; #10;
number = 7'b101011; #10;
number = 7'b001001; #10;
end

endmodule
