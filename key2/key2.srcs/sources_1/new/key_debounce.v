`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/05 21:39:37
// Design Name: 
// Module Name: key_debounce
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


module key_debounce(
    input sys_clk,
    input rst_n,
    input key,
    output [3 : 0] led
);

wire button_negedge,button_posedge;

ax_debounce ax_debounce(
    .clk(sys_clk),
    .rst(~rst_n),
    .button_in(key),
    .button_posedge(button_posedge),
    .button_negedge(button_negedge),
    .button_out()
);

wire [3 : 0] count_bus;

count count(
    .clk(sys_clk),
    .rst_n(rst_n),
    .en(button_negedge),
    .clr(1'b0),
    .data(count_bus)
);

assign led = ~count_bus;

endmodule