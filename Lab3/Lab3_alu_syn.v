/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Sat Mar  9 01:23:18 2024
/////////////////////////////////////////////////////////////


module alu_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  FA1S U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
endmodule


module alu_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  FA1S U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FA1S U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1S U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1S U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1S U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1S U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1S U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  INV1S U1 ( .I(B[0]), .O(n9) );
  INV1S U2 ( .I(B[6]), .O(n3) );
  INV1S U3 ( .I(B[5]), .O(n4) );
  INV1S U4 ( .I(B[4]), .O(n5) );
  INV1S U5 ( .I(B[3]), .O(n6) );
  INV1S U6 ( .I(B[1]), .O(n8) );
  INV1S U7 ( .I(A[0]), .O(n1) );
  INV1S U8 ( .I(B[2]), .O(n7) );
  INV1S U9 ( .I(B[7]), .O(n2) );
  XNR2HS U10 ( .I1(n9), .I2(A[0]), .O(DIFF[0]) );
  ND2 U11 ( .I1(B[0]), .I2(n1), .O(carry[1]) );
  INV1S U12 ( .I(carry[8]), .O(DIFF[8]) );
endmodule


module alu_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HA1 U1_1_6 ( .A(A[6]), .B(carry[6]), .C(carry[7]), .S(SUM[6]) );
  HA1 U1_1_5 ( .A(A[5]), .B(carry[5]), .C(carry[6]), .S(SUM[5]) );
  HA1 U1_1_4 ( .A(A[4]), .B(carry[4]), .C(carry[5]), .S(SUM[4]) );
  HA1 U1_1_3 ( .A(A[3]), .B(carry[3]), .C(carry[4]), .S(SUM[3]) );
  HA1 U1_1_2 ( .A(A[2]), .B(carry[2]), .C(carry[3]), .S(SUM[2]) );
  HA1 U1_1_1 ( .A(A[1]), .B(A[0]), .C(carry[2]), .S(SUM[1]) );
  XOR2HS U1 ( .I1(carry[7]), .I2(A[7]), .O(SUM[7]) );
  INV1S U2 ( .I(A[0]), .O(SUM[0]) );
endmodule


module alu_DW_mult_uns_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245;

  FA1S U2 ( .A(n99), .B(n15), .CI(n2), .CO(product[15]), .S(product[14]) );
  FA1S U3 ( .A(n16), .B(n17), .CI(n3), .CO(n2), .S(product[13]) );
  FA1S U4 ( .A(n18), .B(n21), .CI(n4), .CO(n3), .S(product[12]) );
  FA1S U5 ( .A(n27), .B(n22), .CI(n5), .CO(n4), .S(product[11]) );
  FA1S U6 ( .A(n35), .B(n28), .CI(n6), .CO(n5), .S(product[10]) );
  FA1S U7 ( .A(n45), .B(n36), .CI(n7), .CO(n6), .S(product[9]) );
  FA1S U8 ( .A(n57), .B(n46), .CI(n8), .CO(n7), .S(product[8]) );
  FA1S U9 ( .A(n69), .B(n58), .CI(n9), .CO(n8), .S(product[7]) );
  FA1S U10 ( .A(n79), .B(n70), .CI(n10), .CO(n9), .S(product[6]) );
  FA1S U11 ( .A(n87), .B(n80), .CI(n11), .CO(n10), .S(product[5]) );
  FA1S U12 ( .A(n93), .B(n88), .CI(n12), .CO(n11), .S(product[4]) );
  FA1S U13 ( .A(n96), .B(n13), .CI(n94), .CO(n12), .S(product[3]) );
  FA1S U14 ( .A(n146), .B(n14), .CI(n98), .CO(n13), .S(product[2]) );
  HA1 U15 ( .A(n154), .B(n161), .C(n14), .S(product[1]) );
  FA1S U16 ( .A(n107), .B(n100), .CI(n19), .CO(n15), .S(n16) );
  FA1S U17 ( .A(n25), .B(n20), .CI(n23), .CO(n17), .S(n18) );
  FA1S U18 ( .A(n115), .B(n101), .CI(n108), .CO(n19), .S(n20) );
  FA1S U19 ( .A(n31), .B(n24), .CI(n29), .CO(n21), .S(n22) );
  FA1S U20 ( .A(n116), .B(n33), .CI(n26), .CO(n23), .S(n24) );
  FA1S U21 ( .A(n123), .B(n102), .CI(n109), .CO(n25), .S(n26) );
  FA1S U22 ( .A(n32), .B(n37), .CI(n30), .CO(n27), .S(n28) );
  FA1S U23 ( .A(n41), .B(n34), .CI(n39), .CO(n29), .S(n30) );
  FA1S U24 ( .A(n124), .B(n117), .CI(n43), .CO(n31), .S(n32) );
  FA1S U25 ( .A(n131), .B(n103), .CI(n110), .CO(n33), .S(n34) );
  FA1S U26 ( .A(n40), .B(n47), .CI(n38), .CO(n35), .S(n36) );
  FA1S U27 ( .A(n44), .B(n51), .CI(n49), .CO(n37), .S(n38) );
  FA1S U28 ( .A(n55), .B(n53), .CI(n42), .CO(n39), .S(n40) );
  FA1S U29 ( .A(n118), .B(n125), .CI(n132), .CO(n41), .S(n42) );
  FA1S U30 ( .A(n139), .B(n104), .CI(n111), .CO(n43), .S(n44) );
  FA1S U31 ( .A(n50), .B(n59), .CI(n48), .CO(n45), .S(n46) );
  FA1S U32 ( .A(n54), .B(n52), .CI(n61), .CO(n47), .S(n48) );
  FA1S U33 ( .A(n56), .B(n65), .CI(n63), .CO(n49), .S(n50) );
  FA1S U34 ( .A(n140), .B(n133), .CI(n67), .CO(n51), .S(n52) );
  FA1S U35 ( .A(n126), .B(n119), .CI(n147), .CO(n53), .S(n54) );
  HA1 U36 ( .A(n112), .B(n105), .C(n55), .S(n56) );
  FA1S U37 ( .A(n71), .B(n62), .CI(n60), .CO(n57), .S(n58) );
  FA1S U38 ( .A(n64), .B(n66), .CI(n73), .CO(n59), .S(n60) );
  FA1S U39 ( .A(n77), .B(n68), .CI(n75), .CO(n61), .S(n62) );
  FA1S U40 ( .A(n141), .B(n127), .CI(n134), .CO(n63), .S(n64) );
  FA1S U41 ( .A(n155), .B(n120), .CI(n148), .CO(n65), .S(n66) );
  HA1 U42 ( .A(n113), .B(n106), .C(n67), .S(n68) );
  FA1S U43 ( .A(n81), .B(n74), .CI(n72), .CO(n69), .S(n70) );
  FA1S U44 ( .A(n78), .B(n83), .CI(n76), .CO(n71), .S(n72) );
  FA1S U45 ( .A(n142), .B(n135), .CI(n85), .CO(n73), .S(n74) );
  FA1S U46 ( .A(n156), .B(n128), .CI(n149), .CO(n75), .S(n76) );
  HA1 U47 ( .A(n121), .B(n114), .C(n77), .S(n78) );
  FA1S U48 ( .A(n89), .B(n84), .CI(n82), .CO(n79), .S(n80) );
  FA1S U49 ( .A(n150), .B(n91), .CI(n86), .CO(n81), .S(n82) );
  FA1S U50 ( .A(n157), .B(n136), .CI(n143), .CO(n83), .S(n84) );
  HA1 U51 ( .A(n129), .B(n122), .C(n85), .S(n86) );
  FA1S U52 ( .A(n95), .B(n92), .CI(n90), .CO(n87), .S(n88) );
  FA1S U53 ( .A(n158), .B(n144), .CI(n151), .CO(n89), .S(n90) );
  HA1 U54 ( .A(n137), .B(n130), .C(n91), .S(n92) );
  FA1S U55 ( .A(n159), .B(n152), .CI(n97), .CO(n93), .S(n94) );
  HA1 U56 ( .A(n145), .B(n138), .C(n95), .S(n96) );
  HA1 U57 ( .A(n160), .B(n153), .C(n97), .S(n98) );
  INV1S U140 ( .I(a[0]), .O(n214) );
  INV1S U141 ( .I(a[1]), .O(n215) );
  INV1S U142 ( .I(b[2]), .O(n216) );
  INV1S U143 ( .I(b[1]), .O(n217) );
  INV1S U144 ( .I(b[0]), .O(n218) );
  INV1S U145 ( .I(a[2]), .O(n219) );
  INV1S U146 ( .I(b[4]), .O(n220) );
  INV1S U147 ( .I(a[4]), .O(n221) );
  INV1S U148 ( .I(b[3]), .O(n222) );
  INV1S U149 ( .I(a[5]), .O(n223) );
  INV1S U150 ( .I(a[3]), .O(n224) );
  INV1S U151 ( .I(b[6]), .O(n225) );
  INV1S U152 ( .I(b[5]), .O(n226) );
  INV1S U153 ( .I(a[6]), .O(n227) );
  INV1S U154 ( .I(b[7]), .O(n228) );
  INV1S U155 ( .I(a[7]), .O(n229) );
  INV1S U156 ( .I(a[0]), .O(n245) );
  INV1S U157 ( .I(a[1]), .O(n244) );
  INV1S U158 ( .I(b[2]), .O(n235) );
  INV1S U159 ( .I(b[1]), .O(n236) );
  INV1S U160 ( .I(b[0]), .O(n237) );
  INV1S U161 ( .I(a[2]), .O(n243) );
  INV1S U162 ( .I(b[4]), .O(n233) );
  INV1S U163 ( .I(a[4]), .O(n241) );
  INV1S U164 ( .I(b[3]), .O(n234) );
  INV1S U165 ( .I(a[5]), .O(n240) );
  INV1S U166 ( .I(a[3]), .O(n242) );
  INV1S U167 ( .I(b[6]), .O(n231) );
  INV1S U168 ( .I(b[5]), .O(n232) );
  INV1S U169 ( .I(a[6]), .O(n239) );
  INV1S U170 ( .I(b[7]), .O(n230) );
  INV1S U171 ( .I(a[7]), .O(n238) );
  NR2 U172 ( .I1(n245), .I2(n237), .O(product[0]) );
  NR2 U173 ( .I1(n238), .I2(n230), .O(n99) );
  NR2 U174 ( .I1(n245), .I2(n217), .O(n161) );
  NR2 U175 ( .I1(n214), .I2(n216), .O(n160) );
  NR2 U176 ( .I1(n245), .I2(n234), .O(n159) );
  NR2 U177 ( .I1(n214), .I2(n220), .O(n158) );
  NR2 U178 ( .I1(n245), .I2(n226), .O(n157) );
  NR2 U179 ( .I1(n214), .I2(n225), .O(n156) );
  NR2 U180 ( .I1(n214), .I2(n228), .O(n155) );
  NR2 U181 ( .I1(n218), .I2(n215), .O(n154) );
  NR2 U182 ( .I1(n217), .I2(n215), .O(n153) );
  NR2 U183 ( .I1(n216), .I2(n215), .O(n152) );
  NR2 U184 ( .I1(n222), .I2(n244), .O(n151) );
  NR2 U185 ( .I1(n220), .I2(n244), .O(n150) );
  NR2 U186 ( .I1(n226), .I2(n215), .O(n149) );
  NR2 U187 ( .I1(n225), .I2(n215), .O(n148) );
  NR2 U188 ( .I1(n228), .I2(n244), .O(n147) );
  NR2 U189 ( .I1(n218), .I2(n219), .O(n146) );
  NR2 U190 ( .I1(n217), .I2(n219), .O(n145) );
  NR2 U191 ( .I1(n216), .I2(n219), .O(n144) );
  NR2 U192 ( .I1(n222), .I2(n243), .O(n143) );
  NR2 U193 ( .I1(n233), .I2(n243), .O(n142) );
  NR2 U194 ( .I1(n226), .I2(n219), .O(n141) );
  NR2 U195 ( .I1(n225), .I2(n219), .O(n140) );
  NR2 U196 ( .I1(n228), .I2(n243), .O(n139) );
  NR2 U197 ( .I1(n218), .I2(n224), .O(n138) );
  NR2 U198 ( .I1(n236), .I2(n224), .O(n137) );
  NR2 U199 ( .I1(n216), .I2(n224), .O(n136) );
  NR2 U200 ( .I1(n222), .I2(n224), .O(n135) );
  NR2 U201 ( .I1(n220), .I2(n242), .O(n134) );
  NR2 U202 ( .I1(n232), .I2(n242), .O(n133) );
  NR2 U203 ( .I1(n231), .I2(n224), .O(n132) );
  NR2 U204 ( .I1(n230), .I2(n242), .O(n131) );
  NR2 U205 ( .I1(n237), .I2(n221), .O(n130) );
  NR2 U206 ( .I1(n217), .I2(n221), .O(n129) );
  NR2 U207 ( .I1(n235), .I2(n221), .O(n128) );
  NR2 U208 ( .I1(n234), .I2(n241), .O(n127) );
  NR2 U209 ( .I1(n220), .I2(n221), .O(n126) );
  NR2 U210 ( .I1(n226), .I2(n241), .O(n125) );
  NR2 U211 ( .I1(n225), .I2(n241), .O(n124) );
  NR2 U212 ( .I1(n228), .I2(n221), .O(n123) );
  NR2 U213 ( .I1(n237), .I2(n223), .O(n122) );
  NR2 U214 ( .I1(n236), .I2(n223), .O(n121) );
  NR2 U215 ( .I1(n235), .I2(n223), .O(n120) );
  NR2 U216 ( .I1(n234), .I2(n240), .O(n119) );
  NR2 U217 ( .I1(n233), .I2(n223), .O(n118) );
  NR2 U218 ( .I1(n226), .I2(n240), .O(n117) );
  NR2 U219 ( .I1(n231), .I2(n223), .O(n116) );
  NR2 U220 ( .I1(n230), .I2(n240), .O(n115) );
  NR2 U221 ( .I1(n237), .I2(n227), .O(n114) );
  NR2 U222 ( .I1(n217), .I2(n227), .O(n113) );
  NR2 U223 ( .I1(n216), .I2(n227), .O(n112) );
  NR2 U224 ( .I1(n222), .I2(n239), .O(n111) );
  NR2 U225 ( .I1(n220), .I2(n227), .O(n110) );
  NR2 U226 ( .I1(n232), .I2(n239), .O(n109) );
  NR2 U227 ( .I1(n225), .I2(n227), .O(n108) );
  NR2 U228 ( .I1(n228), .I2(n239), .O(n107) );
  NR2 U229 ( .I1(n218), .I2(n229), .O(n106) );
  NR2 U230 ( .I1(n238), .I2(n236), .O(n105) );
  NR2 U231 ( .I1(n229), .I2(n235), .O(n104) );
  NR2 U232 ( .I1(n238), .I2(n234), .O(n103) );
  NR2 U233 ( .I1(n229), .I2(n233), .O(n102) );
  NR2 U234 ( .I1(n238), .I2(n232), .O(n101) );
  NR2 U235 ( .I1(n229), .I2(n231), .O(n100) );
endmodule


module alu ( clk_p_i, reset_n_i, data_a_i, data_b_i, inst_i, data_o );
  input [7:0] data_a_i;
  input [7:0] data_b_i;
  input [2:0] inst_i;
  output [15:0] data_o;
  input clk_p_i, reset_n_i;
  wire   n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, out_inst_1_15, N18, N19, N20, N21, N22,
         N23, N24, N25, n2, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         N16, N15, N14, N13, N12, N11, n77, n78, n79, n80, n81, n82, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125;
  wire   [15:0] ALU_d2_w;
  wire   [7:0] reg_data_a;
  wire   [7:0] reg_data_b;
  wire   [8:0] out_inst_0;
  wire   [7:0] out_inst_1;
  wire   [15:0] out_inst_2;
  wire   [2:0] reg_inst;

  AO12 U52 ( .B1(out_inst_2[9]), .B2(n111), .A1(n102), .O(ALU_d2_w[9]) );
  OR3B2 U53 ( .I1(n102), .B1(n27), .B2(n28), .O(ALU_d2_w[8]) );
  ND2 U54 ( .I1(out_inst_0[8]), .I2(n108), .O(n28) );
  ND2 U55 ( .I1(out_inst_2[8]), .I2(n25), .O(n27) );
  AO112 U56 ( .C1(out_inst_0[7]), .C2(n108), .A1(n30), .B1(n31), .O(
        ALU_d2_w[7]) );
  AO22 U57 ( .A1(n106), .A2(out_inst_1[7]), .B1(out_inst_2[7]), .B2(n110), .O(
        n30) );
  OR3B2 U58 ( .I1(n40), .B1(n41), .B2(n42), .O(ALU_d2_w[6]) );
  AO12 U59 ( .B1(n123), .B2(reg_data_b[6]), .A1(n107), .O(n43) );
  AO222 U60 ( .A1(out_inst_1[6]), .A2(n106), .B1(out_inst_2[6]), .B2(n25), 
        .C1(out_inst_0[6]), .C2(n108), .O(n40) );
  OR3B2 U61 ( .I1(n46), .B1(n47), .B2(n48), .O(ALU_d2_w[5]) );
  AO12 U62 ( .B1(n123), .B2(reg_data_b[5]), .A1(n121), .O(n49) );
  AO222 U63 ( .A1(out_inst_1[5]), .A2(n106), .B1(out_inst_2[5]), .B2(n111), 
        .C1(out_inst_0[5]), .C2(n108), .O(n46) );
  OR3B2 U64 ( .I1(n51), .B1(n52), .B2(n53), .O(ALU_d2_w[4]) );
  AO12 U65 ( .B1(n123), .B2(reg_data_b[4]), .A1(n121), .O(n54) );
  AO222 U66 ( .A1(out_inst_1[4]), .A2(n106), .B1(out_inst_2[4]), .B2(n110), 
        .C1(out_inst_0[4]), .C2(n29), .O(n51) );
  OR3B2 U67 ( .I1(n56), .B1(n57), .B2(n58), .O(ALU_d2_w[3]) );
  AO12 U68 ( .B1(n123), .B2(reg_data_b[3]), .A1(n121), .O(n59) );
  AO222 U69 ( .A1(out_inst_1[3]), .A2(n39), .B1(out_inst_2[3]), .B2(n25), .C1(
        out_inst_0[3]), .C2(n29), .O(n56) );
  OR3B2 U70 ( .I1(n61), .B1(n62), .B2(n63), .O(ALU_d2_w[2]) );
  AO12 U71 ( .B1(n123), .B2(reg_data_b[2]), .A1(n121), .O(n64) );
  AO222 U72 ( .A1(out_inst_1[2]), .A2(n39), .B1(out_inst_2[2]), .B2(n111), 
        .C1(out_inst_0[2]), .C2(n29), .O(n61) );
  OR3B2 U73 ( .I1(n66), .B1(n67), .B2(n68), .O(ALU_d2_w[1]) );
  AO12 U74 ( .B1(n109), .B2(reg_data_b[1]), .A1(n121), .O(n69) );
  AO222 U75 ( .A1(out_inst_1[1]), .A2(n39), .B1(out_inst_2[1]), .B2(n110), 
        .C1(out_inst_0[1]), .C2(n29), .O(n66) );
  AO12 U76 ( .B1(out_inst_2[15]), .B2(n110), .A1(n26), .O(ALU_d2_w[15]) );
  AO12 U77 ( .B1(out_inst_2[14]), .B2(n25), .A1(n26), .O(ALU_d2_w[14]) );
  AO12 U78 ( .B1(out_inst_2[13]), .B2(n111), .A1(n102), .O(ALU_d2_w[13]) );
  AO12 U79 ( .B1(out_inst_2[12]), .B2(n110), .A1(n26), .O(ALU_d2_w[12]) );
  AO12 U80 ( .B1(out_inst_2[11]), .B2(n25), .A1(n26), .O(ALU_d2_w[11]) );
  AO12 U81 ( .B1(out_inst_2[10]), .B2(n111), .A1(n26), .O(ALU_d2_w[10]) );
  OR3B2 U82 ( .I1(n71), .B1(n72), .B2(n73), .O(ALU_d2_w[0]) );
  OR2B1S U83 ( .I1(reg_data_a[7]), .B1(n74), .O(n45) );
  AO12 U84 ( .B1(n109), .B2(n78), .A1(n121), .O(n75) );
  AO222 U85 ( .A1(out_inst_1[0]), .A2(n39), .B1(out_inst_2[0]), .B2(n25), .C1(
        out_inst_0[0]), .C2(n29), .O(n71) );
  alu_DW01_add_0 add_41 ( .A({n2, reg_data_a}), .B({n2, reg_data_b}), .CI(n2), 
        .SUM(out_inst_0) );
  alu_DW01_sub_0 r381 ( .A({n2, reg_data_b}), .B({n2, reg_data_a}), .CI(n2), 
        .DIFF({out_inst_1_15, out_inst_1}) );
  alu_DW01_inc_0 add_0_root_add_49_ni ( .A({n99, N11, N12, N13, N14, N15, N16, 
        n79}), .SUM({N25, N24, N23, N22, N21, N20, N19, N18}) );
  alu_DW_mult_uns_0 mult_43 ( .a({n100, reg_data_a[6:1], n80}), .b({
        reg_data_b[7:1], n78}), .product(out_inst_2) );
  QDFFRBN \reg_inst_reg[1]  ( .D(inst_i[1]), .CK(clk_p_i), .RB(n116), .Q(
        reg_inst[1]) );
  QDFFRBN \reg_inst_reg[0]  ( .D(inst_i[0]), .CK(clk_p_i), .RB(n116), .Q(
        reg_inst[0]) );
  QDFFRBN \reg_data_a_reg[7]  ( .D(data_a_i[7]), .CK(clk_p_i), .RB(n116), .Q(
        reg_data_a[7]) );
  QDFFRBN \reg_data_b_reg[7]  ( .D(data_b_i[7]), .CK(clk_p_i), .RB(n115), .Q(
        reg_data_b[7]) );
  QDFFRBN \reg_data_a_reg[6]  ( .D(data_a_i[6]), .CK(clk_p_i), .RB(n117), .Q(
        reg_data_a[6]) );
  QDFFRBN \reg_data_b_reg[5]  ( .D(data_b_i[5]), .CK(clk_p_i), .RB(n115), .Q(
        reg_data_b[5]) );
  QDFFRBN \reg_data_b_reg[6]  ( .D(data_b_i[6]), .CK(clk_p_i), .RB(n115), .Q(
        reg_data_b[6]) );
  QDFFRBN \reg_data_a_reg[3]  ( .D(data_a_i[3]), .CK(clk_p_i), .RB(n117), .Q(
        reg_data_a[3]) );
  QDFFRBN \reg_data_a_reg[5]  ( .D(data_a_i[5]), .CK(clk_p_i), .RB(n117), .Q(
        reg_data_a[5]) );
  QDFFRBN \reg_data_b_reg[3]  ( .D(data_b_i[3]), .CK(clk_p_i), .RB(n115), .Q(
        reg_data_b[3]) );
  QDFFRBN \reg_data_a_reg[4]  ( .D(data_a_i[4]), .CK(clk_p_i), .RB(n117), .Q(
        reg_data_a[4]) );
  QDFFRBN \reg_data_b_reg[4]  ( .D(data_b_i[4]), .CK(clk_p_i), .RB(n115), .Q(
        reg_data_b[4]) );
  QDFFRBN \reg_data_a_reg[2]  ( .D(data_a_i[2]), .CK(clk_p_i), .RB(n117), .Q(
        reg_data_a[2]) );
  QDFFRBN \reg_data_b_reg[0]  ( .D(data_b_i[0]), .CK(clk_p_i), .RB(n116), .Q(
        reg_data_b[0]) );
  QDFFRBN \reg_data_b_reg[1]  ( .D(data_b_i[1]), .CK(clk_p_i), .RB(n116), .Q(
        reg_data_b[1]) );
  QDFFRBN \reg_data_b_reg[2]  ( .D(data_b_i[2]), .CK(clk_p_i), .RB(n115), .Q(
        reg_data_b[2]) );
  QDFFRBN \reg_data_a_reg[1]  ( .D(data_a_i[1]), .CK(clk_p_i), .RB(n117), .Q(
        reg_data_a[1]) );
  QDFFRBN \reg_data_a_reg[0]  ( .D(data_a_i[0]), .CK(clk_p_i), .RB(n118), .Q(
        reg_data_a[0]) );
  DFFRBN \reg_inst_reg[2]  ( .D(inst_i[2]), .CK(clk_p_i), .RB(reset_n_i), .Q(
        reg_inst[2]), .QB(n122) );
  QDFFRBS \ALU_d2_r_reg[0]  ( .D(ALU_d2_w[0]), .CK(clk_p_i), .RB(reset_n_i), 
        .Q(n141) );
  QDFFRBS \ALU_d2_r_reg[2]  ( .D(ALU_d2_w[2]), .CK(clk_p_i), .RB(reset_n_i), 
        .Q(n139) );
  QDFFRBS \ALU_d2_r_reg[1]  ( .D(ALU_d2_w[1]), .CK(clk_p_i), .RB(reset_n_i), 
        .Q(n140) );
  QDFFRBS \ALU_d2_r_reg[3]  ( .D(ALU_d2_w[3]), .CK(clk_p_i), .RB(reset_n_i), 
        .Q(n138) );
  QDFFRBS \ALU_d2_r_reg[4]  ( .D(ALU_d2_w[4]), .CK(clk_p_i), .RB(n116), .Q(
        n137) );
  QDFFRBS \ALU_d2_r_reg[5]  ( .D(ALU_d2_w[5]), .CK(clk_p_i), .RB(n119), .Q(
        n136) );
  QDFFRBS \ALU_d2_r_reg[6]  ( .D(ALU_d2_w[6]), .CK(clk_p_i), .RB(n119), .Q(
        n135) );
  QDFFRBS \ALU_d2_r_reg[7]  ( .D(ALU_d2_w[7]), .CK(clk_p_i), .RB(n119), .Q(
        n134) );
  QDFFRBS \ALU_d2_r_reg[8]  ( .D(ALU_d2_w[8]), .CK(clk_p_i), .RB(n119), .Q(
        n133) );
  QDFFRBS \ALU_d2_r_reg[9]  ( .D(ALU_d2_w[9]), .CK(clk_p_i), .RB(n118), .Q(
        n132) );
  QDFFRBS \ALU_d2_r_reg[10]  ( .D(ALU_d2_w[10]), .CK(clk_p_i), .RB(n119), .Q(
        n131) );
  QDFFRBS \ALU_d2_r_reg[11]  ( .D(ALU_d2_w[11]), .CK(clk_p_i), .RB(n119), .Q(
        n130) );
  QDFFRBS \ALU_d2_r_reg[12]  ( .D(ALU_d2_w[12]), .CK(clk_p_i), .RB(n118), .Q(
        n129) );
  QDFFRBS \ALU_d2_r_reg[13]  ( .D(ALU_d2_w[13]), .CK(clk_p_i), .RB(n118), .Q(
        n128) );
  QDFFRBS \ALU_d2_r_reg[15]  ( .D(ALU_d2_w[15]), .CK(clk_p_i), .RB(n118), .Q(
        n126) );
  QDFFRBS \ALU_d2_r_reg[14]  ( .D(ALU_d2_w[14]), .CK(clk_p_i), .RB(n118), .Q(
        n127) );
  INV1S U86 ( .I(reg_data_b[0]), .O(n77) );
  INV1S U87 ( .I(n77), .O(n78) );
  INV1S U88 ( .I(reg_data_a[0]), .O(n79) );
  INV1S U89 ( .I(n79), .O(n80) );
  INV1S U90 ( .I(n45), .O(n81) );
  INV1S U91 ( .I(n81), .O(n82) );
  BUF12CK U92 ( .I(n127), .O(data_o[14]) );
  BUF12CK U93 ( .I(n126), .O(data_o[15]) );
  BUF12CK U94 ( .I(n128), .O(data_o[13]) );
  BUF12CK U95 ( .I(n129), .O(data_o[12]) );
  BUF12CK U96 ( .I(n130), .O(data_o[11]) );
  BUF12CK U97 ( .I(n131), .O(data_o[10]) );
  BUF12CK U98 ( .I(n132), .O(data_o[9]) );
  BUF12CK U99 ( .I(n133), .O(data_o[8]) );
  BUF12CK U100 ( .I(n134), .O(data_o[7]) );
  BUF12CK U101 ( .I(n135), .O(data_o[6]) );
  BUF12CK U102 ( .I(n136), .O(data_o[5]) );
  BUF12CK U103 ( .I(n137), .O(data_o[4]) );
  BUF12CK U104 ( .I(n138), .O(data_o[3]) );
  BUF12CK U105 ( .I(n140), .O(data_o[1]) );
  BUF12CK U106 ( .I(n139), .O(data_o[2]) );
  BUF12CK U107 ( .I(n141), .O(data_o[0]) );
  INV1S U108 ( .I(reg_data_a[7]), .O(n99) );
  INV1S U109 ( .I(n99), .O(n100) );
  INV1S U110 ( .I(n112), .O(n101) );
  BUF1CK U111 ( .I(n26), .O(n102) );
  ND2 U112 ( .I1(n74), .I2(reg_data_a[7]), .O(n35) );
  INV1S U113 ( .I(n35), .O(n103) );
  INV1S U114 ( .I(n35), .O(n104) );
  INV1S U115 ( .I(n109), .O(n105) );
  BUF1CK U116 ( .I(n39), .O(n106) );
  INV1S U117 ( .I(n38), .O(n107) );
  BUF1CK U118 ( .I(n29), .O(n108) );
  BUF1CK U119 ( .I(n123), .O(n109) );
  INV1S U120 ( .I(n113), .O(n110) );
  INV1S U121 ( .I(n113), .O(n111) );
  OA12 U122 ( .B1(n39), .B2(n36), .A1(out_inst_1_15), .O(n26) );
  INV1S U123 ( .I(n37), .O(n123) );
  INV1S U124 ( .I(n38), .O(n121) );
  BUF1CK U125 ( .I(n114), .O(n118) );
  BUF1CK U126 ( .I(n114), .O(n117) );
  BUF1CK U127 ( .I(n114), .O(n116) );
  BUF1CK U128 ( .I(n114), .O(n115) );
  BUF1CK U129 ( .I(n114), .O(n119) );
  OAI112HS U130 ( .C1(n100), .C2(n32), .A1(n33), .B1(n34), .O(n31) );
  OA12 U131 ( .B1(n37), .B2(n120), .A1(n38), .O(n32) );
  AOI22S U132 ( .A1(n43), .A2(N11), .B1(reg_data_a[6]), .B2(n44), .O(n41) );
  AOI22S U133 ( .A1(N24), .A2(n103), .B1(out_inst_1[7]), .B2(n36), .O(n42) );
  AOI22S U134 ( .A1(N25), .A2(n103), .B1(n36), .B2(out_inst_1_15), .O(n34) );
  AOI22S U135 ( .A1(n49), .A2(N12), .B1(reg_data_a[5]), .B2(n50), .O(n47) );
  AOI22S U136 ( .A1(N23), .A2(n104), .B1(out_inst_1[6]), .B2(n36), .O(n48) );
  AOI22S U137 ( .A1(n54), .A2(N13), .B1(reg_data_a[4]), .B2(n55), .O(n52) );
  AOI22S U138 ( .A1(N22), .A2(n104), .B1(out_inst_1[5]), .B2(n36), .O(n53) );
  AOI22S U139 ( .A1(N21), .A2(n104), .B1(out_inst_1[4]), .B2(n36), .O(n58) );
  AOI22S U140 ( .A1(n59), .A2(N14), .B1(reg_data_a[3]), .B2(n60), .O(n57) );
  INV1S U141 ( .I(reg_data_a[1]), .O(N16) );
  INV1S U142 ( .I(reg_data_a[2]), .O(N15) );
  INV1S U143 ( .I(reg_data_a[5]), .O(N12) );
  INV1S U144 ( .I(reg_data_a[4]), .O(N13) );
  INV1S U145 ( .I(reg_data_a[3]), .O(N14) );
  INV1S U146 ( .I(reg_data_a[6]), .O(N11) );
  OAI12HS U147 ( .B1(reg_data_b[0]), .B2(n37), .A1(n82), .O(n76) );
  OAI12HS U148 ( .B1(reg_data_b[6]), .B2(n37), .A1(n82), .O(n44) );
  OAI12HS U149 ( .B1(reg_data_b[5]), .B2(n37), .A1(n82), .O(n50) );
  OAI12HS U150 ( .B1(reg_data_b[4]), .B2(n37), .A1(n45), .O(n55) );
  OAI12HS U151 ( .B1(reg_data_b[3]), .B2(n105), .A1(n82), .O(n60) );
  OAI12HS U152 ( .B1(reg_data_b[2]), .B2(n105), .A1(n45), .O(n65) );
  OAI12HS U153 ( .B1(reg_data_b[1]), .B2(n105), .A1(n82), .O(n70) );
  NR3 U154 ( .I1(n122), .I2(reg_inst[1]), .I3(n125), .O(n74) );
  AOI22S U155 ( .A1(N18), .A2(n104), .B1(out_inst_1[1]), .B2(n101), .O(n73) );
  AOI22S U156 ( .A1(n75), .A2(n79), .B1(reg_data_a[0]), .B2(n76), .O(n72) );
  AOI22S U157 ( .A1(N20), .A2(n104), .B1(out_inst_1[3]), .B2(n101), .O(n63) );
  AOI22S U158 ( .A1(n64), .A2(N15), .B1(reg_data_a[2]), .B2(n65), .O(n62) );
  AOI22S U159 ( .A1(N19), .A2(n104), .B1(out_inst_1[2]), .B2(n101), .O(n68) );
  AOI22S U160 ( .A1(n69), .A2(N16), .B1(reg_data_a[1]), .B2(n70), .O(n67) );
  INV1S U161 ( .I(reg_inst[0]), .O(n125) );
  ND3 U162 ( .I1(n125), .I2(n124), .I3(reg_inst[2]), .O(n37) );
  INV1S U163 ( .I(reg_inst[1]), .O(n124) );
  ND3 U164 ( .I1(n109), .I2(n120), .I3(reg_data_a[7]), .O(n33) );
  ND3 U165 ( .I1(reg_inst[1]), .I2(n122), .I3(reg_inst[0]), .O(n38) );
  OR3 U166 ( .I1(n124), .I2(reg_inst[0]), .I3(n122), .O(n112) );
  INV1S U167 ( .I(n112), .O(n36) );
  NR3 U168 ( .I1(reg_inst[1]), .I2(reg_inst[2]), .I3(n125), .O(n39) );
  OR3 U169 ( .I1(reg_inst[0]), .I2(reg_inst[2]), .I3(n124), .O(n113) );
  INV1S U170 ( .I(n113), .O(n25) );
  NR3 U171 ( .I1(reg_inst[1]), .I2(reg_inst[2]), .I3(reg_inst[0]), .O(n29) );
  INV1S U172 ( .I(reg_data_b[7]), .O(n120) );
  BUF1CK U173 ( .I(reset_n_i), .O(n114) );
  TIE0 U174 ( .O(n2) );
endmodule

