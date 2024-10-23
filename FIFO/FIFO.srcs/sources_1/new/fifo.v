`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 16:07:59
// Design Name: 
// Module Name: fifo
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


module fifo(
    input clk,
    input rst_n 
    );

    //写
    reg [15 : 0] w_data;
    //使能
    wire wr_en;
    wire rd_en;
    wire [15 : 0] r_data;
    //满和空
    wire full;
    wire empty;
    //在当前周期读出之前已存在的数量
    wire [8 : 0] rd_data_count;
    //在当前周期写入之前已存在的数量
    wire [8 : 0] wr_data_count;
    
    
    wire clk_100M;          //写时钟
    wire clk_75M;           //读时钟
    wire locked;
    wire fifo_rst_n;

    wire wr_clk;
    wire rd_clk;
    //两个复位后安全等待计数器
    reg [7 : 0] wcnt;
    reg [7 : 0] rcnt;




    //锁相环时钟输出
    clk_wiz_0 pll
    (
    // Clock out ports
    .clk_out1 (clk_100M),
    .clk_out2 (clk_75M),
    // Status and control signals
    .reset    (~rst_n),
    .locked   (locked),
    // Clock in ports
    .clk_in1  (clk)
    );

    assign fifo_rst_n = locked;  //当锁相环输出时钟稳定我们复位FIFO
    assign wr_clk = clk_100M;
    assign rd_clk = clk_75M;




    //写状态机
    localparam W_IDLE = 1, W_FIFO = 2;
    reg [2 : 0] write_state;
    reg [2 : 0] next_write_state;

    always @(posedge wr_clk or negedge fifo_rst_n) begin
        if(!fifo_rst_n)
            write_state <= W_IDLE;
        else
            write_state <= next_write_state;
    end

    always @(*) begin
        case(write_state)
            W_IDLE:begin
                if(wcnt == 8'd79)           //快时钟复位后等待80周期
                    next_write_state <= W_FIFO;
                else
                    next_write_state <= W_IDLE;
            end
            W_FIFO:begin
                next_write_state <= W_FIFO;     //持续在写状态
            end
            default:begin
               next_write_state <= W_IDLE; 
            end
        endcase
    end

    //写复位计数器
    always @(posedge wr_clk or negedge fifo_rst_n) begin
        if(!fifo_rst_n)
            wcnt <= 8'd0;
        else if(write_state == W_IDLE)
            wcnt <= wcnt + 1'b1;
        else
            wcnt <= 8'd0;
    end


    assign wr_en = (write_state == W_FIFO) ? ~full : 1'b0;    //不满就写
    //对写入的内容自定义
    always @(posedge wr_clk or negedge fifo_rst_n) begin
        if(!fifo_rst_n)
            w_data <= 16'd1;
        else if(wr_en)
            w_data <= w_data + 1'b1;
    end


    //读状态机
    localparam  R_IDLE = 1, R_FIFO = 2;
    reg [2 : 0] read_state;
    reg [2 : 0] next_read_state;

    always @(posedge rd_clk or negedge fifo_rst_n) begin
        if(!fifo_rst_n)
            read_state <= R_IDLE;
        else
            read_state <= next_read_state;
    end

    always @(*) begin
        case (read_state)
            R_IDLE: 
                if(rcnt == 8'd59)               //慢时钟复位后等待60周期
                    next_read_state <= R_FIFO;
                else
                    next_read_state <= R_IDLE;
            R_FIFO:
                next_read_state <= R_FIFO;
            default: 
                next_read_state <= R_IDLE;
        endcase
    end

    always @(posedge rd_clk or negedge fifo_rst_n) begin
        if(!fifo_rst_n)
            rcnt <= 8'd0;
        else if(read_state == R_IDLE)
            rcnt <= rcnt + 1'b1;
        else   
            rcnt <= 8'd0;
    end

    assign rd_en = (read_state == R_FIFO) ? ~empty : 1'b0;

    fifo_ip fifo(
    .rst          (~fifo_rst_n),
    .wr_clk       (wr_clk),
    .rd_clk       (rd_clk),
    .din          (w_data),
    .wr_en        (wr_en),
    .rd_en        (rd_en),
    .dout         (r_data),
    .full         (full),
    .empty        (empty),
    .rd_data_count(rd_data_count),
    .wr_data_count(wr_data_count),
    .wr_rst_busy  (),
    .rd_rst_busy  ()
    );

    //逻辑分析仪
    ila_0 ila_w(
    .clk    (wr_clk),

    .probe0 (w_data),
    .probe1 (wr_en),
    .probe2 (full),
    .probe3 (wr_data_count)
    );


    ila_0 ila_r(
    .clk    (rd_clk),

    .probe0 (r_data),
    .probe1 (rd_en),
    .probe2 (empty),
    .probe3 (rd_data_count)
    );


endmodule
