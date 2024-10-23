`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/23 11:59:21
// Design Name: 
// Module Name: vtf_fifo
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


module vtf_fifo;
    reg clk;
    reg rst_n;

fifo uut(
    .clk(clk),
    .rst_n(rst_n)
);

    initial begin
        clk = 0;
        rst_n = 0;
    
        #100;
        rst_n = 1;
    end

    always #10 clk = ~clk;

endmodule
