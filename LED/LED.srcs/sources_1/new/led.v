`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/16 10:54:37
// Design Name: 
// Module Name: led
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


module led(
    input sys_clk,
    input rest_n,
    (* MARK_DEBUG="true" *)output reg [3:0] led
    );

   (* MARK_DEBUG="true" *) reg [31 : 0] timer_cnt;

    always@(posedge sys_clk or negedge rest_n) begin
        if (!rest_n) begin
            led <= 4'd0;
            timer_cnt <= 32'd0;
        end
        else if(timer_cnt >= 32'd49_999_999) begin
            led <= ~led;
            timer_cnt <= 32'd0;
        end
        else begin
            led <= led;
            timer_cnt <= timer_cnt + 32'd1;
        end
    end
 
 
//ila ila_inst (
//    .clk(sys_clk), 
//    .probe0(timer_cnt),
//    .probe1(led)
//    );       
    
endmodule
