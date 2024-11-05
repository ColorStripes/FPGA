`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/05 22:05:49
// Design Name: 
// Module Name: key2
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


module key2;

    reg sys_clk;
    reg rst_n;
    reg key;
    wire [3 : 0] led;

initial begin
    sys_clk = 1'b0;
    rst_n = 1'b0;
    key = 1'b1;

    #100 rst_n = 1'b1;
    #2000 key = 1'b0;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;

    #({$random} % 10000000)     key = 1'b0;
    #10000000 key = 1'b1;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    #({$random} % 10000000)     key = ~key;
    key = 1'b1;
    #10 $stop;

end

always #10 sys_clk = ~sys_clk;


endmodule
