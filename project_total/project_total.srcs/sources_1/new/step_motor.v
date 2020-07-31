`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/27 20:26:00
// Design Name: 
// Module Name: step_motor
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


module step_motor(

    input clk0,
    output reg[3:0] out,
    input reset
    );
    reg[2:0] current;
    reg[2:0] current1;
    parameter s0=3'b000,s1=3'b001,s2=3'b010,
              s3=3'b011,s4=3'b100,s5=3'b101,
              s6=3'b110,s7=3'b111;
    always@(posedge clk0 or negedge reset)
        begin
            if(!reset)
                begin
                    current <= s0;
                end
            else begin
                case(current)
                    s0:
                        begin
                            current <= s7;
                            current1 <= s7;
                        end
                    s1:
                        begin
                            current <= s0;
                            current1 <= s0;
                        end
                    s2:
                        begin
                             current <= s1;
                             current1 <= s1;
                         end
                    s3:
                        begin
                             current <= s2;
                             current1 <= s2;
                        end
                    s4:
                        begin
                            current <= s3;
                            current1 <= s3;
                        end
                    s5:
                        begin
                            current <= s4;
                            current1 <= s4;
                        end
                    s6:
                        begin
                            current <= s5;
                            current1 <= s5;
                        end
                    s7:
                        begin
                            current <= s6;
                            current1 <= s6;
                         end
                   endcase
               end
           end
    always@(clk0)
        begin
        case(current1)
            s0:
                begin
                    out<=4'b1001;                    
                end
            s1:
                begin
                    out<=4'b0001;                
                end
            s2:
                begin
                    out<=4'b0011;
                end
             s3:
                begin
                    out<=4'b0010;
                end
             s4:
                 begin
                    out<=4'b0110;
                 end
              s5:
                 begin
                    out<=4'b0100;
                 end
              s6:
                 begin
                    out<=4'b1100;
                 end
               s7:
                 begin
                    out<=4'b1000;
                 end
           endcase     
        end                       

endmodule
