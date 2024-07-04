
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

  FA1S U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  FA1S U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FA1S U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FA1S U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FA1S U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FA1S U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FA1S U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  INV1S U1 ( .I(B[7]), .O(n2) );
  INV1S U2 ( .I(B[0]), .O(n9) );
  INV1S U3 ( .I(B[6]), .O(n3) );
  INV1S U4 ( .I(B[5]), .O(n4) );
  INV1S U5 ( .I(B[4]), .O(n5) );
  INV1S U6 ( .I(B[3]), .O(n6) );
  INV1S U7 ( .I(B[2]), .O(n7) );
  INV1S U8 ( .I(B[1]), .O(n8) );
  INV1S U9 ( .I(A[0]), .O(n1) );
  XNR2HS U10 ( .I1(n9), .I2(A[0]), .O(DIFF[0]) );
  ND2 U11 ( .I1(B[0]), .I2(n1), .O(carry[1]) );
  INV1S U12 ( .I(carry[8]), .O(DIFF[8]) );
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
  INV1S U142 ( .I(b[2]), .O(n216) );
  INV1S U143 ( .I(b[2]), .O(n217) );
  INV1S U144 ( .I(a[1]), .O(n218) );
  INV1S U145 ( .I(a[1]), .O(n219) );
  INV1S U146 ( .I(n243), .O(n220) );
  INV1S U147 ( .I(n220), .O(n221) );
  INV1S U148 ( .I(a[7]), .O(n222) );
  INV1S U149 ( .I(a[7]), .O(n223) );
  INV1S U150 ( .I(b[5]), .O(n224) );
  INV1S U151 ( .I(b[5]), .O(n225) );
  INV1S U152 ( .I(b[6]), .O(n226) );
  INV1S U153 ( .I(b[6]), .O(n227) );
  INV1S U154 ( .I(b[4]), .O(n228) );
  INV1S U155 ( .I(b[4]), .O(n229) );
  INV1S U156 ( .I(b[3]), .O(n230) );
  INV1S U157 ( .I(b[3]), .O(n231) );
  INV1S U158 ( .I(b[1]), .O(n232) );
  INV1S U159 ( .I(b[1]), .O(n233) );
  INV1S U160 ( .I(b[7]), .O(n234) );
  INV1S U161 ( .I(b[7]), .O(n235) );
  INV1S U162 ( .I(a[4]), .O(n236) );
  INV1S U163 ( .I(a[3]), .O(n237) );
  INV1S U164 ( .I(a[3]), .O(n238) );
  INV1S U165 ( .I(a[5]), .O(n239) );
  INV1S U166 ( .I(a[6]), .O(n240) );
  INV1S U167 ( .I(a[6]), .O(n241) );
  INV1S U168 ( .I(a[2]), .O(n242) );
  INV1S U169 ( .I(a[0]), .O(n247) );
  INV1S U170 ( .I(b[0]), .O(n243) );
  INV1S U171 ( .I(a[4]), .O(n245) );
  INV1S U172 ( .I(a[5]), .O(n244) );
  INV1S U173 ( .I(a[2]), .O(n246) );
  NR2 U174 ( .I1(n215), .I2(n243), .O(product[0]) );
  NR2 U175 ( .I1(n223), .I2(n235), .O(n99) );
  NR2 U176 ( .I1(n215), .I2(n233), .O(n161) );
  NR2 U177 ( .I1(n247), .I2(n216), .O(n160) );
  NR2 U178 ( .I1(n215), .I2(n231), .O(n159) );
  NR2 U179 ( .I1(n247), .I2(n228), .O(n158) );
  NR2 U180 ( .I1(n215), .I2(n225), .O(n157) );
  NR2 U181 ( .I1(n247), .I2(n226), .O(n156) );
  NR2 U182 ( .I1(n247), .I2(n234), .O(n155) );
  NR2 U183 ( .I1(n221), .I2(n219), .O(n154) );
  NR2 U184 ( .I1(n232), .I2(n218), .O(n153) );
  NR2 U185 ( .I1(n216), .I2(n218), .O(n152) );
  NR2 U186 ( .I1(n230), .I2(n219), .O(n151) );
  NR2 U187 ( .I1(n229), .I2(n219), .O(n150) );
  NR2 U188 ( .I1(n224), .I2(n218), .O(n149) );
  NR2 U189 ( .I1(n227), .I2(n218), .O(n148) );
  NR2 U190 ( .I1(n235), .I2(n219), .O(n147) );
  NR2 U191 ( .I1(n221), .I2(n242), .O(n146) );
  NR2 U192 ( .I1(n232), .I2(n242), .O(n145) );
  NR2 U193 ( .I1(n217), .I2(n242), .O(n144) );
  NR2 U194 ( .I1(n230), .I2(n246), .O(n143) );
  NR2 U195 ( .I1(n229), .I2(n246), .O(n142) );
  NR2 U196 ( .I1(n224), .I2(n242), .O(n141) );
  NR2 U197 ( .I1(n226), .I2(n242), .O(n140) );
  NR2 U198 ( .I1(n234), .I2(n246), .O(n139) );
  NR2 U199 ( .I1(n221), .I2(n238), .O(n138) );
  NR2 U200 ( .I1(n233), .I2(n237), .O(n137) );
  NR2 U201 ( .I1(n216), .I2(n237), .O(n136) );
  NR2 U202 ( .I1(n230), .I2(n237), .O(n135) );
  NR2 U203 ( .I1(n228), .I2(n238), .O(n134) );
  NR2 U204 ( .I1(n225), .I2(n238), .O(n133) );
  NR2 U205 ( .I1(n227), .I2(n237), .O(n132) );
  NR2 U206 ( .I1(n235), .I2(n238), .O(n131) );
  NR2 U207 ( .I1(n243), .I2(n236), .O(n130) );
  NR2 U208 ( .I1(n232), .I2(n236), .O(n129) );
  NR2 U209 ( .I1(n217), .I2(n236), .O(n128) );
  NR2 U210 ( .I1(n231), .I2(n245), .O(n127) );
  NR2 U211 ( .I1(n228), .I2(n236), .O(n126) );
  NR2 U212 ( .I1(n224), .I2(n245), .O(n125) );
  NR2 U213 ( .I1(n226), .I2(n245), .O(n124) );
  NR2 U214 ( .I1(n234), .I2(n236), .O(n123) );
  NR2 U215 ( .I1(n243), .I2(n239), .O(n122) );
  NR2 U216 ( .I1(n233), .I2(n239), .O(n121) );
  NR2 U217 ( .I1(n217), .I2(n239), .O(n120) );
  NR2 U218 ( .I1(n231), .I2(n244), .O(n119) );
  NR2 U219 ( .I1(n229), .I2(n239), .O(n118) );
  NR2 U220 ( .I1(n224), .I2(n244), .O(n117) );
  NR2 U221 ( .I1(n227), .I2(n239), .O(n116) );
  NR2 U222 ( .I1(n235), .I2(n244), .O(n115) );
  NR2 U223 ( .I1(n243), .I2(n240), .O(n114) );
  NR2 U224 ( .I1(n232), .I2(n241), .O(n113) );
  NR2 U225 ( .I1(n216), .I2(n240), .O(n112) );
  NR2 U226 ( .I1(n230), .I2(n241), .O(n111) );
  NR2 U227 ( .I1(n228), .I2(n240), .O(n110) );
  NR2 U228 ( .I1(n225), .I2(n241), .O(n109) );
  NR2 U229 ( .I1(n226), .I2(n240), .O(n108) );
  NR2 U230 ( .I1(n234), .I2(n241), .O(n107) );
  NR2 U231 ( .I1(n221), .I2(n222), .O(n106) );
  NR2 U232 ( .I1(n223), .I2(n233), .O(n105) );
  NR2 U233 ( .I1(n222), .I2(n217), .O(n104) );
  NR2 U234 ( .I1(n223), .I2(n231), .O(n103) );
  NR2 U235 ( .I1(n222), .I2(n229), .O(n102) );
  NR2 U236 ( .I1(n223), .I2(n225), .O(n101) );
  NR2 U237 ( .I1(n222), .I2(n227), .O(n100) );
endmodule


module alu ( clk_p_i, reset_n_i, data_a_i, data_b_i, inst_i, data_o );
  input [7:0] data_a_i;
  input [7:0] data_b_i;
  input [2:0] inst_i;
  output [15:0] data_o;
  input clk_p_i, reset_n_i;
  wire   \reg_data_a[0] , out_inst_1_15, N33, N34, N35, N36, N37, N38, N39,
         N40, N47, n1, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, \add_51/carry[2] ,
         \add_51/carry[3] , \add_51/carry[4] , \add_51/carry[5] ,
         \add_51/carry[6] , \add_51/carry[7] , \add_51/carry[8] ,
         \add_51/A[0] , \add_51/A[1] , \add_51/A[2] , \add_51/A[3] ,
         \add_51/A[4] , \add_51/A[5] , \add_51/A[6] , \add_51/A[7] , n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111;
  wire   [15:0] ALU_d2_w;
  wire   [7:0] reg_data_b;
  wire   [8:0] out_inst_0;
  wire   [7:0] out_inst_1;
  wire   [15:0] out_inst_2;
  wire   [6:0] out_inst_3;
  wire   [2:0] reg_inst;
  wire   [2:0] inst_i_v;

  OA222 U76 ( .A1(n32), .A2(n33), .B1(n34), .B2(n35), .C1(n36), .C2(n37), .O(
        n31) );
  ND2 U77 ( .I1(inst_i[0]), .I2(n103), .O(n25) );
  ND2 U78 ( .I1(n40), .I2(n86), .O(ALU_d2_w[9]) );
  ND2 U79 ( .I1(out_inst_0[8]), .I2(n90), .O(n43) );
  AO112 U80 ( .C1(out_inst_0[7]), .C2(n90), .A1(n45), .B1(n46), .O(ALU_d2_w[7]) );
  AO222 U81 ( .A1(n47), .A2(out_inst_1[7]), .B1(N39), .B2(n42), .C1(n109), 
        .C2(n48), .O(n46) );
  OR3B2 U82 ( .I1(n49), .B1(n50), .B2(n51), .O(ALU_d2_w[6]) );
  AO222 U83 ( .A1(out_inst_2[6]), .A2(n91), .B1(out_inst_3[6]), .B2(n84), .C1(
        out_inst_0[6]), .C2(n39), .O(n49) );
  OR3B2 U84 ( .I1(n53), .B1(n54), .B2(n55), .O(ALU_d2_w[5]) );
  AO222 U85 ( .A1(out_inst_2[5]), .A2(n91), .B1(out_inst_3[5]), .B2(n107), 
        .C1(out_inst_0[5]), .C2(n90), .O(n53) );
  OR3B2 U86 ( .I1(n57), .B1(n58), .B2(n59), .O(ALU_d2_w[4]) );
  AO222 U87 ( .A1(out_inst_2[4]), .A2(n92), .B1(out_inst_3[4]), .B2(n107), 
        .C1(out_inst_0[4]), .C2(n90), .O(n57) );
  OR3B2 U88 ( .I1(n61), .B1(n62), .B2(n63), .O(ALU_d2_w[3]) );
  AO222 U89 ( .A1(out_inst_2[3]), .A2(n92), .B1(out_inst_3[3]), .B2(n107), 
        .C1(out_inst_0[3]), .C2(n39), .O(n61) );
  OR3B2 U90 ( .I1(n65), .B1(n66), .B2(n67), .O(ALU_d2_w[2]) );
  AO222 U91 ( .A1(out_inst_2[2]), .A2(n105), .B1(out_inst_3[2]), .B2(n107), 
        .C1(out_inst_0[2]), .C2(n90), .O(n65) );
  OR3B2 U92 ( .I1(n69), .B1(n70), .B2(n71), .O(ALU_d2_w[1]) );
  AO222 U93 ( .A1(out_inst_2[1]), .A2(n91), .B1(out_inst_3[1]), .B2(n107), 
        .C1(out_inst_0[1]), .C2(n39), .O(n69) );
  ND2 U94 ( .I1(n73), .I2(n86), .O(ALU_d2_w[15]) );
  ND2 U95 ( .I1(n74), .I2(n41), .O(ALU_d2_w[14]) );
  ND2 U96 ( .I1(n75), .I2(n41), .O(ALU_d2_w[13]) );
  ND2 U97 ( .I1(n76), .I2(n41), .O(ALU_d2_w[12]) );
  ND2 U98 ( .I1(n77), .I2(n41), .O(ALU_d2_w[11]) );
  ND2 U99 ( .I1(n78), .I2(n41), .O(ALU_d2_w[10]) );
  OR3B2 U100 ( .I1(n80), .B1(n81), .B2(n82), .O(ALU_d2_w[0]) );
  AO222 U101 ( .A1(out_inst_2[0]), .A2(n105), .B1(out_inst_3[0]), .B2(n107), 
        .C1(out_inst_0[0]), .C2(n39), .O(n80) );
  alu_DW01_add_0 add_43 ( .A({n1, out_inst_3, \reg_data_a[0] }), .B({n1, 
        reg_data_b}), .CI(n1), .SUM(out_inst_0) );
  alu_DW01_sub_0 r306 ( .A({n1, reg_data_b}), .B({n1, out_inst_3, 
        \reg_data_a[0] }), .CI(n1), .DIFF({out_inst_1_15, out_inst_1}) );
  alu_DW_mult_uns_0 mult_45 ( .a({out_inst_3, \reg_data_a[0] }), .b(reg_data_b), .product(out_inst_2) );
  HA1 \add_51/U1_1_1  ( .A(\add_51/A[1] ), .B(\add_51/A[0] ), .C(
        \add_51/carry[2] ), .S(N33) );
  HA1 \add_51/U1_1_2  ( .A(\add_51/A[2] ), .B(\add_51/carry[2] ), .C(
        \add_51/carry[3] ), .S(N34) );
  HA1 \add_51/U1_1_3  ( .A(\add_51/A[3] ), .B(\add_51/carry[3] ), .C(
        \add_51/carry[4] ), .S(N35) );
  HA1 \add_51/U1_1_4  ( .A(\add_51/A[4] ), .B(\add_51/carry[4] ), .C(
        \add_51/carry[5] ), .S(N36) );
  HA1 \add_51/U1_1_5  ( .A(\add_51/A[5] ), .B(\add_51/carry[5] ), .C(
        \add_51/carry[6] ), .S(N37) );
  HA1 \add_51/U1_1_6  ( .A(\add_51/A[6] ), .B(\add_51/carry[6] ), .C(
        \add_51/carry[7] ), .S(N38) );
  HA1 \add_51/U1_1_7  ( .A(\add_51/A[7] ), .B(\add_51/carry[7] ), .C(
        \add_51/carry[8] ), .S(N39) );
  QDFFRBN \reg_inst_reg[0]  ( .D(inst_i_v[0]), .CK(clk_p_i), .RB(n99), .Q(
        reg_inst[0]) );
  QDFFRBN \reg_inst_reg[2]  ( .D(inst_i_v[2]), .CK(clk_p_i), .RB(n99), .Q(
        reg_inst[2]) );
  QDFFRBN \reg_inst_reg[1]  ( .D(inst_i_v[1]), .CK(clk_p_i), .RB(n99), .Q(
        reg_inst[1]) );
  QDFFRBN \reg_data_b_reg[7]  ( .D(data_b_i[7]), .CK(clk_p_i), .RB(n98), .Q(
        reg_data_b[7]) );
  QDFFRBN \reg_data_b_reg[6]  ( .D(data_b_i[6]), .CK(clk_p_i), .RB(n98), .Q(
        reg_data_b[6]) );
  QDFFRBN \reg_data_b_reg[5]  ( .D(data_b_i[5]), .CK(clk_p_i), .RB(n98), .Q(
        reg_data_b[5]) );
  QDFFRBN \reg_data_b_reg[4]  ( .D(data_b_i[4]), .CK(clk_p_i), .RB(n98), .Q(
        reg_data_b[4]) );
  QDFFRBN \reg_data_b_reg[3]  ( .D(data_b_i[3]), .CK(clk_p_i), .RB(n98), .Q(
        reg_data_b[3]) );
  QDFFRBN \reg_data_b_reg[1]  ( .D(data_b_i[1]), .CK(clk_p_i), .RB(n99), .Q(
        reg_data_b[1]) );
  QDFFRBN \reg_data_a_reg[7]  ( .D(data_a_i[7]), .CK(clk_p_i), .RB(n99), .Q(
        out_inst_3[6]) );
  QDFFRBN \reg_data_a_reg[6]  ( .D(data_a_i[6]), .CK(clk_p_i), .RB(n96), .Q(
        out_inst_3[5]) );
  QDFFRBN \reg_data_a_reg[5]  ( .D(data_a_i[5]), .CK(clk_p_i), .RB(reset_n_i), 
        .Q(out_inst_3[4]) );
  QDFFRBN \reg_data_a_reg[4]  ( .D(data_a_i[4]), .CK(clk_p_i), .RB(reset_n_i), 
        .Q(out_inst_3[3]) );
  QDFFRBN \reg_data_a_reg[3]  ( .D(data_a_i[3]), .CK(clk_p_i), .RB(reset_n_i), 
        .Q(out_inst_3[2]) );
  QDFFRBN \reg_data_a_reg[2]  ( .D(data_a_i[2]), .CK(clk_p_i), .RB(n101), .Q(
        out_inst_3[1]) );
  QDFFRBN \reg_data_b_reg[0]  ( .D(data_b_i[0]), .CK(clk_p_i), .RB(n99), .Q(
        reg_data_b[0]) );
  QDFFRBN \reg_data_b_reg[2]  ( .D(data_b_i[2]), .CK(clk_p_i), .RB(n98), .Q(
        reg_data_b[2]) );
  QDFFRBN \reg_data_a_reg[1]  ( .D(data_a_i[1]), .CK(clk_p_i), .RB(n96), .Q(
        out_inst_3[0]) );
  QDFFRBN \reg_data_a_reg[0]  ( .D(data_a_i[0]), .CK(clk_p_i), .RB(n96), .Q(
        \reg_data_a[0] ) );
  QDFFRBT \ALU_d2_r_reg[1]  ( .D(ALU_d2_w[1]), .CK(clk_p_i), .RB(reset_n_i), 
        .Q(data_o[1]) );
  QDFFRBT \ALU_d2_r_reg[4]  ( .D(ALU_d2_w[4]), .CK(clk_p_i), .RB(n100), .Q(
        data_o[4]) );
  QDFFRBT \ALU_d2_r_reg[2]  ( .D(ALU_d2_w[2]), .CK(clk_p_i), .RB(n100), .Q(
        data_o[2]) );
  QDFFRBT \ALU_d2_r_reg[5]  ( .D(ALU_d2_w[5]), .CK(clk_p_i), .RB(n101), .Q(
        data_o[5]) );
  QDFFRBT \ALU_d2_r_reg[8]  ( .D(ALU_d2_w[8]), .CK(clk_p_i), .RB(n101), .Q(
        data_o[8]) );
  QDFFRBT \ALU_d2_r_reg[0]  ( .D(ALU_d2_w[0]), .CK(clk_p_i), .RB(n101), .Q(
        data_o[0]) );
  QDFFRBT \ALU_d2_r_reg[6]  ( .D(ALU_d2_w[6]), .CK(clk_p_i), .RB(n101), .Q(
        data_o[6]) );
  QDFFRBT \ALU_d2_r_reg[3]  ( .D(ALU_d2_w[3]), .CK(clk_p_i), .RB(n100), .Q(
        data_o[3]) );
  QDFFRBT \ALU_d2_r_reg[9]  ( .D(ALU_d2_w[9]), .CK(clk_p_i), .RB(n97), .Q(
        data_o[9]) );
  QDFFRBT \ALU_d2_r_reg[7]  ( .D(ALU_d2_w[7]), .CK(clk_p_i), .RB(n101), .Q(
        data_o[7]) );
  QDFFRBT \ALU_d2_r_reg[10]  ( .D(ALU_d2_w[10]), .CK(clk_p_i), .RB(n100), .Q(
        data_o[10]) );
  QDFFRBT \ALU_d2_r_reg[11]  ( .D(ALU_d2_w[11]), .CK(clk_p_i), .RB(n100), .Q(
        data_o[11]) );
  QDFFRBT \ALU_d2_r_reg[12]  ( .D(ALU_d2_w[12]), .CK(clk_p_i), .RB(n97), .Q(
        data_o[12]) );
  QDFFRBT \ALU_d2_r_reg[13]  ( .D(ALU_d2_w[13]), .CK(clk_p_i), .RB(n96), .Q(
        data_o[13]) );
  QDFFRBT \ALU_d2_r_reg[15]  ( .D(ALU_d2_w[15]), .CK(clk_p_i), .RB(n96), .Q(
        data_o[15]) );
  QDFFRBT \ALU_d2_r_reg[14]  ( .D(ALU_d2_w[14]), .CK(clk_p_i), .RB(n96), .Q(
        data_o[14]) );
  INV1S U102 ( .I(n37), .O(n84) );
  BUF1CK U103 ( .I(n47), .O(n85) );
  BUF1CK U104 ( .I(n41), .O(n86) );
  INV1S U105 ( .I(n35), .O(n87) );
  INV1S U106 ( .I(n29), .O(n88) );
  NR2 U107 ( .I1(\add_51/carry[8] ), .I2(out_inst_1_15), .O(n89) );
  BUF1CK U108 ( .I(n39), .O(n90) );
  INV1S U109 ( .I(n33), .O(n91) );
  INV1S U110 ( .I(n33), .O(n92) );
  INV1S U111 ( .I(n95), .O(n93) );
  INV1S U112 ( .I(n95), .O(n94) );
  AOI22S U113 ( .A1(N47), .A2(n94), .B1(out_inst_2[14]), .B2(n105), .O(n74) );
  AOI22S U114 ( .A1(n89), .A2(n42), .B1(out_inst_2[11]), .B2(n91), .O(n77) );
  AOI22S U115 ( .A1(N47), .A2(n93), .B1(out_inst_2[12]), .B2(n92), .O(n76) );
  AOI22S U116 ( .A1(n89), .A2(n94), .B1(out_inst_2[13]), .B2(n105), .O(n75) );
  AOI22S U117 ( .A1(N47), .A2(n42), .B1(out_inst_2[15]), .B2(n91), .O(n73) );
  INV1S U118 ( .I(out_inst_1_15), .O(n102) );
  AOI22S U119 ( .A1(n89), .A2(n93), .B1(out_inst_2[10]), .B2(n92), .O(n78) );
  AOI22S U120 ( .A1(N47), .A2(n94), .B1(out_inst_2[9]), .B2(n105), .O(n40) );
  AOI22S U121 ( .A1(out_inst_1_15), .A2(n108), .B1(n102), .B2(n104), .O(n41)
         );
  OAI12HS U122 ( .B1(out_inst_1_15), .B2(n26), .A1(n79), .O(n47) );
  OR2 U123 ( .I1(n26), .I2(n102), .O(n95) );
  INV1S U124 ( .I(n95), .O(n42) );
  ND3 U125 ( .I1(n86), .I2(n43), .I3(n44), .O(ALU_d2_w[8]) );
  AOI22S U126 ( .A1(N40), .A2(n93), .B1(out_inst_2[8]), .B2(n92), .O(n44) );
  INV1S U127 ( .I(out_inst_1[7]), .O(\add_51/A[7] ) );
  INV1S U128 ( .I(out_inst_1[6]), .O(\add_51/A[6] ) );
  INV1S U129 ( .I(out_inst_1[5]), .O(\add_51/A[5] ) );
  INV1S U130 ( .I(out_inst_1[4]), .O(\add_51/A[4] ) );
  INV1S U131 ( .I(out_inst_1[0]), .O(\add_51/A[0] ) );
  INV1S U132 ( .I(out_inst_1[3]), .O(\add_51/A[3] ) );
  INV1S U133 ( .I(out_inst_1[2]), .O(\add_51/A[2] ) );
  INV1S U134 ( .I(out_inst_1[1]), .O(\add_51/A[1] ) );
  INV1S U135 ( .I(n35), .O(n109) );
  INV1S U136 ( .I(n29), .O(n104) );
  INV1S U137 ( .I(n37), .O(n107) );
  INV1S U138 ( .I(n33), .O(n105) );
  INV1S U139 ( .I(n79), .O(n108) );
  BUF1CK U140 ( .I(n97), .O(n100) );
  BUF1CK U141 ( .I(n97), .O(n99) );
  BUF1CK U142 ( .I(n100), .O(n98) );
  BUF1CK U143 ( .I(n97), .O(n101) );
  MOAI1S U144 ( .A1(out_inst_1[7]), .A2(n29), .B1(out_inst_2[7]), .B2(n105), 
        .O(n45) );
  XOR2HS U145 ( .I1(reg_data_b[7]), .I2(out_inst_3[6]), .O(n48) );
  MOAI1S U146 ( .A1(n25), .A2(n26), .B1(n27), .B2(n28), .O(n24) );
  ND3 U147 ( .I1(inst_i[1]), .I2(inst_i[0]), .I3(inst_i[2]), .O(n28) );
  OAI112HS U148 ( .C1(n25), .C2(n29), .A1(n30), .B1(n31), .O(n27) );
  NR2 U149 ( .I1(n39), .I2(n108), .O(n30) );
  AOI22S U150 ( .A1(n109), .A2(n52), .B1(n104), .B2(\add_51/A[6] ), .O(n51) );
  AOI22S U151 ( .A1(N38), .A2(n42), .B1(n47), .B2(out_inst_1[6]), .O(n50) );
  AOI22S U152 ( .A1(n109), .A2(n56), .B1(n104), .B2(\add_51/A[5] ), .O(n55) );
  AOI22S U153 ( .A1(N37), .A2(n94), .B1(n47), .B2(out_inst_1[5]), .O(n54) );
  AOI22S U154 ( .A1(n109), .A2(n60), .B1(n104), .B2(\add_51/A[4] ), .O(n59) );
  AOI22S U155 ( .A1(N36), .A2(n93), .B1(n85), .B2(out_inst_1[4]), .O(n58) );
  AOI22S U156 ( .A1(n109), .A2(n64), .B1(n104), .B2(\add_51/A[3] ), .O(n63) );
  AOI22S U157 ( .A1(N35), .A2(n42), .B1(n47), .B2(out_inst_1[3]), .O(n62) );
  AOI22S U158 ( .A1(n109), .A2(n68), .B1(n88), .B2(\add_51/A[2] ), .O(n67) );
  AOI22S U159 ( .A1(N34), .A2(n94), .B1(n85), .B2(out_inst_1[2]), .O(n66) );
  AOI22S U160 ( .A1(n87), .A2(n72), .B1(n88), .B2(\add_51/A[1] ), .O(n71) );
  AOI22S U161 ( .A1(N33), .A2(n93), .B1(n85), .B2(out_inst_1[1]), .O(n70) );
  AOI22S U162 ( .A1(n87), .A2(n83), .B1(n104), .B2(\add_51/A[0] ), .O(n82) );
  AOI22S U163 ( .A1(out_inst_1[0]), .A2(n42), .B1(n47), .B2(out_inst_1[0]), 
        .O(n81) );
  NR2 U164 ( .I1(inst_i[1]), .I2(inst_i[2]), .O(n38) );
  MOAI1S U165 ( .A1(n24), .A2(n111), .B1(n24), .B2(inst_i[1]), .O(inst_i_v[1])
         );
  MOAI1S U166 ( .A1(n24), .A2(n110), .B1(n24), .B2(inst_i[2]), .O(inst_i_v[2])
         );
  MOAI1S U167 ( .A1(n24), .A2(n106), .B1(n24), .B2(inst_i[0]), .O(inst_i_v[0])
         );
  NR2 U168 ( .I1(n38), .I2(inst_i[0]), .O(n32) );
  MAOI1 U169 ( .A1(inst_i[0]), .A2(n103), .B1(inst_i[0]), .B2(inst_i[2]), .O(
        n34) );
  AOI12HS U170 ( .B1(inst_i[1]), .B2(inst_i[2]), .A1(n38), .O(n36) );
  INV1S U171 ( .I(inst_i[1]), .O(n103) );
  NR3 U172 ( .I1(reg_inst[1]), .I2(reg_inst[2]), .I3(reg_inst[0]), .O(n39) );
  INV1S U173 ( .I(reg_inst[2]), .O(n110) );
  INV1S U174 ( .I(reg_inst[1]), .O(n111) );
  INV1S U175 ( .I(reg_inst[0]), .O(n106) );
  ND3 U176 ( .I1(reg_inst[2]), .I2(n106), .I3(reg_inst[1]), .O(n26) );
  ND3 U177 ( .I1(n106), .I2(n110), .I3(reg_inst[1]), .O(n33) );
  ND3 U178 ( .I1(n106), .I2(n111), .I3(reg_inst[2]), .O(n29) );
  ND3 U179 ( .I1(n111), .I2(n110), .I3(reg_inst[0]), .O(n79) );
  ND3 U180 ( .I1(reg_inst[0]), .I2(n111), .I3(reg_inst[2]), .O(n35) );
  ND3 U181 ( .I1(reg_inst[0]), .I2(n110), .I3(reg_inst[1]), .O(n37) );
  XOR2HS U182 ( .I1(reg_data_b[0]), .I2(\reg_data_a[0] ), .O(n83) );
  XOR2HS U183 ( .I1(reg_data_b[6]), .I2(out_inst_3[5]), .O(n52) );
  XOR2HS U184 ( .I1(reg_data_b[5]), .I2(out_inst_3[4]), .O(n56) );
  XOR2HS U185 ( .I1(reg_data_b[4]), .I2(out_inst_3[3]), .O(n60) );
  XOR2HS U186 ( .I1(reg_data_b[3]), .I2(out_inst_3[2]), .O(n64) );
  XOR2HS U187 ( .I1(reg_data_b[2]), .I2(out_inst_3[1]), .O(n68) );
  XOR2HS U188 ( .I1(reg_data_b[1]), .I2(out_inst_3[0]), .O(n72) );
  BUF1CK U189 ( .I(reset_n_i), .O(n97) );
  BUF1CK U190 ( .I(reset_n_i), .O(n96) );
  TIE0 U191 ( .O(n1) );
  XOR2HS U192 ( .I1(\add_51/carry[8] ), .I2(n102), .O(N40) );
  NR2 U193 ( .I1(\add_51/carry[8] ), .I2(out_inst_1_15), .O(N47) );
endmodule

module CHIP ( clk_p_i, reset_n_i, data_a_i, data_b_i, inst_i, data_o );
  input [7:0] data_a_i;
  input [7:0] data_b_i;
  input [2:0] inst_i;
  output [15:0] data_o;
  input clk_p_i, reset_n_i;

  
  
  wire [7:0] i_data_a_i;
  wire [7:0] i_data_b_i;
  wire [2:0] i_inst_i;
  wire [15:0] i_data_o;
  wire i_clk_p_i, i_reset_n_i;
  wire n_logic0,n_logic1;
  alu alu_in( .clk_p_i(i_clk_p_i), .reset_n_i(i_reset_n_i), .data_a_i(i_data_a_i), .data_b_i(i_data_b_i), .inst_i(i_inst_i), .data_o(i_data_o) );
  
  TIE0 ipad_n_logic0(.O(n_logic0));
  TIE1 ipad_n_logic1(.O(n_logic1));
  XMD ipad_clk_p_i (.O(i_clk_p_i), .I(clk_p_i), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_reset_n_i (.O(i_reset_n_i), .I(reset_n_i), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_inst_i_0  (.O(i_inst_i[0]), .I(inst_i[0]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_inst_i_1  (.O(i_inst_i[1]), .I(inst_i[1]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_inst_i_2  (.O(i_inst_i[2]), .I(inst_i[2]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_a_i_0 (.O(i_data_a_i[0]), .I(data_a_i[0]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_a_i_1 (.O(i_data_a_i[1]), .I(data_a_i[1]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_a_i_2 (.O(i_data_a_i[2]), .I(data_a_i[2]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_a_i_3 (.O(i_data_a_i[3]), .I(data_a_i[3]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_a_i_4 (.O(i_data_a_i[4]), .I(data_a_i[4]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_a_i_5 (.O(i_data_a_i[5]), .I(data_a_i[5]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_a_i_6 (.O(i_data_a_i[6]), .I(data_a_i[6]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_a_i_7 (.O(i_data_a_i[7]), .I(data_a_i[7]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_b_i_0 (.O(i_data_b_i[0]), .I(data_b_i[0]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_b_i_1 (.O(i_data_b_i[1]), .I(data_b_i[1]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_b_i_2 (.O(i_data_b_i[2]), .I(data_b_i[2]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_b_i_3 (.O(i_data_b_i[3]), .I(data_b_i[3]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_b_i_4 (.O(i_data_b_i[4]), .I(data_b_i[4]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_b_i_5 (.O(i_data_b_i[5]), .I(data_b_i[5]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_b_i_6 (.O(i_data_b_i[6]), .I(data_b_i[6]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  XMD ipad_data_b_i_7 (.O(i_data_b_i[7]), .I(data_b_i[7]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
  
  
  YA2GSD ipad_data_o_0 (.O(data_o[0]), .I(i_data_o[0]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_1 (.O(data_o[1]), .I(i_data_o[1]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_2 (.O(data_o[2]), .I(i_data_o[2]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_3 (.O(data_o[3]), .I(i_data_o[3]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_4 (.O(data_o[4]), .I(i_data_o[4]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_5 (.O(data_o[5]), .I(i_data_o[5]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_6 (.O(data_o[6]), .I(i_data_o[6]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_7 (.O(data_o[7]), .I(i_data_o[7]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_8 (.O(data_o[8]), .I(i_data_o[8]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_9 (.O(data_o[9]), .I(i_data_o[9]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_10 (.O(data_o[10]), .I(i_data_o[10]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_11 (.O(data_o[11]), .I(i_data_o[11]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_12 (.O(data_o[12]), .I(i_data_o[12]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_13 (.O(data_o[13]), .I(i_data_o[13]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_14 (.O(data_o[14]), .I(i_data_o[14]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  YA2GSD ipad_data_o_15 (.O(data_o[15]), .I(i_data_o[15]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
  
  
endmodule

