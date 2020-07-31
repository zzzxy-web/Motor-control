`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 20:15:10
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main(
    
    input clk_s,
    input reset,
    output [3:0]out,
    output Rx,
    output Tx

    );
    reg clk;
    step_motor M0(.out(out),.clk0(clk),.reset(reset));
    Driver_UART_0(.UART0_Rx(Rx),. UART0_Tx(Tx));
    fenpin FPQ(.clk_s(clk_s),.clk_out(clk));
endmodule
