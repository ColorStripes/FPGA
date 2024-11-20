`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 21:05:49
// Design Name: 
// Module Name: i2c_eerom
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


module i2c_eerom(
    input sys_clk,
    input rst_n,
    input key,
    inout i2c_sda,
    input i2c_scl,
    output [3 : 0] led
);

localparam S_IDLE = 0;
localparam S_READ = 1;
localparam S_WAIT = 2;
localparam S_WRITE = 3;
reg [3 : 0] state;

wire button_negedge;
reg [7 : 0] reaf_data;
reg [31 : 0] timer;

wire scl_pad_i;
wire scl_pad_o;
wire scl_padoen_o;

wire sda_pad_i;
wire sda_pad_o;
wire sda_padoen_o;

reg [7 : 0] i2c_slave_dev_addr;
reg [7 : 0] i2c_slave_reg_addr;

reg i2c_write_req;
wire i2c_write_req_ack;
reg [7 : 0] i2c_write_data;

reg i2c_read_req;
wire i2c_read_req_ack;
wire [7 : 0] i2c_read_data;

assign led = ~read_data[3 : 0];


ax_debounce ax_debounce(
    .clk(sys_clk),
    .rst(rst_n),
    .button_in(key),
    .button_posedge(),
    .button_negedge(button_negedge),
    .button_out()
);

always @(posedge sys_clk or negedge rst_n) begin
    if(!rst_n) begin
        state <= S_IDLE;
        i2c_write_req <= 1'b0;
        read_data <= 8'h00;
        timer <= 32'd0;
        i2c_write_data <= 8'd0;
        i2c_slave_reg_addr <= 16'd0;
        i2c_slave_dev_addr <= 8'ha0;
        i2c_read_req <= 1'b0;
    end
    else begin
        case(state)
            S_IDLE:begin
                if(timer >= 32'd499_999) //10ms
                    state <= S_READ;
                else
                    timer <= timer + 32'd1;
            end
            S_READ:begin
                if(i2c_read_req_ack) begin
                    i2c_read_req <= 1'b0;
                    read_data <= i2c_read_data;
                    state <= S_WAIT;
                end
                else begin
                    i2c_read_req <= 1'b1;
                    i2c_slave_dev_addr <= 8'ha0;
                    i2c_slave_reg_addr <= 16'd0;
                end
            end
            S_WAIT:begin
                if(button_negedge) begin
                    state <= S_WRITE;
                    read_data <= read_data + 8'd1;
                end
            end
            S_WRITE:begin
                if(i2c_write_req_ack)begin
                    i2c_write_req <= 1'b0;
                    state <= S_READ;
                end
                else begin
                    i2c_write_req <= 1'b1;
                    i2c_write_data <= read_data;
                end
            end
            default:
                state <= S_IDLE;
        endcase
    end
end

assign sda_pad_i = i2c_sda;
assign i2c_sda = ~sda_padoen_o ? sda_pad_o : 1'bz;

assign scl_pad_i = i2c_scl;
assign i2c_scl = ~scl_padoen_o ? scl_pad_o : 1'bz;

endmodule
