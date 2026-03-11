module debouncer #(
    parameter int CLK_FREQ = 50_000_000,     
    parameter int DEBOUNCE_TIME_MS = 20      
)(
    input  logic clk,            
    input  logic rst,            
    input  logic button_in,      
    output logic button_out      
);

   
    localparam int COUNTER_MAX   = (CLK_FREQ / 1000) * DEBOUNCE_TIME_MS;
    localparam int COUNTER_WIDTH = $clog2(COUNTER_MAX + 1);

    
    logic [COUNTER_WIDTH-1:0] counter;
    logic button_sync_0, button_sync_1;

    
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            button_sync_0 <= 1'b0;
            button_sync_1 <= 1'b0;
        end else begin
            button_sync_0 <= button_in;
            button_sync_1 <= button_sync_0;
        end
    end

    
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            counter    <= '0;
            button_out <= 1'b0;
        end else begin
            if (button_sync_1 != button_out) begin
                
                counter <= counter + 1;

                if (counter >= COUNTER_MAX) begin
                    button_out <= button_sync_1;
                    counter    <= '0;
                end
            end else begin
                
                counter <= '0;
            end
        end
    end

endmodule


// Primero se encarga de hacer que la señal del botón se sincronice con el reloj con dos FFs.
//Luego compara la señal sincronizada con la salida. Si se mantiene diferente por el tiempo definido la salida se actualiza.
//Si antes de que se venza la sinc y el output son iguales no se actualiza (bouncing)
//El botón llega a ser 0 otra vez después del tiempo.