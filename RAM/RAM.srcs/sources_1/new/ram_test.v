`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 12:10:04
// Design Name: 
// Module Name: ram_test
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


module ram_test(
    input clk,
    input rst_n
    );

    reg [8 : 0] w_addr;
    reg [15 : 0] w_data;
    reg wea;
    reg [8 : 0] r_addr;
    wire [15 : 0] r_data;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            r_addr <= 9'd0;
        end
        else if(|w_addr) begin                       //你不写我就不读ram的空状�??
            r_addr <= r_addr + 1'b1;
        end
        else begin
            r_addr <= 9'd0;
        end
    end



    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            wea <= 1'b0;
        end
        else begin
            if(&w_addr) begin
                wea <= 1'b0;
            end
            else begin
                wea <= 1'b1;
            end
        end
    end


    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            w_addr <= 9'd0;
            w_data <= 16'd1;
        end
        else if(wea) begin
            if(&w_addr) begin                       //按位相与  即addr为全1  就是RAM写满�?
                w_addr <= w_addr;
                w_data <= w_data;
            end
            else begin
                w_addr <= w_addr + 1'b1;
                w_data <= w_data + 1'b1;
            end
        end
    end


    ram_ip ram_ip_inst(
    .clka   (clk    ),
    .wea    (wea    ),
    .addra  (w_addr ),
    .dina   (w_data ),
    //B端口
    .clkb   (clk    ),
    .addrb  (r_addr ),
    .doutb  (r_data )
    );

    ila_0 ila_inst(
    .clk    (clk    ),


    .probe0 (r_data ),
    .probe1 (r_addr )
    );




        



    
endmodule
