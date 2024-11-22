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


module i2c_rw_data#(
    parameter SYS_CLK_FREQ = 50_000_000,
              I2C_SCL_FREQ = 400_000,
              INTERVAL_MS = 5                   //写间隔毫秒
)(
    input wire sys_clk,
    input wire rst_n,
    input wire write_ac,
    input wire read_ac,
    input wire [7 : 0] rd_data,
    input wire i2c_end,
    input wire i2c_clk,
    input wire [6 : 0] cnt_B,

    output reg i2c_start,
    output reg wr_en,
    output reg [15 : 0] byte_addr,
    output reg [7 : 0] wr_data,
    output wire page,
    output reg rd_en,
    output reg [7 : 0] data_out
);
              
    localparam START_INTERVAL = I2C_SCL_FREQ / 1000 * INTERVAL_MS;

    wire read, write;
    reg [19 : 0] cnt_start;
    
    reg [6 : 0] page_B = 7'd1;
    assign page = (page_B == cnt_B) ? 1'b0 : 1'b1;

    //跨时钟域读写信号
    accross_clock#
    (
        SYS_CLK_FREQ,
        I2C_SCL_FREQ,
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
        SYS_CLK_FREQ,
        I2C_SCL_FREQ,
        2
    ) 
    accross_clock_write
    (
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .signal_in(write_ac),
        .signal_out(write)
    );



    //i2c_start
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) 
            i2c_start <= 1'b0;
        else if((cnt_start == START_INTERVAL - 1) & !i2c_end)
            i2c_start <= (wr_en | rd_en);
        else
            i2c_start <= 1'b0;
    end

    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) 
            cnt_start <= START_INTERVAL - 1;
        else if(cnt_start < START_INTERVAL - 1)
            cnt_start <= cnt_start + 1'b1;
        else if(i2c_end & wr_en)
            cnt_start <= 1'b0;
        else    
            cnt_start <= cnt_start;
    end


    //wr_en
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n)
            wr_en <= 1'b0;
        else if(write & !rd_en)
            wr_en <= 1'b1;
        else if(i2c_end)
            wr_en <= 1'b0;
        else
            wr_en <= wr_en;
    end
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n)
            rd_en <= 1'b0;
        else if(read & !wr_en)
            rd_en <= 1'b1;
        else if(i2c_end)
            rd_en <= 1'b0;
        else
            rd_en <= rd_en;
    end

    //read_data
    always @(posedge i2c_clk or negedge rst_n) begin
        if (!rst_n) begin
            data_out <= 8'd0;
        end
        else if(rd_en & i2c_end)
            data_out <= rd_data;
        else    
            data_out <= data_out;
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










    
endmodule
