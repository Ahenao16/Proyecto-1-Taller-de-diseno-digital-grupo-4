## Clock 100 MHz
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.000 [get_ports clk]

## Botón central
set_property PACKAGE_PIN U18 [get_ports btnC]
set_property IOSTANDARD LVCMOS33 [get_ports btnC]

## Salida pin_out (ejemplo: PMOD JA1)
set_property PACKAGE_PIN J1 [get_ports pin_out]
set_property IOSTANDARD LVCMOS33 [get_ports pin_out]

## Salida buzzer_pin (ejemplo: PMOD JA2)
set_property PACKAGE_PIN L2 [get_ports buzzer_pin]
set_property IOSTANDARD LVCMOS33 [get_ports buzzer_pin]