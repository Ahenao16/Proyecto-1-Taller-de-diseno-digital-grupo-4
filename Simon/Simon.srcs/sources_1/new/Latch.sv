module Latch(
    input  logic clk,
    input  logic rst,
    input  logic input_event,  
    input  logic release_input_event,    
    output logic output_event  
);

always_ff @(posedge clk) begin
    if (rst)
        output_event <= 1'b0;

    else if (input_event)
        output_event <= 1'b1;     

    else if (release_input_event)
        output_event <= 1'b0;     
end

endmodule