`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/05 17:23:27
// Design Name: 
// Module Name: ax_debounce
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


module ax_debounce(
    input clk,
    input rst,
    input button_in,
    output reg button_posedge,
    output reg button_negedge,
    output reg button_out
);


parameter N = 32;
parameter FREQ = 50;
parameter MAX_TIME = 20;                                        //消抖时间 ms
localparam  TIMER_MAX_VAL = 1000 * FREQ * MAX_TIME;             //MHz * 1000 是1ms计数次数

reg [N-1 : 0] q_reg;
reg [N-1 : 0] q_next;
reg DFF1,DFF2;


wire q_add;
wire q_reset;
reg button_out_d0;

assign q_reset = (DFF1 ^ DFF2);                                 //两级触发器的值不同 计数器复位信号 为消抖计数做准备
assign q_add = ~(q_reg == TIMER_MAX_VAL);

always @(q_reset, q_add, q_reg) begin
    case({q_reset, q_add})
        2'b00: q_next <= q_reg;
        2'b01: q_next <= q_reg + 1;
        default: q_next <= {N{1'b0}};
    endcase
end

always @(posedge clk or posedge rst) begin
    if(rst == 1'b1) begin
        DFF1 <= 1'b0;
        DFF2 <= 1'b0;
        q_reg <= {N{1'b0}};
    end
    else begin
        DFF1 <= button_in;                                  //因为DFF1是输入跳变使得与DFF2的电位不同
        DFF2 <= DFF1;                                       //会产生复位信号的出现重新计时
        q_reg <= q_next;
    end
end

always @(posedge clk or posedge rst) begin
    if(rst === 1'b1)
        button_out <= 1'b1;
    else if(q_reg == TIMER_MAX_VAL)
        button_out <= DFF2;
    else
        button_out <= button_out;
end


//输出信号的上升或下降
/*
out _______              ____________
           |____________|
        

d0      _______              ____________
               |____________|  

posedge                  ___
                        |   |

negedge      ___
            |   |
*/
always @(posedge clk or posedge rst) begin
    if(rst == 1'b1) begin
        button_out_d0 <= 1'b1;
        button_posedge <= 1'b0;
        button_negedge <= 1'b0;
    end
    else begin
        button_out_d0 <= button_out;
        button_posedge <= button_out & ~button_out_d0;
        button_negedge <= ~button_out & button_out_d0;
    end
    
end


endmodule
