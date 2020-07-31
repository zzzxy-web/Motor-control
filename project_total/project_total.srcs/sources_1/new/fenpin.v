`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 20:16:38
// Design Name: 
// Module Name: fenpin
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


module fenpin(

    input clk_s,
    output reg clk_out
    
    );
    reg [5:0] counter;
    always @(posedge clk_s)
    begin
        if(count==6'd50)
            begin
                counter <= 0;
                clk <= ~clk;
            end
        else
            begin
                counter <= counter+1'b1;
            end
    end
endmodule
