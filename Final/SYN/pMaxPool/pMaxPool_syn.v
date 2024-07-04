/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12
// Date      : Wed Jun  5 17:14:48 2024
/////////////////////////////////////////////////////////////


module pMaxPool ( clk, rst_n, i_data_0, i_data_1, o_data );
  input [20:0] i_data_0;
  input [20:0] i_data_1;
  output [20:0] o_data;
  input clk, rst_n;
  wire   n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         \sub_r[20] , \sub_w[20] , n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132;
  wire   [20:0] comp_w;

  QDFFRBN \comp_r_reg[8]  ( .D(comp_w[8]), .CK(clk), .RB(n10), .Q(n145) );
  QDFFRBN \comp_r_reg[5]  ( .D(comp_w[5]), .CK(clk), .RB(n10), .Q(n148) );
  QDFFRBN \comp_r_reg[20]  ( .D(comp_w[20]), .CK(clk), .RB(n11), .Q(n133) );
  QDFFRBN \comp_r_reg[19]  ( .D(comp_w[19]), .CK(clk), .RB(n7), .Q(n134) );
  QDFFRBN \comp_r_reg[18]  ( .D(comp_w[18]), .CK(clk), .RB(n8), .Q(n135) );
  QDFFRBN \comp_r_reg[17]  ( .D(comp_w[17]), .CK(clk), .RB(n7), .Q(n136) );
  QDFFRBN \comp_r_reg[16]  ( .D(comp_w[16]), .CK(clk), .RB(n8), .Q(n137) );
  QDFFRBN \comp_r_reg[15]  ( .D(comp_w[15]), .CK(clk), .RB(n11), .Q(n138) );
  QDFFRBN \comp_r_reg[14]  ( .D(comp_w[14]), .CK(clk), .RB(n11), .Q(n139) );
  QDFFRBN \comp_r_reg[13]  ( .D(comp_w[13]), .CK(clk), .RB(n11), .Q(n140) );
  QDFFRBN \comp_r_reg[12]  ( .D(comp_w[12]), .CK(clk), .RB(n11), .Q(n141) );
  QDFFRBN \comp_r_reg[11]  ( .D(comp_w[11]), .CK(clk), .RB(n11), .Q(n142) );
  QDFFRBN \comp_r_reg[10]  ( .D(comp_w[10]), .CK(clk), .RB(n7), .Q(n143) );
  QDFFRBN \comp_r_reg[9]  ( .D(comp_w[9]), .CK(clk), .RB(n8), .Q(n144) );
  QDFFRBN \comp_r_reg[7]  ( .D(comp_w[7]), .CK(clk), .RB(n7), .Q(n146) );
  QDFFRBN \comp_r_reg[6]  ( .D(comp_w[6]), .CK(clk), .RB(n8), .Q(n147) );
  QDFFRBN \comp_r_reg[4]  ( .D(comp_w[4]), .CK(clk), .RB(n7), .Q(n149) );
  QDFFRBN \comp_r_reg[3]  ( .D(comp_w[3]), .CK(clk), .RB(n8), .Q(n150) );
  QDFFRBN \comp_r_reg[2]  ( .D(comp_w[2]), .CK(clk), .RB(n10), .Q(n151) );
  QDFFRBN \comp_r_reg[1]  ( .D(comp_w[1]), .CK(clk), .RB(n7), .Q(n152) );
  QDFFRBN \comp_r_reg[0]  ( .D(comp_w[0]), .CK(clk), .RB(n8), .Q(n153) );
  QDFFRBP \sub_r_reg[20]  ( .D(\sub_w[20] ), .CK(clk), .RB(n10), .Q(
        \sub_r[20] ) );
  INV3 U25 ( .I(n4), .O(n5) );
  INV6 U26 ( .I(\sub_r[20] ), .O(n4) );
  INV3 U27 ( .I(n4), .O(n2) );
  INV3 U28 ( .I(n4), .O(n3) );
  INV2 U29 ( .I(n4), .O(n6) );
  BUF1 U30 ( .I(n58), .O(n37) );
  BUF1 U31 ( .I(n63), .O(n42) );
  BUF1 U32 ( .I(n68), .O(n47) );
  BUF1 U33 ( .I(n64), .O(n43) );
  BUF1 U34 ( .I(n65), .O(n44) );
  BUF1 U35 ( .I(n57), .O(n36) );
  BUF1 U36 ( .I(n59), .O(n38) );
  BUF1 U37 ( .I(n62), .O(n41) );
  BUF1 U38 ( .I(n66), .O(n45) );
  BUF1 U39 ( .I(n67), .O(n46) );
  BUF1 U40 ( .I(n69), .O(n48) );
  BUF1 U41 ( .I(n61), .O(n40) );
  BUF1 U42 ( .I(n70), .O(n49) );
  BUF1 U43 ( .I(n60), .O(n39) );
  BUF1 U44 ( .I(n54), .O(n33) );
  BUF1 U45 ( .I(n56), .O(n35) );
  BUF1 U46 ( .I(n55), .O(n34) );
  BUF1 U47 ( .I(n71), .O(n50) );
  BUF1 U48 ( .I(n76), .O(n55) );
  BUF1 U49 ( .I(n75), .O(n54) );
  BUF1 U50 ( .I(n90), .O(n69) );
  BUF1 U51 ( .I(n72), .O(n51) );
  BUF1 U52 ( .I(n86), .O(n65) );
  BUF1 U53 ( .I(n85), .O(n64) );
  BUF1 U54 ( .I(n82), .O(n61) );
  BUF1 U55 ( .I(n73), .O(n52) );
  BUF1 U56 ( .I(n91), .O(n70) );
  BUF1 U57 ( .I(n88), .O(n67) );
  BUF1 U58 ( .I(n81), .O(n60) );
  BUF1 U59 ( .I(n77), .O(n56) );
  BUF1 U60 ( .I(n74), .O(n53) );
  BUF1 U61 ( .I(n89), .O(n68) );
  BUF1 U62 ( .I(n79), .O(n58) );
  BUF1 U63 ( .I(n92), .O(n71) );
  BUF1 U64 ( .I(n78), .O(n57) );
  BUF1 U65 ( .I(n80), .O(n59) );
  BUF1 U66 ( .I(n84), .O(n63) );
  BUF1 U67 ( .I(n83), .O(n62) );
  BUF1 U68 ( .I(n87), .O(n66) );
  BUF1 U69 ( .I(n145), .O(n80) );
  BUF1 U70 ( .I(n143), .O(n82) );
  BUF1 U71 ( .I(n144), .O(n81) );
  BUF1 U72 ( .I(n139), .O(n86) );
  BUF1 U73 ( .I(n140), .O(n85) );
  BUF1 U74 ( .I(n138), .O(n87) );
  BUF1 U75 ( .I(n134), .O(n91) );
  BUF1 U76 ( .I(n135), .O(n90) );
  BUF1 U77 ( .I(n142), .O(n83) );
  BUF1 U78 ( .I(n133), .O(n92) );
  BUF1 U79 ( .I(n136), .O(n89) );
  BUF1 U80 ( .I(n141), .O(n84) );
  BUF1 U81 ( .I(n137), .O(n88) );
  BUF1 U82 ( .I(n153), .O(n72) );
  BUF1 U83 ( .I(n152), .O(n73) );
  BUF1 U84 ( .I(n151), .O(n74) );
  BUF1 U85 ( .I(n150), .O(n75) );
  BUF1 U86 ( .I(n148), .O(n77) );
  BUF1 U87 ( .I(n147), .O(n78) );
  BUF1 U88 ( .I(n149), .O(n76) );
  BUF1 U89 ( .I(n146), .O(n79) );
  INV1S U90 ( .I(n9), .O(n7) );
  INV1S U91 ( .I(n9), .O(n8) );
  INV1S U92 ( .I(n9), .O(n11) );
  INV1S U93 ( .I(rst_n), .O(n9) );
  INV1S U94 ( .I(n9), .O(n10) );
  BUF12CK U95 ( .I(n50), .O(o_data[20]) );
  BUF12CK U96 ( .I(n48), .O(o_data[18]) );
  BUF12CK U97 ( .I(n49), .O(o_data[19]) );
  BUF12CK U98 ( .I(n46), .O(o_data[16]) );
  BUF12CK U99 ( .I(n47), .O(o_data[17]) );
  BUF12CK U100 ( .I(n44), .O(o_data[14]) );
  BUF12CK U101 ( .I(n45), .O(o_data[15]) );
  BUF12CK U102 ( .I(n42), .O(o_data[12]) );
  BUF12CK U103 ( .I(n43), .O(o_data[13]) );
  BUF12CK U104 ( .I(n40), .O(o_data[10]) );
  BUF12CK U105 ( .I(n41), .O(o_data[11]) );
  BUF12CK U106 ( .I(n38), .O(o_data[8]) );
  BUF12CK U107 ( .I(n39), .O(o_data[9]) );
  BUF12CK U108 ( .I(n36), .O(o_data[6]) );
  BUF12CK U109 ( .I(n37), .O(o_data[7]) );
  BUF12CK U110 ( .I(n34), .O(o_data[4]) );
  BUF12CK U111 ( .I(n35), .O(o_data[5]) );
  BUF12CK U112 ( .I(n53), .O(o_data[2]) );
  BUF12CK U113 ( .I(n33), .O(o_data[3]) );
  BUF12CK U114 ( .I(n51), .O(o_data[0]) );
  BUF12CK U115 ( .I(n52), .O(o_data[1]) );
  AN2B1S U116 ( .I1(i_data_1[0]), .B1(i_data_0[0]), .O(n93) );
  NR2 U117 ( .I1(n93), .I2(i_data_1[1]), .O(n94) );
  MOAI1S U118 ( .A1(n94), .A2(i_data_0[1]), .B1(n93), .B2(i_data_1[1]), .O(n95) );
  NR2 U119 ( .I1(n95), .I2(i_data_1[2]), .O(n96) );
  MOAI1S U120 ( .A1(n96), .A2(i_data_0[2]), .B1(n95), .B2(i_data_1[2]), .O(n97) );
  NR2 U121 ( .I1(n97), .I2(i_data_1[3]), .O(n98) );
  MOAI1S U122 ( .A1(n98), .A2(i_data_0[3]), .B1(n97), .B2(i_data_1[3]), .O(n99) );
  NR2 U123 ( .I1(n99), .I2(i_data_1[4]), .O(n100) );
  MOAI1S U124 ( .A1(n100), .A2(i_data_0[4]), .B1(n99), .B2(i_data_1[4]), .O(
        n101) );
  NR2 U125 ( .I1(n101), .I2(i_data_1[5]), .O(n102) );
  MOAI1S U126 ( .A1(n102), .A2(i_data_0[5]), .B1(n101), .B2(i_data_1[5]), .O(
        n103) );
  NR2 U127 ( .I1(n103), .I2(i_data_1[6]), .O(n104) );
  MOAI1S U128 ( .A1(n104), .A2(i_data_0[6]), .B1(n103), .B2(i_data_1[6]), .O(
        n105) );
  NR2 U129 ( .I1(n105), .I2(i_data_1[7]), .O(n106) );
  MOAI1S U130 ( .A1(n106), .A2(i_data_0[7]), .B1(n105), .B2(i_data_1[7]), .O(
        n107) );
  NR2 U131 ( .I1(n107), .I2(i_data_1[8]), .O(n108) );
  MOAI1S U132 ( .A1(n108), .A2(i_data_0[8]), .B1(n107), .B2(i_data_1[8]), .O(
        n109) );
  NR2 U133 ( .I1(n109), .I2(i_data_1[9]), .O(n110) );
  MOAI1S U134 ( .A1(n110), .A2(i_data_0[9]), .B1(n109), .B2(i_data_1[9]), .O(
        n111) );
  NR2 U135 ( .I1(n111), .I2(i_data_1[10]), .O(n112) );
  MOAI1S U136 ( .A1(n112), .A2(i_data_0[10]), .B1(n111), .B2(i_data_1[10]), 
        .O(n113) );
  NR2 U137 ( .I1(n113), .I2(i_data_1[11]), .O(n114) );
  MOAI1S U138 ( .A1(n114), .A2(i_data_0[11]), .B1(n113), .B2(i_data_1[11]), 
        .O(n115) );
  NR2 U139 ( .I1(n115), .I2(i_data_1[12]), .O(n116) );
  MOAI1S U140 ( .A1(n116), .A2(i_data_0[12]), .B1(n115), .B2(i_data_1[12]), 
        .O(n117) );
  NR2 U141 ( .I1(n117), .I2(i_data_1[13]), .O(n118) );
  MOAI1S U142 ( .A1(n118), .A2(i_data_0[13]), .B1(n117), .B2(i_data_1[13]), 
        .O(n119) );
  NR2 U143 ( .I1(n119), .I2(i_data_1[14]), .O(n120) );
  MOAI1S U144 ( .A1(n120), .A2(i_data_0[14]), .B1(n119), .B2(i_data_1[14]), 
        .O(n121) );
  NR2 U145 ( .I1(n121), .I2(i_data_1[15]), .O(n122) );
  MOAI1S U146 ( .A1(n122), .A2(i_data_0[15]), .B1(n121), .B2(i_data_1[15]), 
        .O(n123) );
  NR2 U147 ( .I1(n123), .I2(i_data_1[16]), .O(n124) );
  MOAI1S U148 ( .A1(n124), .A2(i_data_0[16]), .B1(n123), .B2(i_data_1[16]), 
        .O(n125) );
  NR2 U149 ( .I1(n125), .I2(i_data_1[17]), .O(n126) );
  MOAI1S U150 ( .A1(n126), .A2(i_data_0[17]), .B1(n125), .B2(i_data_1[17]), 
        .O(n127) );
  NR2 U151 ( .I1(n127), .I2(i_data_1[18]), .O(n128) );
  MOAI1S U152 ( .A1(n128), .A2(i_data_0[18]), .B1(n127), .B2(i_data_1[18]), 
        .O(n129) );
  NR2 U153 ( .I1(n129), .I2(i_data_1[19]), .O(n130) );
  MOAI1S U154 ( .A1(n130), .A2(i_data_0[19]), .B1(n129), .B2(i_data_1[19]), 
        .O(n132) );
  MOAI1S U155 ( .A1(i_data_1[20]), .A2(i_data_0[20]), .B1(i_data_1[20]), .B2(
        i_data_0[20]), .O(n131) );
  MOAI1S U156 ( .A1(n132), .A2(n131), .B1(n132), .B2(n131), .O(\sub_w[20] ) );
  MUX2 U157 ( .A(i_data_0[0]), .B(i_data_1[0]), .S(n2), .O(comp_w[0]) );
  MUX2 U158 ( .A(i_data_0[1]), .B(i_data_1[1]), .S(n5), .O(comp_w[1]) );
  MUX2 U159 ( .A(i_data_0[2]), .B(i_data_1[2]), .S(n5), .O(comp_w[2]) );
  MUX2 U160 ( .A(i_data_0[3]), .B(i_data_1[3]), .S(n3), .O(comp_w[3]) );
  MUX2 U161 ( .A(i_data_0[4]), .B(i_data_1[4]), .S(n3), .O(comp_w[4]) );
  MUX2 U162 ( .A(i_data_0[5]), .B(i_data_1[5]), .S(n3), .O(comp_w[5]) );
  MUX2 U163 ( .A(i_data_0[6]), .B(i_data_1[6]), .S(n3), .O(comp_w[6]) );
  MUX2 U164 ( .A(i_data_0[7]), .B(i_data_1[7]), .S(n5), .O(comp_w[7]) );
  MUX2 U165 ( .A(i_data_0[8]), .B(i_data_1[8]), .S(n3), .O(comp_w[8]) );
  MUX2 U166 ( .A(i_data_0[9]), .B(i_data_1[9]), .S(n5), .O(comp_w[9]) );
  MUX2 U167 ( .A(i_data_0[10]), .B(i_data_1[10]), .S(n5), .O(comp_w[10]) );
  MUX2 U168 ( .A(i_data_0[11]), .B(i_data_1[11]), .S(n6), .O(comp_w[11]) );
  MUX2 U169 ( .A(i_data_0[12]), .B(i_data_1[12]), .S(n2), .O(comp_w[12]) );
  MUX2 U170 ( .A(i_data_0[13]), .B(i_data_1[13]), .S(n6), .O(comp_w[13]) );
  MUX2 U171 ( .A(i_data_0[14]), .B(i_data_1[14]), .S(n2), .O(comp_w[14]) );
  MUX2 U172 ( .A(i_data_0[15]), .B(i_data_1[15]), .S(n2), .O(comp_w[15]) );
  MUX2 U173 ( .A(i_data_0[16]), .B(i_data_1[16]), .S(n2), .O(comp_w[16]) );
  MUX2 U174 ( .A(i_data_0[17]), .B(i_data_1[17]), .S(n2), .O(comp_w[17]) );
  MUX2 U175 ( .A(i_data_0[18]), .B(i_data_1[18]), .S(n6), .O(comp_w[18]) );
  MUX2 U176 ( .A(i_data_0[19]), .B(i_data_1[19]), .S(n3), .O(comp_w[19]) );
  MUX2 U177 ( .A(i_data_0[20]), .B(i_data_1[20]), .S(n5), .O(comp_w[20]) );
endmodule

