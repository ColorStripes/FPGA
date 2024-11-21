`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/16 21:49:34
// Design Name: 
// Module Name: i2c_rw_data
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


module i2c_rw_data(
    input wire sys_clk,
    input wire rst_n,
    input wire write_ac,
    input wire read_ac,
    input wire [7 : 0] rd_data,
    input wire i2c_end,
    input wire i2c_clk,

    output reg i2c_start,
    output reg wr_en,
    output reg [15 : 0] byte_addr,
    output reg [7 : 0] wr_data,
    output reg rd_en,
    output reg [7 : 0] data_out
);

    parameter I2C_SCL_FREQ = 400_000;
    parameter INTERVAL_MS = 5;                      //写间隔毫秒
    localparam START_INTERVAL = I2C_SCL_FREQ / 1000 * INTERVAL_MS;


    reg [19 : 0] cnt_start;
 

    //i2c_start
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) 
            i2c_start <= 1'b0;
        else if(cnt_start == START_INTERVAL - 1)
            i2c_start <= 1'b1;
        else
            i2c_start <= 1'b0;
    end

    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) 
            cnt_start <= 1'b0;
        else if(cnt_start == START_INTERVAL - 1)
            cnt_start <= 1'b0;
        else if(wr_en | rd_en)
            cnt_start <= cnt_start + 1'b1;
        else
            cnt_start <= 1'b0;
    end


    //wr_data
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) 
            wr_data <= 8'h01;
        else if(wr_en & i2c_end)
            wr_data <= wr_data + 1'b1;
        else
            wr_data <= wr_data;
    end

    //byte_addr
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n)
            byte_addr <= 16'h0011;
        else if(wr_en & i2c_end)
            byte_addr <= byte_addr;
        else if(rd_en & i2c_end)
            byte_addr <= byte_addr + 1'b1;
        else
            byte_addr <= byte_addr;
    end

wire read,write;

    accross_clock#
(
    50_000_000,
    4_000_00,
    2
) 
accross_clock_read
(
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .signal_in(read_ac),
    .signal_out(read)
);


    accross_clock#
(
    50_000_000,
    4_000_00,
    2
) 
accross_clock_write
(
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .signal_in(write_ac),
    .signal_out(write)
);




    //wr_en
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n)
            wr_en <= 1'b0;
        else if(write)
            wr_en <= 1'b1;
        else if(i2c_end)
            wr_en <= 1'b0;
        else
            wr_en <= wr_en;
    end
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n)
            rd_en <= 1'b0;
        else if(read)
            rd_en <= 1'b1;
        else if(i2c_end)
            rd_en <= 1'b0;
        else
            rd_en <= rd_en;
    end


    //assign data_out = rd_data;
    always @(posedge i2c_clk or negedge rst_n) begin
        if (!rst_n) begin
            data_out <= 8'd0;
        end
        else if(rd_en & i2c_end)
            data_out <= rd_data;
        else    
            data_out <= data_out;
    end

    
endmodule
