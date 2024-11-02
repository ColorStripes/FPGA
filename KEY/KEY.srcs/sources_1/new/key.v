`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/02 21:47:13
// Design Name: 
// Module Name: key
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


module key(
    input   clk,
    input [3:0] key,
    output [3:0] led
    );


reg [3 : 0] led_r;
reg [3 : 0] led_r1;

always @(posedge clk) begin
    led_r <= key;
end

always @(posedge clk) begin
    led_r1 <= led_r;
end

assign led = led_r1;

endmodule
