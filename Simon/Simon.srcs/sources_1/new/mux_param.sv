`timescale 1ns / 1ps

module mux_param #(
parameter Width=1,
parameter N= 3 
)( 
input logic [N-1:0] sel,
input logic [Width-1:0] data [2**N],
input en,
output logic [Width-1:0] y
    );
    
always_comb begin
    if(!en)begin
    y = '0;
    end
    
    else begin
    y = data[sel];
    end 
 end
endmodule
