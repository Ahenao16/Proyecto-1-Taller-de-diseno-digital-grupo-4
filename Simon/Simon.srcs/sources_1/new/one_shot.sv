module oneshot #(
    parameter integer CLK_FREQ   = 10000,  
    parameter integer PULSE_TIME = 1    
)(
    input  logic clk,
    input  logic rst,        
    input  logic trigger,    
    output logic pulse_out
);

    
    localparam integer COUNT_MAX = (CLK_FREQ / 1000) * PULSE_TIME;

    logic [$clog2(COUNT_MAX):0] counter = 0;
    logic trigger_d;

    // Detector de flanco positivo
    always_ff @(posedge clk) begin
        trigger_d <= trigger;
    end

    wire rising_edge = trigger & ~trigger_d;

    
    always_ff @(posedge clk) begin

        if (rst) begin
            counter   <= 0;
            pulse_out <= 0;
        end
        else begin

            
            if (rising_edge && counter == 0)
                counter <= COUNT_MAX;

            else if (counter > 0)
                counter <= counter - 1;

            pulse_out <= (counter > 0);

        end
    end

endmodule