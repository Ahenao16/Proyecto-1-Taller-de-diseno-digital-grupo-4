`timescale 1ns / 1ps

module latch_comparation (
    input  logic clk,    
    input  logic set,   
    input  logic en,    
    input  logic D,      
    output logic Q       
);

  
    initial Q = 1'b1;
    always_ff @(posedge clk or posedge set) begin
        if (set) begin
            Q <= 1'b1;           
        end else if (en) begin
            Q <= D;              
        end
    end

endmodule