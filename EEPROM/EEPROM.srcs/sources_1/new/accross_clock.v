`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 20:10:03
// Design Name: 
// Module Name: accross_clock
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


module accross_clock#
(
    parameter SYS_CLK_FREQ = 50_000_000,
              ACROSS_CLK_FREQ = 1_000_000,
              EXTEND_MULTIPLE = 2
) 
(
    input wire sys_clk,
    input wire rst_n,
    input wire signal_in,
    output reg signal_out
);

    localparam CNT_MAX = (SYS_CLK_FREQ / ACROSS_CLK_FREQ) * EXTEND_MULTIPLE;


    reg [7 : 0] cnt_clk;
    always @(posedge sys_clk or negedge rst_n) begin
        if(!rst_n)
            cnt_clk <= 8'd0;
        else if((signal_out) && (cnt_clk != CNT_MAX - 1)) 
            cnt_clk <= cnt_clk + 1'b1;
        else
            cnt_clk <= 8'd0;
    end

    always @(posedge sys_clk or negedge rst_n) begin
        if(!rst_n)
            signal_out <= 1'b0;
        else if(signal_in)
            signal_out <= 1'b1;
        else if(cnt_clk == CNT_MAX - 1)
            signal_out <= 1'b0;
        else
            signal_out <= signal_out;
    end

endmodule
