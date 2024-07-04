/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Sat Mar  9 02:15:54 2024
/////////////////////////////////////////////////////////////


module alu_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  FA1S U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1S U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1S U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1S U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1S U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1S U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1S U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  INV1S U1 ( .I(B[7]), .O(n2) );
  INV1S U2 ( .I(B[0]), .O(n9) );
  INV1S U3 ( .I(B[1]), .O(n8) );
  INV1S U4 ( .I(A[0]), .O(n1) );
  INV1S U5 ( .I(B[2]), .O(n7) );
  INV1S U6 ( .I(B[3]), .O(n6) );
  INV1S U7 ( .I(B[4]), .O(n5) );
  INV1S U8 ( .I(B[5]), .O(n4) );
  INV1S U9 ( .I(B[6]), .O(n3) );
  XNR2HS U10 ( .I1(n9), .I2(A[0]), .O(DIFF[0]) );
  ND2 U11 ( .I1(B[0]), .I2(n1), .O(carry[1]) );
  INV1S U12 ( .I(carry[8]), .O(DIFF[8]) );
endmodule


module alu_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  FA1S U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1S U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  FA1S U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA1S U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA1S U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA1S U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA1S U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  AN2 U1 ( .I1(B[0]), .I2(A[0]), .O(n1) );
  XOR2HS U2 ( .I1(B[0]), .I2(A[0]), .O(SUM[0]) );
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
         n241, n242, n243, n244, n245, n246, n247;

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
  INV1S U140 ( .I(n247), .O(n214) );
  INV1S U141 ( .I(n214), .O(n215) );
  INV1S U142 ( .I(a[1]), .O(n216) );
  INV1S U143 ( .I(a[1]), .O(n217) );
  INV1S U144 ( .I(b[2]), .O(n218) );
  INV1S U145 ( .I(b[1]), .O(n219) );
  INV1S U146 ( .I(b[1]), .O(n220) );
  INV1S U147 ( .I(n241), .O(n221) );
  INV1S U148 ( .I(n221), .O(n222) );
  INV1S U149 ( .I(a[2]), .O(n223) );
  INV1S U150 ( .I(a[2]), .O(n224) );
  INV1S U151 ( .I(b[4]), .O(n225) );
  INV1S U152 ( .I(a[4]), .O(n226) );
  INV1S U153 ( .I(b[3]), .O(n227) );
  INV1S U154 ( .I(b[3]), .O(n228) );
  INV1S U155 ( .I(a[5]), .O(n229) );
  INV1S U156 ( .I(a[3]), .O(n230) );
  INV1S U157 ( .I(b[6]), .O(n231) );
  INV1S U158 ( .I(b[5]), .O(n232) );
  INV1S U159 ( .I(b[5]), .O(n233) );
  INV1S U160 ( .I(a[6]), .O(n234) );
  INV1S U161 ( .I(b[7]), .O(n235) );
  INV1S U162 ( .I(b[7]), .O(n236) );
  INV1S U163 ( .I(a[7]), .O(n237) );
  INV1S U164 ( .I(a[0]), .O(n247) );
  INV1S U165 ( .I(b[2]), .O(n240) );
  INV1S U166 ( .I(b[0]), .O(n241) );
  INV1S U167 ( .I(b[4]), .O(n239) );
  INV1S U168 ( .I(a[4]), .O(n245) );
  INV1S U169 ( .I(a[5]), .O(n244) );
  INV1S U170 ( .I(a[3]), .O(n246) );
  INV1S U171 ( .I(b[6]), .O(n238) );
  INV1S U172 ( .I(a[6]), .O(n243) );
  INV1S U173 ( .I(a[7]), .O(n242) );
  NR2 U174 ( .I1(n215), .I2(n241), .O(product[0]) );
  NR2 U175 ( .I1(n242), .I2(n236), .O(n99) );
  NR2 U176 ( .I1(n215), .I2(n220), .O(n161) );
  NR2 U177 ( .I1(n247), .I2(n218), .O(n160) );
  NR2 U178 ( .I1(n215), .I2(n228), .O(n159) );
  NR2 U179 ( .I1(n247), .I2(n225), .O(n158) );
  NR2 U180 ( .I1(n215), .I2(n233), .O(n157) );
  NR2 U181 ( .I1(n247), .I2(n231), .O(n156) );
  NR2 U182 ( .I1(n247), .I2(n235), .O(n155) );
  NR2 U183 ( .I1(n222), .I2(n217), .O(n154) );
  NR2 U184 ( .I1(n219), .I2(n216), .O(n153) );
  NR2 U185 ( .I1(n218), .I2(n216), .O(n152) );
  NR2 U186 ( .I1(n227), .I2(n217), .O(n151) );
  NR2 U187 ( .I1(n225), .I2(n217), .O(n150) );
  NR2 U188 ( .I1(n232), .I2(n216), .O(n149) );
  NR2 U189 ( .I1(n231), .I2(n216), .O(n148) );
  NR2 U190 ( .I1(n236), .I2(n217), .O(n147) );
  NR2 U191 ( .I1(n222), .I2(n224), .O(n146) );
  NR2 U192 ( .I1(n219), .I2(n223), .O(n145) );
  NR2 U193 ( .I1(n218), .I2(n223), .O(n144) );
  NR2 U194 ( .I1(n227), .I2(n224), .O(n143) );
  NR2 U195 ( .I1(n239), .I2(n224), .O(n142) );
  NR2 U196 ( .I1(n232), .I2(n223), .O(n141) );
  NR2 U197 ( .I1(n231), .I2(n223), .O(n140) );
  NR2 U198 ( .I1(n235), .I2(n224), .O(n139) );
  NR2 U199 ( .I1(n222), .I2(n230), .O(n138) );
  NR2 U200 ( .I1(n220), .I2(n230), .O(n137) );
  NR2 U201 ( .I1(n218), .I2(n230), .O(n136) );
  NR2 U202 ( .I1(n227), .I2(n230), .O(n135) );
  NR2 U203 ( .I1(n225), .I2(n246), .O(n134) );
  NR2 U204 ( .I1(n233), .I2(n246), .O(n133) );
  NR2 U205 ( .I1(n238), .I2(n230), .O(n132) );
  NR2 U206 ( .I1(n236), .I2(n246), .O(n131) );
  NR2 U207 ( .I1(n241), .I2(n226), .O(n130) );
  NR2 U208 ( .I1(n219), .I2(n226), .O(n129) );
  NR2 U209 ( .I1(n240), .I2(n226), .O(n128) );
  NR2 U210 ( .I1(n228), .I2(n245), .O(n127) );
  NR2 U211 ( .I1(n225), .I2(n226), .O(n126) );
  NR2 U212 ( .I1(n232), .I2(n245), .O(n125) );
  NR2 U213 ( .I1(n231), .I2(n245), .O(n124) );
  NR2 U214 ( .I1(n235), .I2(n226), .O(n123) );
  NR2 U215 ( .I1(n241), .I2(n229), .O(n122) );
  NR2 U216 ( .I1(n220), .I2(n229), .O(n121) );
  NR2 U217 ( .I1(n240), .I2(n229), .O(n120) );
  NR2 U218 ( .I1(n228), .I2(n244), .O(n119) );
  NR2 U219 ( .I1(n239), .I2(n229), .O(n118) );
  NR2 U220 ( .I1(n232), .I2(n244), .O(n117) );
  NR2 U221 ( .I1(n238), .I2(n229), .O(n116) );
  NR2 U222 ( .I1(n236), .I2(n244), .O(n115) );
  NR2 U223 ( .I1(n241), .I2(n234), .O(n114) );
  NR2 U224 ( .I1(n219), .I2(n234), .O(n113) );
  NR2 U225 ( .I1(n218), .I2(n234), .O(n112) );
  NR2 U226 ( .I1(n227), .I2(n243), .O(n111) );
  NR2 U227 ( .I1(n225), .I2(n234), .O(n110) );
  NR2 U228 ( .I1(n233), .I2(n243), .O(n109) );
  NR2 U229 ( .I1(n231), .I2(n234), .O(n108) );
  NR2 U230 ( .I1(n235), .I2(n243), .O(n107) );
  NR2 U231 ( .I1(n222), .I2(n237), .O(n106) );
  NR2 U232 ( .I1(n237), .I2(n220), .O(n105) );
  NR2 U233 ( .I1(n237), .I2(n240), .O(n104) );
  NR2 U234 ( .I1(n242), .I2(n228), .O(n103) );
  NR2 U235 ( .I1(n237), .I2(n239), .O(n102) );
  NR2 U236 ( .I1(n242), .I2(n233), .O(n101) );
  NR2 U237 ( .I1(n237), .I2(n238), .O(n100) );
endmodule


module alu ( clk_p_i, reset_n_i, data_a_i, data_b_i, inst_i, data_o );
  input [7:0] data_a_i;
  input [7:0] data_b_i;
  input [2:0] inst_i;
  output [15:0] data_o;
  input clk_p_i, reset_n_i;
  wire   n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, out_inst_1_15, out_inst_3_7,
         \reg_data_a[0] , N102, N103, N104, N105, N106, N107, N108, N109, N116,
         n2, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, \add_103/A[0] , \add_103/A[1] , \add_103/A[2] , \add_103/A[3] ,
         \add_103/A[4] , \add_103/A[5] , \add_103/A[6] , \add_103/A[7] , n95,
         n96, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142;
  wire   [2:0] state;
  wire   [15:0] ALU_out_inst;
  wire   [8:0] out_inst_0;
  wire   [7:0] out_inst_1;
  wire   [15:0] out_inst_2;
  wire   [5:0] out_inst_3;
  wire   [7:0] reg_data_b;
  wire   [15:2] \add_103/carry ;

  ND2 U86 ( .I1(n27), .I2(n29), .O(n26) );
  ND2 U87 ( .I1(inst_i[2]), .I2(n35), .O(n32) );
  ND2 U88 ( .I1(n44), .I2(n119), .O(ALU_out_inst[9]) );
  ND2 U89 ( .I1(out_inst_0[8]), .I2(n117), .O(n47) );
  AO112 U90 ( .C1(out_inst_0[7]), .C2(n117), .A1(n50), .B1(n51), .O(
        ALU_out_inst[7]) );
  OR3B2 U91 ( .I1(n57), .B1(n58), .B2(n59), .O(ALU_out_inst[6]) );
  AO222 U92 ( .A1(out_inst_2[6]), .A2(n124), .B1(out_inst_3_7), .B2(n138), 
        .C1(out_inst_0[6]), .C2(n49), .O(n57) );
  OR3B2 U93 ( .I1(n61), .B1(n62), .B2(n63), .O(ALU_out_inst[5]) );
  AO222 U94 ( .A1(out_inst_2[5]), .A2(n136), .B1(out_inst_3[5]), .B2(n138), 
        .C1(out_inst_0[5]), .C2(n49), .O(n61) );
  OR3B2 U95 ( .I1(n65), .B1(n66), .B2(n67), .O(ALU_out_inst[4]) );
  AO222 U96 ( .A1(out_inst_2[4]), .A2(n123), .B1(out_inst_3[4]), .B2(n138), 
        .C1(out_inst_0[4]), .C2(n49), .O(n65) );
  OR3B2 U97 ( .I1(n69), .B1(n70), .B2(n71), .O(ALU_out_inst[3]) );
  AO222 U98 ( .A1(out_inst_2[3]), .A2(n124), .B1(out_inst_3[3]), .B2(n138), 
        .C1(out_inst_0[3]), .C2(n49), .O(n69) );
  OR3B2 U99 ( .I1(n73), .B1(n74), .B2(n75), .O(ALU_out_inst[2]) );
  AO222 U100 ( .A1(out_inst_2[2]), .A2(n136), .B1(out_inst_3[2]), .B2(n138), 
        .C1(out_inst_0[2]), .C2(n49), .O(n73) );
  OR3B2 U101 ( .I1(n77), .B1(n78), .B2(n79), .O(ALU_out_inst[1]) );
  AO222 U102 ( .A1(out_inst_2[1]), .A2(n123), .B1(out_inst_3[1]), .B2(n114), 
        .C1(out_inst_0[1]), .C2(n117), .O(n77) );
  ND2 U103 ( .I1(n81), .I2(n119), .O(ALU_out_inst[15]) );
  ND2 U104 ( .I1(n82), .I2(n119), .O(ALU_out_inst[14]) );
  ND2 U105 ( .I1(n83), .I2(n118), .O(ALU_out_inst[13]) );
  ND2 U106 ( .I1(n84), .I2(n118), .O(ALU_out_inst[12]) );
  ND2 U107 ( .I1(n85), .I2(n118), .O(ALU_out_inst[11]) );
  ND2 U108 ( .I1(n86), .I2(n118), .O(ALU_out_inst[10]) );
  OR3B2 U109 ( .I1(n88), .B1(n89), .B2(n90), .O(ALU_out_inst[0]) );
  AO222 U110 ( .A1(out_inst_2[0]), .A2(n124), .B1(out_inst_3[0]), .B2(n114), 
        .C1(out_inst_0[0]), .C2(n117), .O(n88) );
  alu_DW01_sub_0 sub_98 ( .A({n2, reg_data_b}), .B({n2, out_inst_3_7, 
        out_inst_3, \reg_data_a[0] }), .CI(n2), .DIFF({out_inst_1_15, 
        out_inst_1}) );
  alu_DW01_add_0 add_97 ( .A({n2, out_inst_3_7, out_inst_3, \reg_data_a[0] }), 
        .B({n2, reg_data_b}), .CI(n2), .SUM(out_inst_0) );
  alu_DW_mult_uns_0 mult_99 ( .a({out_inst_3_7, out_inst_3, \reg_data_a[0] }), 
        .b(reg_data_b), .product(out_inst_2) );
  HA1 \add_103/U1_1_1  ( .A(\add_103/A[1] ), .B(\add_103/A[0] ), .C(
        \add_103/carry [2]), .S(N102) );
  HA1 \add_103/U1_1_2  ( .A(\add_103/A[2] ), .B(\add_103/carry [2]), .C(
        \add_103/carry [3]), .S(N103) );
  HA1 \add_103/U1_1_3  ( .A(\add_103/A[3] ), .B(\add_103/carry [3]), .C(
        \add_103/carry [4]), .S(N104) );
  HA1 \add_103/U1_1_4  ( .A(\add_103/A[4] ), .B(\add_103/carry [4]), .C(
        \add_103/carry [5]), .S(N105) );
  HA1 \add_103/U1_1_5  ( .A(\add_103/A[5] ), .B(\add_103/carry [5]), .C(
        \add_103/carry [6]), .S(N106) );
  HA1 \add_103/U1_1_6  ( .A(\add_103/A[6] ), .B(\add_103/carry [6]), .C(
        \add_103/carry [7]), .S(N107) );
  HA1 \add_103/U1_1_7  ( .A(\add_103/A[7] ), .B(\add_103/carry [7]), .C(
        \add_103/carry [8]), .S(N108) );
  QDFFRBN \state_reg[0]  ( .D(n94), .CK(clk_p_i), .RB(n128), .Q(state[0]) );
  QDFFRBN \state_reg[1]  ( .D(n92), .CK(clk_p_i), .RB(n128), .Q(state[1]) );
  QDFFRBN \state_reg[2]  ( .D(n93), .CK(clk_p_i), .RB(n128), .Q(state[2]) );
  QDFFRBN \reg_data_a_reg[7]  ( .D(data_a_i[7]), .CK(clk_p_i), .RB(n128), .Q(
        out_inst_3_7) );
  QDFFRBN \reg_data_b_reg[7]  ( .D(data_b_i[7]), .CK(clk_p_i), .RB(n127), .Q(
        reg_data_b[7]) );
  QDFFRBN \reg_data_a_reg[6]  ( .D(data_a_i[6]), .CK(clk_p_i), .RB(n129), .Q(
        out_inst_3[5]) );
  QDFFRBN \reg_data_b_reg[5]  ( .D(data_b_i[5]), .CK(clk_p_i), .RB(n127), .Q(
        reg_data_b[5]) );
  QDFFRBN \reg_data_b_reg[6]  ( .D(data_b_i[6]), .CK(clk_p_i), .RB(n127), .Q(
        reg_data_b[6]) );
  QDFFRBN \reg_data_a_reg[3]  ( .D(data_a_i[3]), .CK(clk_p_i), .RB(n129), .Q(
        out_inst_3[2]) );
  QDFFRBN \reg_data_a_reg[5]  ( .D(data_a_i[5]), .CK(clk_p_i), .RB(n129), .Q(
        out_inst_3[4]) );
  QDFFRBN \reg_data_b_reg[3]  ( .D(data_b_i[3]), .CK(clk_p_i), .RB(n127), .Q(
        reg_data_b[3]) );
  QDFFRBN \reg_data_a_reg[4]  ( .D(data_a_i[4]), .CK(clk_p_i), .RB(n129), .Q(
        out_inst_3[3]) );
  QDFFRBN \reg_data_b_reg[4]  ( .D(data_b_i[4]), .CK(clk_p_i), .RB(n127), .Q(
        reg_data_b[4]) );
  QDFFRBN \reg_data_a_reg[2]  ( .D(data_a_i[2]), .CK(clk_p_i), .RB(n129), .Q(
        out_inst_3[1]) );
  QDFFRBN \reg_data_b_reg[0]  ( .D(data_b_i[0]), .CK(clk_p_i), .RB(n128), .Q(
        reg_data_b[0]) );
  QDFFRBN \reg_data_b_reg[1]  ( .D(data_b_i[1]), .CK(clk_p_i), .RB(n128), .Q(
        reg_data_b[1]) );
  QDFFRBN \reg_data_b_reg[2]  ( .D(data_b_i[2]), .CK(clk_p_i), .RB(n127), .Q(
        reg_data_b[2]) );
  QDFFRBN \reg_data_a_reg[1]  ( .D(data_a_i[1]), .CK(clk_p_i), .RB(n129), .Q(
        out_inst_3[0]) );
  QDFFRBN \reg_data_a_reg[0]  ( .D(data_a_i[0]), .CK(clk_p_i), .RB(n130), .Q(
        \reg_data_a[0] ) );
  QDFFRBS \ALU_d2_r_reg[1]  ( .D(ALU_out_inst[1]), .CK(clk_p_i), .RB(reset_n_i), .Q(n157) );
  QDFFRBS \ALU_d2_r_reg[0]  ( .D(ALU_out_inst[0]), .CK(clk_p_i), .RB(reset_n_i), .Q(n158) );
  QDFFRBS \ALU_d2_r_reg[8]  ( .D(ALU_out_inst[8]), .CK(clk_p_i), .RB(n131), 
        .Q(n150) );
  QDFFRBS \ALU_d2_r_reg[9]  ( .D(ALU_out_inst[9]), .CK(clk_p_i), .RB(n130), 
        .Q(n149) );
  QDFFRBS \ALU_d2_r_reg[6]  ( .D(ALU_out_inst[6]), .CK(clk_p_i), .RB(n131), 
        .Q(n152) );
  QDFFRBS \ALU_d2_r_reg[5]  ( .D(ALU_out_inst[5]), .CK(clk_p_i), .RB(n131), 
        .Q(n153) );
  QDFFRBS \ALU_d2_r_reg[4]  ( .D(ALU_out_inst[4]), .CK(clk_p_i), .RB(reset_n_i), .Q(n154) );
  QDFFRBS \ALU_d2_r_reg[3]  ( .D(ALU_out_inst[3]), .CK(clk_p_i), .RB(reset_n_i), .Q(n155) );
  QDFFRBS \ALU_d2_r_reg[2]  ( .D(ALU_out_inst[2]), .CK(clk_p_i), .RB(reset_n_i), .Q(n156) );
  QDFFRBS \ALU_d2_r_reg[7]  ( .D(ALU_out_inst[7]), .CK(clk_p_i), .RB(n131), 
        .Q(n151) );
  QDFFRBS \ALU_d2_r_reg[10]  ( .D(ALU_out_inst[10]), .CK(clk_p_i), .RB(n131), 
        .Q(n148) );
  QDFFRBS \ALU_d2_r_reg[11]  ( .D(ALU_out_inst[11]), .CK(clk_p_i), .RB(n131), 
        .Q(n147) );
  QDFFRBS \ALU_d2_r_reg[12]  ( .D(ALU_out_inst[12]), .CK(clk_p_i), .RB(n130), 
        .Q(n146) );
  QDFFRBS \ALU_d2_r_reg[13]  ( .D(ALU_out_inst[13]), .CK(clk_p_i), .RB(n130), 
        .Q(n145) );
  QDFFRBS \ALU_d2_r_reg[15]  ( .D(ALU_out_inst[15]), .CK(clk_p_i), .RB(n130), 
        .Q(n143) );
  QDFFRBS \ALU_d2_r_reg[14]  ( .D(ALU_out_inst[14]), .CK(clk_p_i), .RB(n130), 
        .Q(n144) );
  INV1S U111 ( .I(inst_i[2]), .O(n95) );
  INV1S U112 ( .I(n95), .O(n96) );
  BUF12CK U113 ( .I(n144), .O(data_o[14]) );
  BUF12CK U114 ( .I(n143), .O(data_o[15]) );
  BUF12CK U115 ( .I(n145), .O(data_o[13]) );
  BUF12CK U116 ( .I(n146), .O(data_o[12]) );
  BUF12CK U117 ( .I(n147), .O(data_o[11]) );
  BUF12CK U118 ( .I(n148), .O(data_o[10]) );
  BUF12CK U119 ( .I(n151), .O(data_o[7]) );
  BUF12CK U120 ( .I(n156), .O(data_o[2]) );
  BUF12CK U121 ( .I(n155), .O(data_o[3]) );
  BUF12CK U122 ( .I(n154), .O(data_o[4]) );
  BUF12CK U123 ( .I(n153), .O(data_o[5]) );
  BUF12CK U124 ( .I(n152), .O(data_o[6]) );
  BUF12CK U125 ( .I(n149), .O(data_o[9]) );
  BUF12CK U126 ( .I(n150), .O(data_o[8]) );
  BUF12CK U127 ( .I(n158), .O(data_o[0]) );
  BUF12CK U128 ( .I(n157), .O(data_o[1]) );
  INV1S U129 ( .I(n37), .O(n113) );
  INV1S U130 ( .I(n31), .O(n114) );
  BUF1CK U131 ( .I(n55), .O(n115) );
  NR2 U132 ( .I1(\add_103/carry [8]), .I2(out_inst_1_15), .O(n116) );
  BUF1CK U133 ( .I(n49), .O(n117) );
  OAI22S U134 ( .A1(n132), .A2(n87), .B1(out_inst_1_15), .B2(n37), .O(n45) );
  INV1S U135 ( .I(n45), .O(n118) );
  INV1S U136 ( .I(n45), .O(n119) );
  INV1S U137 ( .I(n56), .O(n120) );
  INV1S U138 ( .I(n46), .O(n126) );
  INV1S U139 ( .I(n126), .O(n121) );
  INV1S U140 ( .I(n126), .O(n122) );
  INV1S U141 ( .I(n39), .O(n123) );
  INV1S U142 ( .I(n39), .O(n124) );
  INV1S U143 ( .I(n39), .O(n136) );
  AOI22S U144 ( .A1(N116), .A2(n122), .B1(out_inst_2[14]), .B2(n123), .O(n82)
         );
  AOI22S U145 ( .A1(n116), .A2(n46), .B1(out_inst_2[15]), .B2(n124), .O(n81)
         );
  AOI22S U146 ( .A1(N116), .A2(n122), .B1(out_inst_2[13]), .B2(n136), .O(n83)
         );
  AOI22S U147 ( .A1(n116), .A2(n46), .B1(out_inst_2[12]), .B2(n123), .O(n84)
         );
  AOI22S U148 ( .A1(N116), .A2(n122), .B1(out_inst_2[11]), .B2(n124), .O(n85)
         );
  AOI22S U149 ( .A1(n116), .A2(n46), .B1(out_inst_2[10]), .B2(n136), .O(n86)
         );
  AOI22S U150 ( .A1(N116), .A2(n122), .B1(out_inst_2[9]), .B2(n123), .O(n44)
         );
  INV1S U151 ( .I(out_inst_1_15), .O(n132) );
  NR2 U152 ( .I1(n138), .I2(n139), .O(n43) );
  INV1S U153 ( .I(out_inst_1[7]), .O(\add_103/A[7] ) );
  INV1S U154 ( .I(out_inst_1[6]), .O(\add_103/A[6] ) );
  ND3 U155 ( .I1(n119), .I2(n47), .I3(n48), .O(ALU_out_inst[8]) );
  AOI22S U156 ( .A1(N109), .A2(n121), .B1(out_inst_2[8]), .B2(n136), .O(n48)
         );
  INV1S U157 ( .I(out_inst_1[5]), .O(\add_103/A[5] ) );
  INV1S U158 ( .I(out_inst_1[4]), .O(\add_103/A[4] ) );
  AOI22S U159 ( .A1(N108), .A2(n121), .B1(n55), .B2(out_inst_1[7]), .O(n54) );
  NR2 U160 ( .I1(n36), .I2(n132), .O(n46) );
  INV1S U161 ( .I(out_inst_1[3]), .O(\add_103/A[3] ) );
  OAI12HS U162 ( .B1(out_inst_1_15), .B2(n36), .A1(n87), .O(n55) );
  INV1S U163 ( .I(out_inst_1[2]), .O(\add_103/A[2] ) );
  INV1S U164 ( .I(out_inst_1[1]), .O(\add_103/A[1] ) );
  INV1S U165 ( .I(out_inst_1[0]), .O(\add_103/A[0] ) );
  OAI22S U166 ( .A1(n25), .A2(n141), .B1(n133), .B2(n26), .O(n92) );
  NR2 U167 ( .I1(n133), .I2(n134), .O(n35) );
  AN2B1S U168 ( .I1(n29), .B1(n28), .O(n25) );
  INV1S U169 ( .I(n31), .O(n138) );
  INV1S U170 ( .I(n56), .O(n139) );
  INV1S U171 ( .I(n37), .O(n135) );
  BUF1CK U172 ( .I(n125), .O(n131) );
  BUF1CK U173 ( .I(n125), .O(n130) );
  BUF1CK U174 ( .I(n125), .O(n129) );
  BUF1CK U175 ( .I(n125), .O(n128) );
  BUF1CK U176 ( .I(n125), .O(n127) );
  MOAI1S U177 ( .A1(out_inst_1[7]), .A2(n37), .B1(out_inst_2[7]), .B2(n123), 
        .O(n50) );
  OAI112HS U178 ( .C1(n52), .C2(n142), .A1(n53), .B1(n54), .O(n51) );
  OA12 U179 ( .B1(reg_data_b[7]), .B2(n56), .A1(n31), .O(n52) );
  AOI22S U180 ( .A1(n120), .A2(n91), .B1(n135), .B2(\add_103/A[0] ), .O(n90)
         );
  AOI22S U181 ( .A1(out_inst_1[0]), .A2(n121), .B1(n115), .B2(out_inst_1[0]), 
        .O(n89) );
  AOI22S U182 ( .A1(n120), .A2(n80), .B1(n135), .B2(\add_103/A[1] ), .O(n79)
         );
  AOI22S U183 ( .A1(N102), .A2(n121), .B1(n115), .B2(out_inst_1[1]), .O(n78)
         );
  AOI22S U184 ( .A1(n139), .A2(n76), .B1(n113), .B2(\add_103/A[2] ), .O(n75)
         );
  AOI22S U185 ( .A1(N103), .A2(n121), .B1(n55), .B2(out_inst_1[2]), .O(n74) );
  AOI22S U186 ( .A1(n139), .A2(n72), .B1(n135), .B2(\add_103/A[3] ), .O(n71)
         );
  AOI22S U187 ( .A1(N104), .A2(n122), .B1(n55), .B2(out_inst_1[3]), .O(n70) );
  AOI22S U188 ( .A1(n139), .A2(n68), .B1(n135), .B2(\add_103/A[4] ), .O(n67)
         );
  AOI22S U189 ( .A1(N105), .A2(n46), .B1(n55), .B2(out_inst_1[4]), .O(n66) );
  AOI22S U190 ( .A1(n120), .A2(n64), .B1(n135), .B2(\add_103/A[5] ), .O(n63)
         );
  AOI22S U191 ( .A1(N106), .A2(n122), .B1(n55), .B2(out_inst_1[5]), .O(n62) );
  AOI22S U192 ( .A1(n120), .A2(n60), .B1(n135), .B2(\add_103/A[6] ), .O(n59)
         );
  AOI22S U193 ( .A1(N107), .A2(n46), .B1(n115), .B2(out_inst_1[6]), .O(n58) );
  INV1S U194 ( .I(inst_i[0]), .O(n134) );
  OAI112HS U195 ( .C1(n38), .C2(n39), .A1(n40), .B1(n41), .O(n27) );
  OA12 U196 ( .B1(inst_i[1]), .B2(n134), .A1(n96), .O(n38) );
  MAOI1 U197 ( .A1(n42), .A2(inst_i[1]), .B1(n35), .B2(n96), .O(n41) );
  ND3 U198 ( .I1(n39), .I2(n32), .I3(n43), .O(n40) );
  INV1S U199 ( .I(inst_i[1]), .O(n133) );
  MOAI1S U200 ( .A1(n134), .A2(n26), .B1(n28), .B2(state[0]), .O(n94) );
  OAI112HS U201 ( .C1(n30), .C2(n31), .A1(n32), .B1(n33), .O(n28) );
  XOR2HS U202 ( .I1(n133), .I2(n96), .O(n30) );
  AOI13HS U203 ( .B1(inst_i[2]), .B2(n134), .B3(n136), .A1(n34), .O(n33) );
  OA12 U204 ( .B1(inst_i[2]), .B2(n35), .A1(n139), .O(n34) );
  MOAI1S U205 ( .A1(n25), .A2(n140), .B1(n27), .B2(n96), .O(n93) );
  INV1S U206 ( .I(state[2]), .O(n140) );
  ND3 U207 ( .I1(state[1]), .I2(n140), .I3(state[0]), .O(n31) );
  MOAI1S U208 ( .A1(inst_i[1]), .A2(n134), .B1(n36), .B2(n37), .O(n29) );
  INV1S U209 ( .I(state[1]), .O(n141) );
  ND3 U210 ( .I1(state[2]), .I2(n141), .I3(state[0]), .O(n56) );
  ND3 U211 ( .I1(state[2]), .I2(n137), .I3(state[1]), .O(n36) );
  INV1S U212 ( .I(state[0]), .O(n137) );
  NR2 U213 ( .I1(inst_i[0]), .I2(n31), .O(n42) );
  ND3 U214 ( .I1(n137), .I2(n140), .I3(state[1]), .O(n39) );
  ND3 U215 ( .I1(n141), .I2(n140), .I3(state[0]), .O(n87) );
  ND3 U216 ( .I1(n137), .I2(n141), .I3(state[2]), .O(n37) );
  ND3 U217 ( .I1(n139), .I2(n142), .I3(reg_data_b[7]), .O(n53) );
  NR3 U218 ( .I1(state[1]), .I2(state[2]), .I3(state[0]), .O(n49) );
  INV1S U219 ( .I(out_inst_3_7), .O(n142) );
  XOR2HS U220 ( .I1(reg_data_b[0]), .I2(\reg_data_a[0] ), .O(n91) );
  XOR2HS U221 ( .I1(reg_data_b[1]), .I2(out_inst_3[0]), .O(n80) );
  XOR2HS U222 ( .I1(reg_data_b[2]), .I2(out_inst_3[1]), .O(n76) );
  XOR2HS U223 ( .I1(reg_data_b[3]), .I2(out_inst_3[2]), .O(n72) );
  XOR2HS U224 ( .I1(reg_data_b[4]), .I2(out_inst_3[3]), .O(n68) );
  XOR2HS U225 ( .I1(reg_data_b[5]), .I2(out_inst_3[4]), .O(n64) );
  XOR2HS U226 ( .I1(reg_data_b[6]), .I2(out_inst_3[5]), .O(n60) );
  BUF1CK U227 ( .I(reset_n_i), .O(n125) );
  TIE0 U228 ( .O(n2) );
  XOR2HS U229 ( .I1(\add_103/carry [8]), .I2(n132), .O(N109) );
  NR2 U230 ( .I1(\add_103/carry [8]), .I2(out_inst_1_15), .O(N116) );
endmodule

module CHIP (
	clk_p_i, 
	reset_n_i, 
	data_a_i, 
	data_b_i, 
	inst_i, 
	data_o);
   input clk_p_i;
   input reset_n_i;
   input [7:0] data_a_i;
   input [7:0] data_b_i;
   input [2:0] inst_i;
   output [15:0] data_o;

   // Internal wires
   wire FE_OFN62_n_logic1;
   wire FE_OFN61_n_logic1;
   wire FE_OFN60_n_logic1;
   wire FE_OFN59_n_logic0;
   wire FE_OFN58_n_logic0;
   wire FE_OFN57_n_logic0;
   wire FE_OFN56_n_logic0;
   wire FE_OFN55_n_logic0;
   wire FE_OFN54_n_logic0;
   wire FE_OFN53_n_logic0;
   wire FE_OFN52_n_logic0;
   wire FE_OFN51_n_logic0;
   wire FE_OFN50_n_logic0;
   wire FE_OFN49_n_logic0;
   wire FE_OFN48_n_logic0;
   wire FE_OFN47_n_logic0;
   wire FE_OFN46_n_logic0;
   wire FE_OFN45_n_logic0;
   wire FE_OFN44_n_logic0;
   wire FE_OFN43_n_logic0;
   wire FE_OFN42_n_logic0;
   wire FE_OFN41_n_logic0;
   wire FE_OFN40_n_logic0;
   wire FE_OFN39_n_logic0;
   wire FE_OFN38_n_logic0;
   wire FE_OFN37_n_logic0;
   wire FE_OFN36_n_logic0;
   wire FE_OFN35_n_logic0;
   wire FE_OFN34_n_logic0;
   wire FE_OFN33_n_logic0;
   wire FE_OFN32_n_logic0;
   wire FE_OFN31_n_logic0;
   wire [7:0] i_data_a_i;
   wire [7:0] i_data_b_i;
   wire [2:0] i_inst_i;
   wire [15:0] i_data_o;
   wire i_clk_p_i;
   wire i_reset_n_i;
   wire n_logic0;
   wire n_logic1;

   BUF1 FE_OFC62_n_logic1 (.O(FE_OFN62_n_logic1),
	.I(FE_OFN61_n_logic1));
   BUF1 FE_OFC61_n_logic1 (.O(FE_OFN61_n_logic1),
	.I(n_logic1));
   BUF1 FE_OFC60_n_logic1 (.O(FE_OFN60_n_logic1),
	.I(n_logic1));
   BUF1 FE_OFC59_n_logic0 (.O(FE_OFN59_n_logic0),
	.I(FE_OFN55_n_logic0));
   BUF1 FE_OFC58_n_logic0 (.O(FE_OFN58_n_logic0),
	.I(FE_OFN54_n_logic0));
   BUF1 FE_OFC57_n_logic0 (.O(FE_OFN57_n_logic0),
	.I(FE_OFN53_n_logic0));
   BUF1 FE_OFC56_n_logic0 (.O(FE_OFN56_n_logic0),
	.I(FE_OFN52_n_logic0));
   BUF1 FE_OFC55_n_logic0 (.O(FE_OFN55_n_logic0),
	.I(FE_OFN51_n_logic0));
   BUF1 FE_OFC54_n_logic0 (.O(FE_OFN54_n_logic0),
	.I(FE_OFN50_n_logic0));
   BUF1 FE_OFC53_n_logic0 (.O(FE_OFN53_n_logic0),
	.I(FE_OFN49_n_logic0));
   BUF1 FE_OFC52_n_logic0 (.O(FE_OFN52_n_logic0),
	.I(FE_OFN48_n_logic0));
   BUF1 FE_OFC51_n_logic0 (.O(FE_OFN51_n_logic0),
	.I(FE_OFN47_n_logic0));
   BUF1 FE_OFC50_n_logic0 (.O(FE_OFN50_n_logic0),
	.I(FE_OFN46_n_logic0));
   BUF1 FE_OFC49_n_logic0 (.O(FE_OFN49_n_logic0),
	.I(FE_OFN45_n_logic0));
   BUF1 FE_OFC48_n_logic0 (.O(FE_OFN48_n_logic0),
	.I(FE_OFN44_n_logic0));
   BUF1 FE_OFC47_n_logic0 (.O(FE_OFN47_n_logic0),
	.I(FE_OFN43_n_logic0));
   BUF1 FE_OFC46_n_logic0 (.O(FE_OFN46_n_logic0),
	.I(FE_OFN42_n_logic0));
   BUF1 FE_OFC45_n_logic0 (.O(FE_OFN45_n_logic0),
	.I(FE_OFN40_n_logic0));
   BUF1 FE_OFC44_n_logic0 (.O(FE_OFN44_n_logic0),
	.I(FE_OFN39_n_logic0));
   BUF1 FE_OFC43_n_logic0 (.O(FE_OFN43_n_logic0),
	.I(FE_OFN38_n_logic0));
   INV1S FE_OFC42_n_logic0 (.O(FE_OFN42_n_logic0),
	.I(FE_OFN37_n_logic0));
   INV1S FE_OFC41_n_logic0 (.O(FE_OFN41_n_logic0),
	.I(FE_OFN37_n_logic0));
   BUF1 FE_OFC40_n_logic0 (.O(FE_OFN40_n_logic0),
	.I(FE_OFN36_n_logic0));
   BUF1 FE_OFC39_n_logic0 (.O(FE_OFN39_n_logic0),
	.I(FE_OFN35_n_logic0));
   BUF1 FE_OFC38_n_logic0 (.O(FE_OFN38_n_logic0),
	.I(FE_OFN34_n_logic0));
   INV1S FE_OFC37_n_logic0 (.O(FE_OFN37_n_logic0),
	.I(FE_OFN33_n_logic0));
   BUF1 FE_OFC36_n_logic0 (.O(FE_OFN36_n_logic0),
	.I(FE_OFN32_n_logic0));
   INV1S FE_OFC35_n_logic0 (.O(FE_OFN35_n_logic0),
	.I(FE_OFN31_n_logic0));
   INV1S FE_OFC34_n_logic0 (.O(FE_OFN34_n_logic0),
	.I(FE_OFN31_n_logic0));
   BUF1 FE_OFC33_n_logic0 (.O(FE_OFN33_n_logic0),
	.I(n_logic0));
   BUF1 FE_OFC32_n_logic0 (.O(FE_OFN32_n_logic0),
	.I(n_logic0));
   INV1S FE_OFC31_n_logic0 (.O(FE_OFN31_n_logic0),
	.I(n_logic0));
   alu alu_in (.clk_p_i(i_clk_p_i),
	.reset_n_i(i_reset_n_i),
	.data_a_i(i_data_a_i),
	.data_b_i(i_data_b_i),
	.inst_i(i_inst_i),
	.data_o(i_data_o));
   TIE0 ipad_n_logic0 (.O(n_logic0));
   TIE1 ipad_n_logic1 (.O(n_logic1));
   XMD ipad_clk_p_i (.O(i_clk_p_i),
	.I(clk_p_i),
	.PU(FE_OFN45_n_logic0),
	.PD(FE_OFN45_n_logic0),
	.SMT(FE_OFN45_n_logic0));
   XMD ipad_reset_n_i (.O(i_reset_n_i),
	.I(reset_n_i),
	.PU(FE_OFN40_n_logic0),
	.PD(FE_OFN40_n_logic0),
	.SMT(FE_OFN40_n_logic0));
   XMD ipad_inst_i_0 (.O(i_inst_i[0]),
	.I(inst_i[0]),
	.PU(FE_OFN40_n_logic0),
	.PD(FE_OFN40_n_logic0),
	.SMT(FE_OFN36_n_logic0));
   XMD ipad_inst_i_1 (.O(i_inst_i[1]),
	.I(inst_i[1]),
	.PU(FE_OFN36_n_logic0),
	.PD(FE_OFN36_n_logic0),
	.SMT(FE_OFN36_n_logic0));
   XMD ipad_inst_i_2 (.O(i_inst_i[2]),
	.I(inst_i[2]),
	.PU(FE_OFN32_n_logic0),
	.PD(FE_OFN36_n_logic0),
	.SMT(FE_OFN32_n_logic0));
   XMD ipad_data_a_i_0 (.O(i_data_a_i[0]),
	.I(data_a_i[0]),
	.PU(n_logic0),
	.PD(FE_OFN32_n_logic0),
	.SMT(n_logic0));
   XMD ipad_data_a_i_1 (.O(i_data_a_i[1]),
	.I(data_a_i[1]),
	.PU(FE_OFN33_n_logic0),
	.PD(FE_OFN33_n_logic0),
	.SMT(FE_OFN33_n_logic0));
   XMD ipad_data_a_i_2 (.O(i_data_a_i[2]),
	.I(data_a_i[2]),
	.PU(FE_OFN33_n_logic0),
	.PD(FE_OFN33_n_logic0),
	.SMT(FE_OFN41_n_logic0));
   XMD ipad_data_a_i_3 (.O(i_data_a_i[3]),
	.I(data_a_i[3]),
	.PU(FE_OFN42_n_logic0),
	.PD(FE_OFN42_n_logic0),
	.SMT(FE_OFN42_n_logic0));
   XMD ipad_data_a_i_4 (.O(i_data_a_i[4]),
	.I(data_a_i[4]),
	.PU(FE_OFN42_n_logic0),
	.PD(FE_OFN42_n_logic0),
	.SMT(FE_OFN46_n_logic0));
   XMD ipad_data_a_i_5 (.O(i_data_a_i[5]),
	.I(data_a_i[5]),
	.PU(FE_OFN48_n_logic0),
	.PD(FE_OFN48_n_logic0),
	.SMT(FE_OFN48_n_logic0));
   XMD ipad_data_a_i_6 (.O(i_data_a_i[6]),
	.I(data_a_i[6]),
	.PU(FE_OFN52_n_logic0),
	.PD(FE_OFN48_n_logic0),
	.SMT(FE_OFN52_n_logic0));
   XMD ipad_data_a_i_7 (.O(i_data_a_i[7]),
	.I(data_a_i[7]),
	.PU(FE_OFN52_n_logic0),
	.PD(FE_OFN52_n_logic0),
	.SMT(FE_OFN52_n_logic0));
   XMD ipad_data_b_i_0 (.O(i_data_b_i[0]),
	.I(data_b_i[0]),
	.PU(FE_OFN56_n_logic0),
	.PD(FE_OFN56_n_logic0),
	.SMT(FE_OFN56_n_logic0));
   XMD ipad_data_b_i_1 (.O(i_data_b_i[1]),
	.I(data_b_i[1]),
	.PU(FE_OFN56_n_logic0),
	.PD(FE_OFN56_n_logic0),
	.SMT(FE_OFN56_n_logic0));
   XMD ipad_data_b_i_2 (.O(i_data_b_i[2]),
	.I(data_b_i[2]),
	.PU(FE_OFN57_n_logic0),
	.PD(FE_OFN57_n_logic0),
	.SMT(FE_OFN57_n_logic0));
   XMD ipad_data_b_i_3 (.O(i_data_b_i[3]),
	.I(data_b_i[3]),
	.PU(FE_OFN57_n_logic0),
	.PD(FE_OFN57_n_logic0),
	.SMT(FE_OFN57_n_logic0));
   XMD ipad_data_b_i_4 (.O(i_data_b_i[4]),
	.I(data_b_i[4]),
	.PU(FE_OFN53_n_logic0),
	.PD(FE_OFN53_n_logic0),
	.SMT(FE_OFN53_n_logic0));
   XMD ipad_data_b_i_5 (.O(i_data_b_i[5]),
	.I(data_b_i[5]),
	.PU(FE_OFN53_n_logic0),
	.PD(FE_OFN53_n_logic0),
	.SMT(FE_OFN49_n_logic0));
   XMD ipad_data_b_i_6 (.O(i_data_b_i[6]),
	.I(data_b_i[6]),
	.PU(FE_OFN49_n_logic0),
	.PD(FE_OFN49_n_logic0),
	.SMT(FE_OFN49_n_logic0));
   XMD ipad_data_b_i_7 (.O(i_data_b_i[7]),
	.I(data_b_i[7]),
	.PU(FE_OFN45_n_logic0),
	.PD(FE_OFN49_n_logic0),
	.SMT(FE_OFN45_n_logic0));
   YA2GSD ipad_data_o_0 (.O(data_o[0]),
	.I(i_data_o[0]),
	.E(FE_OFN62_n_logic1),
	.E2(FE_OFN48_n_logic0),
	.E4(FE_OFN44_n_logic0),
	.E8(FE_OFN44_n_logic0),
	.SR(FE_OFN44_n_logic0));
   YA2GSD ipad_data_o_1 (.O(data_o[1]),
	.I(i_data_o[1]),
	.E(FE_OFN62_n_logic1),
	.E2(FE_OFN44_n_logic0),
	.E4(FE_OFN39_n_logic0),
	.E8(FE_OFN44_n_logic0),
	.SR(FE_OFN39_n_logic0));
   YA2GSD ipad_data_o_2 (.O(data_o[2]),
	.I(i_data_o[2]),
	.E(FE_OFN62_n_logic1),
	.E2(FE_OFN39_n_logic0),
	.E4(FE_OFN39_n_logic0),
	.E8(FE_OFN39_n_logic0),
	.SR(FE_OFN35_n_logic0));
   YA2GSD ipad_data_o_3 (.O(data_o[3]),
	.I(i_data_o[3]),
	.E(FE_OFN62_n_logic1),
	.E2(FE_OFN35_n_logic0),
	.E4(FE_OFN35_n_logic0),
	.E8(FE_OFN35_n_logic0),
	.SR(FE_OFN35_n_logic0));
   YA2GSD ipad_data_o_4 (.O(data_o[4]),
	.I(i_data_o[4]),
	.E(FE_OFN62_n_logic1),
	.E2(FE_OFN34_n_logic0),
	.E4(FE_OFN34_n_logic0),
	.E8(FE_OFN34_n_logic0),
	.SR(FE_OFN34_n_logic0));
   YA2GSD ipad_data_o_5 (.O(data_o[5]),
	.I(i_data_o[5]),
	.E(FE_OFN62_n_logic1),
	.E2(FE_OFN38_n_logic0),
	.E4(FE_OFN38_n_logic0),
	.E8(FE_OFN38_n_logic0),
	.SR(FE_OFN38_n_logic0));
   YA2GSD ipad_data_o_6 (.O(data_o[6]),
	.I(i_data_o[6]),
	.E(FE_OFN61_n_logic1),
	.E2(FE_OFN38_n_logic0),
	.E4(FE_OFN43_n_logic0),
	.E8(FE_OFN43_n_logic0),
	.SR(FE_OFN43_n_logic0));
   YA2GSD ipad_data_o_7 (.O(data_o[7]),
	.I(i_data_o[7]),
	.E(FE_OFN61_n_logic1),
	.E2(FE_OFN43_n_logic0),
	.E4(FE_OFN47_n_logic0),
	.E8(FE_OFN43_n_logic0),
	.SR(FE_OFN47_n_logic0));
   YA2GSD ipad_data_o_8 (.O(data_o[8]),
	.I(i_data_o[8]),
	.E(FE_OFN61_n_logic1),
	.E2(FE_OFN47_n_logic0),
	.E4(FE_OFN47_n_logic0),
	.E8(FE_OFN47_n_logic0),
	.SR(FE_OFN51_n_logic0));
   YA2GSD ipad_data_o_9 (.O(data_o[9]),
	.I(i_data_o[9]),
	.E(FE_OFN61_n_logic1),
	.E2(FE_OFN51_n_logic0),
	.E4(FE_OFN51_n_logic0),
	.E8(FE_OFN51_n_logic0),
	.SR(FE_OFN55_n_logic0));
   YA2GSD ipad_data_o_10 (.O(data_o[10]),
	.I(i_data_o[10]),
	.E(FE_OFN61_n_logic1),
	.E2(FE_OFN55_n_logic0),
	.E4(FE_OFN55_n_logic0),
	.E8(FE_OFN55_n_logic0),
	.SR(FE_OFN59_n_logic0));
   YA2GSD ipad_data_o_11 (.O(data_o[11]),
	.I(i_data_o[11]),
	.E(FE_OFN60_n_logic1),
	.E2(FE_OFN59_n_logic0),
	.E4(FE_OFN59_n_logic0),
	.E8(FE_OFN59_n_logic0),
	.SR(FE_OFN59_n_logic0));
   YA2GSD ipad_data_o_12 (.O(data_o[12]),
	.I(i_data_o[12]),
	.E(FE_OFN60_n_logic1),
	.E2(FE_OFN58_n_logic0),
	.E4(FE_OFN58_n_logic0),
	.E8(FE_OFN58_n_logic0),
	.SR(FE_OFN58_n_logic0));
   YA2GSD ipad_data_o_13 (.O(data_o[13]),
	.I(i_data_o[13]),
	.E(FE_OFN60_n_logic1),
	.E2(FE_OFN54_n_logic0),
	.E4(FE_OFN54_n_logic0),
	.E8(FE_OFN54_n_logic0),
	.SR(FE_OFN54_n_logic0));
   YA2GSD ipad_data_o_14 (.O(data_o[14]),
	.I(i_data_o[14]),
	.E(FE_OFN60_n_logic1),
	.E2(FE_OFN50_n_logic0),
	.E4(FE_OFN50_n_logic0),
	.E8(FE_OFN50_n_logic0),
	.SR(FE_OFN50_n_logic0));
   YA2GSD ipad_data_o_15 (.O(data_o[15]),
	.I(i_data_o[15]),
	.E(FE_OFN60_n_logic1),
	.E2(FE_OFN46_n_logic0),
	.E4(FE_OFN46_n_logic0),
	.E8(FE_OFN46_n_logic0),
	.SR(FE_OFN46_n_logic0));
endmodule