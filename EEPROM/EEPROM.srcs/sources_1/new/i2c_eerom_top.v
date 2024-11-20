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

    output wire [7 : 0] data,
    inout wire i2c_sda,
    output wire i2c_scl
);

    wire [3 : 0] data_h;


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



    i2c_rw_data i2c_rw_data(
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .write_ac(write),
    .read_ac(read),
    .rd_data(rd_data),
    .i2c_end(i2c_end),
    .i2c_clk(i2c_clk),

    .i2c_start(i2c_start),
    .wr_en(wr_en),
    .byte_addr(byte_addr),
    .wr_data(wr_data),

    .rd_en(rd_en),
    .data_count(data)
);



    i2c_ctrl #(50_000_000, 100_000, 7'b1010_000)
    i2c_ctrl(
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .i2c_start(i2c_start),
    .wr_en(wr_en),
    .byte_addr(byte_addr),
    .wr_data(wr_data),
    .rd_en(rd_en),
    .addr_num(byte_addr[8]),                //对于24LC064这个是器件地最后一位    对于24LC04B这是block选择位
    
    .i2c_scl(i2c_scl),        //100kHz
    .i2c_sda(i2c_sda),
    .rd_data(rd_data),
    .i2c_end(i2c_end),
    .i2c_clk(i2c_clk)          //i2c分频时钟 1MHz

);


//     i2c_rw_data i2c_rw_data(
//     .sys_clk(sys_clk),
//     .rst_n(rst_n),
//     .write(write),
//     .read(read),
//     .rd_data(),
//     .i2c_end(i2c_end),
//     .i2c_clk(i2c_clk),

//     .i2c_start(i2c_start),
//     .wr_en(wr_en),
//     .byte_addr(),
//     .wr_data(wr_data),

//     .rd_en(rd_en),
//     .data_count()
// );



// wire [3 : 0] state;

//     i2c_ctrl #(50_000_000, 250_000, 7'b1010_000)
//     i2c_ctrl(
//     .sys_clk(sys_clk),
//     .rst_n(rst_n),
//     .i2c_start(i2c_start),
//     .wr_en(1'b1),
//     .byte_addr(16'h01),
//     .wr_data(8'b0000_0011),
//     .rd_en(),
//     .addr_num(1'b0),
    
//     .state(state),

//     .i2c_scl(i2c_scl),        //250kHz
//     .i2c_sda(i2c_sda),
//     .rd_data(rd_data),
//     .i2c_end(i2c_end),
//     .i2c_clk(i2c_clk)          //i2c分频时钟 1MHz

// );
// assign data = rd_data[3 : 0];





endmodule
