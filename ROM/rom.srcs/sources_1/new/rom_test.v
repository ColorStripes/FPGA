`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/20 17:25:42
// Design Name: 
// Module Name: rom_test
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


module rom_test(
    input sys_clk,   //50MHz时钟
    input rst_n      //复位，低电平有效
    );

    wire [7 : 0] rom_data;
    reg [4 : 0] rom_addr;

    //ROM地址读地�?
    always @(posedge sys_clk or negedge rst_n) begin
        if(!rst_n) begin
            rom_addr <= 5'd0;
        end
        else begin
            rom_addr <= rom_addr + 1'b1;
        end
    end
    //ROM实例�?
    rom_ip rom (
    .clka(sys_clk),
    .addra(rom_addr),
    .douta(rom_data)
    );


    ila_0 ila(
    .clk(sys_clk),


    .probe0(rom_addr),
    .probe1(rom_data)
    );


endmodule
