`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/13 22:31:07
// Design Name: 
// Module Name: i2c_ctrl
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


module i2c_ctrl
#(
    parameter SYS_CLK_FREQ = 50_000_000,
              I2C_SCL_FREQ = 250_000,
              DEVICE_ADDR = 7'b1010_000
)
(
    input wire sys_clk,
    input wire rst_n,
    input wire i2c_start,
    input wire wr_en,
    input wire [15 : 0] byte_addr,
    input wire [7 : 0] wr_data,
    input wire rd_en,
    input wire addr_num,
    input wire page,            //页写标志


    output reg i2c_scl,        //250kHz
    inout wire i2c_sda,
    output reg [7 : 0] rd_data,
    output reg [6 : 0] cnt_B,   //页写字计数 从0开始
    output reg i2c_end,
    output reg i2c_clk          //i2c分频时钟 1MHz

);

    //分频整除不了/////////////////////////////////////////////待修改
    localparam CNT_CLK_MAX =  SYS_CLK_FREQ / I2C_SCL_FREQ >> 3;                          //i2c_clk是i2c_scl的4倍关系   再除以2是为了周期计数器在占空比50%下翻转形成索要周期


    //reg scl_clk;
    //reg cnt_2;             //scl_clk分频计数器
    reg [7 : 0] cnt_clk;   //控制器工作时钟分频计数器
    reg [1 : 0] cnt_scl;   //SCL周期计数器
    reg [2 : 0] cnt_bit;   //发送bit计数
    reg [2 : 0] cnt_ack;   //进入ACK响应的次数
    reg [3 : 0] state;     //状态机的个数
    reg sda_out;
    reg re_wr_reg;
    reg ack;                //应答判断信号
    wire ack_cnt_2;         //采集cnt_scl为2时候是否有应答
    wire cnt_en;            //传输bit计数器使能

    //i2c_clk分频
    always @(posedge sys_clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt_clk <= 8'd0;
        end
        else if(cnt_clk == CNT_CLK_MAX - 1) begin
            cnt_clk <= 8'd0;
        end
        else begin
            cnt_clk <= cnt_clk + 1'b1;
        end
    end
    always @(posedge sys_clk or negedge rst_n) begin
        if(!rst_n) begin
            i2c_clk <= 1'd0;
        end
        else if(cnt_clk == CNT_CLK_MAX - 1) begin
            i2c_clk <= ~i2c_clk;
        end
        else begin
            i2c_clk <= i2c_clk;
        end
    end


    // //scl_clk分频
    // always @(posedge i2c_clk or negedge rst_n) begin
    //     if(!rst_n) begin
    //         cnt_2 <= 2'b00;
    //     end
    //     else begin
    //         cnt_2 <= cnt_2 + 1'b1;
    //     end
    // end
    // always @(posedge i2c_clk or negedge rst_n) begin
    //     if(!rst_n) begin
    //         scl_clk <= 1'b1;
    //     end
    //     else if(cnt_2) begin
    //         scl_clk <= ~scl_clk;
    //     end
    //     else begin
    //         scl_clk <= scl_clk;
    //     end
    // end

    //scl一周期四分频标号
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt_scl <= 2'b00;
        end
        else if(state == IDLE)
            cnt_scl <= 2'b00;
        else begin
            cnt_scl <= cnt_scl + 1'b1;
        end
    end
    

    //State Machine
    localparam IDLE = 0,
              START = 1,
              DEV_ADDR = 2,
              ACK = 3,
              DEV_DA_ADDR_H = 4,
              DEV_DA_ADDR_L = 5,
              DEV_DA_WRITE_READ = 6,
              STOP = 7,
              N_ACK = 8;
             // ERROR = 8
              
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) begin
            state <= IDLE;
        end
        else begin
            case(state)
                IDLE:begin
                    if(i2c_start)begin
                        state <= START;
                    end
                    else begin
                        state <= state;
                    end
                end
                START:begin
                    if(cnt_scl == 2'd3)
                        state <= DEV_ADDR;
                    else    
                        state <= state;
                end
                DEV_ADDR:begin
                    if((cnt_bit == 3'd7) && (cnt_scl == 2'd3)) begin
                        state <= ACK;
                    end
                    else begin
                        state <= state;
                    end
                end
                ACK:begin
                    if(!ack && (cnt_scl == 2'd3)) begin
                        //state <= ACK + cnt_ack;
                        state <= cnt_ack;
                    end
                    else begin
                        state <= state;
                    end
                end
                DEV_DA_ADDR_H:begin
                    if((cnt_bit == 3'd7) && (cnt_scl == 2'd3)) begin
                        state <= ACK;
                    end
                    else begin
                        state <= state;
                    end
                end
                DEV_DA_ADDR_L:begin
                    if((cnt_bit == 3'd7) && (cnt_scl == 2'd3)) begin
                        state <= ACK;
                    end
                    else begin
                        state <= state;
                    end
                end
                DEV_DA_WRITE_READ:begin
                    if((cnt_bit == 3'd7) && (cnt_scl == 2'd3)) begin
                        if(wr_en | page) 
                            state <= ACK;
                        else
                            state <= N_ACK; 
                    end
                    else begin
                        state <= state;
                    end
                end
                STOP:begin
                    if((cnt_bit == 3'd2) && (cnt_scl == 2'd3)) begin
                        state <= IDLE;
                    end
                    else begin
                        state <= state;
                    end
                end
                N_ACK:begin
                    if (cnt_scl == 2'd3)
                        state <= STOP;  
                    else begin
                        state <= state;
                    end
                end
            endcase
        end
    end

    //ack
    assign ack_cnt_2 = (state == ACK) ? i2c_sda : 1'b1;
    always @(posedge i2c_clk or negedge rst_n) begin            //延迟一个i2c_clk 保证ACK是一个SCL前提 在i2c_clk == 3的时候应答信号消失后仍有效
        if(!rst_n)
            ack <= 1'b1;
        else
            ack <= ack_cnt_2;
    end

    //进入ack的计数器
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt_ack <= 0;
        end
        else if((state == DEV_ADDR) && (cnt_bit == 3'd7) && (cnt_scl == 2'd3)) begin
            if(re_wr_reg)
                cnt_ack <= DEV_DA_WRITE_READ;
            else
                cnt_ack <= 2 + ACK - addr_num;
        end
        else if((state == ACK) && !ack && (cnt_scl == 2'd3)) 
            cnt_ack <= cnt_ack + 1'b1;
        else if((state == DEV_DA_ADDR_L) && re_wr_reg && (cnt_scl == 2'd3)) 
            cnt_ack <= 1;
        else if((state == DEV_DA_WRITE_READ) && (cnt_bit == 3'd7) && (cnt_scl == 2'd3)) 
            cnt_ack <= cnt_ack - page;
        else if(state == IDLE) begin
            cnt_ack <= ACK;
        end
        else begin
            cnt_ack <= cnt_ack;
        end
    end

    //设备地址最后一位 读取或写入状态
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n)
            re_wr_reg <= 1'b0;
        else if((state == DEV_ADDR) && (cnt_bit == 3'd7) && (cnt_scl == 2'd3) && rd_en)
            re_wr_reg <= ~re_wr_reg;
        else if(state == IDLE)
            re_wr_reg <= 1'b0;
        else
            re_wr_reg <= re_wr_reg;
    end

    //传输B计数器
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt_B <= 7'd0;
        end
        else if((state == DEV_DA_WRITE_READ) && (cnt_bit == 3'd7) && (cnt_scl == 2'd3)) begin
            cnt_B <= cnt_B + 1'b1;
        end
        else if(state == IDLE)
            cnt_B <= 7'd0;
        else begin
            cnt_B <= cnt_B;
        end
    end

    


    //传输bit计数器
    assign cnt_en = (state == DEV_ADDR) || (state == DEV_DA_ADDR_H) || (state == DEV_DA_ADDR_L) || (state == DEV_DA_WRITE_READ) || (state == STOP);
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) begin
            cnt_bit <= 3'b000;
        end
        else if(cnt_en && (cnt_scl == 2'd3)) begin
            cnt_bit <= cnt_bit + 1'b1;
        end
        else if(state == START)
            cnt_bit <= 3'b000;
        else begin
            cnt_bit <= cnt_bit;
        end
    end


    //i2c_sda状态的赋值  将一个scl周期分为四个 计数器控制0123
    //assign i2c_sda = ((cnt_bit == 3'd7) && (cnt_scl == 2'd3)) ? 1'bz : sda_out;
    assign i2c_sda = sda_out;
    always @(*) begin
        case(state)
            IDLE:   
                sda_out = 1'b1;
            START:begin
                if(cnt_scl == 2'd0) begin
                    sda_out = 1'b1;
                end
                else begin
                    sda_out = 1'b0;
                end
            end
            DEV_ADDR:begin

                //M24LC64
                // if(cnt_bit <= 3'd6)
                //     sda_out = DEVICE_ADDR[6-cnt_bit];
                // /////////////////////////////////////////////////////////

                //M24LC04B              
                if(cnt_bit <= 3'd3)                                 //
                    sda_out = DEVICE_ADDR[6-cnt_bit];               //
                else if((cnt_bit <= 3'd6) && (cnt_bit > 3'd3))      //
                    sda_out = byte_addr[cnt_bit + 4];               //
                //////////////////////////////////////////////////////

                else if(wr_en)
                    sda_out = 1'b0;
                else if(rd_en)
                    sda_out = re_wr_reg;
                else
                    sda_out = 1'b1;
            end
            ACK:
                sda_out = 1'bz;
            DEV_DA_ADDR_H:begin
                sda_out = byte_addr[15 - cnt_bit];
            end
            DEV_DA_ADDR_L:begin
                sda_out = byte_addr[7 - cnt_bit];
            end
            DEV_DA_WRITE_READ:begin
                if(wr_en)
                    sda_out = wr_data[7 - cnt_bit];
                else
                    sda_out = 1'bz;
            end
            N_ACK:begin
                sda_out = 1'b1;
            end
            STOP:begin
                if((cnt_scl <= 2'd2) && (cnt_bit == 3'b0)) begin
                    sda_out = 1'b0;
                end
                else begin
                    sda_out = 1'b1;
                end
            end
            default:
                sda_out = 1'b1;        
        endcase
    end

    //i2c_scl
    always @(*) begin
        case(state)
            IDLE:
                i2c_scl = 1'b1;
            START:
                if(cnt_scl == 2'd3)begin
                    i2c_scl = 1'b0;
                end
                else begin
                    i2c_scl = 1'b1;
                end
            DEV_ADDR, DEV_DA_ADDR_H, DEV_DA_ADDR_L, DEV_DA_WRITE_READ, ACK, N_ACK,START:
                if((cnt_scl == 2'd1) || (cnt_scl == 2'd2)) begin
                    i2c_scl = 1'b1;
                end
                else begin
                    i2c_scl = 1'b0;
                end
            STOP:
                if((cnt_scl == 2'b0) && (cnt_bit == 3'b0)) begin
                    i2c_scl = 1'b0;
                end
                else begin
                    i2c_scl = 1'b1;
                end
            default:
                i2c_scl = 1'b1;
        endcase
    end

    //i2c_end
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) begin
            i2c_end <= 1'b0;
        end
        else if((state == STOP) && (cnt_bit == 3'd2) && (cnt_scl == 2'd2)) begin
            i2c_end <= 1'b1;
        end
        else begin
            i2c_end <= 1'b0;
        end
    end

    //rd_data    i2c_end的时候读取有效
    always @(posedge i2c_clk or negedge rst_n) begin
        if(!rst_n) begin
            rd_data <= 8'b0;
        end
        else if((cnt_scl == 2'd2) && (state == DEV_DA_WRITE_READ) && rd_en)
            rd_data[7 - cnt_bit] <= i2c_sda;
        else if(state == IDLE)
            rd_data <= 8'd0;
        else
            rd_data <= rd_data;
    end



// ila_0 ila (
// 	.clk(sys_clk), // input wire clk


// 	.probe0(i2c_scl), // input wire [0:0]  probe0  
// 	.probe1(i2c_sda), // input wire [0:0]  probe1 
// 	.probe2(i2c_clk), // input wire [0:0]  probe2 
// 	.probe3(state) // input wire [3:0]  probe3
// );

endmodule
