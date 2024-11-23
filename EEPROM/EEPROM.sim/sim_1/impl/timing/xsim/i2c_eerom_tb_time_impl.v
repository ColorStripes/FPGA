// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Nov 23 23:21:00 2024
// Host        : LAPTOP-8FN33LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               F:/FPGA/EEPROM/EEPROM.sim/sim_1/impl/timing/xsim/i2c_eerom_tb_time_impl.v
// Design      : i2c_eerom_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module IOBUF_UNIQ_BASE_
   (IO,
    O,
    I,
    T);
  inout IO;
  output O;
  input I;
  input T;

  wire I;
  wire IO;
  wire O;
  wire T;

  IBUF IBUF
       (.I(IO),
        .O(O));
  OBUFT OBUFT
       (.I(I),
        .O(IO),
        .T(T));
endmodule

module accross_clock
   (\cnt_clk_reg[0]_0 ,
    rd_en_reg,
    sys_clk_IBUF_BUFG,
    rst_n_IBUF,
    button_posedge,
    i2c_end,
    wr_en_reg,
    rd_en_reg_0);
  output \cnt_clk_reg[0]_0 ;
  output rd_en_reg;
  input sys_clk_IBUF_BUFG;
  input rst_n_IBUF;
  input button_posedge;
  input i2c_end;
  input wr_en_reg;
  input rd_en_reg_0;

  wire button_posedge;
  wire \cnt_clk[7]_i_2_n_0 ;
  wire \cnt_clk[7]_i_3_n_0 ;
  wire \cnt_clk[7]_i_4_n_0 ;
  wire \cnt_clk_reg[0]_0 ;
  wire [7:0]cnt_clk_reg__0;
  wire i2c_end;
  wire [7:0]p_0_in;
  wire rd_en_reg;
  wire rd_en_reg_0;
  wire read;
  wire rst_n_IBUF;
  wire signal_out_i_1_n_0;
  wire signal_out_i_2_n_0;
  wire sys_clk_IBUF_BUFG;
  wire wr_en_reg;

  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[0]_i_1 
       (.I0(\cnt_clk[7]_i_2_n_0 ),
        .I1(cnt_clk_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_clk[1]_i_1 
       (.I0(\cnt_clk[7]_i_2_n_0 ),
        .I1(cnt_clk_reg__0[1]),
        .I2(cnt_clk_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_clk[2]_i_1 
       (.I0(\cnt_clk[7]_i_2_n_0 ),
        .I1(cnt_clk_reg__0[0]),
        .I2(cnt_clk_reg__0[1]),
        .I3(cnt_clk_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_clk[3]_i_1 
       (.I0(\cnt_clk[7]_i_2_n_0 ),
        .I1(cnt_clk_reg__0[1]),
        .I2(cnt_clk_reg__0[0]),
        .I3(cnt_clk_reg__0[2]),
        .I4(cnt_clk_reg__0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_clk[4]_i_1 
       (.I0(\cnt_clk[7]_i_2_n_0 ),
        .I1(cnt_clk_reg__0[2]),
        .I2(cnt_clk_reg__0[0]),
        .I3(cnt_clk_reg__0[1]),
        .I4(cnt_clk_reg__0[3]),
        .I5(cnt_clk_reg__0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \cnt_clk[5]_i_1 
       (.I0(\cnt_clk[7]_i_2_n_0 ),
        .I1(\cnt_clk[7]_i_3_n_0 ),
        .I2(cnt_clk_reg__0[4]),
        .I3(cnt_clk_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \cnt_clk[6]_i_1 
       (.I0(\cnt_clk[7]_i_2_n_0 ),
        .I1(cnt_clk_reg__0[5]),
        .I2(cnt_clk_reg__0[4]),
        .I3(\cnt_clk[7]_i_3_n_0 ),
        .I4(cnt_clk_reg__0[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h8AAAAAAA20000000)) 
    \cnt_clk[7]_i_1 
       (.I0(\cnt_clk[7]_i_2_n_0 ),
        .I1(\cnt_clk[7]_i_3_n_0 ),
        .I2(cnt_clk_reg__0[4]),
        .I3(cnt_clk_reg__0[5]),
        .I4(cnt_clk_reg__0[6]),
        .I5(cnt_clk_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \cnt_clk[7]_i_2 
       (.I0(read),
        .I1(\cnt_clk[7]_i_4_n_0 ),
        .I2(cnt_clk_reg__0[6]),
        .I3(cnt_clk_reg__0[0]),
        .I4(cnt_clk_reg__0[7]),
        .I5(cnt_clk_reg__0[3]),
        .O(\cnt_clk[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_clk[7]_i_3 
       (.I0(cnt_clk_reg__0[2]),
        .I1(cnt_clk_reg__0[0]),
        .I2(cnt_clk_reg__0[1]),
        .I3(cnt_clk_reg__0[3]),
        .O(\cnt_clk[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \cnt_clk[7]_i_4 
       (.I0(cnt_clk_reg__0[5]),
        .I1(cnt_clk_reg__0[4]),
        .I2(cnt_clk_reg__0[2]),
        .I3(cnt_clk_reg__0[1]),
        .O(\cnt_clk[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(cnt_clk_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0]_0 ),
        .D(p_0_in[1]),
        .Q(cnt_clk_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(cnt_clk_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(cnt_clk_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0]_0 ),
        .D(p_0_in[4]),
        .Q(cnt_clk_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0]_0 ),
        .D(p_0_in[5]),
        .Q(cnt_clk_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0]_0 ),
        .D(p_0_in[6]),
        .Q(cnt_clk_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0]_0 ),
        .D(p_0_in[7]),
        .Q(cnt_clk_reg__0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \q_reg[31]_i_3 
       (.I0(rst_n_IBUF),
        .O(\cnt_clk_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h7530)) 
    rd_en_i_1
       (.I0(i2c_end),
        .I1(wr_en_reg),
        .I2(read),
        .I3(rd_en_reg_0),
        .O(rd_en_reg));
  LUT3 #(
    .INIT(8'hBA)) 
    signal_out_i_1
       (.I0(button_posedge),
        .I1(signal_out_i_2_n_0),
        .I2(read),
        .O(signal_out_i_1_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    signal_out_i_2
       (.I0(cnt_clk_reg__0[3]),
        .I1(cnt_clk_reg__0[7]),
        .I2(cnt_clk_reg__0[0]),
        .I3(cnt_clk_reg__0[6]),
        .I4(\cnt_clk[7]_i_4_n_0 ),
        .O(signal_out_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    signal_out_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0]_0 ),
        .D(signal_out_i_1_n_0),
        .Q(read));
endmodule

(* ORIG_REF_NAME = "accross_clock" *) 
module accross_clock_1
   (wr_en_reg,
    sys_clk_IBUF_BUFG,
    rst_n,
    button_posedge_reg,
    i2c_end,
    rd_en_reg,
    wr_en_reg_0);
  output wr_en_reg;
  input sys_clk_IBUF_BUFG;
  input rst_n;
  input button_posedge_reg;
  input i2c_end;
  input rd_en_reg;
  input wr_en_reg_0;

  wire button_posedge_reg;
  wire \cnt_clk[5]_i_2_n_0 ;
  wire \cnt_clk[7]_i_2__0_n_0 ;
  wire \cnt_clk[7]_i_3__0_n_0 ;
  wire \cnt_clk[7]_i_4__0_n_0 ;
  wire [7:0]cnt_clk_reg__0;
  wire i2c_end;
  wire [7:0]p_0_in__0;
  wire rd_en_reg;
  wire rst_n;
  wire signal_out_i_1__0_n_0;
  wire signal_out_i_2__0_n_0;
  wire sys_clk_IBUF_BUFG;
  wire wr_en_reg;
  wire wr_en_reg_0;
  wire write;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clk[0]_i_1__0 
       (.I0(\cnt_clk[7]_i_2__0_n_0 ),
        .I1(cnt_clk_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_clk[1]_i_1__0 
       (.I0(\cnt_clk[7]_i_2__0_n_0 ),
        .I1(cnt_clk_reg__0[1]),
        .I2(cnt_clk_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_clk[2]_i_1__0 
       (.I0(\cnt_clk[7]_i_2__0_n_0 ),
        .I1(cnt_clk_reg__0[0]),
        .I2(cnt_clk_reg__0[1]),
        .I3(cnt_clk_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_clk[3]_i_1__0 
       (.I0(\cnt_clk[7]_i_2__0_n_0 ),
        .I1(cnt_clk_reg__0[1]),
        .I2(cnt_clk_reg__0[0]),
        .I3(cnt_clk_reg__0[2]),
        .I4(cnt_clk_reg__0[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_clk[4]_i_1__0 
       (.I0(\cnt_clk[7]_i_2__0_n_0 ),
        .I1(cnt_clk_reg__0[2]),
        .I2(cnt_clk_reg__0[0]),
        .I3(cnt_clk_reg__0[1]),
        .I4(cnt_clk_reg__0[3]),
        .I5(cnt_clk_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT3 #(
    .INIT(8'h82)) 
    \cnt_clk[5]_i_1__0 
       (.I0(\cnt_clk[7]_i_2__0_n_0 ),
        .I1(\cnt_clk[5]_i_2_n_0 ),
        .I2(cnt_clk_reg__0[5]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_clk[5]_i_2 
       (.I0(cnt_clk_reg__0[3]),
        .I1(cnt_clk_reg__0[1]),
        .I2(cnt_clk_reg__0[0]),
        .I3(cnt_clk_reg__0[2]),
        .I4(cnt_clk_reg__0[4]),
        .O(\cnt_clk[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_clk[6]_i_1__0 
       (.I0(\cnt_clk[7]_i_2__0_n_0 ),
        .I1(\cnt_clk[7]_i_3__0_n_0 ),
        .I2(cnt_clk_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_clk[7]_i_1__0 
       (.I0(\cnt_clk[7]_i_2__0_n_0 ),
        .I1(cnt_clk_reg__0[6]),
        .I2(\cnt_clk[7]_i_3__0_n_0 ),
        .I3(cnt_clk_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA8AAAAAAA)) 
    \cnt_clk[7]_i_2__0 
       (.I0(write),
        .I1(\cnt_clk[7]_i_4__0_n_0 ),
        .I2(cnt_clk_reg__0[7]),
        .I3(cnt_clk_reg__0[0]),
        .I4(cnt_clk_reg__0[5]),
        .I5(cnt_clk_reg__0[2]),
        .O(\cnt_clk[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt_clk[7]_i_3__0 
       (.I0(cnt_clk_reg__0[5]),
        .I1(cnt_clk_reg__0[4]),
        .I2(cnt_clk_reg__0[2]),
        .I3(cnt_clk_reg__0[0]),
        .I4(cnt_clk_reg__0[1]),
        .I5(cnt_clk_reg__0[3]),
        .O(\cnt_clk[7]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cnt_clk[7]_i_4__0 
       (.I0(cnt_clk_reg__0[6]),
        .I1(cnt_clk_reg__0[1]),
        .I2(cnt_clk_reg__0[4]),
        .I3(cnt_clk_reg__0[3]),
        .O(\cnt_clk[7]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in__0[0]),
        .Q(cnt_clk_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in__0[1]),
        .Q(cnt_clk_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in__0[2]),
        .Q(cnt_clk_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in__0[3]),
        .Q(cnt_clk_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in__0[4]),
        .Q(cnt_clk_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in__0[5]),
        .Q(cnt_clk_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in__0[6]),
        .Q(cnt_clk_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(p_0_in__0[7]),
        .Q(cnt_clk_reg__0[7]));
  LUT3 #(
    .INIT(8'hBA)) 
    signal_out_i_1__0
       (.I0(button_posedge_reg),
        .I1(signal_out_i_2__0_n_0),
        .I2(write),
        .O(signal_out_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h00004000)) 
    signal_out_i_2__0
       (.I0(cnt_clk_reg__0[2]),
        .I1(cnt_clk_reg__0[5]),
        .I2(cnt_clk_reg__0[0]),
        .I3(cnt_clk_reg__0[7]),
        .I4(\cnt_clk[7]_i_4__0_n_0 ),
        .O(signal_out_i_2__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    signal_out_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(signal_out_i_1__0_n_0),
        .Q(write));
  LUT4 #(
    .INIT(16'h7530)) 
    wr_en_i_1
       (.I0(i2c_end),
        .I1(rd_en_reg),
        .I2(write),
        .I3(wr_en_reg_0),
        .O(wr_en_reg));
endmodule

module ax_debounce
   (button_posedge,
    key_rd_IBUF,
    sys_clk_IBUF_BUFG,
    rst_n);
  output button_posedge;
  input key_rd_IBUF;
  input sys_clk_IBUF_BUFG;
  input rst_n;

  wire DFF1;
  wire DFF2;
  wire button_out_d0;
  wire button_out_i_1_n_0;
  wire button_out_i_2_n_0;
  wire button_out_i_3_n_0;
  wire button_out_i_4_n_0;
  wire button_out_i_5_n_0;
  wire button_out_i_6_n_0;
  wire button_out_i_7_n_0;
  wire button_out_reg_n_0;
  wire button_posedge;
  wire button_posedge_i_1_n_0;
  wire key_rd_IBUF;
  wire [31:1]q_next0;
  wire q_next0_carry__0_n_0;
  wire q_next0_carry__1_n_0;
  wire q_next0_carry__2_n_0;
  wire q_next0_carry__3_n_0;
  wire q_next0_carry__4_n_0;
  wire q_next0_carry__5_n_0;
  wire q_next0_carry_n_0;
  wire [31:0]q_reg;
  wire \q_reg[0]_i_1_n_0 ;
  wire \q_reg[10]_i_1_n_0 ;
  wire \q_reg[11]_i_1_n_0 ;
  wire \q_reg[12]_i_1_n_0 ;
  wire \q_reg[13]_i_1_n_0 ;
  wire \q_reg[14]_i_1_n_0 ;
  wire \q_reg[15]_i_1_n_0 ;
  wire \q_reg[16]_i_1_n_0 ;
  wire \q_reg[17]_i_1_n_0 ;
  wire \q_reg[18]_i_1_n_0 ;
  wire \q_reg[19]_i_1_n_0 ;
  wire \q_reg[1]_i_1_n_0 ;
  wire \q_reg[20]_i_1_n_0 ;
  wire \q_reg[21]_i_1_n_0 ;
  wire \q_reg[22]_i_1_n_0 ;
  wire \q_reg[23]_i_1_n_0 ;
  wire \q_reg[24]_i_1_n_0 ;
  wire \q_reg[25]_i_1_n_0 ;
  wire \q_reg[26]_i_1_n_0 ;
  wire \q_reg[27]_i_1_n_0 ;
  wire \q_reg[28]_i_1_n_0 ;
  wire \q_reg[29]_i_1_n_0 ;
  wire \q_reg[2]_i_1_n_0 ;
  wire \q_reg[30]_i_1_n_0 ;
  wire \q_reg[31]_i_1_n_0 ;
  wire \q_reg[31]_i_2_n_0 ;
  wire \q_reg[31]_i_4_n_0 ;
  wire \q_reg[31]_i_5_n_0 ;
  wire \q_reg[31]_i_6_n_0 ;
  wire \q_reg[31]_i_7_n_0 ;
  wire \q_reg[31]_i_8_n_0 ;
  wire \q_reg[31]_i_9_n_0 ;
  wire \q_reg[3]_i_1_n_0 ;
  wire \q_reg[4]_i_1_n_0 ;
  wire \q_reg[5]_i_1_n_0 ;
  wire \q_reg[6]_i_1_n_0 ;
  wire \q_reg[7]_i_1_n_0 ;
  wire \q_reg[8]_i_1_n_0 ;
  wire \q_reg[9]_i_1_n_0 ;
  wire rst_n;
  wire sys_clk_IBUF_BUFG;
  wire [2:0]NLW_q_next0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_q_next0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_q_next0_carry__6_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    DFF1_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(key_rd_IBUF),
        .Q(DFF1));
  FDCE #(
    .INIT(1'b0)) 
    DFF2_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(DFF1),
        .Q(DFF2));
  FDPE #(
    .INIT(1'b1)) 
    button_out_d0_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_out_reg_n_0),
        .PRE(rst_n),
        .Q(button_out_d0));
  LUT4 #(
    .INIT(16'hBF80)) 
    button_out_i_1
       (.I0(DFF2),
        .I1(button_out_i_2_n_0),
        .I2(button_out_i_3_n_0),
        .I3(button_out_reg_n_0),
        .O(button_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    button_out_i_2
       (.I0(button_out_i_4_n_0),
        .I1(button_out_i_5_n_0),
        .I2(button_out_i_6_n_0),
        .I3(button_out_i_7_n_0),
        .I4(q_reg[0]),
        .I5(q_reg[1]),
        .O(button_out_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    button_out_i_3
       (.I0(q_reg[28]),
        .I1(q_reg[29]),
        .I2(q_reg[26]),
        .I3(q_reg[27]),
        .I4(q_reg[31]),
        .I5(q_reg[30]),
        .O(button_out_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    button_out_i_4
       (.I0(q_reg[22]),
        .I1(q_reg[23]),
        .I2(q_reg[20]),
        .I3(q_reg[21]),
        .I4(q_reg[25]),
        .I5(q_reg[24]),
        .O(button_out_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    button_out_i_5
       (.I0(q_reg[16]),
        .I1(q_reg[17]),
        .I2(q_reg[14]),
        .I3(q_reg[15]),
        .I4(q_reg[19]),
        .I5(q_reg[18]),
        .O(button_out_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    button_out_i_6
       (.I0(q_reg[10]),
        .I1(q_reg[11]),
        .I2(q_reg[8]),
        .I3(q_reg[9]),
        .I4(q_reg[13]),
        .I5(q_reg[12]),
        .O(button_out_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    button_out_i_7
       (.I0(q_reg[5]),
        .I1(q_reg[4]),
        .I2(q_reg[2]),
        .I3(q_reg[3]),
        .I4(q_reg[7]),
        .I5(q_reg[6]),
        .O(button_out_i_7_n_0));
  FDPE #(
    .INIT(1'b1)) 
    button_out_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_out_i_1_n_0),
        .PRE(rst_n),
        .Q(button_out_reg_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    button_posedge_i_1
       (.I0(button_out_reg_n_0),
        .I1(button_out_d0),
        .O(button_posedge_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_posedge_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(button_posedge_i_1_n_0),
        .Q(button_posedge));
  CARRY4 q_next0_carry
       (.CI(1'b0),
        .CO({q_next0_carry_n_0,NLW_q_next0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(q_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[4:1]),
        .S(q_reg[4:1]));
  CARRY4 q_next0_carry__0
       (.CI(q_next0_carry_n_0),
        .CO({q_next0_carry__0_n_0,NLW_q_next0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[8:5]),
        .S(q_reg[8:5]));
  CARRY4 q_next0_carry__1
       (.CI(q_next0_carry__0_n_0),
        .CO({q_next0_carry__1_n_0,NLW_q_next0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[12:9]),
        .S(q_reg[12:9]));
  CARRY4 q_next0_carry__2
       (.CI(q_next0_carry__1_n_0),
        .CO({q_next0_carry__2_n_0,NLW_q_next0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[16:13]),
        .S(q_reg[16:13]));
  CARRY4 q_next0_carry__3
       (.CI(q_next0_carry__2_n_0),
        .CO({q_next0_carry__3_n_0,NLW_q_next0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[20:17]),
        .S(q_reg[20:17]));
  CARRY4 q_next0_carry__4
       (.CI(q_next0_carry__3_n_0),
        .CO({q_next0_carry__4_n_0,NLW_q_next0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[24:21]),
        .S(q_reg[24:21]));
  CARRY4 q_next0_carry__5
       (.CI(q_next0_carry__4_n_0),
        .CO({q_next0_carry__5_n_0,NLW_q_next0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[28:25]),
        .S(q_reg[28:25]));
  CARRY4 q_next0_carry__6
       (.CI(q_next0_carry__5_n_0),
        .CO(NLW_q_next0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_q_next0_carry__6_O_UNCONNECTED[3],q_next0[31:29]}),
        .S({1'b0,q_reg[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \q_reg[0]_i_1 
       (.I0(DFF2),
        .I1(DFF1),
        .I2(q_reg[0]),
        .O(\q_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[10]_i_1 
       (.I0(q_next0[10]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[11]_i_1 
       (.I0(q_next0[11]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[12]_i_1 
       (.I0(q_next0[12]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[13]_i_1 
       (.I0(q_next0[13]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[14]_i_1 
       (.I0(q_next0[14]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[15]_i_1 
       (.I0(q_next0[15]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[16]_i_1 
       (.I0(q_next0[16]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[17]_i_1 
       (.I0(q_next0[17]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[18]_i_1 
       (.I0(q_next0[18]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[19]_i_1 
       (.I0(q_next0[19]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[1]_i_1 
       (.I0(q_next0[1]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[20]_i_1 
       (.I0(q_next0[20]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[21]_i_1 
       (.I0(q_next0[21]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[22]_i_1 
       (.I0(q_next0[22]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[23]_i_1 
       (.I0(q_next0[23]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[24]_i_1 
       (.I0(q_next0[24]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[25]_i_1 
       (.I0(q_next0[25]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[26]_i_1 
       (.I0(q_next0[26]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[27]_i_1 
       (.I0(q_next0[27]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[28]_i_1 
       (.I0(q_next0[28]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[29]_i_1 
       (.I0(q_next0[29]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[2]_i_1 
       (.I0(q_next0[2]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[30]_i_1 
       (.I0(q_next0[30]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q_reg[31]_i_1 
       (.I0(\q_reg[31]_i_4_n_0 ),
        .I1(\q_reg[31]_i_5_n_0 ),
        .I2(\q_reg[31]_i_6_n_0 ),
        .I3(\q_reg[31]_i_7_n_0 ),
        .I4(\q_reg[31]_i_8_n_0 ),
        .I5(\q_reg[31]_i_9_n_0 ),
        .O(\q_reg[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[31]_i_2 
       (.I0(q_next0[31]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \q_reg[31]_i_4 
       (.I0(q_reg[8]),
        .I1(q_reg[9]),
        .I2(q_reg[6]),
        .I3(q_reg[7]),
        .I4(q_reg[4]),
        .I5(q_reg[5]),
        .O(\q_reg[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q_reg[31]_i_5 
       (.I0(q_reg[14]),
        .I1(q_reg[15]),
        .I2(q_reg[12]),
        .I3(q_reg[13]),
        .I4(q_reg[11]),
        .I5(q_reg[10]),
        .O(\q_reg[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q_reg[31]_i_6 
       (.I0(q_reg[20]),
        .I1(q_reg[21]),
        .I2(q_reg[18]),
        .I3(q_reg[19]),
        .I4(q_reg[17]),
        .I5(q_reg[16]),
        .O(\q_reg[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q_reg[31]_i_7 
       (.I0(q_reg[26]),
        .I1(q_reg[27]),
        .I2(q_reg[24]),
        .I3(q_reg[25]),
        .I4(q_reg[23]),
        .I5(q_reg[22]),
        .O(\q_reg[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFE)) 
    \q_reg[31]_i_8 
       (.I0(q_reg[30]),
        .I1(q_reg[31]),
        .I2(DFF1),
        .I3(DFF2),
        .I4(q_reg[29]),
        .I5(q_reg[28]),
        .O(\q_reg[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \q_reg[31]_i_9 
       (.I0(q_reg[1]),
        .I1(q_reg[0]),
        .I2(q_reg[3]),
        .I3(q_reg[2]),
        .O(\q_reg[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[3]_i_1 
       (.I0(q_next0[3]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[4]_i_1 
       (.I0(q_next0[4]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[5]_i_1 
       (.I0(q_next0[5]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[6]_i_1 
       (.I0(q_next0[6]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[7]_i_1 
       (.I0(q_next0[7]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[8]_i_1 
       (.I0(q_next0[8]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[9]_i_1 
       (.I0(q_next0[9]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[0]_i_1_n_0 ),
        .Q(q_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[10] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[10]_i_1_n_0 ),
        .Q(q_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[11] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[11]_i_1_n_0 ),
        .Q(q_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[12] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[12]_i_1_n_0 ),
        .Q(q_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[13] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[13]_i_1_n_0 ),
        .Q(q_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[14] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[14]_i_1_n_0 ),
        .Q(q_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[15] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[15]_i_1_n_0 ),
        .Q(q_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[16] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[16]_i_1_n_0 ),
        .Q(q_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[17] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[17]_i_1_n_0 ),
        .Q(q_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[18] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[18]_i_1_n_0 ),
        .Q(q_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[19] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[19]_i_1_n_0 ),
        .Q(q_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[1]_i_1_n_0 ),
        .Q(q_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[20] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[20]_i_1_n_0 ),
        .Q(q_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[21] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[21]_i_1_n_0 ),
        .Q(q_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[22] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[22]_i_1_n_0 ),
        .Q(q_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[23] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[23]_i_1_n_0 ),
        .Q(q_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[24] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[24]_i_1_n_0 ),
        .Q(q_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[25] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[25]_i_1_n_0 ),
        .Q(q_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[26] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[26]_i_1_n_0 ),
        .Q(q_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[27] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[27]_i_1_n_0 ),
        .Q(q_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[28] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[28]_i_1_n_0 ),
        .Q(q_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[29] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[29]_i_1_n_0 ),
        .Q(q_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[2]_i_1_n_0 ),
        .Q(q_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[30] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[30]_i_1_n_0 ),
        .Q(q_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[31] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[31]_i_2_n_0 ),
        .Q(q_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[3]_i_1_n_0 ),
        .Q(q_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[4]_i_1_n_0 ),
        .Q(q_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[5]_i_1_n_0 ),
        .Q(q_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[6]_i_1_n_0 ),
        .Q(q_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[7]_i_1_n_0 ),
        .Q(q_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[8]_i_1_n_0 ),
        .Q(q_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[9] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[9]_i_1_n_0 ),
        .Q(q_reg[9]));
endmodule

(* ORIG_REF_NAME = "ax_debounce" *) 
module ax_debounce_0
   (signal_out_reg,
    key_wr_IBUF,
    sys_clk_IBUF_BUFG,
    rst_n);
  output signal_out_reg;
  input key_wr_IBUF;
  input sys_clk_IBUF_BUFG;
  input rst_n;

  wire DFF1;
  wire DFF2;
  wire button_out_d0;
  wire button_out_i_1__0_n_0;
  wire button_out_i_2__0_n_0;
  wire button_out_i_3__0_n_0;
  wire button_out_i_4__0_n_0;
  wire button_out_i_5__0_n_0;
  wire button_out_i_6__0_n_0;
  wire button_out_i_7__0_n_0;
  wire button_out_reg_n_0;
  wire button_posedge_i_1__0_n_0;
  wire key_wr_IBUF;
  wire q_next0_carry__0_n_0;
  wire q_next0_carry__0_n_4;
  wire q_next0_carry__0_n_5;
  wire q_next0_carry__0_n_6;
  wire q_next0_carry__0_n_7;
  wire q_next0_carry__1_n_0;
  wire q_next0_carry__1_n_4;
  wire q_next0_carry__1_n_5;
  wire q_next0_carry__1_n_6;
  wire q_next0_carry__1_n_7;
  wire q_next0_carry__2_n_0;
  wire q_next0_carry__2_n_4;
  wire q_next0_carry__2_n_5;
  wire q_next0_carry__2_n_6;
  wire q_next0_carry__2_n_7;
  wire q_next0_carry__3_n_0;
  wire q_next0_carry__3_n_4;
  wire q_next0_carry__3_n_5;
  wire q_next0_carry__3_n_6;
  wire q_next0_carry__3_n_7;
  wire q_next0_carry__4_n_0;
  wire q_next0_carry__4_n_4;
  wire q_next0_carry__4_n_5;
  wire q_next0_carry__4_n_6;
  wire q_next0_carry__4_n_7;
  wire q_next0_carry__5_n_0;
  wire q_next0_carry__5_n_4;
  wire q_next0_carry__5_n_5;
  wire q_next0_carry__5_n_6;
  wire q_next0_carry__5_n_7;
  wire q_next0_carry__6_n_5;
  wire q_next0_carry__6_n_6;
  wire q_next0_carry__6_n_7;
  wire q_next0_carry_n_0;
  wire q_next0_carry_n_4;
  wire q_next0_carry_n_5;
  wire q_next0_carry_n_6;
  wire q_next0_carry_n_7;
  wire \q_reg[0]_i_1__0_n_0 ;
  wire \q_reg[10]_i_1__0_n_0 ;
  wire \q_reg[11]_i_1__0_n_0 ;
  wire \q_reg[12]_i_1__0_n_0 ;
  wire \q_reg[13]_i_1__0_n_0 ;
  wire \q_reg[14]_i_1__0_n_0 ;
  wire \q_reg[15]_i_1__0_n_0 ;
  wire \q_reg[16]_i_1__0_n_0 ;
  wire \q_reg[17]_i_1__0_n_0 ;
  wire \q_reg[18]_i_1__0_n_0 ;
  wire \q_reg[19]_i_1__0_n_0 ;
  wire \q_reg[1]_i_1__0_n_0 ;
  wire \q_reg[20]_i_1__0_n_0 ;
  wire \q_reg[21]_i_1__0_n_0 ;
  wire \q_reg[22]_i_1__0_n_0 ;
  wire \q_reg[23]_i_1__0_n_0 ;
  wire \q_reg[24]_i_1__0_n_0 ;
  wire \q_reg[25]_i_1__0_n_0 ;
  wire \q_reg[26]_i_1__0_n_0 ;
  wire \q_reg[27]_i_1__0_n_0 ;
  wire \q_reg[28]_i_1__0_n_0 ;
  wire \q_reg[29]_i_1__0_n_0 ;
  wire \q_reg[2]_i_1__0_n_0 ;
  wire \q_reg[30]_i_1__0_n_0 ;
  wire \q_reg[31]_i_1__0_n_0 ;
  wire \q_reg[31]_i_2__0_n_0 ;
  wire \q_reg[31]_i_3__0_n_0 ;
  wire \q_reg[31]_i_4__0_n_0 ;
  wire \q_reg[31]_i_5__0_n_0 ;
  wire \q_reg[31]_i_6__0_n_0 ;
  wire \q_reg[31]_i_7__0_n_0 ;
  wire \q_reg[31]_i_8__0_n_0 ;
  wire \q_reg[3]_i_1__0_n_0 ;
  wire \q_reg[4]_i_1__0_n_0 ;
  wire \q_reg[5]_i_1__0_n_0 ;
  wire \q_reg[6]_i_1__0_n_0 ;
  wire \q_reg[7]_i_1__0_n_0 ;
  wire \q_reg[8]_i_1__0_n_0 ;
  wire \q_reg[9]_i_1__0_n_0 ;
  wire \q_reg_reg_n_0_[0] ;
  wire \q_reg_reg_n_0_[10] ;
  wire \q_reg_reg_n_0_[11] ;
  wire \q_reg_reg_n_0_[12] ;
  wire \q_reg_reg_n_0_[13] ;
  wire \q_reg_reg_n_0_[14] ;
  wire \q_reg_reg_n_0_[15] ;
  wire \q_reg_reg_n_0_[16] ;
  wire \q_reg_reg_n_0_[17] ;
  wire \q_reg_reg_n_0_[18] ;
  wire \q_reg_reg_n_0_[19] ;
  wire \q_reg_reg_n_0_[1] ;
  wire \q_reg_reg_n_0_[20] ;
  wire \q_reg_reg_n_0_[21] ;
  wire \q_reg_reg_n_0_[22] ;
  wire \q_reg_reg_n_0_[23] ;
  wire \q_reg_reg_n_0_[24] ;
  wire \q_reg_reg_n_0_[25] ;
  wire \q_reg_reg_n_0_[26] ;
  wire \q_reg_reg_n_0_[27] ;
  wire \q_reg_reg_n_0_[28] ;
  wire \q_reg_reg_n_0_[29] ;
  wire \q_reg_reg_n_0_[2] ;
  wire \q_reg_reg_n_0_[30] ;
  wire \q_reg_reg_n_0_[31] ;
  wire \q_reg_reg_n_0_[3] ;
  wire \q_reg_reg_n_0_[4] ;
  wire \q_reg_reg_n_0_[5] ;
  wire \q_reg_reg_n_0_[6] ;
  wire \q_reg_reg_n_0_[7] ;
  wire \q_reg_reg_n_0_[8] ;
  wire \q_reg_reg_n_0_[9] ;
  wire rst_n;
  wire signal_out_reg;
  wire sys_clk_IBUF_BUFG;
  wire [2:0]NLW_q_next0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_q_next0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_q_next0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_q_next0_carry__6_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    DFF1_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(key_wr_IBUF),
        .Q(DFF1));
  FDCE #(
    .INIT(1'b0)) 
    DFF2_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(DFF1),
        .Q(DFF2));
  FDPE #(
    .INIT(1'b1)) 
    button_out_d0_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_out_reg_n_0),
        .PRE(rst_n),
        .Q(button_out_d0));
  LUT4 #(
    .INIT(16'hBF80)) 
    button_out_i_1__0
       (.I0(DFF2),
        .I1(button_out_i_2__0_n_0),
        .I2(button_out_i_3__0_n_0),
        .I3(button_out_reg_n_0),
        .O(button_out_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    button_out_i_2__0
       (.I0(button_out_i_4__0_n_0),
        .I1(button_out_i_5__0_n_0),
        .I2(button_out_i_6__0_n_0),
        .I3(button_out_i_7__0_n_0),
        .I4(\q_reg_reg_n_0_[0] ),
        .I5(\q_reg_reg_n_0_[1] ),
        .O(button_out_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    button_out_i_3__0
       (.I0(\q_reg_reg_n_0_[28] ),
        .I1(\q_reg_reg_n_0_[29] ),
        .I2(\q_reg_reg_n_0_[26] ),
        .I3(\q_reg_reg_n_0_[27] ),
        .I4(\q_reg_reg_n_0_[31] ),
        .I5(\q_reg_reg_n_0_[30] ),
        .O(button_out_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    button_out_i_4__0
       (.I0(\q_reg_reg_n_0_[22] ),
        .I1(\q_reg_reg_n_0_[23] ),
        .I2(\q_reg_reg_n_0_[20] ),
        .I3(\q_reg_reg_n_0_[21] ),
        .I4(\q_reg_reg_n_0_[25] ),
        .I5(\q_reg_reg_n_0_[24] ),
        .O(button_out_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    button_out_i_5__0
       (.I0(\q_reg_reg_n_0_[16] ),
        .I1(\q_reg_reg_n_0_[17] ),
        .I2(\q_reg_reg_n_0_[14] ),
        .I3(\q_reg_reg_n_0_[15] ),
        .I4(\q_reg_reg_n_0_[19] ),
        .I5(\q_reg_reg_n_0_[18] ),
        .O(button_out_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    button_out_i_6__0
       (.I0(\q_reg_reg_n_0_[10] ),
        .I1(\q_reg_reg_n_0_[11] ),
        .I2(\q_reg_reg_n_0_[8] ),
        .I3(\q_reg_reg_n_0_[9] ),
        .I4(\q_reg_reg_n_0_[13] ),
        .I5(\q_reg_reg_n_0_[12] ),
        .O(button_out_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    button_out_i_7__0
       (.I0(\q_reg_reg_n_0_[5] ),
        .I1(\q_reg_reg_n_0_[4] ),
        .I2(\q_reg_reg_n_0_[2] ),
        .I3(\q_reg_reg_n_0_[3] ),
        .I4(\q_reg_reg_n_0_[7] ),
        .I5(\q_reg_reg_n_0_[6] ),
        .O(button_out_i_7__0_n_0));
  FDPE #(
    .INIT(1'b1)) 
    button_out_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_out_i_1__0_n_0),
        .PRE(rst_n),
        .Q(button_out_reg_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    button_posedge_i_1__0
       (.I0(button_out_reg_n_0),
        .I1(button_out_d0),
        .O(button_posedge_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    button_posedge_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(button_posedge_i_1__0_n_0),
        .Q(signal_out_reg));
  CARRY4 q_next0_carry
       (.CI(1'b0),
        .CO({q_next0_carry_n_0,NLW_q_next0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\q_reg_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry_n_4,q_next0_carry_n_5,q_next0_carry_n_6,q_next0_carry_n_7}),
        .S({\q_reg_reg_n_0_[4] ,\q_reg_reg_n_0_[3] ,\q_reg_reg_n_0_[2] ,\q_reg_reg_n_0_[1] }));
  CARRY4 q_next0_carry__0
       (.CI(q_next0_carry_n_0),
        .CO({q_next0_carry__0_n_0,NLW_q_next0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__0_n_4,q_next0_carry__0_n_5,q_next0_carry__0_n_6,q_next0_carry__0_n_7}),
        .S({\q_reg_reg_n_0_[8] ,\q_reg_reg_n_0_[7] ,\q_reg_reg_n_0_[6] ,\q_reg_reg_n_0_[5] }));
  CARRY4 q_next0_carry__1
       (.CI(q_next0_carry__0_n_0),
        .CO({q_next0_carry__1_n_0,NLW_q_next0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__1_n_4,q_next0_carry__1_n_5,q_next0_carry__1_n_6,q_next0_carry__1_n_7}),
        .S({\q_reg_reg_n_0_[12] ,\q_reg_reg_n_0_[11] ,\q_reg_reg_n_0_[10] ,\q_reg_reg_n_0_[9] }));
  CARRY4 q_next0_carry__2
       (.CI(q_next0_carry__1_n_0),
        .CO({q_next0_carry__2_n_0,NLW_q_next0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__2_n_4,q_next0_carry__2_n_5,q_next0_carry__2_n_6,q_next0_carry__2_n_7}),
        .S({\q_reg_reg_n_0_[16] ,\q_reg_reg_n_0_[15] ,\q_reg_reg_n_0_[14] ,\q_reg_reg_n_0_[13] }));
  CARRY4 q_next0_carry__3
       (.CI(q_next0_carry__2_n_0),
        .CO({q_next0_carry__3_n_0,NLW_q_next0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__3_n_4,q_next0_carry__3_n_5,q_next0_carry__3_n_6,q_next0_carry__3_n_7}),
        .S({\q_reg_reg_n_0_[20] ,\q_reg_reg_n_0_[19] ,\q_reg_reg_n_0_[18] ,\q_reg_reg_n_0_[17] }));
  CARRY4 q_next0_carry__4
       (.CI(q_next0_carry__3_n_0),
        .CO({q_next0_carry__4_n_0,NLW_q_next0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__4_n_4,q_next0_carry__4_n_5,q_next0_carry__4_n_6,q_next0_carry__4_n_7}),
        .S({\q_reg_reg_n_0_[24] ,\q_reg_reg_n_0_[23] ,\q_reg_reg_n_0_[22] ,\q_reg_reg_n_0_[21] }));
  CARRY4 q_next0_carry__5
       (.CI(q_next0_carry__4_n_0),
        .CO({q_next0_carry__5_n_0,NLW_q_next0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__5_n_4,q_next0_carry__5_n_5,q_next0_carry__5_n_6,q_next0_carry__5_n_7}),
        .S({\q_reg_reg_n_0_[28] ,\q_reg_reg_n_0_[27] ,\q_reg_reg_n_0_[26] ,\q_reg_reg_n_0_[25] }));
  CARRY4 q_next0_carry__6
       (.CI(q_next0_carry__5_n_0),
        .CO(NLW_q_next0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_q_next0_carry__6_O_UNCONNECTED[3],q_next0_carry__6_n_5,q_next0_carry__6_n_6,q_next0_carry__6_n_7}),
        .S({1'b0,\q_reg_reg_n_0_[31] ,\q_reg_reg_n_0_[30] ,\q_reg_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \q_reg[0]_i_1__0 
       (.I0(DFF2),
        .I1(DFF1),
        .I2(\q_reg_reg_n_0_[0] ),
        .O(\q_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[10]_i_1__0 
       (.I0(q_next0_carry__1_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[11]_i_1__0 
       (.I0(q_next0_carry__1_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[12]_i_1__0 
       (.I0(q_next0_carry__1_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[13]_i_1__0 
       (.I0(q_next0_carry__2_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[14]_i_1__0 
       (.I0(q_next0_carry__2_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[15]_i_1__0 
       (.I0(q_next0_carry__2_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[16]_i_1__0 
       (.I0(q_next0_carry__2_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[17]_i_1__0 
       (.I0(q_next0_carry__3_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[18]_i_1__0 
       (.I0(q_next0_carry__3_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[19]_i_1__0 
       (.I0(q_next0_carry__3_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[1]_i_1__0 
       (.I0(q_next0_carry_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[20]_i_1__0 
       (.I0(q_next0_carry__3_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[21]_i_1__0 
       (.I0(q_next0_carry__4_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[22]_i_1__0 
       (.I0(q_next0_carry__4_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[23]_i_1__0 
       (.I0(q_next0_carry__4_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[24]_i_1__0 
       (.I0(q_next0_carry__4_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[25]_i_1__0 
       (.I0(q_next0_carry__5_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[26]_i_1__0 
       (.I0(q_next0_carry__5_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[27]_i_1__0 
       (.I0(q_next0_carry__5_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[28]_i_1__0 
       (.I0(q_next0_carry__5_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[29]_i_1__0 
       (.I0(q_next0_carry__6_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[2]_i_1__0 
       (.I0(q_next0_carry_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[30]_i_1__0 
       (.I0(q_next0_carry__6_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[30]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q_reg[31]_i_1__0 
       (.I0(\q_reg[31]_i_3__0_n_0 ),
        .I1(\q_reg[31]_i_4__0_n_0 ),
        .I2(\q_reg[31]_i_5__0_n_0 ),
        .I3(\q_reg[31]_i_6__0_n_0 ),
        .I4(\q_reg[31]_i_7__0_n_0 ),
        .I5(\q_reg[31]_i_8__0_n_0 ),
        .O(\q_reg[31]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[31]_i_2__0 
       (.I0(q_next0_carry__6_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[31]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    \q_reg[31]_i_3__0 
       (.I0(\q_reg_reg_n_0_[8] ),
        .I1(\q_reg_reg_n_0_[9] ),
        .I2(\q_reg_reg_n_0_[6] ),
        .I3(\q_reg_reg_n_0_[7] ),
        .I4(\q_reg_reg_n_0_[4] ),
        .I5(\q_reg_reg_n_0_[5] ),
        .O(\q_reg[31]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q_reg[31]_i_4__0 
       (.I0(\q_reg_reg_n_0_[14] ),
        .I1(\q_reg_reg_n_0_[15] ),
        .I2(\q_reg_reg_n_0_[12] ),
        .I3(\q_reg_reg_n_0_[13] ),
        .I4(\q_reg_reg_n_0_[11] ),
        .I5(\q_reg_reg_n_0_[10] ),
        .O(\q_reg[31]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q_reg[31]_i_5__0 
       (.I0(\q_reg_reg_n_0_[20] ),
        .I1(\q_reg_reg_n_0_[21] ),
        .I2(\q_reg_reg_n_0_[18] ),
        .I3(\q_reg_reg_n_0_[19] ),
        .I4(\q_reg_reg_n_0_[17] ),
        .I5(\q_reg_reg_n_0_[16] ),
        .O(\q_reg[31]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \q_reg[31]_i_6__0 
       (.I0(\q_reg_reg_n_0_[26] ),
        .I1(\q_reg_reg_n_0_[27] ),
        .I2(\q_reg_reg_n_0_[24] ),
        .I3(\q_reg_reg_n_0_[25] ),
        .I4(\q_reg_reg_n_0_[23] ),
        .I5(\q_reg_reg_n_0_[22] ),
        .O(\q_reg[31]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFE)) 
    \q_reg[31]_i_7__0 
       (.I0(\q_reg_reg_n_0_[30] ),
        .I1(\q_reg_reg_n_0_[31] ),
        .I2(DFF1),
        .I3(DFF2),
        .I4(\q_reg_reg_n_0_[29] ),
        .I5(\q_reg_reg_n_0_[28] ),
        .O(\q_reg[31]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \q_reg[31]_i_8__0 
       (.I0(\q_reg_reg_n_0_[1] ),
        .I1(\q_reg_reg_n_0_[0] ),
        .I2(\q_reg_reg_n_0_[3] ),
        .I3(\q_reg_reg_n_0_[2] ),
        .O(\q_reg[31]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[3]_i_1__0 
       (.I0(q_next0_carry_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[4]_i_1__0 
       (.I0(q_next0_carry_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[5]_i_1__0 
       (.I0(q_next0_carry__0_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[6]_i_1__0 
       (.I0(q_next0_carry__0_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[7]_i_1__0 
       (.I0(q_next0_carry__0_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[8]_i_1__0 
       (.I0(q_next0_carry__0_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[9]_i_1__0 
       (.I0(q_next0_carry__1_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[9]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[0]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[10] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[10]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[11] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[11]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[12] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[12]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[13] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[13]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[14] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[14]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[15] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[15]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[16] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[16]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[17] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[17]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[18] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[18]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[19] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[19]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[1]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[20] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[20]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[21] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[21]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[22] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[22]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[23] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[23]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[24] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[24]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[25] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[25]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[26] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[26]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[27] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[27]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[28] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[28]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[29] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[29]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[2]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[30] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[30]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[31] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[31]_i_2__0_n_0 ),
        .Q(\q_reg_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[3]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[4]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[5]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[6]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[7]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[8] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[8]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[9] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[9]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[9] ));
endmodule

module i2c_ctrl
   (i2c_end,
    clk,
    E,
    \data_out_reg[3] ,
    i2c_scl_OBUF,
    \cnt_bit_reg[2]_0 ,
    \cnt_bit_reg[2]_1 ,
    \cnt_bit_reg[2]_2 ,
    D,
    i2c_sda_TRI,
    i2c_sda_OBUF,
    CLK,
    rst_n,
    sys_clk_IBUF_BUFG,
    wr_en,
    rd_en,
    \cnt_bit_reg[2]_3 ,
    \cnt_bit_reg[2]_4 ,
    \cnt_bit_reg[2]_5 ,
    i2c_start,
    S,
    i2c_sda_IBUF);
  output i2c_end;
  output clk;
  output [0:0]E;
  output [0:0]\data_out_reg[3] ;
  output i2c_scl_OBUF;
  output \cnt_bit_reg[2]_0 ;
  output \cnt_bit_reg[2]_1 ;
  output \cnt_bit_reg[2]_2 ;
  output [3:0]D;
  output i2c_sda_TRI;
  output i2c_sda_OBUF;
  input CLK;
  input rst_n;
  input sys_clk_IBUF_BUFG;
  input wr_en;
  input rd_en;
  input \cnt_bit_reg[2]_3 ;
  input \cnt_bit_reg[2]_4 ;
  input \cnt_bit_reg[2]_5 ;
  input i2c_start;
  input [2:0]S;
  input i2c_sda_IBUF;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [2:0]S;
  wire ack;
  wire ack_cnt_2;
  wire [2:0]ack_next;
  wire \ack_next[0]_i_1_n_0 ;
  wire \ack_next[0]_i_2_n_0 ;
  wire \ack_next[0]_i_3_n_0 ;
  wire \ack_next[1]_i_1_n_0 ;
  wire \ack_next[1]_i_2_n_0 ;
  wire \ack_next[1]_i_3_n_0 ;
  wire \ack_next[1]_i_4_n_0 ;
  wire \ack_next[2]_i_1_n_0 ;
  wire \ack_next[2]_i_2_n_0 ;
  wire \ack_next[2]_i_3_n_0 ;
  wire \ack_next[2]_i_4_n_0 ;
  wire \ack_next[2]_i_5_n_0 ;
  wire \ack_next[2]_i_6_n_0 ;
  wire \ack_next[2]_i_7_n_0 ;
  wire clk;
  wire \cnt_B[5]_i_2_n_0 ;
  wire \cnt_B[6]_i_1_n_0 ;
  wire \cnt_B[6]_i_3_n_0 ;
  wire [6:0]cnt_B_reg__0;
  wire cnt_bit;
  wire \cnt_bit[0]_i_1_n_0 ;
  wire \cnt_bit[1]_i_1_n_0 ;
  wire \cnt_bit[2]_i_1_n_0 ;
  wire \cnt_bit[2]_i_2_n_0 ;
  wire \cnt_bit_reg[2]_0 ;
  wire \cnt_bit_reg[2]_1 ;
  wire \cnt_bit_reg[2]_2 ;
  wire \cnt_bit_reg[2]_3 ;
  wire \cnt_bit_reg[2]_4 ;
  wire \cnt_bit_reg[2]_5 ;
  wire [7:0]cnt_clk;
  wire \cnt_clk[3]_i_2_n_0 ;
  wire \cnt_clk[5]_i_2__0_n_0 ;
  wire \cnt_clk[7]_i_2__1_n_0 ;
  wire [7:0]cnt_clk_0;
  wire [1:0]cnt_scl;
  wire \cnt_scl[0]_i_1_n_0 ;
  wire \cnt_scl[1]_i_1_n_0 ;
  wire [0:0]\data_out_reg[3] ;
  wire i2c_clk_i_1_n_0;
  wire i2c_end;
  wire i2c_end0;
  wire i2c_end_i_2_n_0;
  wire i2c_end_i_3_n_0;
  wire i2c_scl_OBUF;
  wire i2c_sda_IBUF;
  wire i2c_sda_IOBUF_inst_i_13_n_0;
  wire i2c_sda_IOBUF_inst_i_14_n_0;
  wire i2c_sda_IOBUF_inst_i_3_n_0;
  wire i2c_sda_IOBUF_inst_i_4_n_0;
  wire i2c_sda_IOBUF_inst_i_6_n_0;
  wire i2c_sda_IOBUF_inst_i_7_n_0;
  wire i2c_sda_IOBUF_inst_i_8_n_0;
  wire i2c_sda_IOBUF_inst_i_9_n_0;
  wire i2c_sda_OBUF;
  wire i2c_sda_TRI;
  wire i2c_start;
  wire [6:0]p_0_in__2;
  wire \rd_data[0]_i_1_n_0 ;
  wire \rd_data[0]_i_2_n_0 ;
  wire \rd_data[0]_i_3_n_0 ;
  wire \rd_data[1]_i_1_n_0 ;
  wire \rd_data[1]_i_2_n_0 ;
  wire \rd_data[2]_i_1_n_0 ;
  wire \rd_data[2]_i_2_n_0 ;
  wire \rd_data[3]_i_1_n_0 ;
  wire \rd_data[3]_i_2_n_0 ;
  wire \rd_data[3]_i_3_n_0 ;
  wire \rd_data[3]_i_4_n_0 ;
  wire rd_en;
  wire re_wr_reg_i_1_n_0;
  wire re_wr_reg_i_2_n_0;
  wire re_wr_reg_i_3_n_0;
  wire re_wr_reg_reg_n_0;
  wire rst_n;
  wire [3:0]state;
  wire \state[0]_i_10_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire \state[0]_i_8_n_0 ;
  wire \state[0]_i_9_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire \state_reg[0]_i_2_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire sys_clk_IBUF_BUFG;
  wire wr_en;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    ack_i_1
       (.I0(i2c_sda_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(ack_cnt_2));
  LUT6 #(
    .INIT(64'hFFBABBBB00ABBBBB)) 
    \ack_next[0]_i_1 
       (.I0(\ack_next[1]_i_3_n_0 ),
        .I1(\ack_next[0]_i_2_n_0 ),
        .I2(\state[0]_i_7_n_0 ),
        .I3(\ack_next[2]_i_4_n_0 ),
        .I4(\ack_next[2]_i_5_n_0 ),
        .I5(ack_next[0]),
        .O(\ack_next[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00440044004400F4)) 
    \ack_next[0]_i_2 
       (.I0(\ack_next[0]_i_3_n_0 ),
        .I1(\state[3]_i_4_n_0 ),
        .I2(ack_next[0]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\ack_next[2]_i_7_n_0 ),
        .O(\ack_next[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \ack_next[0]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .O(\ack_next[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0B0A0A000E0A0A)) 
    \ack_next[1]_i_1 
       (.I0(\ack_next[1]_i_2_n_0 ),
        .I1(\ack_next[2]_i_2_n_0 ),
        .I2(\ack_next[1]_i_3_n_0 ),
        .I3(\ack_next[2]_i_4_n_0 ),
        .I4(\ack_next[2]_i_5_n_0 ),
        .I5(ack_next[1]),
        .O(\ack_next[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00004040000040FF)) 
    \ack_next[1]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[3]_i_4_n_0 ),
        .I3(\ack_next[1]_i_4_n_0 ),
        .I4(\state[0]_i_3_n_0 ),
        .I5(\ack_next[2]_i_7_n_0 ),
        .O(\ack_next[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \ack_next[1]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[3]_i_4_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .I5(re_wr_reg_reg_n_0),
        .O(\ack_next[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \ack_next[1]_i_4 
       (.I0(ack_next[0]),
        .I1(ack_next[1]),
        .O(\ack_next[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBF0F000F4F0F0)) 
    \ack_next[2]_i_1 
       (.I0(ack_next[1]),
        .I1(\ack_next[2]_i_2_n_0 ),
        .I2(\ack_next[2]_i_3_n_0 ),
        .I3(\ack_next[2]_i_4_n_0 ),
        .I4(\ack_next[2]_i_5_n_0 ),
        .I5(ack_next[2]),
        .O(\ack_next[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    \ack_next[2]_i_2 
       (.I0(ack_next[0]),
        .I1(\state[0]_i_10_n_0 ),
        .I2(cnt_B_reg__0[2]),
        .I3(cnt_B_reg__0[6]),
        .I4(cnt_B_reg__0[5]),
        .O(\ack_next[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00004040000040FF)) 
    \ack_next[2]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[3]_i_4_n_0 ),
        .I3(\ack_next[2]_i_6_n_0 ),
        .I4(\state[0]_i_3_n_0 ),
        .I5(\ack_next[2]_i_7_n_0 ),
        .O(\ack_next[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \ack_next[2]_i_4 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[3]_i_4_n_0 ),
        .O(\ack_next[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEF3FFFFFFFFFF)) 
    \ack_next[2]_i_5 
       (.I0(ack),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(re_wr_reg_reg_n_0),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[1]_i_5_n_0 ),
        .O(\ack_next[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \ack_next[2]_i_6 
       (.I0(ack_next[2]),
        .I1(ack_next[1]),
        .I2(ack_next[0]),
        .O(\ack_next[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    \ack_next[2]_i_7 
       (.I0(cnt_scl[1]),
        .I1(cnt_scl[0]),
        .I2(\state_reg_n_0_[0] ),
        .I3(ack),
        .I4(\state_reg_n_0_[1] ),
        .O(\ack_next[2]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ack_next_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\ack_next[0]_i_1_n_0 ),
        .Q(ack_next[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ack_next_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\ack_next[1]_i_1_n_0 ),
        .Q(ack_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ack_next_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\ack_next[2]_i_1_n_0 ),
        .Q(ack_next[2]));
  FDPE #(
    .INIT(1'b1)) 
    ack_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ack_cnt_2),
        .PRE(rst_n),
        .Q(ack));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_B[0]_i_1 
       (.I0(\rd_data[0]_i_2_n_0 ),
        .I1(cnt_B_reg__0[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_B[1]_i_1 
       (.I0(\rd_data[0]_i_2_n_0 ),
        .I1(cnt_B_reg__0[1]),
        .I2(cnt_B_reg__0[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_B[2]_i_1 
       (.I0(\rd_data[0]_i_2_n_0 ),
        .I1(cnt_B_reg__0[0]),
        .I2(cnt_B_reg__0[1]),
        .I3(cnt_B_reg__0[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_B[3]_i_1 
       (.I0(\rd_data[0]_i_2_n_0 ),
        .I1(cnt_B_reg__0[1]),
        .I2(cnt_B_reg__0[0]),
        .I3(cnt_B_reg__0[2]),
        .I4(cnt_B_reg__0[3]),
        .O(p_0_in__2[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_B[4]_i_1 
       (.I0(\rd_data[0]_i_2_n_0 ),
        .I1(cnt_B_reg__0[2]),
        .I2(cnt_B_reg__0[0]),
        .I3(cnt_B_reg__0[1]),
        .I4(cnt_B_reg__0[3]),
        .I5(cnt_B_reg__0[4]),
        .O(p_0_in__2[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \cnt_B[5]_i_1 
       (.I0(\rd_data[0]_i_2_n_0 ),
        .I1(\cnt_B[5]_i_2_n_0 ),
        .I2(cnt_B_reg__0[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_B[5]_i_2 
       (.I0(cnt_B_reg__0[3]),
        .I1(cnt_B_reg__0[1]),
        .I2(cnt_B_reg__0[0]),
        .I3(cnt_B_reg__0[2]),
        .I4(cnt_B_reg__0[4]),
        .O(\cnt_B[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \cnt_B[6]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\rd_data[0]_i_2_n_0 ),
        .O(\cnt_B[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \cnt_B[6]_i_2 
       (.I0(\rd_data[0]_i_2_n_0 ),
        .I1(\cnt_B[6]_i_3_n_0 ),
        .I2(cnt_B_reg__0[6]),
        .O(p_0_in__2[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_B[6]_i_3 
       (.I0(cnt_B_reg__0[4]),
        .I1(cnt_B_reg__0[2]),
        .I2(cnt_B_reg__0[0]),
        .I3(cnt_B_reg__0[1]),
        .I4(cnt_B_reg__0[3]),
        .I5(cnt_B_reg__0[5]),
        .O(\cnt_B[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_B_reg[0] 
       (.C(CLK),
        .CE(\cnt_B[6]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in__2[0]),
        .Q(cnt_B_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_B_reg[1] 
       (.C(CLK),
        .CE(\cnt_B[6]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in__2[1]),
        .Q(cnt_B_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_B_reg[2] 
       (.C(CLK),
        .CE(\cnt_B[6]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in__2[2]),
        .Q(cnt_B_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_B_reg[3] 
       (.C(CLK),
        .CE(\cnt_B[6]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in__2[3]),
        .Q(cnt_B_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_B_reg[4] 
       (.C(CLK),
        .CE(\cnt_B[6]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in__2[4]),
        .Q(cnt_B_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_B_reg[5] 
       (.C(CLK),
        .CE(\cnt_B[6]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in__2[5]),
        .Q(cnt_B_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_B_reg[6] 
       (.C(CLK),
        .CE(\cnt_B[6]_i_1_n_0 ),
        .CLR(rst_n),
        .D(p_0_in__2[6]),
        .Q(cnt_B_reg__0[6]));
  LUT6 #(
    .INIT(64'h00005455AAAAAAAA)) 
    \cnt_bit[0]_i_1 
       (.I0(\cnt_bit[2]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state[3]_i_4_n_0 ),
        .I5(\cnt_bit_reg[2]_2 ),
        .O(\cnt_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \cnt_bit[1]_i_1 
       (.I0(\cnt_bit[2]_i_2_n_0 ),
        .I1(\cnt_bit_reg[2]_2 ),
        .I2(cnt_bit),
        .I3(\cnt_bit_reg[2]_1 ),
        .O(\cnt_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h2AFF8000)) 
    \cnt_bit[2]_i_1 
       (.I0(\cnt_bit[2]_i_2_n_0 ),
        .I1(\cnt_bit_reg[2]_2 ),
        .I2(\cnt_bit_reg[2]_1 ),
        .I3(cnt_bit),
        .I4(\cnt_bit_reg[2]_0 ),
        .O(\cnt_bit[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0800080808000800)) 
    \cnt_bit[2]_i_2 
       (.I0(cnt_scl[1]),
        .I1(cnt_scl[0]),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\cnt_bit[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20232220)) 
    \cnt_bit[2]_i_3 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[3]_i_4_n_0 ),
        .O(cnt_bit));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_bit[0]_i_1_n_0 ),
        .Q(\cnt_bit_reg[2]_2 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_bit[1]_i_1_n_0 ),
        .Q(\cnt_bit_reg[2]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_bit[2]_i_1_n_0 ),
        .Q(\cnt_bit_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk[0]_i_1__1 
       (.I0(cnt_clk[0]),
        .O(cnt_clk_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00FFBF00)) 
    \cnt_clk[1]_i_1__1 
       (.I0(\cnt_clk[3]_i_2_n_0 ),
        .I1(cnt_clk[3]),
        .I2(cnt_clk[2]),
        .I3(cnt_clk[0]),
        .I4(cnt_clk[1]),
        .O(cnt_clk_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h3C34CCCC)) 
    \cnt_clk[2]_i_1__1 
       (.I0(cnt_clk[3]),
        .I1(cnt_clk[2]),
        .I2(cnt_clk[1]),
        .I3(\cnt_clk[3]_i_2_n_0 ),
        .I4(cnt_clk[0]),
        .O(cnt_clk_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h6C64CCCC)) 
    \cnt_clk[3]_i_1__1 
       (.I0(cnt_clk[2]),
        .I1(cnt_clk[3]),
        .I2(cnt_clk[1]),
        .I3(\cnt_clk[3]_i_2_n_0 ),
        .I4(cnt_clk[0]),
        .O(cnt_clk_0[3]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \cnt_clk[3]_i_2 
       (.I0(cnt_clk[5]),
        .I1(cnt_clk[4]),
        .I2(cnt_clk[7]),
        .I3(cnt_clk[6]),
        .O(\cnt_clk[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFFF00EF00)) 
    \cnt_clk[4]_i_1__1 
       (.I0(cnt_clk[7]),
        .I1(cnt_clk[6]),
        .I2(cnt_clk[5]),
        .I3(cnt_clk[4]),
        .I4(\cnt_clk[5]_i_2__0_n_0 ),
        .I5(cnt_clk[1]),
        .O(cnt_clk_0[4]));
  LUT6 #(
    .INIT(64'hAAFEFFFF55000000)) 
    \cnt_clk[5]_i_1__1 
       (.I0(\cnt_clk[5]_i_2__0_n_0 ),
        .I1(cnt_clk[7]),
        .I2(cnt_clk[6]),
        .I3(cnt_clk[1]),
        .I4(cnt_clk[4]),
        .I5(cnt_clk[5]),
        .O(cnt_clk_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_clk[5]_i_2__0 
       (.I0(cnt_clk[3]),
        .I1(cnt_clk[2]),
        .I2(cnt_clk[0]),
        .O(\cnt_clk[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \cnt_clk[6]_i_1__1 
       (.I0(cnt_clk[4]),
        .I1(cnt_clk[5]),
        .I2(\cnt_clk[7]_i_2__1_n_0 ),
        .I3(cnt_clk[6]),
        .O(cnt_clk_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \cnt_clk[7]_i_1__1 
       (.I0(cnt_clk[6]),
        .I1(\cnt_clk[7]_i_2__1_n_0 ),
        .I2(cnt_clk[5]),
        .I3(cnt_clk[4]),
        .I4(cnt_clk[7]),
        .O(cnt_clk_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_clk[7]_i_2__1 
       (.I0(cnt_clk[0]),
        .I1(cnt_clk[2]),
        .I2(cnt_clk[3]),
        .I3(cnt_clk[1]),
        .O(\cnt_clk[7]_i_2__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[0] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[0]),
        .Q(cnt_clk[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[1] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[1]),
        .Q(cnt_clk[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[2] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[2]),
        .Q(cnt_clk[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[3] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[3]),
        .Q(cnt_clk[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[4] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[4]),
        .Q(cnt_clk[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[5] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[5]),
        .Q(cnt_clk[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[6] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[6]),
        .Q(cnt_clk[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[7] 
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[7]),
        .Q(cnt_clk[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    \cnt_scl[0]_i_1 
       (.I0(cnt_scl[0]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .O(\cnt_scl[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFEFFFE0000)) 
    \cnt_scl[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(cnt_scl[1]),
        .I5(cnt_scl[0]),
        .O(\cnt_scl[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_scl_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_scl[0]_i_1_n_0 ),
        .Q(cnt_scl[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_scl_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_scl[1]_i_1_n_0 ),
        .Q(cnt_scl[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[3]_i_1 
       (.I0(i2c_end),
        .I1(rd_en),
        .O(\data_out_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00004000)) 
    i2c_clk_i_1
       (.I0(\cnt_clk[3]_i_2_n_0 ),
        .I1(cnt_clk[0]),
        .I2(cnt_clk[2]),
        .I3(cnt_clk[3]),
        .I4(cnt_clk[1]),
        .I5(clk),
        .O(i2c_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    i2c_clk_reg
       (.C(sys_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(i2c_clk_i_1_n_0),
        .Q(clk));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    i2c_end_i_1
       (.I0(i2c_end_i_2_n_0),
        .I1(i2c_end_i_3_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(cnt_scl[0]),
        .I5(cnt_scl[1]),
        .O(i2c_end0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    i2c_end_i_2
       (.I0(\cnt_bit_reg[2]_0 ),
        .I1(\cnt_bit_reg[2]_1 ),
        .I2(\cnt_bit_reg[2]_2 ),
        .O(i2c_end_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i2c_end_i_3
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .O(i2c_end_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    i2c_end_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(i2c_end0),
        .Q(i2c_end));
  LUT6 #(
    .INIT(64'hFFFDD55FFFFEEAAB)) 
    i2c_scl_OBUF_inst_i_1
       (.I0(cnt_scl[0]),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(cnt_scl[1]),
        .O(i2c_scl_OBUF));
  LUT2 #(
    .INIT(4'h8)) 
    i2c_sda_IOBUF_inst_i_1
       (.I0(i2c_sda_IOBUF_inst_i_3_n_0),
        .I1(i2c_sda_IOBUF_inst_i_4_n_0),
        .O(i2c_sda_OBUF));
  LUT6 #(
    .INIT(64'hF755F75FF7F5F7FF)) 
    i2c_sda_IOBUF_inst_i_13
       (.I0(\cnt_bit_reg[2]_0 ),
        .I1(S[2]),
        .I2(\cnt_bit_reg[2]_2 ),
        .I3(\cnt_bit_reg[2]_1 ),
        .I4(S[0]),
        .I5(S[1]),
        .O(i2c_sda_IOBUF_inst_i_13_n_0));
  LUT6 #(
    .INIT(64'h4500000000FF00FF)) 
    i2c_sda_IOBUF_inst_i_14
       (.I0(wr_en),
        .I1(re_wr_reg_reg_n_0),
        .I2(rd_en),
        .I3(\cnt_bit_reg[2]_0 ),
        .I4(\cnt_bit_reg[2]_1 ),
        .I5(\cnt_bit_reg[2]_2 ),
        .O(i2c_sda_IOBUF_inst_i_14_n_0));
  LUT6 #(
    .INIT(64'hBFB0BFBFBFB0B0B0)) 
    i2c_sda_IOBUF_inst_i_3
       (.I0(\state[0]_i_7_n_0 ),
        .I1(i2c_sda_IOBUF_inst_i_6_n_0),
        .I2(\state_reg_n_0_[3] ),
        .I3(i2c_sda_IOBUF_inst_i_7_n_0),
        .I4(\state_reg_n_0_[2] ),
        .I5(i2c_sda_IOBUF_inst_i_8_n_0),
        .O(i2c_sda_IOBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFACFFFFFFFFF)) 
    i2c_sda_IOBUF_inst_i_4
       (.I0(wr_en),
        .I1(\state[3]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[1] ),
        .O(i2c_sda_IOBUF_inst_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    i2c_sda_IOBUF_inst_i_5
       (.I0(cnt_scl[0]),
        .I1(cnt_scl[1]),
        .I2(\cnt_bit_reg[2]_0 ),
        .I3(\cnt_bit_reg[2]_1 ),
        .I4(\cnt_bit_reg[2]_2 ),
        .O(i2c_sda_TRI));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h01)) 
    i2c_sda_IOBUF_inst_i_6
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(i2c_sda_IOBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_7
       (.I0(i2c_sda_IOBUF_inst_i_9_n_0),
        .I1(\cnt_bit_reg[2]_3 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\cnt_bit_reg[2]_4 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\cnt_bit_reg[2]_5 ),
        .O(i2c_sda_IOBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000DDDD0FFFFFFF)) 
    i2c_sda_IOBUF_inst_i_8
       (.I0(i2c_sda_IOBUF_inst_i_13_n_0),
        .I1(i2c_sda_IOBUF_inst_i_14_n_0),
        .I2(cnt_scl[1]),
        .I3(cnt_scl[0]),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(i2c_sda_IOBUF_inst_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    i2c_sda_IOBUF_inst_i_9
       (.I0(cnt_scl[1]),
        .I1(cnt_scl[0]),
        .I2(\cnt_bit_reg[2]_0 ),
        .I3(\cnt_bit_reg[2]_2 ),
        .I4(\cnt_bit_reg[2]_1 ),
        .O(i2c_sda_IOBUF_inst_i_9_n_0));
  LUT6 #(
    .INIT(64'h888F8F8F88808080)) 
    \rd_data[0]_i_1 
       (.I0(i2c_sda_IBUF),
        .I1(\rd_data[3]_i_2_n_0 ),
        .I2(\rd_data[3]_i_3_n_0 ),
        .I3(rd_en),
        .I4(\rd_data[0]_i_2_n_0 ),
        .I5(D[0]),
        .O(\rd_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \rd_data[0]_i_2 
       (.I0(cnt_scl[0]),
        .I1(cnt_scl[1]),
        .I2(\cnt_bit_reg[2]_0 ),
        .I3(\cnt_bit_reg[2]_1 ),
        .I4(\cnt_bit_reg[2]_2 ),
        .I5(\rd_data[0]_i_3_n_0 ),
        .O(\rd_data[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \rd_data[0]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\rd_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F8B8F8F80888080)) 
    \rd_data[1]_i_1 
       (.I0(i2c_sda_IBUF),
        .I1(\rd_data[3]_i_2_n_0 ),
        .I2(\rd_data[3]_i_3_n_0 ),
        .I3(\rd_data[1]_i_2_n_0 ),
        .I4(\cnt_bit_reg[2]_0 ),
        .I5(D[1]),
        .O(\rd_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rd_data[1]_i_2 
       (.I0(\cnt_bit_reg[2]_2 ),
        .I1(\cnt_bit_reg[2]_1 ),
        .O(\rd_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F8B8F8F80888080)) 
    \rd_data[2]_i_1 
       (.I0(i2c_sda_IBUF),
        .I1(\rd_data[3]_i_2_n_0 ),
        .I2(\rd_data[3]_i_3_n_0 ),
        .I3(\rd_data[2]_i_2_n_0 ),
        .I4(\cnt_bit_reg[2]_0 ),
        .I5(D[2]),
        .O(\rd_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rd_data[2]_i_2 
       (.I0(\cnt_bit_reg[2]_1 ),
        .I1(\cnt_bit_reg[2]_2 ),
        .O(\rd_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F8B8F8F80888080)) 
    \rd_data[3]_i_1 
       (.I0(i2c_sda_IBUF),
        .I1(\rd_data[3]_i_2_n_0 ),
        .I2(\rd_data[3]_i_3_n_0 ),
        .I3(\rd_data[3]_i_4_n_0 ),
        .I4(\cnt_bit_reg[2]_0 ),
        .I5(D[3]),
        .O(\rd_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \rd_data[3]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(i2c_end_i_3_n_0),
        .I3(rd_en),
        .I4(cnt_scl[0]),
        .I5(cnt_scl[1]),
        .O(\rd_data[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rd_data[3]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\rd_data[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rd_data[3]_i_4 
       (.I0(\cnt_bit_reg[2]_2 ),
        .I1(\cnt_bit_reg[2]_1 ),
        .O(\rd_data[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\rd_data[0]_i_1_n_0 ),
        .Q(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\rd_data[1]_i_1_n_0 ),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\rd_data[2]_i_1_n_0 ),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\rd_data[3]_i_1_n_0 ),
        .Q(D[3]));
  LUT5 #(
    .INIT(32'h0333A080)) 
    re_wr_reg_i_1
       (.I0(re_wr_reg_i_2_n_0),
        .I1(\rd_data[3]_i_3_n_0 ),
        .I2(rd_en),
        .I3(re_wr_reg_i_3_n_0),
        .I4(re_wr_reg_reg_n_0),
        .O(re_wr_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    re_wr_reg_i_2
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state[3]_i_4_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .O(re_wr_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    re_wr_reg_i_3
       (.I0(\state[3]_i_4_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(re_wr_reg_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    re_wr_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(re_wr_reg_i_1_n_0),
        .Q(re_wr_reg_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFF11F111F111F1)) 
    \state[0]_i_1 
       (.I0(\state_reg[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(\state[0]_i_5_n_0 ),
        .I4(\state[0]_i_6_n_0 ),
        .I5(\state[0]_i_7_n_0 ),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \state[0]_i_10 
       (.I0(cnt_B_reg__0[3]),
        .I1(cnt_B_reg__0[0]),
        .I2(cnt_B_reg__0[1]),
        .I3(cnt_B_reg__0[4]),
        .O(\state[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[0]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08F8FFFFF8F8FFFF)) 
    \state[0]_i_4 
       (.I0(wr_en),
        .I1(\state[3]_i_4_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(i2c_end_i_2_n_0),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[3]_i_3_n_0 ),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDDDDDDDF)) 
    \state[0]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state[3]_i_4_n_0 ),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \state[0]_i_6 
       (.I0(\state_reg_n_0_[3] ),
        .I1(cnt_scl[1]),
        .I2(cnt_scl[0]),
        .O(\state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \state[0]_i_7 
       (.I0(cnt_B_reg__0[5]),
        .I1(cnt_B_reg__0[6]),
        .I2(cnt_B_reg__0[2]),
        .I3(\state[0]_i_10_n_0 ),
        .O(\state[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hC055)) 
    \state[0]_i_8 
       (.I0(i2c_start),
        .I1(cnt_scl[0]),
        .I2(cnt_scl[1]),
        .I3(\state_reg_n_0_[0] ),
        .O(\state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h004000000040FFFF)) 
    \state[0]_i_9 
       (.I0(ack_next[0]),
        .I1(cnt_scl[0]),
        .I2(cnt_scl[1]),
        .I3(ack),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[3]_i_4_n_0 ),
        .O(\state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF54005454)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[3]_i_4_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state[2]_i_3_n_0 ),
        .I4(\state[1]_i_3_n_0 ),
        .I5(\state[1]_i_4_n_0 ),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[1]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(wr_en),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBABBBAABBA)) 
    \state[1]_i_4 
       (.I0(\state[0]_i_6_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state[1]_i_5_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(ack_next[1]),
        .I5(ack),
        .O(\state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \state[1]_i_5 
       (.I0(cnt_scl[1]),
        .I1(cnt_scl[0]),
        .I2(\state_reg_n_0_[0] ),
        .O(\state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF444F444F444)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state[2]_i_4_n_0 ),
        .I3(ack_next[2]),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state[3]_i_3_n_0 ),
        .O(state[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \state[2]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state[3]_i_4_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFDFFFFFFFFFFFFF)) 
    \state[2]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\cnt_bit_reg[2]_2 ),
        .I2(\cnt_bit_reg[2]_1 ),
        .I3(\cnt_bit_reg[2]_0 ),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state[3]_i_3_n_0 ),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \state[2]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(ack),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[3]_i_3_n_0 ),
        .O(\state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444744444444444)) 
    \state[3]_i_2 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state[3]_i_4_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[3]_i_5_n_0 ),
        .O(state[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \state[3]_i_3 
       (.I0(cnt_scl[0]),
        .I1(cnt_scl[1]),
        .O(\state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \state[3]_i_4 
       (.I0(\cnt_bit_reg[2]_2 ),
        .I1(\cnt_bit_reg[2]_1 ),
        .I2(\cnt_bit_reg[2]_0 ),
        .I3(cnt_scl[1]),
        .I4(cnt_scl[0]),
        .O(\state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[3]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(wr_en),
        .O(\state[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ));
  MUXF7 \state_reg[0]_i_2 
       (.I0(\state[0]_i_8_n_0 ),
        .I1(\state[0]_i_9_n_0 ),
        .O(\state_reg[0]_i_2_n_0 ),
        .S(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(state[3]),
        .Q(\state_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_data[7]_i_1 
       (.I0(i2c_end),
        .I1(wr_en),
        .O(E));
endmodule

(* ECO_CHECKSUM = "c27b9d1a" *) 
(* NotValidForBitStream *)
module i2c_eerom_top
   (sys_clk,
    rst_n,
    key_wr,
    key_rd,
    data,
    i2c_sda,
    i2c_scl);
  input sys_clk;
  input rst_n;
  input key_wr;
  input key_rd;
  output [3:0]data;
  inout i2c_sda;
  output i2c_scl;

  wire button_posedge;
  wire [10:8]byte_addr;
  wire clk;
  wire clk_BUFG;
  wire cnt_start0;
  wire [3:0]data;
  wire [3:0]data_OBUF;
  wire data_out0;
  wire i2c_ctrl_n_10;
  wire i2c_ctrl_n_11;
  wire i2c_ctrl_n_5;
  wire i2c_ctrl_n_6;
  wire i2c_ctrl_n_7;
  wire i2c_ctrl_n_8;
  wire i2c_ctrl_n_9;
  wire i2c_end;
  wire i2c_rw_data_n_1;
  wire i2c_rw_data_n_7;
  wire i2c_rw_data_n_8;
  wire i2c_rw_data_n_9;
  wire i2c_scl;
  wire i2c_scl_OBUF;
  wire i2c_sda;
  wire i2c_sda_IBUF;
  wire i2c_sda_OBUF;
  wire i2c_sda_TRI;
  wire i2c_start;
  wire key_rd;
  wire key_rd_IBUF;
  wire key_wr;
  wire key_wr_IBUF;
  wire rd_en;
  wire rst_n;
  wire rst_n_IBUF;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire wr_en;
  wire write_key_n_0;

initial begin
 $sdf_annotate("i2c_eerom_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_BUFG_inst
       (.I(clk),
        .O(clk_BUFG));
  OBUF \data_OBUF[0]_inst 
       (.I(data_OBUF[0]),
        .O(data[0]));
  OBUF \data_OBUF[1]_inst 
       (.I(data_OBUF[1]),
        .O(data[1]));
  OBUF \data_OBUF[2]_inst 
       (.I(data_OBUF[2]),
        .O(data[2]));
  OBUF \data_OBUF[3]_inst 
       (.I(data_OBUF[3]),
        .O(data[3]));
  i2c_ctrl i2c_ctrl
       (.CLK(clk_BUFG),
        .D({i2c_ctrl_n_8,i2c_ctrl_n_9,i2c_ctrl_n_10,i2c_ctrl_n_11}),
        .E(cnt_start0),
        .S(byte_addr),
        .clk(clk),
        .\cnt_bit_reg[2]_0 (i2c_ctrl_n_5),
        .\cnt_bit_reg[2]_1 (i2c_ctrl_n_6),
        .\cnt_bit_reg[2]_2 (i2c_ctrl_n_7),
        .\cnt_bit_reg[2]_3 (i2c_rw_data_n_7),
        .\cnt_bit_reg[2]_4 (i2c_rw_data_n_8),
        .\cnt_bit_reg[2]_5 (i2c_rw_data_n_9),
        .\data_out_reg[3] (data_out0),
        .i2c_end(i2c_end),
        .i2c_scl_OBUF(i2c_scl_OBUF),
        .i2c_sda_IBUF(i2c_sda_IBUF),
        .i2c_sda_OBUF(i2c_sda_OBUF),
        .i2c_sda_TRI(i2c_sda_TRI),
        .i2c_start(i2c_start),
        .rd_en(rd_en),
        .rst_n(i2c_rw_data_n_1),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG),
        .wr_en(wr_en));
  i2c_rw_data i2c_rw_data
       (.CLK(clk_BUFG),
        .D({i2c_ctrl_n_8,i2c_ctrl_n_9,i2c_ctrl_n_10,i2c_ctrl_n_11}),
        .E(data_out0),
        .Q(data_OBUF),
        .S(byte_addr),
        .button_posedge(button_posedge),
        .button_posedge_reg(write_key_n_0),
        .\cnt_bit_reg[0] (i2c_ctrl_n_7),
        .\cnt_bit_reg[1] (i2c_ctrl_n_6),
        .\cnt_bit_reg[2] (i2c_ctrl_n_5),
        .\cnt_clk_reg[0] (i2c_rw_data_n_1),
        .i2c_end(i2c_end),
        .i2c_end_reg(cnt_start0),
        .i2c_start(i2c_start),
        .\rd_data_reg[3] (i2c_rw_data_n_7),
        .\rd_data_reg[3]_0 (i2c_rw_data_n_8),
        .\rd_data_reg[3]_1 (i2c_rw_data_n_9),
        .rd_en(rd_en),
        .rst_n_IBUF(rst_n_IBUF),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG),
        .wr_en(wr_en));
  OBUF i2c_scl_OBUF_inst
       (.I(i2c_scl_OBUF),
        .O(i2c_scl));
  IOBUF_UNIQ_BASE_ i2c_sda_IOBUF_inst
       (.I(i2c_sda_OBUF),
        .IO(i2c_sda),
        .O(i2c_sda_IBUF),
        .T(i2c_sda_TRI));
  IBUF key_rd_IBUF_inst
       (.I(key_rd),
        .O(key_rd_IBUF));
  IBUF key_wr_IBUF_inst
       (.I(key_wr),
        .O(key_wr_IBUF));
  ax_debounce read_key
       (.button_posedge(button_posedge),
        .key_rd_IBUF(key_rd_IBUF),
        .rst_n(i2c_rw_data_n_1),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
  ax_debounce_0 write_key
       (.key_wr_IBUF(key_wr_IBUF),
        .rst_n(i2c_rw_data_n_1),
        .signal_out_reg(write_key_n_0),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG));
endmodule

module i2c_rw_data
   (i2c_start,
    \cnt_clk_reg[0] ,
    S,
    rd_en,
    wr_en,
    \rd_data_reg[3] ,
    \rd_data_reg[3]_0 ,
    \rd_data_reg[3]_1 ,
    Q,
    CLK,
    sys_clk_IBUF_BUFG,
    i2c_end,
    \cnt_bit_reg[2] ,
    \cnt_bit_reg[1] ,
    \cnt_bit_reg[0] ,
    rst_n_IBUF,
    button_posedge,
    button_posedge_reg,
    E,
    D,
    i2c_end_reg);
  output i2c_start;
  output \cnt_clk_reg[0] ;
  output [2:0]S;
  output rd_en;
  output wr_en;
  output \rd_data_reg[3] ;
  output \rd_data_reg[3]_0 ;
  output \rd_data_reg[3]_1 ;
  output [3:0]Q;
  input CLK;
  input sys_clk_IBUF_BUFG;
  input i2c_end;
  input \cnt_bit_reg[2] ;
  input \cnt_bit_reg[1] ;
  input \cnt_bit_reg[0] ;
  input rst_n_IBUF;
  input button_posedge;
  input button_posedge_reg;
  input [0:0]E;
  input [3:0]D;
  input [0:0]i2c_end_reg;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [2:0]S;
  wire accross_clock_read_n_1;
  wire accross_clock_write_n_0;
  wire button_posedge;
  wire button_posedge_reg;
  wire [15:0]byte_addr;
  wire \byte_addr[0]_i_1_n_0 ;
  wire \byte_addr[0]_i_3_n_0 ;
  wire \byte_addr_reg[0]_i_2_n_0 ;
  wire \byte_addr_reg[0]_i_2_n_4 ;
  wire \byte_addr_reg[0]_i_2_n_5 ;
  wire \byte_addr_reg[0]_i_2_n_6 ;
  wire \byte_addr_reg[0]_i_2_n_7 ;
  wire \byte_addr_reg[12]_i_1_n_4 ;
  wire \byte_addr_reg[12]_i_1_n_5 ;
  wire \byte_addr_reg[12]_i_1_n_6 ;
  wire \byte_addr_reg[12]_i_1_n_7 ;
  wire \byte_addr_reg[4]_i_1_n_0 ;
  wire \byte_addr_reg[4]_i_1_n_4 ;
  wire \byte_addr_reg[4]_i_1_n_5 ;
  wire \byte_addr_reg[4]_i_1_n_6 ;
  wire \byte_addr_reg[4]_i_1_n_7 ;
  wire \byte_addr_reg[8]_i_1_n_0 ;
  wire \byte_addr_reg[8]_i_1_n_4 ;
  wire \byte_addr_reg[8]_i_1_n_5 ;
  wire \byte_addr_reg[8]_i_1_n_6 ;
  wire \byte_addr_reg[8]_i_1_n_7 ;
  wire \cnt_bit_reg[0] ;
  wire \cnt_bit_reg[1] ;
  wire \cnt_bit_reg[2] ;
  wire \cnt_clk_reg[0] ;
  wire [10:0]cnt_start;
  wire \cnt_start[0]_i_1_n_0 ;
  wire \cnt_start[10]_i_1_n_0 ;
  wire \cnt_start[10]_i_2_n_0 ;
  wire \cnt_start[10]_i_3_n_0 ;
  wire \cnt_start[10]_i_4_n_0 ;
  wire \cnt_start[1]_i_1_n_0 ;
  wire \cnt_start[2]_i_1_n_0 ;
  wire \cnt_start[3]_i_1_n_0 ;
  wire \cnt_start[4]_i_1_n_0 ;
  wire \cnt_start[5]_i_1_n_0 ;
  wire \cnt_start[6]_i_1_n_0 ;
  wire \cnt_start[7]_i_1_n_0 ;
  wire \cnt_start[7]_i_2_n_0 ;
  wire \cnt_start[8]_i_1_n_0 ;
  wire \cnt_start[9]_i_1_n_0 ;
  wire \cnt_start[9]_i_2_n_0 ;
  wire i2c_end;
  wire [0:0]i2c_end_reg;
  wire i2c_sda_IOBUF_inst_i_15_n_0;
  wire i2c_sda_IOBUF_inst_i_16_n_0;
  wire i2c_sda_IOBUF_inst_i_17_n_0;
  wire i2c_sda_IOBUF_inst_i_18_n_0;
  wire i2c_sda_IOBUF_inst_i_19_n_0;
  wire i2c_sda_IOBUF_inst_i_20_n_0;
  wire i2c_start;
  wire i2c_start_i_1_n_0;
  wire i2c_start_i_2_n_0;
  wire i2c_start_i_3_n_0;
  wire [7:0]p_0_in__1;
  wire \rd_data_reg[3] ;
  wire \rd_data_reg[3]_0 ;
  wire \rd_data_reg[3]_1 ;
  wire rd_en;
  wire rst_n_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire [7:0]wr_data;
  wire \wr_data[7]_i_3_n_0 ;
  wire wr_en;
  wire [2:0]\NLW_byte_addr_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_byte_addr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_byte_addr_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_byte_addr_reg[8]_i_1_CO_UNCONNECTED ;

  accross_clock accross_clock_read
       (.button_posedge(button_posedge),
        .\cnt_clk_reg[0]_0 (\cnt_clk_reg[0] ),
        .i2c_end(i2c_end),
        .rd_en_reg(accross_clock_read_n_1),
        .rd_en_reg_0(rd_en),
        .rst_n_IBUF(rst_n_IBUF),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG),
        .wr_en_reg(wr_en));
  accross_clock_1 accross_clock_write
       (.button_posedge_reg(button_posedge_reg),
        .i2c_end(i2c_end),
        .rd_en_reg(rd_en),
        .rst_n(\cnt_clk_reg[0] ),
        .sys_clk_IBUF_BUFG(sys_clk_IBUF_BUFG),
        .wr_en_reg(accross_clock_write_n_0),
        .wr_en_reg_0(wr_en));
  LUT3 #(
    .INIT(8'h08)) 
    \byte_addr[0]_i_1 
       (.I0(rd_en),
        .I1(i2c_end),
        .I2(wr_en),
        .O(\byte_addr[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \byte_addr[0]_i_3 
       (.I0(byte_addr[0]),
        .O(\byte_addr[0]_i_3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \byte_addr_reg[0] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .D(\byte_addr_reg[0]_i_2_n_7 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(byte_addr[0]));
  CARRY4 \byte_addr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\byte_addr_reg[0]_i_2_n_0 ,\NLW_byte_addr_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\byte_addr_reg[0]_i_2_n_4 ,\byte_addr_reg[0]_i_2_n_5 ,\byte_addr_reg[0]_i_2_n_6 ,\byte_addr_reg[0]_i_2_n_7 }),
        .S({byte_addr[3:1],\byte_addr[0]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[10] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[8]_i_1_n_5 ),
        .Q(S[2]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[11] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[8]_i_1_n_4 ),
        .Q(byte_addr[11]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[12] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[12]_i_1_n_7 ),
        .Q(byte_addr[12]));
  CARRY4 \byte_addr_reg[12]_i_1 
       (.CI(\byte_addr_reg[8]_i_1_n_0 ),
        .CO(\NLW_byte_addr_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\byte_addr_reg[12]_i_1_n_4 ,\byte_addr_reg[12]_i_1_n_5 ,\byte_addr_reg[12]_i_1_n_6 ,\byte_addr_reg[12]_i_1_n_7 }),
        .S(byte_addr[15:12]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[13] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[12]_i_1_n_6 ),
        .Q(byte_addr[13]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[14] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[12]_i_1_n_5 ),
        .Q(byte_addr[14]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[15] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[12]_i_1_n_4 ),
        .Q(byte_addr[15]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[1] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[0]_i_2_n_6 ),
        .Q(byte_addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[2] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[0]_i_2_n_5 ),
        .Q(byte_addr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[3] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[0]_i_2_n_4 ),
        .Q(byte_addr[3]));
  FDPE #(
    .INIT(1'b1)) 
    \byte_addr_reg[4] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .D(\byte_addr_reg[4]_i_1_n_7 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(byte_addr[4]));
  CARRY4 \byte_addr_reg[4]_i_1 
       (.CI(\byte_addr_reg[0]_i_2_n_0 ),
        .CO({\byte_addr_reg[4]_i_1_n_0 ,\NLW_byte_addr_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\byte_addr_reg[4]_i_1_n_4 ,\byte_addr_reg[4]_i_1_n_5 ,\byte_addr_reg[4]_i_1_n_6 ,\byte_addr_reg[4]_i_1_n_7 }),
        .S(byte_addr[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[5] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[4]_i_1_n_6 ),
        .Q(byte_addr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[6] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[4]_i_1_n_5 ),
        .Q(byte_addr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[7] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[4]_i_1_n_4 ),
        .Q(byte_addr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[8] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[8]_i_1_n_7 ),
        .Q(S[0]));
  CARRY4 \byte_addr_reg[8]_i_1 
       (.CI(\byte_addr_reg[4]_i_1_n_0 ),
        .CO({\byte_addr_reg[8]_i_1_n_0 ,\NLW_byte_addr_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\byte_addr_reg[8]_i_1_n_4 ,\byte_addr_reg[8]_i_1_n_5 ,\byte_addr_reg[8]_i_1_n_6 ,\byte_addr_reg[8]_i_1_n_7 }),
        .S({byte_addr[11],S}));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[9] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\byte_addr_reg[8]_i_1_n_6 ),
        .Q(S[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_start[0]_i_1 
       (.I0(cnt_start[0]),
        .I1(\cnt_start[10]_i_3_n_0 ),
        .O(\cnt_start[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \cnt_start[10]_i_1 
       (.I0(wr_en),
        .I1(i2c_end),
        .I2(\cnt_start[10]_i_3_n_0 ),
        .O(\cnt_start[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h5540)) 
    \cnt_start[10]_i_2 
       (.I0(\cnt_start[10]_i_3_n_0 ),
        .I1(\cnt_start[10]_i_4_n_0 ),
        .I2(cnt_start[9]),
        .I3(cnt_start[10]),
        .O(\cnt_start[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \cnt_start[10]_i_3 
       (.I0(i2c_start_i_2_n_0),
        .I1(cnt_start[4]),
        .I2(cnt_start[5]),
        .I3(\cnt_start[7]_i_2_n_0 ),
        .O(\cnt_start[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \cnt_start[10]_i_4 
       (.I0(cnt_start[8]),
        .I1(cnt_start[4]),
        .I2(\cnt_start[7]_i_2_n_0 ),
        .I3(cnt_start[5]),
        .I4(cnt_start[6]),
        .I5(cnt_start[7]),
        .O(\cnt_start[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt_start[1]_i_1 
       (.I0(cnt_start[1]),
        .I1(cnt_start[0]),
        .I2(\cnt_start[10]_i_3_n_0 ),
        .O(\cnt_start[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \cnt_start[2]_i_1 
       (.I0(\cnt_start[10]_i_3_n_0 ),
        .I1(cnt_start[0]),
        .I2(cnt_start[1]),
        .I3(cnt_start[2]),
        .O(\cnt_start[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \cnt_start[3]_i_1 
       (.I0(cnt_start[2]),
        .I1(cnt_start[1]),
        .I2(cnt_start[0]),
        .I3(cnt_start[3]),
        .I4(\cnt_start[10]_i_3_n_0 ),
        .O(\cnt_start[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \cnt_start[4]_i_1 
       (.I0(\cnt_start[10]_i_3_n_0 ),
        .I1(cnt_start[3]),
        .I2(cnt_start[0]),
        .I3(cnt_start[1]),
        .I4(cnt_start[2]),
        .I5(cnt_start[4]),
        .O(\cnt_start[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \cnt_start[5]_i_1 
       (.I0(\cnt_start[7]_i_2_n_0 ),
        .I1(cnt_start[4]),
        .I2(cnt_start[5]),
        .I3(\cnt_start[10]_i_3_n_0 ),
        .O(\cnt_start[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h51550400)) 
    \cnt_start[6]_i_1 
       (.I0(\cnt_start[10]_i_3_n_0 ),
        .I1(cnt_start[4]),
        .I2(\cnt_start[7]_i_2_n_0 ),
        .I3(cnt_start[5]),
        .I4(cnt_start[6]),
        .O(\cnt_start[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \cnt_start[7]_i_1 
       (.I0(\cnt_start[10]_i_3_n_0 ),
        .I1(cnt_start[5]),
        .I2(\cnt_start[7]_i_2_n_0 ),
        .I3(cnt_start[4]),
        .I4(cnt_start[6]),
        .I5(cnt_start[7]),
        .O(\cnt_start[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_start[7]_i_2 
       (.I0(cnt_start[3]),
        .I1(cnt_start[0]),
        .I2(cnt_start[1]),
        .I3(cnt_start[2]),
        .O(\cnt_start[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h55150040)) 
    \cnt_start[8]_i_1 
       (.I0(\cnt_start[10]_i_3_n_0 ),
        .I1(cnt_start[7]),
        .I2(cnt_start[6]),
        .I3(\cnt_start[9]_i_2_n_0 ),
        .I4(cnt_start[8]),
        .O(\cnt_start[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5155555504000000)) 
    \cnt_start[9]_i_1 
       (.I0(\cnt_start[10]_i_3_n_0 ),
        .I1(cnt_start[8]),
        .I2(\cnt_start[9]_i_2_n_0 ),
        .I3(cnt_start[6]),
        .I4(cnt_start[7]),
        .I5(cnt_start[9]),
        .O(\cnt_start[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_start[9]_i_2 
       (.I0(cnt_start[4]),
        .I1(cnt_start[3]),
        .I2(cnt_start[0]),
        .I3(cnt_start[1]),
        .I4(cnt_start[2]),
        .I5(cnt_start[5]),
        .O(\cnt_start[9]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_start_reg[0] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .D(\cnt_start[0]_i_1_n_0 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(cnt_start[0]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_start_reg[10] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .D(\cnt_start[10]_i_2_n_0 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(cnt_start[10]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_start_reg[1] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .D(\cnt_start[1]_i_1_n_0 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(cnt_start[1]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_start_reg[2] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .D(\cnt_start[2]_i_1_n_0 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(cnt_start[2]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_start_reg[3] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .D(\cnt_start[3]_i_1_n_0 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(cnt_start[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[4] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\cnt_start[4]_i_1_n_0 ),
        .Q(cnt_start[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[5] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .CLR(\cnt_clk_reg[0] ),
        .D(\cnt_start[5]_i_1_n_0 ),
        .Q(cnt_start[5]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_start_reg[6] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .D(\cnt_start[6]_i_1_n_0 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(cnt_start[6]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_start_reg[7] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .D(\cnt_start[7]_i_1_n_0 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(cnt_start[7]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_start_reg[8] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .D(\cnt_start[8]_i_1_n_0 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(cnt_start[8]));
  FDPE #(
    .INIT(1'b1)) 
    \cnt_start_reg[9] 
       (.C(CLK),
        .CE(\cnt_start[10]_i_1_n_0 ),
        .D(\cnt_start[9]_i_1_n_0 ),
        .PRE(\cnt_clk_reg[0] ),
        .Q(cnt_start[9]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_clk_reg[0] ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_clk_reg[0] ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_clk_reg[0] ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_clk_reg[0] ),
        .D(D[3]),
        .Q(Q[3]));
  MUXF7 i2c_sda_IOBUF_inst_i_10
       (.I0(i2c_sda_IOBUF_inst_i_15_n_0),
        .I1(i2c_sda_IOBUF_inst_i_16_n_0),
        .O(\rd_data_reg[3] ),
        .S(\cnt_bit_reg[2] ));
  MUXF7 i2c_sda_IOBUF_inst_i_11
       (.I0(i2c_sda_IOBUF_inst_i_17_n_0),
        .I1(i2c_sda_IOBUF_inst_i_18_n_0),
        .O(\rd_data_reg[3]_0 ),
        .S(\cnt_bit_reg[2] ));
  MUXF7 i2c_sda_IOBUF_inst_i_12
       (.I0(i2c_sda_IOBUF_inst_i_19_n_0),
        .I1(i2c_sda_IOBUF_inst_i_20_n_0),
        .O(\rd_data_reg[3]_1 ),
        .S(\cnt_bit_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_15
       (.I0(wr_data[4]),
        .I1(wr_data[5]),
        .I2(\cnt_bit_reg[1] ),
        .I3(wr_data[6]),
        .I4(\cnt_bit_reg[0] ),
        .I5(wr_data[7]),
        .O(i2c_sda_IOBUF_inst_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_16
       (.I0(wr_data[0]),
        .I1(wr_data[1]),
        .I2(\cnt_bit_reg[1] ),
        .I3(wr_data[2]),
        .I4(\cnt_bit_reg[0] ),
        .I5(wr_data[3]),
        .O(i2c_sda_IOBUF_inst_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_17
       (.I0(byte_addr[4]),
        .I1(byte_addr[5]),
        .I2(\cnt_bit_reg[1] ),
        .I3(byte_addr[6]),
        .I4(\cnt_bit_reg[0] ),
        .I5(byte_addr[7]),
        .O(i2c_sda_IOBUF_inst_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_18
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .I2(\cnt_bit_reg[1] ),
        .I3(byte_addr[2]),
        .I4(\cnt_bit_reg[0] ),
        .I5(byte_addr[3]),
        .O(i2c_sda_IOBUF_inst_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_19
       (.I0(byte_addr[12]),
        .I1(byte_addr[13]),
        .I2(\cnt_bit_reg[1] ),
        .I3(byte_addr[14]),
        .I4(\cnt_bit_reg[0] ),
        .I5(byte_addr[15]),
        .O(i2c_sda_IOBUF_inst_i_19_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_20
       (.I0(S[0]),
        .I1(S[1]),
        .I2(\cnt_bit_reg[1] ),
        .I3(S[2]),
        .I4(\cnt_bit_reg[0] ),
        .I5(byte_addr[11]),
        .O(i2c_sda_IOBUF_inst_i_20_n_0));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    i2c_start_i_1
       (.I0(i2c_start_i_2_n_0),
        .I1(rd_en),
        .I2(wr_en),
        .I3(i2c_start_i_3_n_0),
        .I4(i2c_end),
        .I5(\cnt_start[7]_i_2_n_0 ),
        .O(i2c_start_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    i2c_start_i_2
       (.I0(cnt_start[10]),
        .I1(cnt_start[9]),
        .I2(cnt_start[8]),
        .I3(cnt_start[6]),
        .I4(cnt_start[7]),
        .O(i2c_start_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i2c_start_i_3
       (.I0(cnt_start[4]),
        .I1(cnt_start[5]),
        .O(i2c_start_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    i2c_start_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0] ),
        .D(i2c_start_i_1_n_0),
        .Q(i2c_start));
  FDCE #(
    .INIT(1'b0)) 
    rd_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0] ),
        .D(accross_clock_read_n_1),
        .Q(rd_en));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_data[0]_i_1 
       (.I0(wr_data[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[1]_i_1 
       (.I0(wr_data[0]),
        .I1(wr_data[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_data[2]_i_1 
       (.I0(wr_data[2]),
        .I1(wr_data[0]),
        .I2(wr_data[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_data[3]_i_1 
       (.I0(wr_data[3]),
        .I1(wr_data[1]),
        .I2(wr_data[0]),
        .I3(wr_data[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_data[4]_i_1 
       (.I0(wr_data[4]),
        .I1(wr_data[2]),
        .I2(wr_data[0]),
        .I3(wr_data[1]),
        .I4(wr_data[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \wr_data[5]_i_1 
       (.I0(wr_data[5]),
        .I1(wr_data[3]),
        .I2(wr_data[1]),
        .I3(wr_data[0]),
        .I4(wr_data[2]),
        .I5(wr_data[4]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wr_data[6]_i_1 
       (.I0(\wr_data[7]_i_3_n_0 ),
        .I1(wr_data[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \wr_data[7]_i_2 
       (.I0(wr_data[7]),
        .I1(\wr_data[7]_i_3_n_0 ),
        .I2(wr_data[6]),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \wr_data[7]_i_3 
       (.I0(wr_data[4]),
        .I1(wr_data[2]),
        .I2(wr_data[0]),
        .I3(wr_data[1]),
        .I4(wr_data[3]),
        .I5(wr_data[5]),
        .O(\wr_data[7]_i_3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \wr_data_reg[0] 
       (.C(CLK),
        .CE(i2c_end_reg),
        .D(p_0_in__1[0]),
        .PRE(\cnt_clk_reg[0] ),
        .Q(wr_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[1] 
       (.C(CLK),
        .CE(i2c_end_reg),
        .CLR(\cnt_clk_reg[0] ),
        .D(p_0_in__1[1]),
        .Q(wr_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[2] 
       (.C(CLK),
        .CE(i2c_end_reg),
        .CLR(\cnt_clk_reg[0] ),
        .D(p_0_in__1[2]),
        .Q(wr_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[3] 
       (.C(CLK),
        .CE(i2c_end_reg),
        .CLR(\cnt_clk_reg[0] ),
        .D(p_0_in__1[3]),
        .Q(wr_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[4] 
       (.C(CLK),
        .CE(i2c_end_reg),
        .CLR(\cnt_clk_reg[0] ),
        .D(p_0_in__1[4]),
        .Q(wr_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[5] 
       (.C(CLK),
        .CE(i2c_end_reg),
        .CLR(\cnt_clk_reg[0] ),
        .D(p_0_in__1[5]),
        .Q(wr_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[6] 
       (.C(CLK),
        .CE(i2c_end_reg),
        .CLR(\cnt_clk_reg[0] ),
        .D(p_0_in__1[6]),
        .Q(wr_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[7] 
       (.C(CLK),
        .CE(i2c_end_reg),
        .CLR(\cnt_clk_reg[0] ),
        .D(p_0_in__1[7]),
        .Q(wr_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    wr_en_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk_reg[0] ),
        .D(accross_clock_write_n_0),
        .Q(wr_en));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
