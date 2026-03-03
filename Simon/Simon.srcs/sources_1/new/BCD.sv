`timescale 1ns/1ps

module BCD #(

parameter anode1 = 4'b1110,
parameter anode2 = 4'b1101
)(

input logic clk,
input logic rst, 
input logic units,
input logic tents,

output reg [3:0] digit,
output reg [0:6] seg

);

localparam zero = 7'b0000001;
localparam one = 7'b1001111;
localparam two= 7'b0010010;
localparam three= 7'b0000110;
localparam four= 7'b1001100;
localparam five= 7'b0100100;
localparam six= 7'b0100000;
localparam seven= 7'b0001111;
localparam eight= 7'b0000000;
localparam nine = 7'b0000100;

reg digit_select;
reg [16:0] digit_timer;

always @(posedge clk or posedge rst) begin
if (rst) begin
    digit_select <= 0;
    digit_timer <= 0;
    
    end 
    else 
    if (digit_timer == 199999) begin
    digit_timer <= 0;
    digit_select<= digit_select +1;
    end

    else 
     digit_timer <= digit_timer + 1;
end

     always @(digit_select) begin
            case(digit_select)
                
              1'b0: digit = anode1;
                 1'b1: digit = anode2;

       endcase

     end

always @*
        case(digit_select)
            2'b00 : begin       // ONES DIGIT
                        case(units)
                      
                            4'b0000 : seg = zero;
                            4'b0001 : seg = one;
                            4'b0010 : seg = two;
                            4'b0011 : seg = three;
                            4'b0100 : seg = four;
                            4'b0101 : seg = five;
                            4'b0110 : seg = six;
                            4'b0111 : seg = seven;
                            4'b1000 : seg = eight;
                            4'b1001 : seg = nine;
                        endcase
                    end

            2'b01 : begin       // TENS DIGIT
                        case(tents)
                            4'b0000 : seg = zero;
                            4'b0001 : seg = one;
                            4'b0010 : seg = two;
                            4'b0011 : seg = three;
                            4'b0100 : seg = four;
                            4'b0101 : seg = five;
                            4'b0110 : seg = six;
                            4'b0111 : seg = seven;
                            4'b1000 : seg = eight;
                            4'b1001 : seg = nine;
                        endcase
                    end
            endcase

endmodule