`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 18:20:58
// Design Name: 
// Module Name: pll
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


module pll(
    input sys_clk,   //50MHz
    input rst_n,
    output clk_out
    );
    
    wire pll_locked;
    
    
    clk_wiz_0 clk_inst
       (
        // Clock out ports
        .clk_out1(),     // output 200
        .clk_out2(),     // output 100
        .clk_out3(),     // output 50
        .clk_out4(clk_out),     // output 25
        // Status and control signals
        .reset(~rst_n), // input reset
        .locked(pll_locked),       // output locked
       // Clock in ports
        .clk_in1(sys_clk));      // input clk_in1
    
endmodule
