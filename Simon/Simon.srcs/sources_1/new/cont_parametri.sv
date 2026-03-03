module UpCounter #(
  parameter Width = 3,
  parameter max_value = 2**(Width)-1 //Modifcar para el queramos 
) (
  input  logic             clk,
  input  logic             rst,     
  input  logic             en,      
  output logic [Width-1:0] count
);

  always_ff @(posedge clk) begin

    // Reset síncrono
    if (rst) begin
      count <= 0;
    end

    // Contar solo si enable está activo
    else if (en) begin

      if (count <max_value)
        count <= count + 1;
      else
        count <= 0;
    end
    
    else if (~en)begin count<=count; end

  end

endmodule
