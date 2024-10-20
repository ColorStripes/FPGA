vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../LED.srcs/sources_1/ip/ila/hdl/verilog" "+incdir+../../../../LED.srcs/sources_1/ip/ila/hdl/verilog" \
"E:/vivado/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/vivado/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"E:/vivado/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../LED.srcs/sources_1/ip/ila/hdl/verilog" "+incdir+../../../../LED.srcs/sources_1/ip/ila/hdl/verilog" \
"../../../../LED.srcs/sources_1/ip/ila/sim/ila.v" \

vlog -work xil_defaultlib \
"glbl.v"

