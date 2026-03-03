## Clock 100 MHz
set_property PACKAGE_PIN W5 [get_ports clk_100MHz]
set_property IOSTANDARD LVCMOS33 [get_ports clk_100MHz]
create_clock -period 10.000 -name sys_clk -waveform {0 5} [get_ports clk_100MHz]

#Reset 
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

#Enable
set_property PACKAGE_PIN T18 [get_ports en]
set_property IOSTANDARD LVCMOS33 [get_ports en]

#Number
set_property PACKAGE_PIN V17 [get_ports {number[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[0]}]

set_property PACKAGE_PIN V16 [get_ports {number[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[1]}]

set_property PACKAGE_PIN W16 [get_ports {number[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[2]}]

set_property PACKAGE_PIN W17 [get_ports {number[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[3]}]

set_property PACKAGE_PIN W15 [get_ports {number[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[4]}]

set_property PACKAGE_PIN V15 [get_ports {number[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[5]}]

set_property PACKAGE_PIN W14 [get_ports {number[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {number[6]}]




#Segmentos
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


#Anodos comunes
set_property PACKAGE_PIN U2 [get_ports {digit[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit[0]}]

set_property PACKAGE_PIN U4 [get_ports {digit[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit[1]}]

set_property PACKAGE_PIN V4 [get_ports {digit[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit[2]}]

set_property PACKAGE_PIN W4 [get_ports {digit[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit[3]}]