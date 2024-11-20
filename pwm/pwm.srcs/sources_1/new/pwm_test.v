`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/06 20:35:10
// Design Name: 
// Module Name: pwm_test
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


module pwm_test(
    input clk,
    input rst_n,
    output led
);


localparam  CLK_FREQ = 50;
localparam  US_COUNT = CLK_FREQ;
localparam  MS_COUNT = CLK_FREQ * 1000;
localparam  DUTY_STEP = 32'd100000;
localparam  DUTY_MIN_VALUE = 32'H6FFFFFFF;
localparam  DUTY_MAX_VALUE = 32'HFFFFFFFF;

localparam  IDLE = 0;
localparam  PWM_PLUS = 1;
localparam  PWM_MINUS = 2;
localparam  PWM_GAP = 3;

wire pwm_out;
reg [31 : 0] period;
reg [31 : 0] duty;
reg pwm_flag;

reg [3 : 0] state;
reg [31 : 0] timer;

assign led = ~pwm_out;

always @(posedge clk or posedge rst_n) begin
    if(!rst_n) begin
        period <= 32'd0;
        timer <= 32'd0;
        duty <= 32'd0;
        pwm_flag <= 1'b0;
        state <= IDLE;
    end
    else begin
        case(state)
            IDLE:begin
                period <= 32'd17179;                            //200Hz   period = 200 * FFFFFFFF / 50000000
                state <= PWM_PLUS;
                duty <= DUTY_MIN_VALUE;
            end
            PWM_PLUS:begin
                if(duty > DUTY_MAX_VALUE - DUTY_STEP) begin
                    pwm_flag <= 1'b1;
                    duty <= duty - DUTY_STEP;
                end
                else begin
                    pwm_flag <= 1'b0;
                    duty <= duty + DUTY_STEP;
                end
                state <= PWM_GAP;
            end
            PWM_MINUS:begin
                if(duty < DUTY_MAX_VALUE + DUTY_STEP) begin
                    pwm_flag <= 1'b0;
                    duty <= duty + DUTY_STEP;
                end
                else begin
                    pwm_flag <= 1'b1;
                    duty <= duty - DUTY_STEP;
                end
                state <= PWM_GAP;
            end
            PWM_GAP:begin
                if(timer >= US_COUNT * 100) begin
                    if(pwm_flag)
                        state <= PWM_MINUS;
                    else
                        state <= PWM_PLUS;
                    timer <= 32'd0;
                end
                else
                    timer <= timer + 32'd1;
            end
            default:
                state <= IDLE;
        endcase
    end 
end


pwm
#(
    .N(32)  //pwm bit width
)pwm(
    .clk(clk),
    .rst(rst_n),
    .period(period),      //输出频率 * 2的N次方 / 时钟频率      2的N次方就是为带宽代表的数值
    .duty(duty),        //占空比 = duty / 2的N次方
    .pwm_out(pwm_out)
);



endmodule
