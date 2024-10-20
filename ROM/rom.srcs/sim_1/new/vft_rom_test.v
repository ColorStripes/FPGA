`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/20 17:50:44
// Design Name: 
// Module Name: vft_rom_test
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


module vft_rom_test;

    //inputs
    reg sys_clk;
    reg rst_n;

    rom_test uut(
        .sys_clk(sys_clk),
        .rst_n(rst_n)
    );

    initial begin
        sys_clk = 0;
        rst_n = 0;
    

        #100                    //wait 100ns
        rst_n = 1;
 

    end

    always #10 sys_clk = ~sys_clk;    //每10ns翻转一次 也就是周期为20ns  50Mhz时钟频率

endmodule
