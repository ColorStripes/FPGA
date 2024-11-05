`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/05 21:09:03
// Design Name: 
// Module Name: count
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


module count(
    input clk,
    input  rst_n,
    input en,
    input clr,
    output reg [3 :0] data
);

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            data <= 4'd0;
        else if(clr)
            data <= 4'd0;
        else if(en)
            data <= data + 1'b1;
        
    end

endmodule
