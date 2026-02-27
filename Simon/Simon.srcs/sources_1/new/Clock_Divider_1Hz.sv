`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2026 04:54:53 PM
// Design Name: 
// Module Name: Clock_Divider_1Hz
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Clock_Divider_1Hz(
 input clk_100Mhz,
    input reset,
    output reg clk_1Hz = 0
    );
    
 reg [25:0] counter = 0;  

    always @(posedge clk_100Mhz) begin
        if (reset) begin
            counter <= 0;
            clk_1Hz <= 0;
        end
        else begin
            if (counter == 49_999_999) begin
                counter <= 0;
                clk_1Hz <= ~clk_1Hz;  
            end
            else begin
                counter <= counter + 1;
            end
        end
    end

endmodule
