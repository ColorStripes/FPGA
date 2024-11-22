// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Nov 22 20:35:23 2024
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

module i2c_ctrl
   (i2c_sda_TRI,
    i2c_scl_OBUF,
    i2c_sda_OBUF,
    CLK,
    rst_n_IBUF,
    i2c_sda_IBUF);
  output i2c_sda_TRI;
  output i2c_scl_OBUF;
  output i2c_sda_OBUF;
  input CLK;
  input rst_n_IBUF;
  input i2c_sda_IBUF;

  wire CLK;
  wire ack;
  wire ack_cnt_2;
  wire ack_i_2_n_0;
  wire clk;
  wire [2:0]cnt_ack;
  wire cnt_ack111_out__0;
  wire cnt_ack1__1;
  wire \cnt_ack[0]_i_1_n_0 ;
  wire \cnt_ack[0]_i_3_n_0 ;
  wire \cnt_ack[1]_i_1_n_0 ;
  wire \cnt_ack[1]_i_2_n_0 ;
  wire \cnt_ack[1]_i_4_n_0 ;
  wire \cnt_ack[2]_i_10_n_0 ;
  wire \cnt_ack[2]_i_11_n_0 ;
  wire \cnt_ack[2]_i_12_n_0 ;
  wire \cnt_ack[2]_i_13_n_0 ;
  wire \cnt_ack[2]_i_14_n_0 ;
  wire \cnt_ack[2]_i_1_n_0 ;
  wire \cnt_ack[2]_i_2_n_0 ;
  wire \cnt_ack[2]_i_3_n_0 ;
  wire \cnt_ack[2]_i_4_n_0 ;
  wire \cnt_ack[2]_i_5_n_0 ;
  wire \cnt_ack[2]_i_6_n_0 ;
  wire \cnt_ack[2]_i_7_n_0 ;
  wire \cnt_ack[2]_i_8_n_0 ;
  wire \cnt_ack[2]_i_9_n_0 ;
  wire [2:0]cnt_bit;
  wire cnt_bit1__4;
  wire \cnt_bit[0]_i_1_n_0 ;
  wire \cnt_bit[0]_i_2_n_0 ;
  wire \cnt_bit[1]_i_1_n_0 ;
  wire \cnt_bit[2]_i_1_n_0 ;
  wire \cnt_bit[2]_i_3_n_0 ;
  wire [7:0]cnt_clk;
  wire \cnt_clk[0]_i_2_n_0 ;
  wire \cnt_clk[4]_i_2_n_0 ;
  wire \cnt_clk[7]_i_2_n_0 ;
  wire \cnt_clk[7]_i_3_n_0 ;
  wire [7:0]cnt_clk_0;
  wire [1:0]cnt_scl;
  wire cnt_scl1__0;
  wire \cnt_scl[0]_i_1_n_0 ;
  wire \cnt_scl[1]_i_1_n_0 ;
  wire i2c_clk_i_1_n_0;
  wire i2c_clk_i_2_n_0;
  wire i2c_scl_OBUF;
  wire i2c_scl_OBUF_inst_i_2_n_0;
  wire i2c_scl_OBUF_inst_i_3_n_0;
  wire i2c_scl_OBUF_inst_i_4_n_0;
  wire i2c_sda_IBUF;
  wire i2c_sda_IOBUF_inst_i_3_n_0;
  wire i2c_sda_IOBUF_inst_i_5_n_0;
  wire i2c_sda_IOBUF_inst_i_6_n_0;
  wire i2c_sda_IOBUF_inst_i_7_n_0;
  wire i2c_sda_OBUF;
  wire i2c_sda_TRI;
  wire p_4_in;
  wire re_wr_reg_i_1_n_0;
  wire re_wr_reg_reg_n_0;
  wire rst_n_IBUF;
  wire [3:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;

  LUT2 #(
    .INIT(4'hE)) 
    ack_i_1
       (.I0(ack_i_2_n_0),
        .I1(i2c_sda_IBUF),
        .O(ack_cnt_2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    ack_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(ack_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ack_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_cnt_2),
        .PRE(\cnt_clk[7]_i_2_n_0 ),
        .Q(ack));
  LUT5 #(
    .INIT(32'h550F55FC)) 
    \cnt_ack[0]_i_1 
       (.I0(re_wr_reg_reg_n_0),
        .I1(cnt_ack1__1),
        .I2(\cnt_ack[0]_i_3_n_0 ),
        .I3(cnt_ack111_out__0),
        .I4(cnt_ack[0]),
        .O(\cnt_ack[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \cnt_ack[0]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(p_4_in),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(re_wr_reg_reg_n_0),
        .O(cnt_ack1__1));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \cnt_ack[0]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(p_4_in),
        .I5(ack),
        .O(\cnt_ack[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBABABAFFAAAAAA00)) 
    \cnt_ack[1]_i_1 
       (.I0(\cnt_ack[1]_i_2_n_0 ),
        .I1(cnt_ack111_out__0),
        .I2(\cnt_ack[2]_i_2_n_0 ),
        .I3(\cnt_ack[2]_i_5_n_0 ),
        .I4(\cnt_ack[2]_i_6_n_0 ),
        .I5(cnt_ack[1]),
        .O(\cnt_ack[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h808080808080BF80)) 
    \cnt_ack[1]_i_2 
       (.I0(re_wr_reg_reg_n_0),
        .I1(\cnt_ack[2]_i_12_n_0 ),
        .I2(cnt_scl1__0),
        .I3(\cnt_ack[1]_i_4_n_0 ),
        .I4(\cnt_ack[2]_i_9_n_0 ),
        .I5(ack_i_2_n_0),
        .O(\cnt_ack[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \cnt_ack[1]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(cnt_scl1__0),
        .O(cnt_ack111_out__0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_ack[1]_i_4 
       (.I0(cnt_ack[0]),
        .I1(cnt_ack[1]),
        .O(\cnt_ack[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFCFCFC00)) 
    \cnt_ack[2]_i_1 
       (.I0(\cnt_ack[2]_i_2_n_0 ),
        .I1(\cnt_ack[2]_i_3_n_0 ),
        .I2(\cnt_ack[2]_i_4_n_0 ),
        .I3(\cnt_ack[2]_i_5_n_0 ),
        .I4(\cnt_ack[2]_i_6_n_0 ),
        .I5(cnt_ack[2]),
        .O(\cnt_ack[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \cnt_ack[2]_i_10 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\cnt_ack[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ack[2]_i_11 
       (.I0(cnt_ack[0]),
        .I1(cnt_ack[1]),
        .I2(cnt_ack[2]),
        .O(\cnt_ack[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \cnt_ack[2]_i_12 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\cnt_ack[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt_ack[2]_i_13 
       (.I0(cnt_scl[1]),
        .I1(cnt_scl[0]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\cnt_ack[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cnt_ack[2]_i_14 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .O(\cnt_ack[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFDF0F1FFFDF)) 
    \cnt_ack[2]_i_2 
       (.I0(cnt_ack[0]),
        .I1(ack_i_2_n_0),
        .I2(p_4_in),
        .I3(ack),
        .I4(\cnt_ack[2]_i_7_n_0 ),
        .I5(\cnt_ack[2]_i_8_n_0 ),
        .O(\cnt_ack[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \cnt_ack[2]_i_3 
       (.I0(cnt_ack[1]),
        .I1(cnt_ack[2]),
        .I2(\cnt_ack[2]_i_9_n_0 ),
        .I3(\cnt_ack[2]_i_10_n_0 ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\cnt_ack[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000044000000F0)) 
    \cnt_ack[2]_i_4 
       (.I0(\cnt_ack[2]_i_9_n_0 ),
        .I1(\cnt_ack[2]_i_11_n_0 ),
        .I2(cnt_scl1__0),
        .I3(\cnt_ack[2]_i_10_n_0 ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(\cnt_ack[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF888F888F888F)) 
    \cnt_ack[2]_i_5 
       (.I0(\cnt_ack[2]_i_12_n_0 ),
        .I1(cnt_scl1__0),
        .I2(ack_i_2_n_0),
        .I3(\cnt_ack[2]_i_9_n_0 ),
        .I4(\cnt_ack[2]_i_7_n_0 ),
        .I5(\cnt_ack[2]_i_13_n_0 ),
        .O(\cnt_ack[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \cnt_ack[2]_i_6 
       (.I0(i2c_scl_OBUF_inst_i_2_n_0),
        .I1(\state_reg_n_0_[0] ),
        .I2(cnt_bit[2]),
        .I3(cnt_scl[0]),
        .I4(cnt_scl[1]),
        .I5(\cnt_ack[2]_i_14_n_0 ),
        .O(\cnt_ack[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \cnt_ack[2]_i_7 
       (.I0(re_wr_reg_reg_n_0),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\cnt_ack[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_ack[2]_i_8 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .O(\cnt_ack[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \cnt_ack[2]_i_9 
       (.I0(ack),
        .I1(cnt_scl[1]),
        .I2(cnt_scl[0]),
        .O(\cnt_ack[2]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ack_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(\cnt_ack[0]_i_1_n_0 ),
        .Q(cnt_ack[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ack_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(\cnt_ack[1]_i_1_n_0 ),
        .Q(cnt_ack[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ack_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(\cnt_ack[2]_i_1_n_0 ),
        .Q(cnt_ack[2]));
  LUT6 #(
    .INIT(64'h00005551FFFF0000)) 
    \cnt_bit[0]_i_1 
       (.I0(cnt_scl1__0),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\cnt_bit[0]_i_2_n_0 ),
        .I4(cnt_bit1__4),
        .I5(cnt_bit[0]),
        .O(\cnt_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_bit[0]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\cnt_bit[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2F80)) 
    \cnt_bit[1]_i_1 
       (.I0(cnt_bit1__4),
        .I1(cnt_bit[0]),
        .I2(\cnt_bit[2]_i_3_n_0 ),
        .I3(cnt_bit[1]),
        .O(\cnt_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \cnt_bit[2]_i_1 
       (.I0(cnt_bit[0]),
        .I1(cnt_bit[1]),
        .I2(cnt_bit1__4),
        .I3(\cnt_bit[2]_i_3_n_0 ),
        .I4(cnt_bit[2]),
        .O(\cnt_bit[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000080800000C080)) 
    \cnt_bit[2]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(cnt_scl[0]),
        .I2(cnt_scl[1]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[0] ),
        .O(cnt_bit1__4));
  LUT6 #(
    .INIT(64'hAFAFAAAAABAEAAAE)) 
    \cnt_bit[2]_i_3 
       (.I0(cnt_scl1__0),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(p_4_in),
        .I5(\state_reg_n_0_[2] ),
        .O(\cnt_bit[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(\cnt_bit[0]_i_1_n_0 ),
        .Q(cnt_bit[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(\cnt_bit[1]_i_1_n_0 ),
        .Q(cnt_bit[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(\cnt_bit[2]_i_1_n_0 ),
        .Q(cnt_bit[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00FF00F7)) 
    \cnt_clk[0]_i_1 
       (.I0(cnt_clk[4]),
        .I1(cnt_clk[3]),
        .I2(cnt_clk[1]),
        .I3(cnt_clk[0]),
        .I4(\cnt_clk[0]_i_2_n_0 ),
        .O(cnt_clk_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_clk[0]_i_2 
       (.I0(cnt_clk[5]),
        .I1(cnt_clk[2]),
        .I2(cnt_clk[7]),
        .I3(cnt_clk[6]),
        .O(\cnt_clk[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_clk[1]_i_1 
       (.I0(cnt_clk[0]),
        .I1(cnt_clk[1]),
        .O(cnt_clk_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt_clk[2]_i_1 
       (.I0(cnt_clk[1]),
        .I1(cnt_clk[0]),
        .I2(cnt_clk[2]),
        .O(cnt_clk_0[2]));
  LUT6 #(
    .INIT(64'hFFFFC0001111C000)) 
    \cnt_clk[3]_i_1 
       (.I0(cnt_clk[4]),
        .I1(cnt_clk[1]),
        .I2(cnt_clk[0]),
        .I3(cnt_clk[2]),
        .I4(cnt_clk[3]),
        .I5(\cnt_clk[4]_i_2_n_0 ),
        .O(cnt_clk_0[3]));
  LUT6 #(
    .INIT(64'hFFFF800055558000)) 
    \cnt_clk[4]_i_1 
       (.I0(cnt_clk[3]),
        .I1(cnt_clk[1]),
        .I2(cnt_clk[0]),
        .I3(cnt_clk[2]),
        .I4(cnt_clk[4]),
        .I5(\cnt_clk[4]_i_2_n_0 ),
        .O(cnt_clk_0[4]));
  LUT6 #(
    .INIT(64'h55FF55FFFFFFFFFE)) 
    \cnt_clk[4]_i_2 
       (.I0(cnt_clk[1]),
        .I1(cnt_clk[6]),
        .I2(cnt_clk[7]),
        .I3(cnt_clk[2]),
        .I4(cnt_clk[5]),
        .I5(cnt_clk[0]),
        .O(\cnt_clk[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_clk[5]_i_1 
       (.I0(cnt_clk[3]),
        .I1(cnt_clk[4]),
        .I2(cnt_clk[2]),
        .I3(cnt_clk[0]),
        .I4(cnt_clk[1]),
        .I5(cnt_clk[5]),
        .O(cnt_clk_0[5]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \cnt_clk[6]_i_1 
       (.I0(cnt_clk[5]),
        .I1(\cnt_clk[7]_i_3_n_0 ),
        .I2(cnt_clk[4]),
        .I3(cnt_clk[3]),
        .I4(cnt_clk[6]),
        .O(cnt_clk_0[6]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \cnt_clk[7]_i_1 
       (.I0(cnt_clk[6]),
        .I1(cnt_clk[3]),
        .I2(cnt_clk[4]),
        .I3(\cnt_clk[7]_i_3_n_0 ),
        .I4(cnt_clk[5]),
        .I5(cnt_clk[7]),
        .O(cnt_clk_0[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk[7]_i_2 
       (.I0(rst_n_IBUF),
        .O(\cnt_clk[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_clk[7]_i_3 
       (.I0(cnt_clk[2]),
        .I1(cnt_clk[0]),
        .I2(cnt_clk[1]),
        .O(\cnt_clk[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(cnt_clk_0[0]),
        .Q(cnt_clk[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(cnt_clk_0[1]),
        .Q(cnt_clk[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(cnt_clk_0[2]),
        .Q(cnt_clk[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(cnt_clk_0[3]),
        .Q(cnt_clk[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(cnt_clk_0[4]),
        .Q(cnt_clk[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(cnt_clk_0[5]),
        .Q(cnt_clk[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(cnt_clk_0[6]),
        .Q(cnt_clk[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(cnt_clk_0[7]),
        .Q(cnt_clk[7]));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \cnt_scl[0]_i_1 
       (.I0(cnt_scl[0]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(cnt_scl1__0),
        .O(\cnt_scl[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066666660)) 
    \cnt_scl[1]_i_1 
       (.I0(cnt_scl[1]),
        .I1(cnt_scl[0]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\cnt_bit[0]_i_2_n_0 ),
        .I5(cnt_scl1__0),
        .O(\cnt_scl[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_scl_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(\cnt_scl[0]_i_1_n_0 ),
        .Q(cnt_scl[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_scl_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(\cnt_scl[1]_i_1_n_0 ),
        .Q(cnt_scl[1]));
  LUT5 #(
    .INIT(32'hFFBF0040)) 
    i2c_clk_i_1
       (.I0(i2c_clk_i_2_n_0),
        .I1(cnt_clk[4]),
        .I2(cnt_clk[3]),
        .I3(cnt_clk[1]),
        .I4(clk),
        .O(i2c_clk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i2c_clk_i_2
       (.I0(cnt_clk[6]),
        .I1(cnt_clk[7]),
        .I2(cnt_clk[2]),
        .I3(cnt_clk[5]),
        .I4(cnt_clk[0]),
        .O(i2c_clk_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    i2c_clk_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(i2c_clk_i_1_n_0),
        .Q(clk));
  LUT6 #(
    .INIT(64'h0FFFFFFFFFFF0FFE)) 
    i2c_scl_OBUF_inst_i_1
       (.I0(i2c_scl_OBUF_inst_i_2_n_0),
        .I1(cnt_bit[2]),
        .I2(i2c_scl_OBUF_inst_i_3_n_0),
        .I3(i2c_scl_OBUF_inst_i_4_n_0),
        .I4(cnt_scl[0]),
        .I5(cnt_scl[1]),
        .O(i2c_scl_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    i2c_scl_OBUF_inst_i_2
       (.I0(cnt_bit[1]),
        .I1(cnt_bit[0]),
        .O(i2c_scl_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDFFD)) 
    i2c_scl_OBUF_inst_i_3
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .O(i2c_scl_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1556)) 
    i2c_scl_OBUF_inst_i_4
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(i2c_scl_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFF0F7F7)) 
    i2c_sda_IOBUF_inst_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(cnt_scl[1]),
        .I2(\state_reg_n_0_[3] ),
        .I3(i2c_sda_IOBUF_inst_i_3_n_0),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(i2c_sda_OBUF));
  LUT6 #(
    .INIT(64'hFF00F1F10000F1F1)) 
    i2c_sda_IOBUF_inst_i_3
       (.I0(cnt_bit[0]),
        .I1(cnt_bit[2]),
        .I2(i2c_sda_IOBUF_inst_i_5_n_0),
        .I3(i2c_sda_IOBUF_inst_i_6_n_0),
        .I4(i2c_sda_IOBUF_inst_i_7_n_0),
        .I5(\state_reg_n_0_[0] ),
        .O(i2c_sda_IOBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    i2c_sda_IOBUF_inst_i_4
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[0] ),
        .O(i2c_sda_TRI));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    i2c_sda_IOBUF_inst_i_5
       (.I0(cnt_bit[2]),
        .I1(re_wr_reg_reg_n_0),
        .I2(cnt_bit[0]),
        .I3(cnt_bit[1]),
        .O(i2c_sda_IOBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFF0000FEEEFFFF)) 
    i2c_sda_IOBUF_inst_i_6
       (.I0(cnt_bit[0]),
        .I1(cnt_bit[1]),
        .I2(cnt_scl[1]),
        .I3(cnt_scl[0]),
        .I4(\state_reg_n_0_[1] ),
        .I5(cnt_bit[2]),
        .O(i2c_sda_IOBUF_inst_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    i2c_sda_IOBUF_inst_i_7
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .O(i2c_sda_IOBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF400000008)) 
    re_wr_reg_i_1
       (.I0(cnt_scl1__0),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(re_wr_reg_reg_n_0),
        .O(re_wr_reg_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    re_wr_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(re_wr_reg_i_1_n_0),
        .Q(re_wr_reg_reg_n_0));
  LUT6 #(
    .INIT(64'hEFEEEEEEEEEEEEEE)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[1]_i_3_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state[0]_i_3_n_0 ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h000000F00000AEAF)) 
    \state[0]_i_2 
       (.I0(\state[0]_i_4_n_0 ),
        .I1(cnt_scl1__0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \state[0]_i_3 
       (.I0(cnt_bit[1]),
        .I1(cnt_bit[2]),
        .I2(cnt_bit[0]),
        .I3(cnt_scl[1]),
        .I4(cnt_scl[0]),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFFFFF00000000)) 
    \state[0]_i_4 
       (.I0(cnt_ack[0]),
        .I1(ack),
        .I2(\state_reg_n_0_[1] ),
        .I3(cnt_scl[0]),
        .I4(cnt_scl[1]),
        .I5(\state_reg_n_0_[0] ),
        .O(\state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFEFEFE)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state[1]_i_3_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[1]_i_4_n_0 ),
        .I5(p_4_in),
        .O(state[1]));
  LUT6 #(
    .INIT(64'h1111111111011111)) 
    \state[1]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\cnt_ack[2]_i_10_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(cnt_ack[1]),
        .I4(p_4_in),
        .I5(ack),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF08000800080008)) 
    \state[1]_i_3 
       (.I0(cnt_scl1__0),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(cnt_scl[0]),
        .I5(cnt_scl[1]),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \state[1]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .O(\state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAFFEA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(p_4_in),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state[2]_i_3_n_0 ),
        .I4(cnt_scl1__0),
        .I5(\state[2]_i_4_n_0 ),
        .O(state[2]));
  LUT6 #(
    .INIT(64'h4040004000000040)) 
    \state[2]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(cnt_scl1__0),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[0]_i_3_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \state[2]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \state[2]_i_4 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(cnt_ack[2]),
        .I3(\state_reg_n_0_[1] ),
        .I4(p_4_in),
        .I5(ack),
        .O(\state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505050505C505050)) 
    \state[3]_i_2 
       (.I0(p_4_in),
        .I1(cnt_scl1__0),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[0] ),
        .O(state[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \state[3]_i_3 
       (.I0(cnt_scl[0]),
        .I1(cnt_scl[1]),
        .O(p_4_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \state[3]_i_4 
       (.I0(cnt_bit[2]),
        .I1(cnt_scl[1]),
        .I2(cnt_scl[0]),
        .I3(cnt_bit[0]),
        .I4(cnt_bit[1]),
        .O(cnt_scl1__0));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(\cnt_clk[7]_i_2_n_0 ),
        .D(state[3]),
        .Q(\state_reg_n_0_[3] ));
endmodule

(* ECO_CHECKSUM = "88551875" *) 
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

  wire [3:0]data;
  wire i2c_scl;
  wire i2c_scl_OBUF;
  wire i2c_sda;
  wire i2c_sda_IBUF;
  wire i2c_sda_OBUF;
  wire i2c_sda_TRI;
  wire rst_n;
  wire rst_n_IBUF;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;

initial begin
 $sdf_annotate("i2c_eerom_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \data_OBUF[0]_inst 
       (.I(1'b0),
        .O(data[0]));
  OBUF \data_OBUF[1]_inst 
       (.I(1'b0),
        .O(data[1]));
  OBUF \data_OBUF[2]_inst 
       (.I(1'b0),
        .O(data[2]));
  OBUF \data_OBUF[3]_inst 
       (.I(1'b0),
        .O(data[3]));
  i2c_ctrl i2c_ctrl
       (.CLK(sys_clk_IBUF_BUFG),
        .i2c_scl_OBUF(i2c_scl_OBUF),
        .i2c_sda_IBUF(i2c_sda_IBUF),
        .i2c_sda_OBUF(i2c_sda_OBUF),
        .i2c_sda_TRI(i2c_sda_TRI),
        .rst_n_IBUF(rst_n_IBUF));
  OBUF i2c_scl_OBUF_inst
       (.I(i2c_scl_OBUF),
        .O(i2c_scl));
  IOBUF_UNIQ_BASE_ i2c_sda_IOBUF_inst
       (.I(i2c_sda_OBUF),
        .IO(i2c_sda),
        .O(i2c_sda_IBUF),
        .T(i2c_sda_TRI));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  BUFG sys_clk_IBUF_BUFG_inst
       (.I(sys_clk_IBUF),
        .O(sys_clk_IBUF_BUFG));
  IBUF sys_clk_IBUF_inst
       (.I(sys_clk),
        .O(sys_clk_IBUF));
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
