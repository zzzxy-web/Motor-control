vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../project_total.srcs/sources_1/ip/Driver_UART_0/sim/Clk_Division.v" \
"../../../../project_total.srcs/sources_1/ip/Driver_UART_0/sim/Driver_UART.v" \
"../../../../project_total.srcs/sources_1/ip/Driver_UART_0/sim/Driver_UART_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

