// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
// Date        : Sun Oct  2 23:27:35 2016
// Host        : fpga-iMac running 64-bit elementary OS Freya
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/fpga/FPGA/Vivado/seven_seg_rtc/seven_seg_rtc.sim/sim_1/synth/func/seven_seg_rtc_tb_func_synth.v
// Design      : seven_seg_rtc
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DOWN = "1'b1" *) (* EIGHT = "5'b01000" *) (* ELEVEN = "5'b01011" *) 
(* FIFTEEN = "5'b01111" *) (* FIVE = "5'b00101" *) (* FOUR = "5'b00100" *) 
(* FOURTEEN = "5'b01110" *) (* NINE = "5'b01001" *) (* ONE = "5'b00001" *) 
(* SEVEN = "5'b00111" *) (* SIX = "5'b00110" *) (* SIXTEEN = "5'b10000" *) 
(* TEN = "5'b01010" *) (* THIRTEEN = "5'b01101" *) (* THREE = "5'b00011" *) 
(* TWELVE = "5'b01100" *) (* TWO = "5'b00010" *) (* UP = "1'b0" *) 
(* ZERO = "5'b00000" *) 
(* NotValidForBitStream *)
module seven_seg_rtc
   (rst,
    clk,
    A,
    B,
    C,
    D,
    E,
    F,
    G,
    Dp);
  input rst;
  input clk;
  output A;
  output B;
  output C;
  output D;
  output E;
  output F;
  output G;
  output Dp;

  wire A;
  wire A_OBUF;
  wire B;
  wire B_OBUF;
  wire C;
  wire C_OBUF;
  wire D;
  wire D_OBUF;
  wire Dp;
  wire E;
  wire E_OBUF;
  wire F;
  wire F_OBUF;
  wire G;
  wire G_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [26:0]counter_d;
  wire [26:0]counter_q;
  wire \counter_q[26]_i_2_n_0 ;
  wire \counter_q[26]_i_4_n_0 ;
  wire \counter_q[26]_i_5_n_0 ;
  wire \counter_q[26]_i_6_n_0 ;
  wire \counter_q[26]_i_7_n_0 ;
  wire \counter_q[26]_i_8_n_0 ;
  wire \counter_q[26]_i_9_n_0 ;
  wire \counter_q_reg[12]_i_2_n_0 ;
  wire \counter_q_reg[12]_i_2_n_1 ;
  wire \counter_q_reg[12]_i_2_n_2 ;
  wire \counter_q_reg[12]_i_2_n_3 ;
  wire \counter_q_reg[12]_i_2_n_4 ;
  wire \counter_q_reg[12]_i_2_n_5 ;
  wire \counter_q_reg[12]_i_2_n_6 ;
  wire \counter_q_reg[12]_i_2_n_7 ;
  wire \counter_q_reg[16]_i_2_n_0 ;
  wire \counter_q_reg[16]_i_2_n_1 ;
  wire \counter_q_reg[16]_i_2_n_2 ;
  wire \counter_q_reg[16]_i_2_n_3 ;
  wire \counter_q_reg[16]_i_2_n_4 ;
  wire \counter_q_reg[16]_i_2_n_5 ;
  wire \counter_q_reg[16]_i_2_n_6 ;
  wire \counter_q_reg[16]_i_2_n_7 ;
  wire \counter_q_reg[20]_i_2_n_0 ;
  wire \counter_q_reg[20]_i_2_n_1 ;
  wire \counter_q_reg[20]_i_2_n_2 ;
  wire \counter_q_reg[20]_i_2_n_3 ;
  wire \counter_q_reg[20]_i_2_n_4 ;
  wire \counter_q_reg[20]_i_2_n_5 ;
  wire \counter_q_reg[20]_i_2_n_6 ;
  wire \counter_q_reg[20]_i_2_n_7 ;
  wire \counter_q_reg[24]_i_2_n_0 ;
  wire \counter_q_reg[24]_i_2_n_1 ;
  wire \counter_q_reg[24]_i_2_n_2 ;
  wire \counter_q_reg[24]_i_2_n_3 ;
  wire \counter_q_reg[24]_i_2_n_4 ;
  wire \counter_q_reg[24]_i_2_n_5 ;
  wire \counter_q_reg[24]_i_2_n_6 ;
  wire \counter_q_reg[24]_i_2_n_7 ;
  wire \counter_q_reg[26]_i_3_n_3 ;
  wire \counter_q_reg[26]_i_3_n_6 ;
  wire \counter_q_reg[26]_i_3_n_7 ;
  wire \counter_q_reg[4]_i_2_n_0 ;
  wire \counter_q_reg[4]_i_2_n_1 ;
  wire \counter_q_reg[4]_i_2_n_2 ;
  wire \counter_q_reg[4]_i_2_n_3 ;
  wire \counter_q_reg[4]_i_2_n_4 ;
  wire \counter_q_reg[4]_i_2_n_5 ;
  wire \counter_q_reg[4]_i_2_n_6 ;
  wire \counter_q_reg[4]_i_2_n_7 ;
  wire \counter_q_reg[8]_i_2_n_0 ;
  wire \counter_q_reg[8]_i_2_n_1 ;
  wire \counter_q_reg[8]_i_2_n_2 ;
  wire \counter_q_reg[8]_i_2_n_3 ;
  wire \counter_q_reg[8]_i_2_n_4 ;
  wire \counter_q_reg[8]_i_2_n_5 ;
  wire \counter_q_reg[8]_i_2_n_6 ;
  wire \counter_q_reg[8]_i_2_n_7 ;
  wire direction_state_q;
  wire direction_state_q_i_1_n_0;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire rst;
  wire rst_IBUF;
  wire \segments_q[6]_i_1_n_0 ;
  wire state_d;
  wire [4:0]state_q;
  wire \state_q[0]_i_1_n_0 ;
  wire \state_q[1]_i_1_n_0 ;
  wire \state_q[2]_i_1_n_0 ;
  wire \state_q[3]_i_1_n_0 ;
  wire \state_q[4]_i_1_n_0 ;
  wire \state_q[4]_i_3_n_0 ;
  wire \state_q[4]_i_4_n_0 ;
  wire [3:1]\NLW_counter_q_reg[26]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_q_reg[26]_i_3_O_UNCONNECTED ;

  OBUF A_OBUF_inst
       (.I(A_OBUF),
        .O(A));
  OBUF B_OBUF_inst
       (.I(B_OBUF),
        .O(B));
  OBUF C_OBUF_inst
       (.I(C_OBUF),
        .O(C));
  OBUF D_OBUF_inst
       (.I(D_OBUF),
        .O(D));
  OBUF Dp_OBUF_inst
       (.I(1'b1),
        .O(Dp));
  OBUF E_OBUF_inst
       (.I(E_OBUF),
        .O(E));
  OBUF F_OBUF_inst
       (.I(F_OBUF),
        .O(F));
  OBUF G_OBUF_inst
       (.I(G_OBUF),
        .O(G));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_q[0]_i_1 
       (.I0(\counter_q[26]_i_2_n_0 ),
        .I1(counter_q[0]),
        .O(counter_d[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[10]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[12]_i_2_n_6 ),
        .O(counter_d[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[11]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[12]_i_2_n_5 ),
        .O(counter_d[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[12]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[12]_i_2_n_4 ),
        .O(counter_d[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[13]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[16]_i_2_n_7 ),
        .O(counter_d[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[14]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[16]_i_2_n_6 ),
        .O(counter_d[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[15]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[16]_i_2_n_5 ),
        .O(counter_d[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[16]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[16]_i_2_n_4 ),
        .O(counter_d[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[17]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[20]_i_2_n_7 ),
        .O(counter_d[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[18]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[20]_i_2_n_6 ),
        .O(counter_d[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[19]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[20]_i_2_n_5 ),
        .O(counter_d[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[1]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[4]_i_2_n_7 ),
        .O(counter_d[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[20]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[20]_i_2_n_4 ),
        .O(counter_d[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[21]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[24]_i_2_n_7 ),
        .O(counter_d[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[22]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[24]_i_2_n_6 ),
        .O(counter_d[22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[23]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[24]_i_2_n_5 ),
        .O(counter_d[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[24]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[24]_i_2_n_4 ),
        .O(counter_d[24]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[25]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[26]_i_3_n_7 ),
        .O(counter_d[25]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[26]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[26]_i_3_n_6 ),
        .O(counter_d[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter_q[26]_i_2 
       (.I0(\counter_q[26]_i_4_n_0 ),
        .I1(\counter_q[26]_i_5_n_0 ),
        .I2(\counter_q[26]_i_6_n_0 ),
        .I3(\counter_q[26]_i_7_n_0 ),
        .I4(\counter_q[26]_i_8_n_0 ),
        .I5(\counter_q[26]_i_9_n_0 ),
        .O(\counter_q[26]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \counter_q[26]_i_4 
       (.I0(counter_q[16]),
        .I1(counter_q[15]),
        .I2(counter_q[18]),
        .I3(counter_q[17]),
        .O(\counter_q[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \counter_q[26]_i_5 
       (.I0(counter_q[20]),
        .I1(counter_q[19]),
        .I2(counter_q[22]),
        .I3(counter_q[21]),
        .O(\counter_q[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter_q[26]_i_6 
       (.I0(counter_q[8]),
        .I1(counter_q[7]),
        .I2(counter_q[10]),
        .I3(counter_q[9]),
        .O(\counter_q[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \counter_q[26]_i_7 
       (.I0(counter_q[12]),
        .I1(counter_q[11]),
        .I2(counter_q[14]),
        .I3(counter_q[13]),
        .O(\counter_q[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter_q[26]_i_8 
       (.I0(counter_q[4]),
        .I1(counter_q[3]),
        .I2(counter_q[6]),
        .I3(counter_q[5]),
        .O(\counter_q[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \counter_q[26]_i_9 
       (.I0(counter_q[25]),
        .I1(counter_q[26]),
        .I2(counter_q[23]),
        .I3(counter_q[24]),
        .I4(counter_q[2]),
        .I5(counter_q[1]),
        .O(\counter_q[26]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[2]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[4]_i_2_n_6 ),
        .O(counter_d[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[3]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[4]_i_2_n_5 ),
        .O(counter_d[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[4]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[4]_i_2_n_4 ),
        .O(counter_d[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[5]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[8]_i_2_n_7 ),
        .O(counter_d[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[6]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[8]_i_2_n_6 ),
        .O(counter_d[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[7]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[8]_i_2_n_5 ),
        .O(counter_d[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[8]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[8]_i_2_n_4 ),
        .O(counter_d[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \counter_q[9]_i_1 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .I2(\counter_q_reg[12]_i_2_n_7 ),
        .O(counter_d[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[0]),
        .Q(counter_q[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[10]),
        .Q(counter_q[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[11]),
        .Q(counter_q[11]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[12]),
        .Q(counter_q[12]),
        .R(rst_IBUF));
  CARRY4 \counter_q_reg[12]_i_2 
       (.CI(\counter_q_reg[8]_i_2_n_0 ),
        .CO({\counter_q_reg[12]_i_2_n_0 ,\counter_q_reg[12]_i_2_n_1 ,\counter_q_reg[12]_i_2_n_2 ,\counter_q_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_q_reg[12]_i_2_n_4 ,\counter_q_reg[12]_i_2_n_5 ,\counter_q_reg[12]_i_2_n_6 ,\counter_q_reg[12]_i_2_n_7 }),
        .S(counter_q[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[13]),
        .Q(counter_q[13]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[14]),
        .Q(counter_q[14]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[15]),
        .Q(counter_q[15]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[16]),
        .Q(counter_q[16]),
        .R(rst_IBUF));
  CARRY4 \counter_q_reg[16]_i_2 
       (.CI(\counter_q_reg[12]_i_2_n_0 ),
        .CO({\counter_q_reg[16]_i_2_n_0 ,\counter_q_reg[16]_i_2_n_1 ,\counter_q_reg[16]_i_2_n_2 ,\counter_q_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_q_reg[16]_i_2_n_4 ,\counter_q_reg[16]_i_2_n_5 ,\counter_q_reg[16]_i_2_n_6 ,\counter_q_reg[16]_i_2_n_7 }),
        .S(counter_q[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[17]),
        .Q(counter_q[17]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[18]),
        .Q(counter_q[18]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[19]),
        .Q(counter_q[19]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[1]),
        .Q(counter_q[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[20]),
        .Q(counter_q[20]),
        .R(rst_IBUF));
  CARRY4 \counter_q_reg[20]_i_2 
       (.CI(\counter_q_reg[16]_i_2_n_0 ),
        .CO({\counter_q_reg[20]_i_2_n_0 ,\counter_q_reg[20]_i_2_n_1 ,\counter_q_reg[20]_i_2_n_2 ,\counter_q_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_q_reg[20]_i_2_n_4 ,\counter_q_reg[20]_i_2_n_5 ,\counter_q_reg[20]_i_2_n_6 ,\counter_q_reg[20]_i_2_n_7 }),
        .S(counter_q[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[21]),
        .Q(counter_q[21]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[22]),
        .Q(counter_q[22]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[23]),
        .Q(counter_q[23]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[24]),
        .Q(counter_q[24]),
        .R(rst_IBUF));
  CARRY4 \counter_q_reg[24]_i_2 
       (.CI(\counter_q_reg[20]_i_2_n_0 ),
        .CO({\counter_q_reg[24]_i_2_n_0 ,\counter_q_reg[24]_i_2_n_1 ,\counter_q_reg[24]_i_2_n_2 ,\counter_q_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_q_reg[24]_i_2_n_4 ,\counter_q_reg[24]_i_2_n_5 ,\counter_q_reg[24]_i_2_n_6 ,\counter_q_reg[24]_i_2_n_7 }),
        .S(counter_q[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[25]),
        .Q(counter_q[25]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[26]),
        .Q(counter_q[26]),
        .R(rst_IBUF));
  CARRY4 \counter_q_reg[26]_i_3 
       (.CI(\counter_q_reg[24]_i_2_n_0 ),
        .CO({\NLW_counter_q_reg[26]_i_3_CO_UNCONNECTED [3:1],\counter_q_reg[26]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_q_reg[26]_i_3_O_UNCONNECTED [3:2],\counter_q_reg[26]_i_3_n_6 ,\counter_q_reg[26]_i_3_n_7 }),
        .S({1'b0,1'b0,counter_q[26:25]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[2]),
        .Q(counter_q[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[3]),
        .Q(counter_q[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[4]),
        .Q(counter_q[4]),
        .R(rst_IBUF));
  CARRY4 \counter_q_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_q_reg[4]_i_2_n_0 ,\counter_q_reg[4]_i_2_n_1 ,\counter_q_reg[4]_i_2_n_2 ,\counter_q_reg[4]_i_2_n_3 }),
        .CYINIT(counter_q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_q_reg[4]_i_2_n_4 ,\counter_q_reg[4]_i_2_n_5 ,\counter_q_reg[4]_i_2_n_6 ,\counter_q_reg[4]_i_2_n_7 }),
        .S(counter_q[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[5]),
        .Q(counter_q[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[6]),
        .Q(counter_q[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[7]),
        .Q(counter_q[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[8]),
        .Q(counter_q[8]),
        .R(rst_IBUF));
  CARRY4 \counter_q_reg[8]_i_2 
       (.CI(\counter_q_reg[4]_i_2_n_0 ),
        .CO({\counter_q_reg[8]_i_2_n_0 ,\counter_q_reg[8]_i_2_n_1 ,\counter_q_reg[8]_i_2_n_2 ,\counter_q_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_q_reg[8]_i_2_n_4 ,\counter_q_reg[8]_i_2_n_5 ,\counter_q_reg[8]_i_2_n_6 ,\counter_q_reg[8]_i_2_n_7 }),
        .S(counter_q[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_q_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_d[9]),
        .Q(counter_q[9]),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'h00000000CCCECCCA)) 
    direction_state_q_i_1
       (.I0(state_q[4]),
        .I1(direction_state_q),
        .I2(counter_q[0]),
        .I3(\counter_q[26]_i_2_n_0 ),
        .I4(\state_q[4]_i_4_n_0 ),
        .I5(rst_IBUF),
        .O(direction_state_q_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    direction_state_q_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(direction_state_q_i_1_n_0),
        .Q(direction_state_q),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000EF7C)) 
    g0_b0
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[3]),
        .I4(state_q[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000DF71)) 
    g0_b1
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[3]),
        .I4(state_q[4]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000FD45)) 
    g0_b2
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[3]),
        .I4(state_q[4]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000796D)) 
    g0_b3
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[3]),
        .I4(state_q[4]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00002FFB)) 
    g0_b4
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[3]),
        .I4(state_q[4]),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000279F)) 
    g0_b5
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[3]),
        .I4(state_q[4]),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0000D7ED)) 
    g0_b6
       (.I0(state_q[0]),
        .I1(state_q[1]),
        .I2(state_q[2]),
        .I3(state_q[3]),
        .I4(state_q[4]),
        .O(g0_b6_n_0));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \segments_q[6]_i_1 
       (.I0(state_q[4]),
        .O(\segments_q[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \segments_q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\segments_q[6]_i_1_n_0 ),
        .D(g0_b0_n_0),
        .Q(G_OBUF),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \segments_q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\segments_q[6]_i_1_n_0 ),
        .D(g0_b1_n_0),
        .Q(F_OBUF),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \segments_q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\segments_q[6]_i_1_n_0 ),
        .D(g0_b2_n_0),
        .Q(E_OBUF),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \segments_q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\segments_q[6]_i_1_n_0 ),
        .D(g0_b3_n_0),
        .Q(D_OBUF),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \segments_q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\segments_q[6]_i_1_n_0 ),
        .D(g0_b4_n_0),
        .Q(C_OBUF),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \segments_q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\segments_q[6]_i_1_n_0 ),
        .D(g0_b5_n_0),
        .Q(B_OBUF),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \segments_q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\segments_q[6]_i_1_n_0 ),
        .D(g0_b6_n_0),
        .Q(A_OBUF),
        .R(rst_IBUF));
  LUT6 #(
    .INIT(64'hFFFFFF10000000FF)) 
    \state_q[0]_i_1 
       (.I0(state_q[4]),
        .I1(\state_q[4]_i_4_n_0 ),
        .I2(direction_state_q),
        .I3(counter_q[0]),
        .I4(\counter_q[26]_i_2_n_0 ),
        .I5(state_q[0]),
        .O(\state_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h9996)) 
    \state_q[1]_i_1 
       (.I0(state_q[1]),
        .I1(state_q[0]),
        .I2(state_q[4]),
        .I3(direction_state_q),
        .O(\state_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA9A9A96A)) 
    \state_q[2]_i_1 
       (.I0(state_q[2]),
        .I1(state_q[0]),
        .I2(state_q[1]),
        .I3(state_q[4]),
        .I4(direction_state_q),
        .O(\state_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA9AAAAAAAAAAAA56)) 
    \state_q[3]_i_1 
       (.I0(state_q[3]),
        .I1(direction_state_q),
        .I2(state_q[4]),
        .I3(state_q[2]),
        .I4(state_q[0]),
        .I5(state_q[1]),
        .O(\state_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \state_q[4]_i_1 
       (.I0(\counter_q[26]_i_2_n_0 ),
        .I1(counter_q[0]),
        .I2(state_q[4]),
        .I3(\state_q[4]_i_4_n_0 ),
        .I4(direction_state_q),
        .I5(rst_IBUF),
        .O(\state_q[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state_q[4]_i_2 
       (.I0(counter_q[0]),
        .I1(\counter_q[26]_i_2_n_0 ),
        .O(state_d));
  LUT6 #(
    .INIT(64'hAAAAAAA9EAAAAAA8)) 
    \state_q[4]_i_3 
       (.I0(state_q[4]),
        .I1(state_q[1]),
        .I2(state_q[0]),
        .I3(state_q[2]),
        .I4(state_q[3]),
        .I5(direction_state_q),
        .O(\state_q[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_q[4]_i_4 
       (.I0(state_q[2]),
        .I1(state_q[0]),
        .I2(state_q[1]),
        .I3(state_q[3]),
        .O(\state_q[4]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_q[0]_i_1_n_0 ),
        .Q(state_q[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \state_q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(state_d),
        .D(\state_q[1]_i_1_n_0 ),
        .Q(state_q[1]),
        .R(\state_q[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(state_d),
        .D(\state_q[2]_i_1_n_0 ),
        .Q(state_q[2]),
        .R(\state_q[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(state_d),
        .D(\state_q[3]_i_1_n_0 ),
        .Q(state_q[3]),
        .R(\state_q[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(state_d),
        .D(\state_q[4]_i_3_n_0 ),
        .Q(state_q[4]),
        .R(\state_q[4]_i_1_n_0 ));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
