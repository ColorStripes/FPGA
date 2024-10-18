-makelib ies_lib/xil_defaultlib -sv \
  "E:/vivado/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/vivado/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/vivado/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../LED.srcs/sources_1/ip/ila/sim/ila.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

