// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Nov 20 12:25:28 2024
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

module ax_debounce
   (read,
    key_rd_IBUF,
    sys_clk,
    rst_n);
  output read;
  input key_rd_IBUF;
  input sys_clk;
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
  wire read;
  wire rst_n;
  wire sys_clk;
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \q_reg[0]_i_1 
       (.I0(DFF2),
        .I1(DFF1),
        .I2(q_reg[0]),
        .O(\q_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[10]_i_1 
       (.I0(q_next0[10]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[11]_i_1 
       (.I0(q_next0[11]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[12]_i_1 
       (.I0(q_next0[12]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[13]_i_1 
       (.I0(q_next0[13]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[14]_i_1 
       (.I0(q_next0[14]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[15]_i_1 
       (.I0(q_next0[15]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[16]_i_1 
       (.I0(q_next0[16]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[19]_i_1 
       (.I0(q_next0[19]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[1]_i_1 
       (.I0(q_next0[1]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[20]_i_1 
       (.I0(q_next0[20]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[21]_i_1 
       (.I0(q_next0[21]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[22]_i_1 
       (.I0(q_next0[22]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[23]_i_1 
       (.I0(q_next0[23]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[24]_i_1 
       (.I0(q_next0[24]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[25]_i_1 
       (.I0(q_next0[25]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[26]_i_1 
       (.I0(q_next0[26]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[27]_i_1 
       (.I0(q_next0[27]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[28]_i_1 
       (.I0(q_next0[28]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[29]_i_1 
       (.I0(q_next0[29]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[2]_i_1 
       (.I0(q_next0[2]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[3]_i_1 
       (.I0(q_next0[3]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[4]_i_1 
       (.I0(q_next0[4]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[5]_i_1 
       (.I0(q_next0[5]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[6]_i_1 
       (.I0(q_next0[6]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[7]_i_1 
       (.I0(q_next0[7]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[8]_i_1 
       (.I0(q_next0[8]),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
endmodule

(* ORIG_REF_NAME = "ax_debounce" *) 
module ax_debounce_0
   (write,
    key_wr_IBUF,
    sys_clk,
    rst_n);
  output write;
  input key_wr_IBUF;
  input sys_clk;
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
  wire sys_clk;
  wire write;
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
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(key_wr_IBUF),
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
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(button_posedge_i_1__0_n_0),
        .Q(write));
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
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \q_reg[0]_i_1__0 
       (.I0(DFF2),
        .I1(DFF1),
        .I2(\q_reg_reg_n_0_[0] ),
        .O(\q_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[10]_i_1__0 
       (.I0(q_next0_carry__1_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[11]_i_1__0 
       (.I0(q_next0_carry__1_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[12]_i_1__0 
       (.I0(q_next0_carry__1_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[13]_i_1__0 
       (.I0(q_next0_carry__2_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[14]_i_1__0 
       (.I0(q_next0_carry__2_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[15]_i_1__0 
       (.I0(q_next0_carry__2_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[16]_i_1__0 
       (.I0(q_next0_carry__2_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[19]_i_1__0 
       (.I0(q_next0_carry__3_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[1]_i_1__0 
       (.I0(q_next0_carry_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[20]_i_1__0 
       (.I0(q_next0_carry__3_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[21]_i_1__0 
       (.I0(q_next0_carry__4_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[22]_i_1__0 
       (.I0(q_next0_carry__4_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[23]_i_1__0 
       (.I0(q_next0_carry__4_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[24]_i_1__0 
       (.I0(q_next0_carry__4_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[25]_i_1__0 
       (.I0(q_next0_carry__5_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[26]_i_1__0 
       (.I0(q_next0_carry__5_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[27]_i_1__0 
       (.I0(q_next0_carry__5_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[28]_i_1__0 
       (.I0(q_next0_carry__5_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[29]_i_1__0 
       (.I0(q_next0_carry__6_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[2]_i_1__0 
       (.I0(q_next0_carry_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[3]_i_1__0 
       (.I0(q_next0_carry_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[4]_i_1__0 
       (.I0(q_next0_carry_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[5]_i_1__0 
       (.I0(q_next0_carry__0_n_7),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[6]_i_1__0 
       (.I0(q_next0_carry__0_n_6),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[7]_i_1__0 
       (.I0(q_next0_carry__0_n_5),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \q_reg[8]_i_1__0 
       (.I0(q_next0_carry__0_n_4),
        .I1(DFF2),
        .I2(DFF1),
        .O(\q_reg[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
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
        .CLR(rst_n),
        .D(\q_reg[0]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[10] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[10]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[11] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[11]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[12] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[12]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[13] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[13]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[14] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[14]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[15] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[15]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[16] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[16]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[17] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[17]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[18] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[18]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[19] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[19]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[1]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[20] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[20]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[21] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[21]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[22] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[22]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[23] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[23]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[24] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[24]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[25] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[25]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[26] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[26]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[27] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[27]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[28] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[28]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[29] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[29]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[2]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[30] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[30]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[31] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[31]_i_2__0_n_0 ),
        .Q(\q_reg_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[3]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[4]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[5]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[6]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[7]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[8] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[8]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[9] 
       (.C(sys_clk),
        .CE(\q_reg[31]_i_1__0_n_0 ),
        .CLR(rst_n),
        .D(\q_reg[9]_i_1__0_n_0 ),
        .Q(\q_reg_reg_n_0_[9] ));
endmodule

module i2c_ctrl
   (i2c_scl_OBUF,
    i2c_end,
    clk,
    E,
    Q,
    \rd_data_reg[0]_0 ,
    i2c_sda_OBUF,
    rd_en_reg,
    wr_en_reg,
    i2c_sda_TRI,
    \data[7] ,
    CLK,
    rst_n,
    sys_clk,
    wr_en,
    rd_en,
    \state_reg[0]_0 ,
    i2c_start,
    \wr_data_reg[4] ,
    \wr_data_reg[0] ,
    i2c_sda_IBUF,
    read,
    write);
  output i2c_scl_OBUF;
  output i2c_end;
  output clk;
  output [0:0]E;
  output [0:0]Q;
  output [2:0]\rd_data_reg[0]_0 ;
  output i2c_sda_OBUF;
  output rd_en_reg;
  output wr_en_reg;
  output i2c_sda_TRI;
  output [7:0]\data[7] ;
  input CLK;
  input rst_n;
  input sys_clk;
  input wr_en;
  input rd_en;
  input \state_reg[0]_0 ;
  input i2c_start;
  input \wr_data_reg[4] ;
  input \wr_data_reg[0] ;
  input i2c_sda_IBUF;
  input read;
  input write;

  wire CLK;
  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire cnt_2;
  wire cnt_2_i_1_n_0;
  wire [2:0]cnt_ack;
  wire \cnt_ack[0]_i_1_n_0 ;
  wire \cnt_ack[1]_i_1_n_0 ;
  wire \cnt_ack[1]_i_2_n_0 ;
  wire \cnt_ack[1]_i_3_n_0 ;
  wire \cnt_ack[2]_i_1_n_0 ;
  wire \cnt_ack[2]_i_2_n_0 ;
  wire \cnt_ack[2]_i_3_n_0 ;
  wire \cnt_ack[2]_i_4_n_0 ;
  wire \cnt_bit[0]_i_1_n_0 ;
  wire \cnt_bit[1]_i_1_n_0 ;
  wire \cnt_bit[2]_i_1_n_0 ;
  wire \cnt_bit[2]_i_2_n_0 ;
  wire [7:0]cnt_clk;
  wire \cnt_clk[3]_i_2_n_0 ;
  wire \cnt_clk[5]_i_2_n_0 ;
  wire \cnt_clk[7]_i_2_n_0 ;
  wire [7:0]cnt_clk_0;
  wire [1:0]cnt_scl;
  wire \cnt_scl[0]_i_1_n_0 ;
  wire \cnt_scl[1]_i_1_n_0 ;
  wire [7:0]\data[7] ;
  wire i2c_clk_i_1_n_0;
  wire i2c_end;
  wire i2c_end0;
  wire i2c_end_i_2_n_0;
  wire i2c_scl_OBUF;
  wire i2c_scl_reg_i_1_n_0;
  wire i2c_scl_reg_i_2_n_0;
  wire i2c_sda_IBUF;
  wire i2c_sda_IOBUF_inst_i_12_n_0;
  wire i2c_sda_IOBUF_inst_i_13_n_0;
  wire i2c_sda_IOBUF_inst_i_14_n_0;
  wire i2c_sda_IOBUF_inst_i_4_n_0;
  wire i2c_sda_IOBUF_inst_i_5_n_0;
  wire i2c_sda_IOBUF_inst_i_6_n_0;
  wire i2c_sda_OBUF;
  wire i2c_sda_TRI;
  wire i2c_start;
  wire [7:0]rd_data;
  wire \rd_data[7]_i_2_n_0 ;
  wire \rd_data[7]_i_3_n_0 ;
  wire \rd_data[7]_i_4_n_0 ;
  wire \rd_data[7]_i_5_n_0 ;
  wire [2:0]\rd_data_reg[0]_0 ;
  wire rd_en;
  wire rd_en_reg;
  wire re_wr_reg_i_1_n_0;
  wire re_wr_reg_reg_n_0;
  wire read;
  wire rst_n;
  wire scl_clk;
  wire scl_clk_i_1_n_0;
  wire [3:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire sys_clk;
  wire \wr_data_reg[0] ;
  wire \wr_data_reg[4] ;
  wire wr_en;
  wire wr_en_reg;
  wire write;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  LUT5 #(
    .INIT(32'h74FF7700)) 
    \cnt_ack[0]_i_1 
       (.I0(re_wr_reg_reg_n_0),
        .I1(\cnt_ack[2]_i_2_n_0 ),
        .I2(\cnt_ack[2]_i_3_n_0 ),
        .I3(\cnt_ack[2]_i_4_n_0 ),
        .I4(cnt_ack[0]),
        .O(\cnt_ack[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F1FFFF00F40000)) 
    \cnt_ack[1]_i_1 
       (.I0(\cnt_ack[2]_i_3_n_0 ),
        .I1(cnt_ack[0]),
        .I2(\cnt_ack[1]_i_2_n_0 ),
        .I3(\cnt_ack[1]_i_3_n_0 ),
        .I4(\cnt_ack[2]_i_4_n_0 ),
        .I5(cnt_ack[1]),
        .O(\cnt_ack[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA2AAAAAAAAAA)) 
    \cnt_ack[1]_i_2 
       (.I0(\cnt_ack[2]_i_3_n_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(Q),
        .I4(\state_reg_n_0_[1] ),
        .I5(re_wr_reg_reg_n_0),
        .O(\cnt_ack[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \cnt_ack[1]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(Q),
        .I4(\state[3]_i_3_n_0 ),
        .I5(re_wr_reg_reg_n_0),
        .O(\cnt_ack[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFFFAAEA0000)) 
    \cnt_ack[2]_i_1 
       (.I0(\cnt_ack[2]_i_2_n_0 ),
        .I1(cnt_ack[1]),
        .I2(cnt_ack[0]),
        .I3(\cnt_ack[2]_i_3_n_0 ),
        .I4(\cnt_ack[2]_i_4_n_0 ),
        .I5(cnt_ack[2]),
        .O(\cnt_ack[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \cnt_ack[2]_i_2 
       (.I0(\state[3]_i_3_n_0 ),
        .I1(Q),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(\state_reg_n_0_[2] ),
        .O(\cnt_ack[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \cnt_ack[2]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(i2c_sda_IBUF),
        .O(\cnt_ack[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h555555555555575F)) 
    \cnt_ack[2]_i_4 
       (.I0(\cnt_ack[1]_i_2_n_0 ),
        .I1(\state[3]_i_3_n_0 ),
        .I2(Q),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[3] ),
        .I5(\state_reg_n_0_[2] ),
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
  LUT5 #(
    .INIT(32'h10111010)) 
    \cnt_bit[0]_i_1 
       (.I0(\rd_data_reg[0]_0 [0]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q),
        .I4(\state_reg_n_0_[1] ),
        .O(\cnt_bit[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0600060606000600)) 
    \cnt_bit[1]_i_1 
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q),
        .I5(\state_reg_n_0_[1] ),
        .O(\cnt_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \cnt_bit[2]_i_1 
       (.I0(\rd_data_reg[0]_0 [0]),
        .I1(\rd_data_reg[0]_0 [1]),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\cnt_bit[2]_i_2_n_0 ),
        .O(\cnt_bit[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFF0D)) 
    \cnt_bit[2]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(Q),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\cnt_bit[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[0] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_bit[0]_i_1_n_0 ),
        .Q(\rd_data_reg[0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[1] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_bit[1]_i_1_n_0 ),
        .Q(\rd_data_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_bit_reg[2] 
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\cnt_bit[2]_i_1_n_0 ),
        .Q(\rd_data_reg[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk[0]_i_1 
       (.I0(cnt_clk[0]),
        .O(cnt_clk_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00FFBF00)) 
    \cnt_clk[1]_i_1 
       (.I0(\cnt_clk[3]_i_2_n_0 ),
        .I1(cnt_clk[3]),
        .I2(cnt_clk[2]),
        .I3(cnt_clk[0]),
        .I4(cnt_clk[1]),
        .O(cnt_clk_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h3C34CCCC)) 
    \cnt_clk[2]_i_1 
       (.I0(cnt_clk[3]),
        .I1(cnt_clk[2]),
        .I2(cnt_clk[1]),
        .I3(\cnt_clk[3]_i_2_n_0 ),
        .I4(cnt_clk[0]),
        .O(cnt_clk_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6C64CCCC)) 
    \cnt_clk[3]_i_1 
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
    \cnt_clk[4]_i_1 
       (.I0(cnt_clk[7]),
        .I1(cnt_clk[6]),
        .I2(cnt_clk[5]),
        .I3(cnt_clk[4]),
        .I4(\cnt_clk[5]_i_2_n_0 ),
        .I5(cnt_clk[1]),
        .O(cnt_clk_0[4]));
  LUT6 #(
    .INIT(64'hAAFEFFFF55000000)) 
    \cnt_clk[5]_i_1 
       (.I0(\cnt_clk[5]_i_2_n_0 ),
        .I1(cnt_clk[7]),
        .I2(cnt_clk[6]),
        .I3(cnt_clk[1]),
        .I4(cnt_clk[4]),
        .I5(cnt_clk[5]),
        .O(cnt_clk_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_clk[5]_i_2 
       (.I0(cnt_clk[3]),
        .I1(cnt_clk[2]),
        .I2(cnt_clk[0]),
        .O(\cnt_clk[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \cnt_clk[6]_i_1 
       (.I0(cnt_clk[4]),
        .I1(cnt_clk[5]),
        .I2(\cnt_clk[7]_i_2_n_0 ),
        .I3(cnt_clk[6]),
        .O(cnt_clk_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \cnt_clk[7]_i_1 
       (.I0(cnt_clk[6]),
        .I1(\cnt_clk[7]_i_2_n_0 ),
        .I2(cnt_clk[5]),
        .I3(cnt_clk[4]),
        .I4(cnt_clk[7]),
        .O(cnt_clk_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_clk[7]_i_2 
       (.I0(cnt_clk[0]),
        .I1(cnt_clk[2]),
        .I2(cnt_clk[3]),
        .I3(cnt_clk[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    \cnt_scl[0]_i_1 
       (.I0(cnt_scl[0]),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q),
        .O(\cnt_scl[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFEFFFE0000)) 
    \cnt_scl[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q),
        .I4(cnt_scl[0]),
        .I5(cnt_scl[1]),
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
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(i2c_clk_i_1_n_0),
        .Q(clk));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    i2c_end_i_1
       (.I0(i2c_end_i_2_n_0),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(Q),
        .O(i2c_end0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    i2c_end_i_2
       (.I0(\rd_data_reg[0]_0 [2]),
        .I1(\rd_data_reg[0]_0 [1]),
        .I2(\rd_data_reg[0]_0 [0]),
        .O(i2c_end_i_2_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    i2c_scl_reg_i_1
       (.I0(cnt_scl[1]),
        .I1(\state_reg_n_0_[3] ),
        .I2(Q),
        .O(i2c_scl_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF1E9)) 
    i2c_scl_reg_i_2
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(Q),
        .O(i2c_scl_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hAEFFAEAEAAAAAAAA)) 
    i2c_sda_IOBUF_inst_i_1
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg[0]_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(i2c_sda_IOBUF_inst_i_4_n_0),
        .I4(i2c_sda_IOBUF_inst_i_5_n_0),
        .I5(i2c_sda_IOBUF_inst_i_6_n_0),
        .O(i2c_sda_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    i2c_sda_IOBUF_inst_i_12
       (.I0(\rd_data_reg[0]_0 [2]),
        .I1(\rd_data_reg[0]_0 [1]),
        .I2(\rd_data_reg[0]_0 [0]),
        .O(i2c_sda_IOBUF_inst_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF4FFFFFFF)) 
    i2c_sda_IOBUF_inst_i_13
       (.I0(re_wr_reg_reg_n_0),
        .I1(rd_en),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [2]),
        .I5(wr_en),
        .O(i2c_sda_IOBUF_inst_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDDDF)) 
    i2c_sda_IOBUF_inst_i_14
       (.I0(Q),
        .I1(\state_reg_n_0_[1] ),
        .I2(cnt_scl[0]),
        .I3(cnt_scl[1]),
        .O(i2c_sda_IOBUF_inst_i_14_n_0));
  LUT5 #(
    .INIT(32'h00044404)) 
    i2c_sda_IOBUF_inst_i_4
       (.I0(Q),
        .I1(\state_reg_n_0_[2] ),
        .I2(\wr_data_reg[4] ),
        .I3(\rd_data_reg[0]_0 [2]),
        .I4(\wr_data_reg[0] ),
        .O(i2c_sda_IOBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hFF8F0000FFFFFFFF)) 
    i2c_sda_IOBUF_inst_i_5
       (.I0(cnt_scl[1]),
        .I1(cnt_scl[0]),
        .I2(Q),
        .I3(i2c_sda_IOBUF_inst_i_12_n_0),
        .I4(\state_reg_n_0_[1] ),
        .I5(\state_reg_n_0_[2] ),
        .O(i2c_sda_IOBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hBFBFBFFFAAAAAAAA)) 
    i2c_sda_IOBUF_inst_i_6
       (.I0(\state_reg_n_0_[2] ),
        .I1(i2c_sda_IOBUF_inst_i_13_n_0),
        .I2(\state_reg_n_0_[1] ),
        .I3(\rd_data_reg[0]_0 [2]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(i2c_sda_IOBUF_inst_i_14_n_0),
        .O(i2c_sda_IOBUF_inst_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h03000400)) 
    i2c_sda_IOBUF_inst_i_7
       (.I0(wr_en),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(Q),
        .O(i2c_sda_TRI));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \rd_data[0]_i_1 
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\rd_data_reg[0]_0 [1]),
        .I2(\rd_data_reg[0]_0 [0]),
        .I3(\rd_data_reg[0]_0 [2]),
        .I4(\rd_data[7]_i_4_n_0 ),
        .O(rd_data[0]));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \rd_data[1]_i_1 
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\rd_data_reg[0]_0 [1]),
        .I2(\rd_data_reg[0]_0 [0]),
        .I3(\rd_data_reg[0]_0 [2]),
        .I4(\rd_data[7]_i_4_n_0 ),
        .O(rd_data[1]));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \rd_data[2]_i_1 
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\rd_data_reg[0]_0 [2]),
        .I4(\rd_data[7]_i_4_n_0 ),
        .O(rd_data[2]));
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \rd_data[3]_i_1 
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\rd_data_reg[0]_0 [1]),
        .I2(\rd_data_reg[0]_0 [0]),
        .I3(\rd_data_reg[0]_0 [2]),
        .I4(\rd_data[7]_i_4_n_0 ),
        .O(rd_data[3]));
  LUT5 #(
    .INIT(32'hBAAAAAAA)) 
    \rd_data[4]_i_1 
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\rd_data_reg[0]_0 [2]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data[7]_i_4_n_0 ),
        .O(rd_data[4]));
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \rd_data[5]_i_1 
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\rd_data[7]_i_4_n_0 ),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [1]),
        .I4(\rd_data_reg[0]_0 [0]),
        .O(rd_data[5]));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \rd_data[6]_i_1 
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\rd_data_reg[0]_0 [2]),
        .I2(\rd_data_reg[0]_0 [0]),
        .I3(\rd_data_reg[0]_0 [1]),
        .I4(\rd_data[7]_i_4_n_0 ),
        .O(rd_data[6]));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \rd_data[7]_i_1 
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\rd_data_reg[0]_0 [2]),
        .I2(\rd_data_reg[0]_0 [1]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data[7]_i_4_n_0 ),
        .O(rd_data[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \rd_data[7]_i_2 
       (.I0(i2c_sda_IBUF),
        .I1(\rd_data[7]_i_4_n_0 ),
        .O(\rd_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rd_data[7]_i_3 
       (.I0(Q),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\rd_data[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \rd_data[7]_i_4 
       (.I0(\rd_data[7]_i_5_n_0 ),
        .I1(cnt_scl[1]),
        .I2(cnt_scl[0]),
        .I3(rd_en),
        .O(\rd_data[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \rd_data[7]_i_5 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(Q),
        .O(\rd_data[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[0] 
       (.C(CLK),
        .CE(rd_data[0]),
        .CLR(rst_n),
        .D(\rd_data[7]_i_2_n_0 ),
        .Q(\data[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[1] 
       (.C(CLK),
        .CE(rd_data[1]),
        .CLR(rst_n),
        .D(\rd_data[7]_i_2_n_0 ),
        .Q(\data[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[2] 
       (.C(CLK),
        .CE(rd_data[2]),
        .CLR(rst_n),
        .D(\rd_data[7]_i_2_n_0 ),
        .Q(\data[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[3] 
       (.C(CLK),
        .CE(rd_data[3]),
        .CLR(rst_n),
        .D(\rd_data[7]_i_2_n_0 ),
        .Q(\data[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[4] 
       (.C(CLK),
        .CE(rd_data[4]),
        .CLR(rst_n),
        .D(\rd_data[7]_i_2_n_0 ),
        .Q(\data[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[5] 
       (.C(CLK),
        .CE(rd_data[5]),
        .CLR(rst_n),
        .D(\rd_data[7]_i_2_n_0 ),
        .Q(\data[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[6] 
       (.C(CLK),
        .CE(rd_data[6]),
        .CLR(rst_n),
        .D(\rd_data[7]_i_2_n_0 ),
        .Q(\data[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_data_reg[7] 
       (.C(CLK),
        .CE(rd_data[7]),
        .CLR(rst_n),
        .D(\rd_data[7]_i_2_n_0 ),
        .Q(\data[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    rd_en_i_1
       (.I0(i2c_end),
        .I1(read),
        .I2(rd_en),
        .O(rd_en_reg));
  LUT4 #(
    .INIT(16'h15C0)) 
    re_wr_reg_i_1
       (.I0(\rd_data[7]_i_3_n_0 ),
        .I1(\cnt_ack[2]_i_2_n_0 ),
        .I2(rd_en),
        .I3(re_wr_reg_reg_n_0),
        .O(re_wr_reg_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    re_wr_reg_reg
       (.C(scl_clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(re_wr_reg_i_1_n_0),
        .Q(re_wr_reg_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  LUT4 #(
    .INIT(16'hABFB)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state[0]_i_3_n_0 ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h11F111F1FF00FFFF)) 
    \state[0]_i_2 
       (.I0(cnt_ack[0]),
        .I1(\cnt_ack[2]_i_3_n_0 ),
        .I2(\state[3]_i_3_n_0 ),
        .I3(Q),
        .I4(i2c_start),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000C00004FFFFFFF)) 
    \state[0]_i_3 
       (.I0(wr_en),
        .I1(\state_reg_n_0_[1] ),
        .I2(\rd_data_reg[0]_0 [2]),
        .I3(\rd_data_reg[0]_0 [0]),
        .I4(\rd_data_reg[0]_0 [1]),
        .I5(Q),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABABBB)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state[3]_i_3_n_0 ),
        .I5(\state[1]_i_3_n_0 ),
        .O(state[1]));
  LUT5 #(
    .INIT(32'h0000101F)) 
    \state[1]_i_2 
       (.I0(\cnt_ack[2]_i_3_n_0 ),
        .I1(cnt_ack[1]),
        .I2(\state_reg_n_0_[1] ),
        .I3(Q),
        .I4(\state_reg_n_0_[2] ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAA8AA2AAA)) 
    \state[1]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\rd_data_reg[0]_0 [2]),
        .I2(\rd_data_reg[0]_0 [0]),
        .I3(\rd_data_reg[0]_0 [1]),
        .I4(Q),
        .I5(wr_en),
        .O(\state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(cnt_ack[2]),
        .I2(\cnt_ack[2]_i_3_n_0 ),
        .I3(\state_reg_n_0_[3] ),
        .O(state[2]));
  LUT6 #(
    .INIT(64'h80CCCC4CCCCCCCCC)) 
    \state[2]_i_2 
       (.I0(Q),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\rd_data_reg[0]_0 [2]),
        .I4(\rd_data_reg[0]_0 [0]),
        .I5(\rd_data_reg[0]_0 [1]),
        .O(\state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \state[3]_i_1 
       (.I0(Q),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[3] ),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \state[3]_i_2 
       (.I0(Q),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state[3]_i_3_n_0 ),
        .I5(wr_en),
        .O(state[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \state[3]_i_3 
       (.I0(\rd_data_reg[0]_0 [1]),
        .I1(\rd_data_reg[0]_0 [0]),
        .I2(\rd_data_reg[0]_0 [2]),
        .O(\state[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(scl_clk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(state[0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(scl_clk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(scl_clk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(scl_clk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(rst_n),
        .D(state[3]),
        .Q(\state_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wr_data[7]_i_1 
       (.I0(i2c_end),
        .I1(wr_en),
        .O(E));
  LUT3 #(
    .INIT(8'hDC)) 
    wr_en_i_1
       (.I0(i2c_end),
        .I1(write),
        .I2(wr_en),
        .O(wr_en_reg));
endmodule

(* ECO_CHECKSUM = "d2a8cc" *) 
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
  output [7:0]data;
  inout i2c_sda;
  output i2c_scl;

  wire clk;
  wire clk_BUFG;
  wire [2:0]cnt_bit;
  wire [7:0]data;
  wire [7:0]data_OBUF;
  wire i2c_ctrl_n_10;
  wire i2c_ctrl_n_4;
  wire i2c_ctrl_n_9;
  wire i2c_end;
  wire i2c_rw_data_n_0;
  wire i2c_rw_data_n_4;
  wire i2c_rw_data_n_5;
  wire i2c_rw_data_n_6;
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
  wire read;
  wire rst_n;
  wire rst_n_IBUF;
  wire sys_clk;
  wire sys_clk_IBUF;
  wire sys_clk_IBUF_BUFG;
  wire wr_data0;
  wire wr_en;
  wire write;

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
  OBUF \data_OBUF[4]_inst 
       (.I(data_OBUF[4]),
        .O(data[4]));
  OBUF \data_OBUF[5]_inst 
       (.I(data_OBUF[5]),
        .O(data[5]));
  OBUF \data_OBUF[6]_inst 
       (.I(data_OBUF[6]),
        .O(data[6]));
  OBUF \data_OBUF[7]_inst 
       (.I(data_OBUF[7]),
        .O(data[7]));
  i2c_ctrl i2c_ctrl
       (.CLK(clk_BUFG),
        .E(wr_data0),
        .Q(i2c_ctrl_n_4),
        .clk(clk),
        .\data[7] (data_OBUF),
        .i2c_end(i2c_end),
        .i2c_scl_OBUF(i2c_scl_OBUF),
        .i2c_sda_IBUF(i2c_sda_IBUF),
        .i2c_sda_OBUF(i2c_sda_OBUF),
        .i2c_sda_TRI(i2c_sda_TRI),
        .i2c_start(i2c_start),
        .\rd_data_reg[0]_0 (cnt_bit),
        .rd_en(rd_en),
        .rd_en_reg(i2c_ctrl_n_9),
        .read(read),
        .rst_n(i2c_rw_data_n_0),
        .\state_reg[0]_0 (i2c_rw_data_n_6),
        .sys_clk(sys_clk_IBUF_BUFG),
        .\wr_data_reg[0] (i2c_rw_data_n_5),
        .\wr_data_reg[4] (i2c_rw_data_n_4),
        .wr_en(wr_en),
        .wr_en_reg(i2c_ctrl_n_10),
        .write(write));
  i2c_rw_data i2c_rw_data
       (.CLK(clk_BUFG),
        .E(wr_data0),
        .Q(i2c_ctrl_n_4),
        .\cnt_bit_reg[2] (cnt_bit),
        .\cnt_start_reg[0]_0 (i2c_rw_data_n_0),
        .i2c_end(i2c_end),
        .i2c_end_reg(i2c_ctrl_n_9),
        .i2c_end_reg_0(i2c_ctrl_n_10),
        .i2c_start(i2c_start),
        .\rd_data_reg[7] (i2c_rw_data_n_4),
        .\rd_data_reg[7]_0 (i2c_rw_data_n_5),
        .\rd_data_reg[7]_1 (i2c_rw_data_n_6),
        .rd_en(rd_en),
        .rst_n_IBUF(rst_n_IBUF),
        .sys_clk(sys_clk_IBUF_BUFG),
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
       (.key_rd_IBUF(key_rd_IBUF),
        .read(read),
        .rst_n(i2c_rw_data_n_0),
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
       (.key_wr_IBUF(key_wr_IBUF),
        .rst_n(i2c_rw_data_n_0),
        .sys_clk(sys_clk_IBUF_BUFG),
        .write(write));
endmodule

module i2c_rw_data
   (\cnt_start_reg[0]_0 ,
    rd_en,
    wr_en,
    i2c_start,
    \rd_data_reg[7] ,
    \rd_data_reg[7]_0 ,
    \rd_data_reg[7]_1 ,
    CLK,
    i2c_end_reg,
    sys_clk,
    i2c_end_reg_0,
    i2c_end,
    \cnt_bit_reg[2] ,
    Q,
    rst_n_IBUF,
    E);
  output \cnt_start_reg[0]_0 ;
  output rd_en;
  output wr_en;
  output i2c_start;
  output \rd_data_reg[7] ;
  output \rd_data_reg[7]_0 ;
  output \rd_data_reg[7]_1 ;
  input CLK;
  input i2c_end_reg;
  input sys_clk;
  input i2c_end_reg_0;
  input i2c_end;
  input [2:0]\cnt_bit_reg[2] ;
  input [0:0]Q;
  input rst_n_IBUF;
  input [0:0]E;

  wire CLK;
  wire [0:0]E;
  wire [0:0]Q;
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
  wire [1:0]cnt_4;
  wire \cnt_4[0]_i_1_n_0 ;
  wire \cnt_4[1]_i_1_n_0 ;
  wire [2:0]\cnt_bit_reg[2] ;
  wire [19:0]cnt_start;
  wire [19:1]cnt_start0;
  wire \cnt_start[19]_i_3_n_0 ;
  wire \cnt_start[19]_i_4_n_0 ;
  wire \cnt_start[19]_i_5_n_0 ;
  wire \cnt_start[19]_i_6_n_0 ;
  wire \cnt_start[19]_i_7_n_0 ;
  wire \cnt_start[19]_i_8_n_0 ;
  wire [19:0]cnt_start_0;
  wire \cnt_start_reg[0]_0 ;
  wire \cnt_start_reg[12]_i_2_n_0 ;
  wire \cnt_start_reg[16]_i_2_n_0 ;
  wire \cnt_start_reg[4]_i_2_n_0 ;
  wire \cnt_start_reg[8]_i_2_n_0 ;
  wire i2c_end;
  wire i2c_end_reg;
  wire i2c_end_reg_0;
  wire i2c_sda_IOBUF_inst_i_15_n_0;
  wire i2c_sda_IOBUF_inst_i_16_n_0;
  wire i2c_sda_IOBUF_inst_i_17_n_0;
  wire i2c_sda_IOBUF_inst_i_18_n_0;
  wire i2c_sda_IOBUF_inst_i_8_n_0;
  wire i2c_sda_IOBUF_inst_i_9_n_0;
  wire i2c_start;
  wire i2c_start_i_1_n_0;
  wire i2c_start_i_2_n_0;
  wire i2c_start_i_3_n_0;
  wire i2c_start_i_4_n_0;
  wire i2c_start_i_5_n_0;
  wire i2c_start_i_6_n_0;
  wire i2c_start_i_7_n_0;
  wire [7:0]p_0_in;
  wire \rd_data_reg[7] ;
  wire \rd_data_reg[7]_0 ;
  wire \rd_data_reg[7]_1 ;
  wire rd_en;
  wire rst_n_IBUF;
  wire sys_clk;
  wire [7:0]wr_data;
  wire \wr_data[7]_i_3_n_0 ;
  wire wr_en;
  wire [2:0]\NLW_byte_addr_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_byte_addr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_byte_addr_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_byte_addr_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_start_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_start_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_start_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_start_reg[19]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_start_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_start_reg[8]_i_2_CO_UNCONNECTED ;

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
        .PRE(\cnt_start_reg[0]_0 ),
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
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[8]_i_1_n_5 ),
        .Q(byte_addr[10]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[11] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[8]_i_1_n_4 ),
        .Q(byte_addr[11]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[12] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
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
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[12]_i_1_n_6 ),
        .Q(byte_addr[13]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[14] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[12]_i_1_n_5 ),
        .Q(byte_addr[14]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[15] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[12]_i_1_n_4 ),
        .Q(byte_addr[15]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[1] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[0]_i_2_n_6 ),
        .Q(byte_addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[2] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[0]_i_2_n_5 ),
        .Q(byte_addr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[3] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[0]_i_2_n_4 ),
        .Q(byte_addr[3]));
  FDPE #(
    .INIT(1'b1)) 
    \byte_addr_reg[4] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .D(\byte_addr_reg[4]_i_1_n_7 ),
        .PRE(\cnt_start_reg[0]_0 ),
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
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[4]_i_1_n_6 ),
        .Q(byte_addr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[6] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[4]_i_1_n_5 ),
        .Q(byte_addr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[7] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[4]_i_1_n_4 ),
        .Q(byte_addr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[8] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[8]_i_1_n_7 ),
        .Q(byte_addr[8]));
  CARRY4 \byte_addr_reg[8]_i_1 
       (.CI(\byte_addr_reg[4]_i_1_n_0 ),
        .CO({\byte_addr_reg[8]_i_1_n_0 ,\NLW_byte_addr_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\byte_addr_reg[8]_i_1_n_4 ,\byte_addr_reg[8]_i_1_n_5 ,\byte_addr_reg[8]_i_1_n_6 ,\byte_addr_reg[8]_i_1_n_7 }),
        .S(byte_addr[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \byte_addr_reg[9] 
       (.C(CLK),
        .CE(\byte_addr[0]_i_1_n_0 ),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\byte_addr_reg[8]_i_1_n_6 ),
        .Q(byte_addr[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_4[0]_i_1 
       (.I0(i2c_start),
        .I1(cnt_4[0]),
        .O(\cnt_4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_4[1]_i_1 
       (.I0(i2c_start),
        .I1(cnt_4[0]),
        .I2(cnt_4[1]),
        .O(\cnt_4[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_4_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\cnt_4[0]_i_1_n_0 ),
        .Q(cnt_4[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_4_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(\cnt_4[1]_i_1_n_0 ),
        .Q(cnt_4[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \cnt_start[0]_i_1 
       (.I0(cnt_start[0]),
        .I1(wr_en),
        .I2(rd_en),
        .O(cnt_start_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[10]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[10]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[11]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[11]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[12]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[12]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[13]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[13]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[14]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[14]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[15]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[15]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[16]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[16]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[17]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[17]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[18]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[18]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \cnt_start[19]_i_1 
       (.I0(rd_en),
        .I1(wr_en),
        .I2(cnt_start0[19]),
        .I3(\cnt_start[19]_i_3_n_0 ),
        .O(cnt_start_0[19]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt_start[19]_i_3 
       (.I0(\cnt_start[19]_i_4_n_0 ),
        .I1(\cnt_start[19]_i_5_n_0 ),
        .I2(\cnt_start[19]_i_6_n_0 ),
        .I3(\cnt_start[19]_i_7_n_0 ),
        .I4(\cnt_start[19]_i_8_n_0 ),
        .O(\cnt_start[19]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_start[19]_i_4 
       (.I0(cnt_start[11]),
        .I1(cnt_start[10]),
        .I2(cnt_start[14]),
        .I3(cnt_start[13]),
        .O(\cnt_start[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cnt_start[19]_i_5 
       (.I0(cnt_start[9]),
        .I1(cnt_start[18]),
        .I2(cnt_start[7]),
        .I3(cnt_start[8]),
        .O(\cnt_start[19]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_start[19]_i_6 
       (.I0(cnt_start[19]),
        .I1(cnt_start[17]),
        .I2(cnt_start[16]),
        .I3(cnt_start[3]),
        .O(\cnt_start[19]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_start[19]_i_7 
       (.I0(cnt_start[4]),
        .I1(cnt_start[5]),
        .I2(cnt_start[15]),
        .I3(cnt_start[6]),
        .O(\cnt_start[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt_start[19]_i_8 
       (.I0(cnt_start[2]),
        .I1(cnt_start[1]),
        .I2(cnt_start[12]),
        .I3(cnt_start[0]),
        .O(\cnt_start[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[1]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[1]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[2]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[2]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[3]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[3]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[4]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[4]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[5]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[5]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[6]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[6]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[7]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[7]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[8]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[8]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \cnt_start[9]_i_1 
       (.I0(\cnt_start[19]_i_3_n_0 ),
        .I1(cnt_start0[9]),
        .I2(rd_en),
        .I3(wr_en),
        .O(cnt_start_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[0]),
        .Q(cnt_start[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[10]),
        .Q(cnt_start[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[11]),
        .Q(cnt_start[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[12]),
        .Q(cnt_start[12]));
  CARRY4 \cnt_start_reg[12]_i_2 
       (.CI(\cnt_start_reg[8]_i_2_n_0 ),
        .CO({\cnt_start_reg[12]_i_2_n_0 ,\NLW_cnt_start_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_start0[12:9]),
        .S(cnt_start[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[13]),
        .Q(cnt_start[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[14]),
        .Q(cnt_start[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[15]),
        .Q(cnt_start[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[16]),
        .Q(cnt_start[16]));
  CARRY4 \cnt_start_reg[16]_i_2 
       (.CI(\cnt_start_reg[12]_i_2_n_0 ),
        .CO({\cnt_start_reg[16]_i_2_n_0 ,\NLW_cnt_start_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_start0[16:13]),
        .S(cnt_start[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[17]),
        .Q(cnt_start[17]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[18]),
        .Q(cnt_start[18]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[19]),
        .Q(cnt_start[19]));
  CARRY4 \cnt_start_reg[19]_i_2 
       (.CI(\cnt_start_reg[16]_i_2_n_0 ),
        .CO(\NLW_cnt_start_reg[19]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_start_reg[19]_i_2_O_UNCONNECTED [3],cnt_start0[19:17]}),
        .S({1'b0,cnt_start[19:17]}));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[1]),
        .Q(cnt_start[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[2]),
        .Q(cnt_start[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[3]),
        .Q(cnt_start[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[4]),
        .Q(cnt_start[4]));
  CARRY4 \cnt_start_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\cnt_start_reg[4]_i_2_n_0 ,\NLW_cnt_start_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(cnt_start[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_start0[4:1]),
        .S(cnt_start[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[5]),
        .Q(cnt_start[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[6]),
        .Q(cnt_start[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[7]),
        .Q(cnt_start[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[8]),
        .Q(cnt_start[8]));
  CARRY4 \cnt_start_reg[8]_i_2 
       (.CI(\cnt_start_reg[4]_i_2_n_0 ),
        .CO({\cnt_start_reg[8]_i_2_n_0 ,\NLW_cnt_start_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cnt_start0[8:5]),
        .S(cnt_start[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_start_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(cnt_start_0[9]),
        .Q(cnt_start[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_10
       (.I0(wr_data[4]),
        .I1(wr_data[5]),
        .I2(\cnt_bit_reg[2] [1]),
        .I3(wr_data[6]),
        .I4(\cnt_bit_reg[2] [0]),
        .I5(wr_data[7]),
        .O(\rd_data_reg[7] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_11
       (.I0(wr_data[0]),
        .I1(wr_data[1]),
        .I2(\cnt_bit_reg[2] [1]),
        .I3(wr_data[2]),
        .I4(\cnt_bit_reg[2] [0]),
        .I5(wr_data[3]),
        .O(\rd_data_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_15
       (.I0(byte_addr[12]),
        .I1(byte_addr[13]),
        .I2(\cnt_bit_reg[2] [1]),
        .I3(byte_addr[14]),
        .I4(\cnt_bit_reg[2] [0]),
        .I5(byte_addr[15]),
        .O(i2c_sda_IOBUF_inst_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_16
       (.I0(byte_addr[8]),
        .I1(byte_addr[9]),
        .I2(\cnt_bit_reg[2] [1]),
        .I3(byte_addr[10]),
        .I4(\cnt_bit_reg[2] [0]),
        .I5(byte_addr[11]),
        .O(i2c_sda_IOBUF_inst_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_17
       (.I0(byte_addr[4]),
        .I1(byte_addr[5]),
        .I2(\cnt_bit_reg[2] [1]),
        .I3(byte_addr[6]),
        .I4(\cnt_bit_reg[2] [0]),
        .I5(byte_addr[7]),
        .O(i2c_sda_IOBUF_inst_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i2c_sda_IOBUF_inst_i_18
       (.I0(byte_addr[0]),
        .I1(byte_addr[1]),
        .I2(\cnt_bit_reg[2] [1]),
        .I3(byte_addr[2]),
        .I4(\cnt_bit_reg[2] [0]),
        .I5(byte_addr[3]),
        .O(i2c_sda_IOBUF_inst_i_18_n_0));
  MUXF8 i2c_sda_IOBUF_inst_i_3
       (.I0(i2c_sda_IOBUF_inst_i_8_n_0),
        .I1(i2c_sda_IOBUF_inst_i_9_n_0),
        .O(\rd_data_reg[7]_1 ),
        .S(Q));
  MUXF7 i2c_sda_IOBUF_inst_i_8
       (.I0(i2c_sda_IOBUF_inst_i_15_n_0),
        .I1(i2c_sda_IOBUF_inst_i_16_n_0),
        .O(i2c_sda_IOBUF_inst_i_8_n_0),
        .S(\cnt_bit_reg[2] [2]));
  MUXF7 i2c_sda_IOBUF_inst_i_9
       (.I0(i2c_sda_IOBUF_inst_i_17_n_0),
        .I1(i2c_sda_IOBUF_inst_i_18_n_0),
        .O(i2c_sda_IOBUF_inst_i_9_n_0),
        .S(\cnt_bit_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    i2c_start_i_1
       (.I0(i2c_start_i_2_n_0),
        .I1(cnt_4[0]),
        .I2(cnt_4[1]),
        .I3(i2c_start),
        .O(i2c_start_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    i2c_start_i_2
       (.I0(i2c_start_i_3_n_0),
        .I1(i2c_start_i_4_n_0),
        .I2(i2c_start_i_5_n_0),
        .I3(i2c_start_i_6_n_0),
        .I4(i2c_start_i_7_n_0),
        .O(i2c_start_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    i2c_start_i_3
       (.I0(cnt_start[9]),
        .I1(cnt_start[11]),
        .I2(cnt_start[18]),
        .I3(cnt_start[13]),
        .O(i2c_start_i_3_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    i2c_start_i_4
       (.I0(cnt_start[10]),
        .I1(cnt_start[8]),
        .I2(cnt_start[15]),
        .I3(cnt_start[5]),
        .O(i2c_start_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    i2c_start_i_5
       (.I0(cnt_start[0]),
        .I1(cnt_start[14]),
        .I2(cnt_start[12]),
        .I3(cnt_start[19]),
        .O(i2c_start_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    i2c_start_i_6
       (.I0(cnt_start[2]),
        .I1(cnt_start[16]),
        .I2(cnt_start[1]),
        .I3(cnt_start[4]),
        .O(i2c_start_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    i2c_start_i_7
       (.I0(cnt_start[17]),
        .I1(cnt_start[6]),
        .I2(cnt_start[7]),
        .I3(cnt_start[3]),
        .O(i2c_start_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    i2c_start_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(i2c_start_i_1_n_0),
        .Q(i2c_start));
  LUT1 #(
    .INIT(2'h1)) 
    \q_reg[31]_i_3 
       (.I0(rst_n_IBUF),
        .O(\cnt_start_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    rd_en_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(i2c_end_reg),
        .Q(rd_en));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_data[0]_i_1 
       (.I0(wr_data[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[1]_i_1 
       (.I0(wr_data[0]),
        .I1(wr_data[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_data[2]_i_1 
       (.I0(wr_data[2]),
        .I1(wr_data[0]),
        .I2(wr_data[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \wr_data[3]_i_1 
       (.I0(wr_data[3]),
        .I1(wr_data[1]),
        .I2(wr_data[0]),
        .I3(wr_data[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \wr_data[4]_i_1 
       (.I0(wr_data[4]),
        .I1(wr_data[2]),
        .I2(wr_data[0]),
        .I3(wr_data[1]),
        .I4(wr_data[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \wr_data[5]_i_1 
       (.I0(wr_data[3]),
        .I1(wr_data[1]),
        .I2(wr_data[0]),
        .I3(wr_data[2]),
        .I4(wr_data[4]),
        .I5(wr_data[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_data[6]_i_1 
       (.I0(wr_data[6]),
        .I1(\wr_data[7]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \wr_data[7]_i_2 
       (.I0(wr_data[7]),
        .I1(\wr_data[7]_i_3_n_0 ),
        .I2(wr_data[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wr_data[7]_i_3 
       (.I0(wr_data[5]),
        .I1(wr_data[4]),
        .I2(wr_data[2]),
        .I3(wr_data[0]),
        .I4(wr_data[1]),
        .I5(wr_data[3]),
        .O(\wr_data[7]_i_3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \wr_data_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(p_0_in[0]),
        .PRE(\cnt_start_reg[0]_0 ),
        .Q(wr_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(p_0_in[1]),
        .Q(wr_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(wr_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(wr_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(p_0_in[4]),
        .Q(wr_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(p_0_in[5]),
        .Q(wr_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(p_0_in[6]),
        .Q(wr_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_data_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(p_0_in[7]),
        .Q(wr_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    wr_en_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(\cnt_start_reg[0]_0 ),
        .D(i2c_end_reg_0),
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
