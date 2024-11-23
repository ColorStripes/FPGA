`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/17 17:43:53
// Design Name: 
// Module Name: i2c_eerom_tb
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


module i2c_eerom_tb;

    reg sys_clk;
    reg rst_n;
    reg key_wr;
    reg key_rd;
    wire [7 : 0] data;
    wire i2c_scl;
    wire i2c_sda;

initial begin

    sys_clk = 1'b1;
    rst_n = 1'b0;
    key_wr = 1'b1;
    key_rd = 1'b1;


    #200
    rst_n = 1'b1;

    #1000
    key_wr = 1'b0;
    key_rd = 1'b1;

    #5000
    key_wr = 1'b1;
    key_rd = 1'b1;

    #6000000
    key_wr = 1'b1;
    key_rd = 1'b0;
    


    #5000
    key_wr = 1'b1;
    key_rd = 1'b1;


    // #450000
    // key_wr = 1'b0;
    // key_rd = 1'b1;

    // #5000
    // key_wr = 1'b1;
    // key_rd = 1'b1;

    // #5700000
    // key_wr = 1'b1;
    // key_rd = 1'b0;
    


    // #5000
    // key_wr = 1'b1;
    // key_rd = 1'b1;




    // #450000
    // key_wr = 1'b0;
    // key_rd = 1'b1;

    // #5000
    // key_wr = 1'b1;
    // key_rd = 1'b1;

    // #5600000
    // key_wr = 1'b1;
    // key_rd = 1'b0;
    


    // #5000
    // key_wr = 1'b1;
    // key_rd = 1'b1;



end
    

    always #10 sys_clk = ~sys_clk;




i2c_eerom_top i2c_eerom_top(
    .sys_clk(sys_clk),
    .rst_n(rst_n),
    .key_wr(key_wr),
    .key_rd(key_rd),

    .data(data),
    .i2c_sda(i2c_sda),
    .i2c_scl(i2c_scl)
);



M24LC04B M24LC04B(
    .A0(0), 
    .A1(0), 
    .A2(0), 
    .WP(0), 
    .SDA(i2c_sda), 
    .SCL(i2c_scl), 
    .RESET(~rst_n)
);

endmodule
