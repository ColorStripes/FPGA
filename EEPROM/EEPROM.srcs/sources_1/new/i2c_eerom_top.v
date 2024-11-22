`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/17 16:50:15
// Design Name: 
// Module Name: i2c_eerom_top
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


module i2c_eerom_top(
    input wire sys_clk,
    input wire rst_n,
    input wire key_wr,
    input wire key_rd,

    output wire [3 : 0] data,
    //output wire [7 : 0] data,
    inout wire i2c_sda,
    output wire i2c_scl
);


// ila_0 ila_top (
// 	.clk(sys_clk), // input wire clk


// 	.probe0(key_wr), // input wire [0:0]  probe0  
// 	.probe1(key_rd), // input wire [0:0]  probe1 
// 	.probe2(wr_en), // input wire [0:0]  probe2 
// 	.probe3(data) // input wire [3:0]  probe3
// );


    wire read;
    wire write;

    wire i2c_start;
    wire wr_en;
    wire [15 : 0] byte_addr;
    wire [7 : 0] wr_data;
    wire rd_en;
    wire [7 : 0] rd_data;
    wire i2c_end;
    wire i2c_clk;

    wire [6 : 0] cnt_B;
    wire page;

    ax_debounce read_key(
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .button_in(key_rd),
    .button_posedge(read),
    .button_negedge(),
    .button_out()
    );

    ax_debounce write_key(
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .button_in(key_wr),
    .button_posedge(write),
    .button_negedge(),
    .button_out()
    );

wire [3 : 0] data_h;

    i2c_rw_data#(50_000_000, 2000_000, 5) 
    i2c_rw_data(
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .write_ac(write),
    .read_ac(read),
    .rd_data(rd_data),
    .i2c_end(0),
    .i2c_clk(i2c_clk),
    .cnt_B(cnt_B),

    .i2c_start(i2c_start),
    .wr_en(wr_en),
    .byte_addr(byte_addr),
    .wr_data(wr_data),
    .page(page),
    .rd_en(rd_en),
    .data_out({data_h, data})
);



    i2c_ctrl #(50_000_000, 400_000, 7'b1010_000)
    i2c_ctrl(
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .i2c_start(1),
    .wr_en(0),
    .byte_addr(0),
    .wr_data(),
    .rd_en(1),
    .addr_num(1'b0),          //对于24LC064这个是2字数据地址    对于24LC04B这是1字位数据地址
    .page(1'b0),
    
    .i2c_scl(i2c_scl),        //100kHz
    .i2c_sda(i2c_sda),
    .rd_data(),
    .cnt_B(),
    .i2c_end(),
    .i2c_clk()          //i2c分频时钟 1MHz

);







endmodule
