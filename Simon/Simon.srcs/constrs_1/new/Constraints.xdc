## Clock 100 MHz
set_property PACKAGE_PIN W5 [get_ports main_clk]
set_property IOSTANDARD LVCMOS33 [get_ports main_clk]
create_clock -add -name sys_clk_pin -period 10.000 [get_ports main_clk]

## Definición de botones 
set_property PACKAGE_PIN U18 [get_ports btnC_start]
set_property IOSTANDARD LVCMOS33 [get_ports btnC_start]

set_property PACKAGE_PIN W19 [get_ports btnL_blue]
set_property IOSTANDARD LVCMOS33 [get_ports btnL_blue]

set_property PACKAGE_PIN T18 [get_ports btnU_green]
set_property IOSTANDARD LVCMOS33 [get_ports btnU_green]

set_property PACKAGE_PIN T17 [get_ports btnR_red]
set_property IOSTANDARD LVCMOS33 [get_ports btnR_red]

set_property PACKAGE_PIN U17 [get_ports btnD_yellow]
set_property IOSTANDARD LVCMOS33 [get_ports btnD_yellow]

######################### Switches ####################################
set_property PACKAGE_PIN V17 [get_ports {SW[0]}]
set_property PACKAGE_PIN V16 [get_ports {SW[1]}]
set_property PACKAGE_PIN W16 [get_ports {SW[2]}]
set_property PACKAGE_PIN W17 [get_ports {SW[3]}]
set_property PACKAGE_PIN W15 [get_ports {SW[4]}]
set_property PACKAGE_PIN V15 [get_ports {SW[5]}]
set_property PACKAGE_PIN W14 [get_ports {SW[6]}]
set_property PACKAGE_PIN W13 [get_ports {SW[7]}]
set_property PACKAGE_PIN V2  [get_ports {SW[8]}]
set_property PACKAGE_PIN T3  [get_ports {SW[9]}]
set_property PACKAGE_PIN T2  [get_ports {SW[10]}]
set_property PACKAGE_PIN R3  [get_ports {SW[11]}]
set_property PACKAGE_PIN W2  [get_ports {SW[12]}]
set_property PACKAGE_PIN U1  [get_ports {SW[13]}]
set_property PACKAGE_PIN T1  [get_ports {SW[14]}]
set_property PACKAGE_PIN R2  [get_ports {SW[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW[*]}]

## Salida de señal de botones 
set_property PACKAGE_PIN J1 [get_ports {pin_out_red}] 
set_property IOSTANDARD LVCMOS33 [get_ports {pin_out_red}]

set_property PACKAGE_PIN L2 [get_ports {pin_out_green}] 
set_property IOSTANDARD LVCMOS33 [get_ports {pin_out_green}]

set_property PACKAGE_PIN J2 [get_ports {pin_out_blue}] 
set_property IOSTANDARD LVCMOS33 [get_ports {pin_out_blue}]

set_property PACKAGE_PIN G2 [get_ports {pin_out_yellow}] 
set_property IOSTANDARD LVCMOS33 [get_ports {pin_out_yellow}]

set_property PACKAGE_PIN H1 [get_ports {pin_out_sound_select}] 
set_property IOSTANDARD LVCMOS33 [get_ports {pin_out_sound_select}]

set_property PACKAGE_PIN K2 [get_ports {pin_out_en_sound}] 
set_property IOSTANDARD LVCMOS33 [get_ports {pin_out_en_sound}]

## 7 segment display
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

set_property PACKAGE_PIN U2 [get_ports {digit[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {digit[0]}]
set_property PACKAGE_PIN U4 [get_ports {digit[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {digit[1]}]
set_property PACKAGE_PIN V4 [get_ports {digit[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {digit[2]}]
set_property PACKAGE_PIN W4 [get_ports {digit[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {digit[3]}]

