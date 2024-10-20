`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 18:28:01
// Design Name: 
// Module Name: vtf_pll
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


module vtf_pll;
reg sys_clk;
reg rst_n;
wire clk_out;

pll pll(
    .sys_clk    (sys_clk),   //50MHz
    .rst_n      (rst_n),
    .clk_out    (clk_out)
    );

initial begin
    sys_clk = 1'b0;
    rst_n = 1'b0;
    #100 rst_n = 1'b1;
end

always #10 sys_clk = ~sys_clk;


endmodule
