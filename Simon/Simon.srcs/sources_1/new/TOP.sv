`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2026 05:01:38 PM
// Design Name: 
// Module Name: TOP
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


module TOP(
  input clk,
    input btnC,
    input [15:0] sw,
    output [2:0] led
);

    wire clk_1Hz;
    wire [2:0] state_wire;

    // Divisor
    Clock_Divider_1Hz clkdiv (
        .clk_100Mhz(clk),
        .reset(btnC),
        .clk_1Hz(clk_1Hz)
    );

    // FSM
    FSM myfsm (
        .clk(clk_1Hz),
        .rst(btnC),
        .i(sw[0]),  
        .f(sw[1]),
        .c(sw[2]),
        .k(sw[3]),
        .state(state_wire)
    );

    assign led = state_wire;
endmodule
