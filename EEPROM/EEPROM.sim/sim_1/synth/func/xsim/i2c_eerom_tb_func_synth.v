// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Nov 20 11:41:42 2024
// Host        : LAPTOP-8FN33LQG running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               F:/FPGA/EEPROM/EEPROM.sim/sim_1/synth/func/xsim/i2c_eerom_tb_func_synth.v
// Design      : i2c_eerom_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ax_debounce
   (rd_en_reg,
    key_rd_IBUF,
    sys_clk,
    rst_n,
    i2c_end,
    rd_en_reg_0);
  output rd_en_reg;
  input key_rd_IBUF;
  input sys_clk;
  input rst_n;
  input i2c_end;
  input rd_en_reg_0;

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
  wire button_posedge_i_1_n_0;
  wire i2c_end;
  wire key_rd_IBUF;
  wire [31:1]q_next0;
  wire q_next0_carry__0_n_0;
  wire q_next0_carry__0_n_1;
  wire q_next0_carry__0_n_2;
  wire q_next0_carry__0_n_3;
  wire q_next0_carry__1_n_0;
  wire q_next0_carry__1_n_1;
  wire q_next0_carry__1_n_2;
  wire q_next0_carry__1_n_3;
  wire q_next0_carry__2_n_0;
  wire q_next0_carry__2_n_1;
  wire q_next0_carry__2_n_2;
  wire q_next0_carry__2_n_3;
  wire q_next0_carry__3_n_0;
  wire q_next0_carry__3_n_1;
  wire q_next0_carry__3_n_2;
  wire q_next0_carry__3_n_3;
  wire q_next0_carry__4_n_0;
  wire q_next0_carry__4_n_1;
  wire q_next0_carry__4_n_2;
  wire q_next0_carry__4_n_3;
  wire q_next0_carry__5_n_0;
  wire q_next0_carry__5_n_1;
  wire q_next0_carry__5_n_2;
  wire q_next0_carry__5_n_3;
  wire q_next0_carry__6_n_2;
  wire q_next0_carry__6_n_3;
  wire q_next0_carry_n_0;
  wire q_next0_carry_n_1;
  wire q_next0_carry_n_2;
  wire q_next0_carry_n_3;
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
  wire rd_en_reg;
  wire rd_en_reg_0;
  wire read;
  wire rst_n;
  wire sys_clk;
  wire [3:2]NLW_q_next0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_q_next0_carry__6_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    DFF1_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(key_rd_IBUF),
        .Q(DFF1));
  FDCE #(
    .INIT(1'b0)) 
    DFF2_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(DFF1),
        .Q(DFF2));
  FDPE #(
    .INIT(1'b1)) 
    button_out_d0_reg
       (.C(sys_clk),
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
       (.C(sys_clk),
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
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(button_posedge_i_1_n_0),
        .Q(read));
  CARRY4 q_next0_carry
       (.CI(1'b0),
        .CO({q_next0_carry_n_0,q_next0_carry_n_1,q_next0_carry_n_2,q_next0_carry_n_3}),
        .CYINIT(q_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[4:1]),
        .S(q_reg[4:1]));
  CARRY4 q_next0_carry__0
       (.CI(q_next0_carry_n_0),
        .CO({q_next0_carry__0_n_0,q_next0_carry__0_n_1,q_next0_carry__0_n_2,q_next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[8:5]),
        .S(q_reg[8:5]));
  CARRY4 q_next0_carry__1
       (.CI(q_next0_carry__0_n_0),
        .CO({q_next0_carry__1_n_0,q_next0_carry__1_n_1,q_next0_carry__1_n_2,q_next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[12:9]),
        .S(q_reg[12:9]));
  CARRY4 q_next0_carry__2
       (.CI(q_next0_carry__1_n_0),
        .CO({q_next0_carry__2_n_0,q_next0_carry__2_n_1,q_next0_carry__2_n_2,q_next0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[16:13]),
        .S(q_reg[16:13]));
  CARRY4 q_next0_carry__3
       (.CI(q_next0_carry__2_n_0),
        .CO({q_next0_carry__3_n_0,q_next0_carry__3_n_1,q_next0_carry__3_n_2,q_next0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[20:17]),
        .S(q_reg[20:17]));
  CARRY4 q_next0_carry__4
       (.CI(q_next0_carry__3_n_0),
        .CO({q_next0_carry__4_n_0,q_next0_carry__4_n_1,q_next0_carry__4_n_2,q_next0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[24:21]),
        .S(q_reg[24:21]));
  CARRY4 q_next0_carry__5
       (.CI(q_next0_carry__4_n_0),
        .CO({q_next0_carry__5_n_0,q_next0_carry__5_n_1,q_next0_carry__5_n_2,q_next0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(q_next0[28:25]),
        .S(q_reg[28:25]));
  CARRY4 q_next0_carry__6
       (.CI(q_next0_carry__5_n_0),
        .CO({NLW_q_next0_carry__6_CO_UNCONNECTED[3:2],q_next0_carry__6_n_2,q_next0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_q_next0_carry__6_O_UNCONNECTED[3],q_next0[31:29]}),
        .S({1'b0,q_reg[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \q_reg[0]_i_1 
       (.I0(DFF2),
        .I1(DFF1),
        .I2(q_reg[0]),
        .O(\q_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[10]_i_1 
       (.I0(q_next0[10]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[11]_i_1 
       (.I0(q_next0[11]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[12]_i_1 
       (.I0(q_next0[12]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[13]_i_1 
       (.I0(q_next0[13]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[14]_i_1 
       (.I0(q_next0[14]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[15]_i_1 
       (.I0(q_next0[15]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[16]_i_1 
       (.I0(q_next0[16]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[17]_i_1 
       (.I0(q_next0[17]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[18]_i_1 
       (.I0(q_next0[18]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[19]_i_1 
       (.I0(q_next0[19]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[1]_i_1 
       (.I0(q_next0[1]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[20]_i_1 
       (.I0(q_next0[20]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[21]_i_1 
       (.I0(q_next0[21]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[22]_i_1 
       (.I0(q_next0[22]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[23]_i_1 
       (.I0(q_next0[23]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[24]_i_1 
       (.I0(q_next0[24]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[25]_i_1 
       (.I0(q_next0[25]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[26]_i_1 
       (.I0(q_next0[26]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[27]_i_1 
       (.I0(q_next0[27]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[28]_i_1 
       (.I0(q_next0[28]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[29]_i_1 
       (.I0(q_next0[29]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[2]_i_1 
       (.I0(q_next0[2]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[3]_i_1 
       (.I0(q_next0[3]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[4]_i_1 
       (.I0(q_next0[4]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[5]_i_1 
       (.I0(q_next0[5]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[6]_i_1 
       (.I0(q_next0[6]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[7]_i_1 
       (.I0(q_next0[7]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[8]_i_1 
       (.I0(q_next0[8]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
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
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[0]_i_1_n_0 ),
        .Q(q_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[10] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[10]_i_1_n_0 ),
        .Q(q_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[11] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[11]_i_1_n_0 ),
        .Q(q_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[12] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[12]_i_1_n_0 ),
        .Q(q_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[13] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[13]_i_1_n_0 ),
        .Q(q_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[14] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[14]_i_1_n_0 ),
        .Q(q_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[15] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[15]_i_1_n_0 ),
        .Q(q_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[16] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[16]_i_1_n_0 ),
        .Q(q_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[17] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[17]_i_1_n_0 ),
        .Q(q_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[18] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[18]_i_1_n_0 ),
        .Q(q_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[19] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[19]_i_1_n_0 ),
        .Q(q_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[1]_i_1_n_0 ),
        .Q(q_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[20] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[20]_i_1_n_0 ),
        .Q(q_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[21] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[21]_i_1_n_0 ),
        .Q(q_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[22] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[22]_i_1_n_0 ),
        .Q(q_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[23] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[23]_i_1_n_0 ),
        .Q(q_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[24] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[24]_i_1_n_0 ),
        .Q(q_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[25] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[25]_i_1_n_0 ),
        .Q(q_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[26] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[26]_i_1_n_0 ),
        .Q(q_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[27] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[27]_i_1_n_0 ),
        .Q(q_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[28] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[28]_i_1_n_0 ),
        .Q(q_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[29] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[29]_i_1_n_0 ),
        .Q(q_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[2]_i_1_n_0 ),
        .Q(q_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[30] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[30]_i_1_n_0 ),
        .Q(q_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[31] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[31]_i_2_n_0 ),
        .Q(q_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[3]_i_1_n_0 ),
        .Q(q_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[4]_i_1_n_0 ),
        .Q(q_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[5]_i_1_n_0 ),
        .Q(q_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[6]_i_1_n_0 ),
        .Q(q_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[7]_i_1_n_0 ),
        .Q(q_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[8] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[8]_i_1_n_0 ),
        .Q(q_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[9] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[9]_i_1_n_0 ),
        .Q(q_reg[9]));
  LUT3 #(
    .INIT(8'hBA)) 
    rd_en_i_1
       (.I0(read),
        .I1(i2c_end),
        .I2(rd_en_reg_0),
        .O(rd_en_reg));
endmodule

(* ORIG_REF_NAME = "ax_debounce" *) 
module ax_debounce_0
   (button_out_d0_reg_0,
    wr_en_reg,
    key_wr_IBUF,
    sys_clk,
    rst_n_IBUF,
    i2c_end,
    wr_en_reg_0);
  output button_out_d0_reg_0;
  output wr_en_reg;
  input key_wr_IBUF;
  input sys_clk;
  input rst_n_IBUF;
  input i2c_end;
  input wr_en_reg_0;

  wire DFF1;
  wire DFF2;
  wire button_out_d0;
  wire button_out_d0_reg_0;
  wire button_out_i_1__0_n_0;
  wire button_out_i_2__0_n_0;
  wire button_out_i_3__0_n_0;
  wire button_out_i_4__0_n_0;
  wire button_out_i_5__0_n_0;
  wire button_out_i_6__0_n_0;
  wire button_out_i_7__0_n_0;
  wire button_out_reg_n_0;
  wire button_posedge_i_1__0_n_0;
  wire i2c_end;
  wire key_wr_IBUF;
  wire q_next0_carry__0_n_0;
  wire q_next0_carry__0_n_1;
  wire q_next0_carry__0_n_2;
  wire q_next0_carry__0_n_3;
  wire q_next0_carry__0_n_4;
  wire q_next0_carry__0_n_5;
  wire q_next0_carry__0_n_6;
  wire q_next0_carry__0_n_7;
  wire q_next0_carry__1_n_0;
  wire q_next0_carry__1_n_1;
  wire q_next0_carry__1_n_2;
  wire q_next0_carry__1_n_3;
  wire q_next0_carry__1_n_4;
  wire q_next0_carry__1_n_5;
  wire q_next0_carry__1_n_6;
  wire q_next0_carry__1_n_7;
  wire q_next0_carry__2_n_0;
  wire q_next0_carry__2_n_1;
  wire q_next0_carry__2_n_2;
  wire q_next0_carry__2_n_3;
  wire q_next0_carry__2_n_4;
  wire q_next0_carry__2_n_5;
  wire q_next0_carry__2_n_6;
  wire q_next0_carry__2_n_7;
  wire q_next0_carry__3_n_0;
  wire q_next0_carry__3_n_1;
  wire q_next0_carry__3_n_2;
  wire q_next0_carry__3_n_3;
  wire q_next0_carry__3_n_4;
  wire q_next0_carry__3_n_5;
  wire q_next0_carry__3_n_6;
  wire q_next0_carry__3_n_7;
  wire q_next0_carry__4_n_0;
  wire q_next0_carry__4_n_1;
  wire q_next0_carry__4_n_2;
  wire q_next0_carry__4_n_3;
  wire q_next0_carry__4_n_4;
  wire q_next0_carry__4_n_5;
  wire q_next0_carry__4_n_6;
  wire q_next0_carry__4_n_7;
  wire q_next0_carry__5_n_0;
  wire q_next0_carry__5_n_1;
  wire q_next0_carry__5_n_2;
  wire q_next0_carry__5_n_3;
  wire q_next0_carry__5_n_4;
  wire q_next0_carry__5_n_5;
  wire q_next0_carry__5_n_6;
  wire q_next0_carry__5_n_7;
  wire q_next0_carry__6_n_2;
  wire q_next0_carry__6_n_3;
  wire q_next0_carry__6_n_5;
  wire q_next0_carry__6_n_6;
  wire q_next0_carry__6_n_7;
  wire q_next0_carry_n_0;
  wire q_next0_carry_n_1;
  wire q_next0_carry_n_2;
  wire q_next0_carry_n_3;
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
  wire rst_n_IBUF;
  wire sys_clk;
  wire wr_en_reg;
  wire wr_en_reg_0;
  wire write;
  wire [3:2]NLW_q_next0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_q_next0_carry__6_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    DFF1_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(button_out_d0_reg_0),
        .D(key_wr_IBUF),
        .Q(DFF1));
  FDCE #(
    .INIT(1'b0)) 
    DFF2_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(button_out_d0_reg_0),
        .D(DFF1),
        .Q(DFF2));
  FDPE #(
    .INIT(1'b1)) 
    button_out_d0_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(button_out_reg_n_0),
        .PRE(button_out_d0_reg_0),
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
       (.C(sys_clk),
        .CE(1'b1),
        .D(button_out_i_1__0_n_0),
        .PRE(button_out_d0_reg_0),
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
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(button_out_d0_reg_0),
        .D(button_posedge_i_1__0_n_0),
        .Q(write));
  CARRY4 q_next0_carry
       (.CI(1'b0),
        .CO({q_next0_carry_n_0,q_next0_carry_n_1,q_next0_carry_n_2,q_next0_carry_n_3}),
        .CYINIT(\q_reg_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry_n_4,q_next0_carry_n_5,q_next0_carry_n_6,q_next0_carry_n_7}),
        .S({\q_reg_reg_n_0_[4] ,\q_reg_reg_n_0_[3] ,\q_reg_reg_n_0_[2] ,\q_reg_reg_n_0_[1] }));
  CARRY4 q_next0_carry__0
       (.CI(q_next0_carry_n_0),
        .CO({q_next0_carry__0_n_0,q_next0_carry__0_n_1,q_next0_carry__0_n_2,q_next0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__0_n_4,q_next0_carry__0_n_5,q_next0_carry__0_n_6,q_next0_carry__0_n_7}),
        .S({\q_reg_reg_n_0_[8] ,\q_reg_reg_n_0_[7] ,\q_reg_reg_n_0_[6] ,\q_reg_reg_n_0_[5] }));
  CARRY4 q_next0_carry__1
       (.CI(q_next0_carry__0_n_0),
        .CO({q_next0_carry__1_n_0,q_next0_carry__1_n_1,q_next0_carry__1_n_2,q_next0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__1_n_4,q_next0_carry__1_n_5,q_next0_carry__1_n_6,q_next0_carry__1_n_7}),
        .S({\q_reg_reg_n_0_[12] ,\q_reg_reg_n_0_[11] ,\q_reg_reg_n_0_[10] ,\q_reg_reg_n_0_[9] }));
  CARRY4 q_next0_carry__2
       (.CI(q_next0_carry__1_n_0),
        .CO({q_next0_carry__2_n_0,q_next0_carry__2_n_1,q_next0_carry__2_n_2,q_next0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__2_n_4,q_next0_carry__2_n_5,q_next0_carry__2_n_6,q_next0_carry__2_n_7}),
        .S({\q_reg_reg_n_0_[16] ,\q_reg_reg_n_0_[15] ,\q_reg_reg_n_0_[14] ,\q_reg_reg_n_0_[13] }));
  CARRY4 q_next0_carry__3
       (.CI(q_next0_carry__2_n_0),
        .CO({q_next0_carry__3_n_0,q_next0_carry__3_n_1,q_next0_carry__3_n_2,q_next0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__3_n_4,q_next0_carry__3_n_5,q_next0_carry__3_n_6,q_next0_carry__3_n_7}),
        .S({\q_reg_reg_n_0_[20] ,\q_reg_reg_n_0_[19] ,\q_reg_reg_n_0_[18] ,\q_reg_reg_n_0_[17] }));
  CARRY4 q_next0_carry__4
       (.CI(q_next0_carry__3_n_0),
        .CO({q_next0_carry__4_n_0,q_next0_carry__4_n_1,q_next0_carry__4_n_2,q_next0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__4_n_4,q_next0_carry__4_n_5,q_next0_carry__4_n_6,q_next0_carry__4_n_7}),
        .S({\q_reg_reg_n_0_[24] ,\q_reg_reg_n_0_[23] ,\q_reg_reg_n_0_[22] ,\q_reg_reg_n_0_[21] }));
  CARRY4 q_next0_carry__5
       (.CI(q_next0_carry__4_n_0),
        .CO({q_next0_carry__5_n_0,q_next0_carry__5_n_1,q_next0_carry__5_n_2,q_next0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({q_next0_carry__5_n_4,q_next0_carry__5_n_5,q_next0_carry__5_n_6,q_next0_carry__5_n_7}),
        .S({\q_reg_reg_n_0_[28] ,\q_reg_reg_n_0_[27] ,\q_reg_reg_n_0_[26] ,\q_reg_reg_n_0_[25] }));
  CARRY4 q_next0_carry__6
       (.CI(q_next0_carry__5_n_0),
        .CO({NLW_q_next0_carry__6_CO_UNCONNECTED[3:2],q_next0_carry__6_n_2,q_next0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_q_next0_carry__6_O_UNCONNECTED[3],q_next0_carry__6_n_5,q_next0_carry__6_n_6,q_next0_carry__6_n_7}),
        .S({1'b0,\q_reg_reg_n_0_[31] ,\q_reg_reg_n_0_[30] ,\q_reg_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \q_reg[0]_i_1__0 
       (.I0(DFF2),
        .I1(DFF1),
        .I2(\q_reg_reg_n_0_[0] ),
        .O(\q_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[10]_i_1__0 
       (.I0(q_next0_carry__1_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[11]_i_1__0 
       (.I0(q_next0_carry__1_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[12]_i_1__0 
       (.I0(q_next0_carry__1_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[13]_i_1__0 
       (.I0(q_next0_carry__2_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[14]_i_1__0 
       (.I0(q_next0_carry__2_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[15]_i_1__0 
       (.I0(q_next0_carry__2_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[16]_i_1__0 
       (.I0(q_next0_carry__2_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[17]_i_1__0 
       (.I0(q_next0_carry__3_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[18]_i_1__0 
       (.I0(q_next0_carry__3_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[19]_i_1__0 
       (.I0(q_next0_carry__3_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[1]_i_1__0 
       (.I0(q_next0_carry_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[20]_i_1__0 
       (.I0(q_next0_carry__3_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[21]_i_1__0 
       (.I0(q_next0_carry__4_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[22]_i_1__0 
       (.I0(q_next0_carry__4_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[23]_i_1__0 
       (.I0(q_next0_carry__4_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[24]_i_1__0 
       (.I0(q_next0_carry__4_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[25]_i_1__0 
       (.I0(q_next0_carry__5_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[26]_i_1__0 
       (.I0(q_next0_carry__5_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[27]_i_1__0 
       (.I0(q_next0_carry__5_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[28]_i_1__0 
       (.I0(q_next0_carry__5_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[29]_i_1__0 
       (.I0(q_next0_carry__6_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[2]_i_1__0 
       (.I0(q_next0_carry_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[31]_i_2__0 
       (.I0(q_next0_carry__6_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[31]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \q_reg[31]_i_3 
       (.I0(rst_n_IBUF),
        .O(button_out_d0_reg_0));
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
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[3]_i_1__0 
       (.I0(q_next0_carry_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[4]_i_1__0 
       (.I0(q_next0_carry_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[5]_i_1__0 
       (.I0(q_next0_carry__0_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[6]_i_1__0 
       (.I0(q_next0_carry__0_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[7]_i_1__0 
       (.I0(q_next0_carry__0_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[8]_i_1__0 
       (.I0(q_next0_carry__0_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
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
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[0]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[10] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[10]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[11] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[11]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[12] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[12]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[13] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[13]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[14] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[14]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[15] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[15]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[16] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[16]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[17] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[17]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[18] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[18]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[19] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[19]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[1]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[20] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[20]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[21] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[21]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[22] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[22]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[23] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[23]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[24] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[24]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[25] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[25]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[26] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[26]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[27] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[27]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[28] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[28]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[29] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[29]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[2]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[30] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[30]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[31] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[31]_i_2__0_n_0 ),
        .Q(\q_reg_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[3]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[4]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[5]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[6]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[7]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[8] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[8]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[9] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(button_out_d0_reg_0),
        .D(\q_reg[9]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[9] ));
  LUT3 #(
    .INIT(8'hBA)) 
    wr_en_i_1
       (.I0(write),
        .I1(i2c_end),
        .I2(wr_en_reg_0),
        .O(wr_en_reg));
endmodule

module i2c_ctrl
   (i2c_scl_OBUF,
    CLK,
    i2c_end,
    i2c_sda_OBUF,
    i2c_sda_TRI,
    rst_n,
    sys_clk,
    i2c_sda_IBUF,
    i2c_start);
  output i2c_scl_OBUF;
  output CLK;
  output i2c_end;
  output i2c_sda_OBUF;
  output i2c_sda_TRI;
  input rst_n;
  input sys_clk;
  input i2c_sda_IBUF;
  input i2c_start;

  wire CLK;
  wire cnt_2;
  wire cnt_2_i_1_n_0;
  wire [2:0]cnt_ack;
  wire \cnt_ack[0]_i_1_n_0 ;
  wire \cnt_ack[0]_i_2_n_0 ;
  wire \cnt_ack[1]_i_1_n_0 ;
  wire \cnt_ack[1]_i_2_n_0 ;
  wire \cnt_ack[1]_i_3_n_0 ;
  wire \cnt_ack[2]_i_1_n_0 ;
  wire \cnt_ack[2]_i_2_n_0 ;
  wire \cnt_ack[2]_i_3_n_0 ;
  wire \cnt_ack[2]_i_4_n_0 ;
  wire [2:0]cnt_bit;
  wire \cnt_bit[0]_i_1_n_0 ;
  wire \cnt_bit[1]_i_1_n_0 ;
  wire \cnt_bit[2]_i_1_n_0 ;
  wire [7:0]cnt_clk;
  wire \cnt_clk[0]_i_2_n_0 ;
  wire \cnt_clk[4]_i_2_n_0 ;
  wire \cnt_clk[7]_i_2_n_0 ;
  wire [7:0]cnt_clk_0;
  wire [1:0]cnt_scl;
  wire \cnt_scl[0]_i_1_n_0 ;
  wire \cnt_scl[1]_i_1_n_0 ;
  wire i2c_clk_i_1_n_0;
  wire i2c_clk_i_2_n_0;
  wire i2c_end;
  wire i2c_end0;
  wire i2c_scl_OBUF;
  wire i2c_scl_reg_i_1_n_0;
  wire i2c_scl_reg_i_2_n_0;
  wire i2c_sda_IBUF;
  wire i2c_sda_IOBUF_inst_i_3_n_0;
  wire i2c_sda_IOBUF_inst_i_4_n_0;
  wire i2c_sda_IOBUF_inst_i_5_n_0;
  wire i2c_sda_IOBUF_inst_i_6_n_0;
  wire i2c_sda_OBUF;
  wire i2c_sda_TRI;
  wire i2c_start;
  wire rst_n;
  wire scl_clk;
  wire scl_clk_i_1_n_0;
  wire [2:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire sys_clk;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    cnt_2_i_1
       (.I0(cnt_2),
        .O(cnt_2_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    cnt_2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_2_i_1_n_0),
        .Q(cnt_2));
  LUT6 #(
    .INIT(64'hCCCCCCCC3333337F)) 
    \cnt_ack[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\cnt_ack[2]_i_2_n_0 ),
        .I2(\cnt_ack[0]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(cnt_ack[0]),
        .O(\cnt_ack[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_ack[0]_i_2 
       (.I0(cnt_bit[1]),
        .I1(cnt_bit[0]),
        .I2(cnt_bit[2]),
        .O(\cnt_ack[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFEF0000)) 
    \cnt_ack[1]_i_1 
       (.I0(\cnt_ack[1]_i_2_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\cnt_ack[1]_i_3_n_0 ),
        .I4(\cnt_ack[2]_i_4_n_0 ),
        .I5(cnt_ack[1]),
        .O(\cnt_ack[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h606F6F6F6F6F6F6F)) 
    \cnt_ack[1]_i_2 
       (.I0(cnt_ack[0]),
        .I1(cnt_ack[1]),
        .I2(\state_reg_n_0_[0] ),
        .I3(cnt_bit[1]),
        .I4(cnt_bit[0]),
        .I5(cnt_bit[2]),
        .O(\cnt_ack[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_ack[1]_i_3 
       (.I0(i2c_sda_IBUF),
        .I1(\state_reg_n_0_[0] ),
        .O(\cnt_ack[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF15FFFFFF400000)) 
    \cnt_ack[2]_i_1 
       (.I0(\cnt_ack[2]_i_2_n_0 ),
        .I1(cnt_ack[0]),
        .I2(cnt_ack[1]),
        .I3(\cnt_ack[2]_i_3_n_0 ),
        .I4(\cnt_ack[2]_i_4_n_0 ),
        .I5(cnt_ack[2]),
        .O(\cnt_ack[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \cnt_ack[2]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(i2c_sda_IBUF),
        .O(\cnt_ack[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \cnt_ack[2]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(cnt_bit[2]),
        .I4(cnt_bit[0]),
        .I5(cnt_bit[1]),
        .O(\cnt_ack[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3333337F)) 
    \cnt_ack[2]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\cnt_ack[2]_i_2_n_0 ),
        .I2(\cnt_ack[0]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\cnt_ack[2]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ack_reg[0] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_ack[0]_i_1_n_0 ),
        .Q(cnt_ack[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ack_reg[1] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_ack[1]_i_1_n_0 ),
        .Q(cnt_ack[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_ack_reg[2] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_ack[2]_i_1_n_0 ),
        .Q(cnt_ack[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    \cnt_bit[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(cnt_bit[0]),
        .O(\cnt_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00AEAE00)) 
    \cnt_bit[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(cnt_bit[1]),
        .I4(cnt_bit[0]),
        .O(\cnt_bit[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AEAE00AE00AE00)) 
    \cnt_bit[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(cnt_bit[2]),
        .I4(cnt_bit[0]),
        .I5(cnt_bit[1]),
        .O(\cnt_bit[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[0] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_bit[0]_i_1_n_0 ),
        .Q(cnt_bit[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[1] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_bit[1]_i_1_n_0 ),
        .Q(cnt_bit[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[2] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_bit[2]_i_1_n_0 ),
        .Q(cnt_bit[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00FF00F7)) 
    \cnt_clk[0]_i_1 
       (.I0(cnt_clk[4]),
        .I1(cnt_clk[3]),
        .I2(cnt_clk[1]),
        .I3(cnt_clk[0]),
        .I4(\cnt_clk[0]_i_2_n_0 ),
        .O(cnt_clk_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_clk[0]_i_2 
       (.I0(cnt_clk[5]),
        .I1(cnt_clk[2]),
        .I2(cnt_clk[7]),
        .I3(cnt_clk[6]),
        .O(\cnt_clk[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_clk[1]_i_1 
       (.I0(cnt_clk[0]),
        .I1(cnt_clk[1]),
        .O(cnt_clk_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
        .I1(\cnt_clk[7]_i_2_n_0 ),
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
        .I3(\cnt_clk[7]_i_2_n_0 ),
        .I4(cnt_clk[5]),
        .I5(cnt_clk[7]),
        .O(cnt_clk_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_clk[7]_i_2 
       (.I0(cnt_clk[2]),
        .I1(cnt_clk[0]),
        .I2(cnt_clk[1]),
        .O(\cnt_clk[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[0]),
        .Q(cnt_clk[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[1]),
        .Q(cnt_clk[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[2]),
        .Q(cnt_clk[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[3]),
        .Q(cnt_clk[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[4]),
        .Q(cnt_clk[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[5]),
        .Q(cnt_clk[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[6]),
        .Q(cnt_clk[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_clk_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_clk_0[7]),
        .Q(cnt_clk[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \cnt_scl[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(cnt_scl[0]),
        .O(\cnt_scl[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FEFE00)) 
    \cnt_scl[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(cnt_scl[1]),
        .I4(cnt_scl[0]),
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
  LUT5 #(
    .INIT(32'hFFBF0040)) 
    i2c_clk_i_1
       (.I0(i2c_clk_i_2_n_0),
        .I1(cnt_clk[4]),
        .I2(cnt_clk[3]),
        .I3(cnt_clk[1]),
        .I4(CLK),
        .O(i2c_clk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(i2c_clk_i_1_n_0),
        .Q(CLK));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    i2c_end_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(cnt_bit[1]),
        .I4(cnt_bit[0]),
        .I5(cnt_bit[2]),
        .O(i2c_end0));
  FDCE #(
    .INIT(1'b0)) 
    i2c_end_reg
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(i2c_end0),
        .Q(i2c_end));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    i2c_scl_reg
       (.CLR(1'b0),
        .D(i2c_scl_reg_i_1_n_0),
        .G(i2c_scl_reg_i_2_n_0),
        .GE(1'b1),
        .Q(i2c_scl_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    i2c_scl_reg_i_1
       (.I0(cnt_scl[1]),
        .I1(\state_reg_n_0_[0] ),
        .O(i2c_scl_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h43)) 
    i2c_scl_reg_i_2
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .O(i2c_scl_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFEEEEFFFEEEEE)) 
    i2c_sda_IOBUF_inst_i_1
       (.I0(i2c_sda_IOBUF_inst_i_3_n_0),
        .I1(i2c_sda_IOBUF_inst_i_4_n_0),
        .I2(cnt_bit[0]),
        .I3(cnt_bit[2]),
        .I4(i2c_sda_IOBUF_inst_i_5_n_0),
        .I5(cnt_bit[1]),
        .O(i2c_sda_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    i2c_sda_IOBUF_inst_i_2
       (.I0(i2c_sda_IOBUF_inst_i_6_n_0),
        .O(i2c_sda_TRI));
  LUT6 #(
    .INIT(64'h8800830380308333)) 
    i2c_sda_IOBUF_inst_i_3
       (.I0(cnt_bit[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(cnt_bit[2]),
        .I4(\state_reg_n_0_[0] ),
        .I5(cnt_bit[0]),
        .O(i2c_sda_IOBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000003)) 
    i2c_sda_IOBUF_inst_i_4
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(cnt_scl[0]),
        .I4(cnt_scl[1]),
        .O(i2c_sda_IOBUF_inst_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    i2c_sda_IOBUF_inst_i_5
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[0] ),
        .O(i2c_sda_IOBUF_inst_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    i2c_sda_IOBUF_inst_i_6
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .O(i2c_sda_IOBUF_inst_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    scl_clk_i_1
       (.I0(cnt_2),
        .I1(scl_clk),
        .O(scl_clk_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scl_clk_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(scl_clk_i_1_n_0),
        .Q(scl_clk));
  LUT6 #(
    .INIT(64'hFFFFFFFF2000EFCC)) 
    \state[0]_i_1 
       (.I0(cnt_ack[0]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\cnt_ack[0]_i_2_n_0 ),
        .I5(\state[0]_i_2_n_0 ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'hC9C14941C8C04840)) 
    \state[0]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(i2c_sda_IBUF),
        .I4(\state[1]_i_3_n_0 ),
        .I5(i2c_start),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDF3CC55DDF3CC)) 
    \state[1]_i_1 
       (.I0(\cnt_ack[0]_i_2_n_0 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state[1]_i_2_n_0 ),
        .I3(\state_reg_n_0_[0] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state[1]_i_3_n_0 ),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[1]_i_2 
       (.I0(cnt_ack[1]),
        .I1(i2c_sda_IBUF),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \state[1]_i_3 
       (.I0(cnt_bit[2]),
        .I1(cnt_bit[0]),
        .I2(cnt_bit[1]),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF7EFFFFFF00FF00)) 
    \state[2]_i_1 
       (.I0(cnt_bit[2]),
        .I1(cnt_bit[0]),
        .I2(\state[2]_i_2_n_0 ),
        .I3(\state[2]_i_3_n_0 ),
        .I4(cnt_bit[1]),
        .I5(\state_reg_n_0_[2] ),
        .O(state[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state[2]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_3 
       (.I0(cnt_ack[2]),
        .I1(\cnt_ack[2]_i_2_n_0 ),
        .O(\state[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ));
endmodule

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

  wire clk;
  wire [3:0]data;
  wire i2c_end;
  wire i2c_rw_data_n_0;
  wire i2c_rw_data_n_1;
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
  wire read_key_n_0;
  wire rst_n;
  wire rst_n_IBUF;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire write_key_n_0;
  wire write_key_n_1;

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
       (.CLK(clk),
        .i2c_end(i2c_end),
        .i2c_scl_OBUF(i2c_scl_OBUF),
        .i2c_sda_IBUF(i2c_sda_IBUF),
        .i2c_sda_OBUF(i2c_sda_OBUF),
        .i2c_sda_TRI(i2c_sda_TRI),
        .i2c_start(i2c_start),
        .rst_n(write_key_n_0),
        .sys_clk(sys_clk_IBUF_BUFG));
  i2c_rw_data i2c_rw_data
       (.CLK(clk),
        .button_posedge_reg(read_key_n_0),
        .button_posedge_reg_0(write_key_n_1),
        .\cnt_start_reg[0]_0 (i2c_rw_data_n_0),
        .\cnt_start_reg[0]_1 (i2c_rw_data_n_1),
        .i2c_start(i2c_start),
        .rst_n(write_key_n_0),
        .sys_clk(sys_clk_IBUF_BUFG));
  OBUF i2c_scl_OBUF_inst
       (.I(i2c_scl_OBUF),
        .O(i2c_scl));
  IOBUF i2c_sda_IOBUF_inst
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
       (.i2c_end(i2c_end),
        .key_rd_IBUF(key_rd_IBUF),
        .rd_en_reg(read_key_n_0),
        .rd_en_reg_0(i2c_rw_data_n_0),
        .rst_n(write_key_n_0),
        .sys_clk(sys_clk_IBUF_BUFG));
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
       (.button_out_d0_reg_0(write_key_n_0),
        .i2c_end(i2c_end),
        .key_wr_IBUF(key_wr_IBUF),
        .rst_n_IBUF(rst_n_IBUF),
        .sys_clk(sys_clk_IBUF_BUFG),
        .wr_en_reg(write_key_n_1),
        .wr_en_reg_0(i2c_rw_data_n_1));
endmodule

module i2c_rw_data
   (\cnt_start_reg[0]_0 ,
    \cnt_start_reg[0]_1 ,
    i2c_start,
    button_posedge_reg,
    sys_clk,
    rst_n,
    button_posedge_reg_0,
    CLK);
  output \cnt_start_reg[0]_0 ;
  output \cnt_start_reg[0]_1 ;
  output i2c_start;
  input button_posedge_reg;
  input sys_clk;
  input rst_n;
  input button_posedge_reg_0;
  input CLK;

  wire CLK;
  wire button_posedge_reg;
  wire button_posedge_reg_0;
  wire [1:0]cnt_4;
  wire \cnt_4[0]_i_1_n_0 ;
  wire \cnt_4[1]_i_1_n_0 ;
  wire [19:0]cnt_start;
  wire [19:1]cnt_start0;
  wire \cnt_start[19]_i_2_n_0 ;
  wire \cnt_start[19]_i_4_n_0 ;
  wire \cnt_start[19]_i_5_n_0 ;
  wire \cnt_start[19]_i_6_n_0 ;
  wire \cnt_start[19]_i_7_n_0 ;
  wire \cnt_start[19]_i_8_n_0 ;
  wire \cnt_start[19]_i_9_n_0 ;
  wire [19:0]cnt_start_0;
  wire \cnt_start_reg[0]_0 ;
  wire \cnt_start_reg[0]_1 ;
  wire \cnt_start_reg[12]_i_2_n_0 ;
  wire \cnt_start_reg[12]_i_2_n_1 ;
  wire \cnt_start_reg[12]_i_2_n_2 ;
  wire \cnt_start_reg[12]_i_2_n_3 ;
  wire \cnt_start_reg[16]_i_2_n_0 ;
  wire \cnt_start_reg[16]_i_2_n_1 ;
  wire \cnt_start_reg[16]_i_2_n_2 ;
  wire \cnt_start_reg[16]_i_2_n_3 ;
  wire \cnt_start_reg[19]_i_3_n_2 ;
  wire \cnt_start_reg[19]_i_3_n_3 ;
  wire \cnt_start_reg[4]_i_2_n_0 ;
  wire \cnt_start_reg[4]_i_2_n_1 ;
  wire \cnt_start_reg[4]_i_2_n_2 ;
  wire \cnt_start_reg[4]_i_2_n_3 ;
  wire \cnt_start_reg[8]_i_2_n_0 ;
  wire \cnt_start_reg[8]_i_2_n_1 ;
  wire \cnt_start_reg[8]_i_2_n_2 ;
  wire \cnt_start_reg[8]_i_2_n_3 ;
  wire i2c_start;
  wire i2c_start_i_1_n_0;
  wire i2c_start_i_2_n_0;
  wire rst_n;
  wire sys_clk;
  wire [3:2]\NLW_cnt_start_reg[19]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_start_reg[19]_i_3_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \cnt_4[0]_i_1 
       (.I0(i2c_start),
        .I1(cnt_4[0]),
        .O(\cnt_4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_4[1]_i_1 
       (.I0(i2c_start),
        .I1(cnt_4[1]),
        .I2(cnt_4[0]),
        .O(\cnt_4[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_4_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_4[0]_i_1_n_0 ),
        .Q(cnt_4[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_4_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_4[1]_i_1_n_0 ),
        .Q(cnt_4[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \cnt_start[0]_i_1 
       (.I0(\cnt_start_reg[0]_0 ),
        .I1(\cnt_start_reg[0]_1 ),
        .I2(cnt_start[0]),
        .O(cnt_start_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[10]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[10]),
        .O(cnt_start_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[11]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[11]),
        .O(cnt_start_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[12]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[12]),
        .O(cnt_start_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[13]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[13]),
        .O(cnt_start_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[14]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[14]),
        .O(cnt_start_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[15]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[15]),
        .O(cnt_start_0[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[16]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[16]),
        .O(cnt_start_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[17]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[17]),
        .O(cnt_start_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[18]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[18]),
        .O(cnt_start_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[19]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[19]),
        .O(cnt_start_0[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \cnt_start[19]_i_2 
       (.I0(\cnt_start[19]_i_4_n_0 ),
        .I1(\cnt_start[19]_i_5_n_0 ),
        .I2(\cnt_start[19]_i_6_n_0 ),
        .I3(\cnt_start[19]_i_7_n_0 ),
        .I4(\cnt_start[19]_i_8_n_0 ),
        .I5(\cnt_start[19]_i_9_n_0 ),
        .O(\cnt_start[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnt_start[19]_i_4 
       (.I0(cnt_start[5]),
        .I1(cnt_start[4]),
        .I2(cnt_start[7]),
        .I3(cnt_start[6]),
        .O(\cnt_start[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \cnt_start[19]_i_5 
       (.I0(cnt_start[9]),
        .I1(cnt_start[8]),
        .I2(cnt_start[11]),
        .I3(cnt_start[10]),
        .O(\cnt_start[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_start[19]_i_6 
       (.I0(cnt_start[17]),
        .I1(cnt_start[16]),
        .I2(cnt_start[19]),
        .I3(cnt_start[18]),
        .O(\cnt_start[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \cnt_start[19]_i_7 
       (.I0(cnt_start[12]),
        .I1(cnt_start[13]),
        .I2(cnt_start[15]),
        .I3(cnt_start[14]),
        .O(\cnt_start[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \cnt_start[19]_i_8 
       (.I0(cnt_start[1]),
        .I1(cnt_start[0]),
        .I2(cnt_start[2]),
        .I3(cnt_start[3]),
        .O(\cnt_start[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cnt_start[19]_i_9 
       (.I0(\cnt_start_reg[0]_1 ),
        .I1(\cnt_start_reg[0]_0 ),
        .O(\cnt_start[19]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[1]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[1]),
        .O(cnt_start_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[2]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[2]),
        .O(cnt_start_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[3]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[3]),
        .O(cnt_start_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[4]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[4]),
        .O(cnt_start_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[5]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[5]),
        .O(cnt_start_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[6]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[6]),
        .O(cnt_start_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[7]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[7]),
        .O(cnt_start_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[8]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[8]),
        .O(cnt_start_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_start[9]_i_1 
       (.I0(\cnt_start[19]_i_2_n_0 ),
        .I1(cnt_start0[9]),
        .O(cnt_start_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[0]),
        .Q(cnt_start[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[10]),
        .Q(cnt_start[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[11]),
        .Q(cnt_start[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[12]),
        .Q(cnt_start[12]));
  CARRY4 \cnt_start_reg[12]_i_2 
       (.CI(\cnt_start_reg[8]_i_2_n_0 ),
        .CO({\cnt_start_reg[12]_i_2_n_0 ,\cnt_start_reg[12]_i_2_n_1 ,\cnt_start_reg[12]_i_2_n_2 ,\cnt_start_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_start0[12:9]),
        .S(cnt_start[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[13]),
        .Q(cnt_start[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[14]),
        .Q(cnt_start[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[15]),
        .Q(cnt_start[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[16]),
        .Q(cnt_start[16]));
  CARRY4 \cnt_start_reg[16]_i_2 
       (.CI(\cnt_start_reg[12]_i_2_n_0 ),
        .CO({\cnt_start_reg[16]_i_2_n_0 ,\cnt_start_reg[16]_i_2_n_1 ,\cnt_start_reg[16]_i_2_n_2 ,\cnt_start_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_start0[16:13]),
        .S(cnt_start[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[17]),
        .Q(cnt_start[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[18]),
        .Q(cnt_start[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[19]),
        .Q(cnt_start[19]));
  CARRY4 \cnt_start_reg[19]_i_3 
       (.CI(\cnt_start_reg[16]_i_2_n_0 ),
        .CO({\NLW_cnt_start_reg[19]_i_3_CO_UNCONNECTED [3:2],\cnt_start_reg[19]_i_3_n_2 ,\cnt_start_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_start_reg[19]_i_3_O_UNCONNECTED [3],cnt_start0[19:17]}),
        .S({1'b0,cnt_start[19:17]}));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[1]),
        .Q(cnt_start[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[2]),
        .Q(cnt_start[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[3]),
        .Q(cnt_start[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[4]),
        .Q(cnt_start[4]));
  CARRY4 \cnt_start_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_start_reg[4]_i_2_n_0 ,\cnt_start_reg[4]_i_2_n_1 ,\cnt_start_reg[4]_i_2_n_2 ,\cnt_start_reg[4]_i_2_n_3 }),
        .CYINIT(cnt_start[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_start0[4:1]),
        .S(cnt_start[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[5]),
        .Q(cnt_start[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[6]),
        .Q(cnt_start[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[7]),
        .Q(cnt_start[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[8]),
        .Q(cnt_start[8]));
  CARRY4 \cnt_start_reg[8]_i_2 
       (.CI(\cnt_start_reg[4]_i_2_n_0 ),
        .CO({\cnt_start_reg[8]_i_2_n_0 ,\cnt_start_reg[8]_i_2_n_1 ,\cnt_start_reg[8]_i_2_n_2 ,\cnt_start_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_start0[8:5]),
        .S(cnt_start[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(cnt_start_0[9]),
        .Q(cnt_start[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F0F)) 
    i2c_start_i_1
       (.I0(cnt_4[1]),
        .I1(cnt_4[0]),
        .I2(i2c_start_i_2_n_0),
        .I3(i2c_start),
        .O(i2c_start_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i2c_start_i_2
       (.I0(\cnt_start[19]_i_8_n_0 ),
        .I1(\cnt_start[19]_i_7_n_0 ),
        .I2(\cnt_start[19]_i_6_n_0 ),
        .I3(\cnt_start[19]_i_5_n_0 ),
        .I4(\cnt_start[19]_i_4_n_0 ),
        .O(i2c_start_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    i2c_start_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(rst_n),
        .D(i2c_start_i_1_n_0),
        .Q(i2c_start));
  FDCE #(
    .INIT(1'b0)) 
    rd_en_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(button_posedge_reg),
        .Q(\cnt_start_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    wr_en_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(button_posedge_reg_0),
        .Q(\cnt_start_reg[0]_1 ));
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
