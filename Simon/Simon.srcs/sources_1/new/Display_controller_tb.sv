`timescale 1ns / 1ps

module Display_controller_tb;
 logic en;
 logic [6:0] number;

 //Salidas
  logic [0:6] segment_tents; 
  logic [0:6] segment_units;
  logic [3:0] tents; // Decenas
  logic [3:0] units; // Unidades

Display_controller dut(
.en(en),
.number(number),
.segment_tents(segment_tents),
.segment_units(segment_units),
.tents(tents),
.units(units)
    );

initial begin
en = 1; number = 7'b101111; #10;
en = 1; number = 7'b101011; #10;
en = 1; number = 7'b001001; #10;

en = 0; number = 7'b101111; #10;


$finish;
end

endmodule