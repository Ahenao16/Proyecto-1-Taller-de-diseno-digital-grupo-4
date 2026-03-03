`timescale 1ns/1ps

module BCD (
input logic [3:0] binary_number,
output logic [0:6] segment //Lo defini al reves para que corresponda con los switches igual a la hoja de datos
);

always_comb begin 
case (binary_number)
     4'd0 : segment = 7'b0000001;
     4'd1 : segment = 7'b1001111;
     4'd2 : segment = 7'b0010010;
     4'd3 : segment = 7'b0000110;
     4'd4 : segment = 7'b1001100;
     4'd5 : segment = 7'b0100100;
     4'd6 : segment = 7'b0100000;
     4'd7 : segment = 7'b0001111;
     4'd8 : segment = 7'b0000000;
     4'd9 : segment = 7'b0000100;
     default: segment = 7'b1111111;
endcase
end

endmodule