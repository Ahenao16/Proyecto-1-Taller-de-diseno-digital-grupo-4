`timescale 1ns / 1ps
//Extraído de: https://youtu.be/ORhWNj8li4E?si=RyzsiUg4AITNwEkh
module BCD(
    input clk_100MHz,
    input reset,
    input [3:0] lsb_counter_1,
    input [3:0] msb_counter_1,
    input [3:0] lsb_counter_2,
    input [3:0] msb_counter_2,
    output reg [0:6] seg,       
    output reg [3:0] digit      
    );
    
 
    parameter ZERO  = 7'b000_0001;  // 0
    parameter ONE   = 7'b100_1111;  // 1
    parameter TWO   = 7'b001_0010;  // 2 
    parameter THREE = 7'b000_0110;  // 3
    parameter FOUR  = 7'b100_1100;  // 4
    parameter FIVE  = 7'b010_0100;  // 5
    parameter SIX   = 7'b010_0000;  // 6
    parameter SEVEN = 7'b000_1111;  // 7
    parameter EIGHT = 7'b000_0000;  // 8
    parameter NINE  = 7'b000_0100;  // 9
    

    reg [1:0] digit_select;     
    reg [16:0] digit_timer;     
    

    always @(posedge clk_100MHz or posedge reset) begin
        if(reset) begin
            digit_select <= 0;
            digit_timer <= 0; 
        end
        else                                        
            if(digit_timer == 99_999) begin         
                digit_timer <= 0;                  
                digit_select <=  digit_select + 1;
            end
            else
                digit_timer <=  digit_timer + 1;
    end
    
    
    always @(digit_select) begin
        case(digit_select) 
            2'b00 : digit = 4'b1110;   // Turn on lsb_counter_1 digit
            2'b01 : digit = 4'b1101;   // Turn on msb_counter_1 digit
            2'b10 : digit = 4'b1011;   // Turn on lsb_counter_2 digit
            2'b11 : digit = 4'b0111;   // Turn on msb_counter_2 digit
        endcase
    end
    
    
    always @*
        case(digit_select)
            2'b00 : begin      
                        case(lsb_counter_1)
                            4'b0000 : seg = ZERO;
                            4'b0001 : seg = ONE;
                            4'b0010 : seg = TWO;
                            4'b0011 : seg = THREE;
                            4'b0100 : seg = FOUR;
                            4'b0101 : seg = FIVE;
                            4'b0110 : seg = SIX;
                            4'b0111 : seg = SEVEN;
                            4'b1000 : seg = EIGHT;
                            4'b1001 : seg = NINE;
                        endcase
                    end
                    
            2'b01 : begin      
                        case(msb_counter_1)
                            4'b0000 : seg = ZERO;
                            4'b0001 : seg = ONE;
                            4'b0010 : seg = TWO;
                            4'b0011 : seg = THREE;
                            4'b0100 : seg = FOUR;
                            4'b0101 : seg = FIVE;
                            4'b0110 : seg = SIX;
                            4'b0111 : seg = SEVEN;
                            4'b1000 : seg = EIGHT;
                            4'b1001 : seg = NINE;
                        endcase
                    end
                    
            2'b10 : begin       
                        case(lsb_counter_2)
                            4'b0000 : seg = ZERO;
                            4'b0001 : seg = ONE;
                            4'b0010 : seg = TWO;
                            4'b0011 : seg = THREE;
                            4'b0100 : seg = FOUR;
                            4'b0101 : seg = FIVE;
                            4'b0110 : seg = SIX;
                            4'b0111 : seg = SEVEN;
                            4'b1000 : seg = EIGHT;
                            4'b1001 : seg = NINE;
                        endcase
                    end
                    
            2'b11 : begin      
                        case(msb_counter_2)
                            4'b0000 : seg = ZERO;
                            4'b0001 : seg = ONE;
                            4'b0010 : seg = TWO;
                            4'b0011 : seg = THREE;
                            4'b0100 : seg = FOUR;
                            4'b0101 : seg = FIVE;
                            4'b0110 : seg = SIX;
                            4'b0111 : seg = SEVEN;
                            4'b1000 : seg = EIGHT;
                            4'b1001 : seg = NINE;
                        endcase
                    end
        endcase

endmodule