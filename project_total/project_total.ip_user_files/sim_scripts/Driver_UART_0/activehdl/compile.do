vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../project_total.srcs/sources_1/ip/Driver_UART_0/sim/Clk_Division.v" \
"../../../../project_total.srcs/sources_1/ip/Driver_UART_0/sim/Driver_UART.v" \
"../../../../project_total.srcs/sources_1/ip/Driver_UART_0/sim/Driver_UART_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

