/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : U-2022.12
// Date      : Thu May 23 17:39:41 2024
/////////////////////////////////////////////////////////////


module partial_pooling_2 ( i_data, o_data );
  input [41:0] i_data;
  output [20:0] o_data;


  BUF1 U1 ( .I(i_data[8]), .O(o_data[8]) );
  BUF1 U2 ( .I(i_data[9]), .O(o_data[9]) );
  BUF1 U3 ( .I(i_data[10]), .O(o_data[10]) );
  BUF1 U4 ( .I(i_data[11]), .O(o_data[11]) );
  BUF1 U5 ( .I(i_data[12]), .O(o_data[12]) );
  BUF1 U6 ( .I(i_data[13]), .O(o_data[13]) );
  BUF1 U7 ( .I(i_data[14]), .O(o_data[14]) );
  BUF1 U8 ( .I(i_data[15]), .O(o_data[15]) );
endmodule


module conv_1 ( layer_num, i_pconv, o_conv );
  input [1:0] layer_num;
  input [953:0] i_pconv;
  output [20:0] o_conv;
  wire   i_pconv_485, i_pconv_484, i_pconv_483, i_pconv_482, i_pconv_481,
         i_pconv_480, i_pconv_479, i_pconv_478, i_pconv_477, i_pconv_476,
         i_pconv_475, i_pconv_474, i_pconv_473, i_pconv_472, i_pconv_471,
         i_pconv_470, i_pconv_469, i_pconv_468, i_pconv_413, i_pconv_412,
         i_pconv_411, i_pconv_410, i_pconv_409, i_pconv_408, i_pconv_407,
         i_pconv_406, i_pconv_405, i_pconv_404, i_pconv_403, i_pconv_402,
         i_pconv_401, i_pconv_400, i_pconv_399, i_pconv_398, i_pconv_397,
         i_pconv_396, i_pconv_215, i_pconv_214, i_pconv_213, i_pconv_212,
         i_pconv_211, i_pconv_210, i_pconv_209, i_pconv_208, i_pconv_207,
         i_pconv_206, i_pconv_205, i_pconv_204, i_pconv_203, i_pconv_202,
         i_pconv_201, i_pconv_200, i_pconv_199, i_pconv_198, i_pconv_125,
         i_pconv_124, i_pconv_123, i_pconv_122, i_pconv_121, i_pconv_120,
         i_pconv_119, i_pconv_118, i_pconv_117, i_pconv_116, i_pconv_115,
         i_pconv_114, i_pconv_113, i_pconv_112, i_pconv_111, i_pconv_110,
         i_pconv_109, i_pconv_108, i_pconv_71, i_pconv_70, i_pconv_69,
         i_pconv_68, i_pconv_67, i_pconv_66, i_pconv_65, i_pconv_64,
         i_pconv_63, i_pconv_62, i_pconv_61, i_pconv_60, i_pconv_59,
         i_pconv_58, i_pconv_57, i_pconv_56, i_pconv_55, i_pconv_54,
         i_pconv_17, i_pconv_16, i_pconv_15, i_pconv_14, i_pconv_13,
         i_pconv_12, i_pconv_11, i_pconv_10, i_pconv_9, i_pconv_8, i_pconv_7,
         i_pconv_6, i_pconv_5, i_pconv_4, i_pconv_3, i_pconv_2, i_pconv_1,
         i_pconv_0, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n479, n480, n481, n482, n483,
         n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, n494,
         n495, n496, n497, n498, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n523, n524, n525, n526, n527,
         n528, n529, n530, n531, n532, n533, n534, n535, n536, n537, n538,
         n539, n540, n541, n542, n543, n544, n545, n546, n547, n548, n549,
         n550, n551, n552, n553, n554, n555, n556, n557, n558, n559, n560,
         n561, n562, n563, n564, n565, n566, n567, n568, n569, n570, n571,
         n572, n573, n574, n575, n576, n577, n578, n579, n580, n581, n582,
         n583, n584, n585, n586, n587, n588, n589, n590, n591, n592, n593,
         n594, n595, n596, n597, n598, n599, n600, n601, n602, n603, n604,
         n605, n606, n607, n608, n609, n610, n611, n612, n613, n614, n615,
         n616, n617, n618, n619, n620, n621, n622, n623, n624, n625, n626,
         n627, n628, n629, n630, n631, n632, n633, n634, n635, n636, n637,
         n638, n639, n640, n641, n642, n643, n644, n645, n646, n647, n648,
         n649, n650, n651, n652, n653, n654, n655, n656, n657, n658, n659,
         n660, n661, n662, n663, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n690, n691, n692,
         n693, n694, n695, n696, n697, n698, n699, n700, n701, n702, n703,
         n704, n705, n706, n707, n708, n709, n710, n711;
  assign i_pconv_485 = i_pconv[485];
  assign i_pconv_484 = i_pconv[484];
  assign i_pconv_483 = i_pconv[483];
  assign i_pconv_482 = i_pconv[482];
  assign i_pconv_481 = i_pconv[481];
  assign i_pconv_480 = i_pconv[480];
  assign i_pconv_479 = i_pconv[479];
  assign i_pconv_478 = i_pconv[478];
  assign i_pconv_477 = i_pconv[477];
  assign i_pconv_476 = i_pconv[476];
  assign i_pconv_475 = i_pconv[475];
  assign i_pconv_474 = i_pconv[474];
  assign i_pconv_473 = i_pconv[473];
  assign i_pconv_472 = i_pconv[472];
  assign i_pconv_471 = i_pconv[471];
  assign i_pconv_470 = i_pconv[470];
  assign i_pconv_469 = i_pconv[469];
  assign i_pconv_468 = i_pconv[468];
  assign i_pconv_413 = i_pconv[413];
  assign i_pconv_412 = i_pconv[412];
  assign i_pconv_411 = i_pconv[411];
  assign i_pconv_410 = i_pconv[410];
  assign i_pconv_409 = i_pconv[409];
  assign i_pconv_408 = i_pconv[408];
  assign i_pconv_407 = i_pconv[407];
  assign i_pconv_406 = i_pconv[406];
  assign i_pconv_405 = i_pconv[405];
  assign i_pconv_404 = i_pconv[404];
  assign i_pconv_403 = i_pconv[403];
  assign i_pconv_402 = i_pconv[402];
  assign i_pconv_401 = i_pconv[401];
  assign i_pconv_400 = i_pconv[400];
  assign i_pconv_399 = i_pconv[399];
  assign i_pconv_398 = i_pconv[398];
  assign i_pconv_397 = i_pconv[397];
  assign i_pconv_396 = i_pconv[396];
  assign i_pconv_215 = i_pconv[215];
  assign i_pconv_214 = i_pconv[214];
  assign i_pconv_213 = i_pconv[213];
  assign i_pconv_212 = i_pconv[212];
  assign i_pconv_211 = i_pconv[211];
  assign i_pconv_210 = i_pconv[210];
  assign i_pconv_209 = i_pconv[209];
  assign i_pconv_208 = i_pconv[208];
  assign i_pconv_207 = i_pconv[207];
  assign i_pconv_206 = i_pconv[206];
  assign i_pconv_205 = i_pconv[205];
  assign i_pconv_204 = i_pconv[204];
  assign i_pconv_203 = i_pconv[203];
  assign i_pconv_202 = i_pconv[202];
  assign i_pconv_201 = i_pconv[201];
  assign i_pconv_200 = i_pconv[200];
  assign i_pconv_199 = i_pconv[199];
  assign i_pconv_198 = i_pconv[198];
  assign i_pconv_125 = i_pconv[125];
  assign i_pconv_124 = i_pconv[124];
  assign i_pconv_123 = i_pconv[123];
  assign i_pconv_122 = i_pconv[122];
  assign i_pconv_121 = i_pconv[121];
  assign i_pconv_120 = i_pconv[120];
  assign i_pconv_119 = i_pconv[119];
  assign i_pconv_118 = i_pconv[118];
  assign i_pconv_117 = i_pconv[117];
  assign i_pconv_116 = i_pconv[116];
  assign i_pconv_115 = i_pconv[115];
  assign i_pconv_114 = i_pconv[114];
  assign i_pconv_113 = i_pconv[113];
  assign i_pconv_112 = i_pconv[112];
  assign i_pconv_111 = i_pconv[111];
  assign i_pconv_110 = i_pconv[110];
  assign i_pconv_109 = i_pconv[109];
  assign i_pconv_108 = i_pconv[108];
  assign i_pconv_71 = i_pconv[71];
  assign i_pconv_70 = i_pconv[70];
  assign i_pconv_69 = i_pconv[69];
  assign i_pconv_68 = i_pconv[68];
  assign i_pconv_67 = i_pconv[67];
  assign i_pconv_66 = i_pconv[66];
  assign i_pconv_65 = i_pconv[65];
  assign i_pconv_64 = i_pconv[64];
  assign i_pconv_63 = i_pconv[63];
  assign i_pconv_62 = i_pconv[62];
  assign i_pconv_61 = i_pconv[61];
  assign i_pconv_60 = i_pconv[60];
  assign i_pconv_59 = i_pconv[59];
  assign i_pconv_58 = i_pconv[58];
  assign i_pconv_57 = i_pconv[57];
  assign i_pconv_56 = i_pconv[56];
  assign i_pconv_55 = i_pconv[55];
  assign i_pconv_54 = i_pconv[54];
  assign i_pconv_17 = i_pconv[17];
  assign i_pconv_16 = i_pconv[16];
  assign i_pconv_15 = i_pconv[15];
  assign i_pconv_14 = i_pconv[14];
  assign i_pconv_13 = i_pconv[13];
  assign i_pconv_12 = i_pconv[12];
  assign i_pconv_11 = i_pconv[11];
  assign i_pconv_10 = i_pconv[10];
  assign i_pconv_9 = i_pconv[9];
  assign i_pconv_8 = i_pconv[8];
  assign i_pconv_7 = i_pconv[7];
  assign i_pconv_6 = i_pconv[6];
  assign i_pconv_5 = i_pconv[5];
  assign i_pconv_4 = i_pconv[4];
  assign i_pconv_3 = i_pconv[3];
  assign i_pconv_2 = i_pconv[2];
  assign i_pconv_1 = i_pconv[1];
  assign i_pconv_0 = i_pconv[0];

  BUF2 U2 ( .I(n216), .O(n23) );
  INV1S U3 ( .I(n706), .O(n8) );
  INV1S U4 ( .I(n699), .O(n17) );
  INV1S U5 ( .I(n692), .O(n11) );
  INV1S U6 ( .I(n706), .O(n9) );
  INV1S U7 ( .I(n699), .O(n12) );
  INV1S U8 ( .I(n692), .O(n10) );
  INV1S U9 ( .I(n692), .O(n15) );
  INV2 U10 ( .I(n692), .O(n14) );
  INV1S U11 ( .I(n4), .O(n53) );
  BUF1 U12 ( .I(layer_num[1]), .O(n5) );
  FA1S U13 ( .A(i_pconv_70), .B(i_pconv_124), .CI(i_pconv_16), .CO(n172), .S(
        n162) );
  FA1S U14 ( .A(i_pconv_214), .B(i_pconv_412), .CI(i_pconv_16), .CO(n139), .S(
        n129) );
  INV1S U15 ( .I(n706), .O(n6) );
  INV1S U16 ( .I(n699), .O(n16) );
  ND2 U17 ( .I1(n693), .I2(n11), .O(n710) );
  AN3S U18 ( .I1(n669), .I2(n668), .I3(n667), .O(n670) );
  ND2 U19 ( .I1(n375), .I2(n11), .O(n390) );
  INV1 U20 ( .I(n202), .O(n663) );
  INV1 U21 ( .I(n169), .O(n644) );
  INV3CK U22 ( .I(n136), .O(n625) );
  INV1 U23 ( .I(n202), .O(n21) );
  INV1 U24 ( .I(n136), .O(n19) );
  INV1 U25 ( .I(n169), .O(n20) );
  OAI12HS U26 ( .B1(n395), .B2(n51), .A1(n50), .O(n136) );
  BUF6CK U27 ( .I(layer_num[0]), .O(n4) );
  ND2S U28 ( .I1(n700), .I2(n12), .O(n709) );
  INV2 U29 ( .I(n22), .O(n1) );
  BUF2 U30 ( .I(n216), .O(n711) );
  ND3HT U31 ( .I1(n215), .I2(n214), .I3(n213), .O(n216) );
  ND2P U32 ( .I1(n212), .I2(n6), .O(n213) );
  ND2P U33 ( .I1(n146), .I2(n14), .O(n215) );
  ND2P U34 ( .I1(n179), .I2(n16), .O(n214) );
  OA12S U35 ( .B1(n676), .B2(n178), .A1(n177), .O(n179) );
  OA12S U36 ( .B1(n680), .B2(n211), .A1(n210), .O(n212) );
  OA12P U37 ( .B1(n672), .B2(n145), .A1(n144), .O(n146) );
  ND2S U38 ( .I1(n12), .I2(n433), .O(n446) );
  ND2S U39 ( .I1(n17), .I2(n456), .O(n463) );
  ND2 U40 ( .I1(n583), .I2(n49), .O(n51) );
  ND2 U41 ( .I1(n601), .I2(n106), .O(n108) );
  ND2 U42 ( .I1(n592), .I2(n78), .O(n80) );
  INV2 U43 ( .I(n699), .O(n13) );
  INV1S U44 ( .I(i_pconv_0), .O(n58) );
  NR2 U45 ( .I1(n24), .I2(n1), .O(o_conv[18]) );
  INV2 U46 ( .I(n216), .O(n22) );
  ND2S U47 ( .I1(n707), .I2(n8), .O(n708) );
  ND2S U48 ( .I1(n678), .I2(n12), .O(n684) );
  ND2S U49 ( .I1(n674), .I2(n11), .O(n685) );
  ND2S U50 ( .I1(n682), .I2(n7), .O(n683) );
  ND2S U51 ( .I1(n221), .I2(n14), .O(n232) );
  ND2S U52 ( .I1(n365), .I2(n8), .O(n366) );
  ND2S U53 ( .I1(n309), .I2(n13), .O(n324) );
  ND2S U54 ( .I1(n271), .I2(n12), .O(n281) );
  ND2S U55 ( .I1(n263), .I2(n14), .O(n282) );
  ND2S U56 ( .I1(n225), .I2(n17), .O(n231) );
  ND2S U57 ( .I1(n279), .I2(n9), .O(n280) );
  ND2S U58 ( .I1(n352), .I2(n17), .O(n367) );
  ND2S U59 ( .I1(n229), .I2(n6), .O(n230) );
  ND2S U60 ( .I1(n296), .I2(n10), .O(n325) );
  ND2S U61 ( .I1(n339), .I2(n15), .O(n368) );
  ND2S U62 ( .I1(n628), .I2(n10), .O(n669) );
  ND2S U63 ( .I1(n381), .I2(n17), .O(n389) );
  ND2S U64 ( .I1(n387), .I2(n8), .O(n388) );
  ND2S U65 ( .I1(n239), .I2(n11), .O(n254) );
  ND2S U66 ( .I1(n245), .I2(n12), .O(n253) );
  ND2S U67 ( .I1(n251), .I2(n9), .O(n252) );
  ND2S U68 ( .I1(n322), .I2(n9), .O(n323) );
  ND2S U69 ( .I1(n666), .I2(n9), .O(n667) );
  ND2S U70 ( .I1(n647), .I2(n13), .O(n668) );
  ND2S U71 ( .I1(n574), .I2(n7), .O(n575) );
  ND2S U72 ( .I1(n565), .I2(n17), .O(n576) );
  ND2S U73 ( .I1(n556), .I2(n14), .O(n577) );
  ND2S U74 ( .I1(n605), .I2(n8), .O(n606) );
  ND2S U75 ( .I1(n596), .I2(n17), .O(n607) );
  ND2S U76 ( .I1(n587), .I2(n15), .O(n608) );
  ND2S U77 ( .I1(n413), .I2(n16), .O(n426) );
  ND2S U78 ( .I1(n424), .I2(n7), .O(n425) );
  ND2S U79 ( .I1(n110), .I2(n7), .O(n111) );
  ND2S U80 ( .I1(n83), .I2(n13), .O(n112) );
  ND2S U81 ( .I1(n54), .I2(n10), .O(n113) );
  ND2S U82 ( .I1(n402), .I2(n15), .O(n427) );
  ND2S U83 ( .I1(n540), .I2(n13), .O(n545) );
  ND2S U84 ( .I1(n543), .I2(n9), .O(n544) );
  ND2S U85 ( .I1(n537), .I2(n10), .O(n546) );
  ND2S U86 ( .I1(n512), .I2(n15), .O(n533) );
  ND2S U87 ( .I1(n521), .I2(n13), .O(n532) );
  ND2S U88 ( .I1(n530), .I2(n8), .O(n531) );
  ND2S U89 ( .I1(n499), .I2(n7), .O(n500) );
  ND2S U90 ( .I1(n491), .I2(n14), .O(n502) );
  ND2S U91 ( .I1(n15), .I2(n438), .O(n445) );
  ND2S U92 ( .I1(n483), .I2(n9), .O(n484) );
  ND2S U93 ( .I1(n615), .I2(n613), .O(n372) );
  ND2S U94 ( .I1(n634), .I2(n632), .O(n378) );
  ND2S U95 ( .I1(n621), .I2(n615), .O(n624) );
  ND2S U96 ( .I1(n653), .I2(n651), .O(n384) );
  ND2S U97 ( .I1(n615), .I2(n291), .O(n293) );
  ND2S U98 ( .I1(n640), .I2(n634), .O(n643) );
  ND2S U99 ( .I1(n653), .I2(n317), .O(n319) );
  ND2S U100 ( .I1(n659), .I2(n653), .O(n662) );
  ND2S U101 ( .I1(n634), .I2(n304), .O(n306) );
  ND2S U102 ( .I1(n8), .I2(n461), .O(n462) );
  ND2S U103 ( .I1(n696), .I2(n675), .O(n677) );
  ND2S U104 ( .I1(n703), .I2(n679), .O(n681) );
  ND2S U105 ( .I1(n689), .I2(n671), .O(n673) );
  ND2S U106 ( .I1(n7), .I2(n443), .O(n444) );
  ND2S U107 ( .I1(n515), .I2(n514), .O(n520) );
  ND2S U108 ( .I1(n506), .I2(n505), .O(n511) );
  ND2S U109 ( .I1(n631), .I2(n630), .O(n646) );
  ND2S U110 ( .I1(n496), .I2(n525), .O(n498) );
  ND2S U111 ( .I1(n468), .I2(n467), .O(n469) );
  ND2S U112 ( .I1(n650), .I2(n649), .O(n665) );
  ND2S U113 ( .I1(n474), .I2(n473), .O(n475) );
  ND2S U114 ( .I1(n524), .I2(n523), .O(n529) );
  ND2S U115 ( .I1(n488), .I2(n507), .O(n490) );
  ND2S U116 ( .I1(n612), .I2(n611), .O(n627) );
  ND2S U117 ( .I1(n28), .I2(n448), .O(n449) );
  ND2S U118 ( .I1(n480), .I2(n479), .O(n481) );
  ND2S U119 ( .I1(n492), .I2(n516), .O(n494) );
  ND2S U120 ( .I1(n86), .I2(n275), .O(n109) );
  ND2S U121 ( .I1(n258), .I2(n257), .O(n262) );
  ND2S U122 ( .I1(n266), .I2(n265), .O(n270) );
  ND2S U123 ( .I1(n274), .I2(n273), .O(n278) );
  ND2S U124 ( .I1(n57), .I2(n267), .O(n81) );
  ND2S U125 ( .I1(n394), .I2(n393), .O(n401) );
  ND2S U126 ( .I1(n599), .I2(n598), .O(n604) );
  ND2S U127 ( .I1(n550), .I2(n549), .O(n555) );
  ND2S U128 ( .I1(n333), .I2(n331), .O(n238) );
  ND2S U129 ( .I1(n346), .I2(n344), .O(n244) );
  ND2S U130 ( .I1(n359), .I2(n357), .O(n250) );
  ND2S U131 ( .I1(n559), .I2(n558), .O(n564) );
  ND2S U132 ( .I1(n27), .I2(n259), .O(n52) );
  ND2S U133 ( .I1(n317), .I2(n315), .O(n228) );
  ND2S U134 ( .I1(n553), .I2(n551), .O(n536) );
  ND2S U135 ( .I1(n370), .I2(n617), .O(n374) );
  ND2S U136 ( .I1(n376), .I2(n636), .O(n380) );
  ND2S U137 ( .I1(n382), .I2(n655), .O(n386) );
  ND2S U138 ( .I1(n562), .I2(n560), .O(n539) );
  ND2S U139 ( .I1(n571), .I2(n569), .O(n542) );
  ND2S U140 ( .I1(n405), .I2(n404), .O(n412) );
  ND2S U141 ( .I1(n416), .I2(n415), .O(n423) );
  ND2S U142 ( .I1(n329), .I2(n328), .O(n338) );
  ND2S U143 ( .I1(n330), .I2(n333), .O(n336) );
  ND2S U144 ( .I1(n342), .I2(n341), .O(n351) );
  ND2S U145 ( .I1(n343), .I2(n346), .O(n349) );
  ND2S U146 ( .I1(n568), .I2(n567), .O(n573) );
  ND2S U147 ( .I1(n355), .I2(n354), .O(n364) );
  ND2S U148 ( .I1(n356), .I2(n359), .O(n362) );
  ND2S U149 ( .I1(n291), .I2(n289), .O(n220) );
  ND2S U150 ( .I1(n590), .I2(n589), .O(n595) );
  ND2S U151 ( .I1(n304), .I2(n302), .O(n224) );
  ND2S U152 ( .I1(n581), .I2(n580), .O(n586) );
  AN2 U153 ( .I1(n142), .I2(n141), .O(n687) );
  AN2 U154 ( .I1(n175), .I2(n174), .O(n694) );
  ND2S U155 ( .I1(n312), .I2(n311), .O(n321) );
  ND2S U156 ( .I1(n286), .I2(n285), .O(n295) );
  AN2 U157 ( .I1(n208), .I2(n207), .O(n701) );
  ND2S U158 ( .I1(n299), .I2(n298), .O(n308) );
  INV2 U159 ( .I(n706), .O(n7) );
  OR2T U160 ( .I1(n4), .I2(n82), .O(n699) );
  OR2T U161 ( .I1(n5), .I2(n53), .O(n692) );
  ND2S U162 ( .I1(n458), .I2(n457), .O(n459) );
  ND2S U163 ( .I1(n453), .I2(n452), .O(n454) );
  INV1S U164 ( .I(i_pconv_17), .O(n203) );
  OR2 U165 ( .I1(i_pconv_1), .I2(n30), .O(n28) );
  ND2S U166 ( .I1(n87), .I2(i_pconv_1), .O(n457) );
  INV1S U167 ( .I(i_pconv_17), .O(n137) );
  INV1S U168 ( .I(i_pconv_17), .O(n170) );
  ND2S U169 ( .I1(n59), .I2(i_pconv_1), .O(n452) );
  ND2S U170 ( .I1(i_pconv_468), .I2(i_pconv[936]), .O(n440) );
  ND2S U171 ( .I1(i_pconv_54), .I2(i_pconv_108), .O(n430) );
  BUF1 U172 ( .I(i_pconv_1), .O(n2) );
  ND2S U173 ( .I1(i_pconv_198), .I2(i_pconv_396), .O(n435) );
  INV2 U174 ( .I(n22), .O(n3) );
  XOR2H U175 ( .I1(n4), .I2(n5), .O(n706) );
  INV1S U176 ( .I(n58), .O(n18) );
  FA1 U177 ( .A(i_pconv[952]), .B(i_pconv_484), .CI(i_pconv_16), .CO(n205), 
        .S(n195) );
  OAI12H U178 ( .B1(n406), .B2(n80), .A1(n79), .O(n169) );
  OAI12H U179 ( .B1(n417), .B2(n108), .A1(n107), .O(n202) );
  NR2P U180 ( .I1(n255), .I2(n23), .O(o_conv[11]) );
  NR2P U181 ( .I1(n233), .I2(n23), .O(o_conv[13]) );
  NR2P U182 ( .I1(n1), .I2(n326), .O(o_conv[14]) );
  NR2P U183 ( .I1(n23), .I2(n369), .O(o_conv[12]) );
  AN3 U184 ( .I1(n710), .I2(n709), .I3(n708), .O(n24) );
  NR2 U185 ( .I1(n25), .I2(n26), .O(n260) );
  INV1S U186 ( .I(n260), .O(n27) );
  ND2 U187 ( .I1(n26), .I2(n25), .O(n259) );
  NR2 U188 ( .I1(n36), .I2(n37), .O(n504) );
  FA1S U189 ( .A(i_pconv_201), .B(i_pconv_399), .CI(i_pconv_3), .CO(n36), .S(
        n35) );
  NR2 U190 ( .I1(n34), .I2(n35), .O(n508) );
  NR2 U191 ( .I1(n504), .I2(n508), .O(n39) );
  FA1S U192 ( .A(i_pconv_200), .B(i_pconv_398), .CI(i_pconv_2), .CO(n34), .S(
        n33) );
  NR2 U193 ( .I1(n32), .I2(n33), .O(n466) );
  HA1 U194 ( .A(i_pconv_199), .B(i_pconv_397), .C(n32), .S(n30) );
  NR2 U195 ( .I1(i_pconv_396), .I2(i_pconv_198), .O(n434) );
  INV1S U196 ( .I(i_pconv_0), .O(n29) );
  OAI12HS U197 ( .B1(n434), .B2(n29), .A1(n435), .O(n450) );
  ND2 U198 ( .I1(n30), .I2(n2), .O(n448) );
  INV1S U199 ( .I(n448), .O(n31) );
  AOI12HS U200 ( .B1(n28), .B2(n450), .A1(n31), .O(n470) );
  ND2 U201 ( .I1(n33), .I2(n32), .O(n467) );
  OAI12HS U202 ( .B1(n466), .B2(n470), .A1(n467), .O(n489) );
  ND2 U203 ( .I1(n35), .I2(n34), .O(n507) );
  ND2 U204 ( .I1(n37), .I2(n36), .O(n505) );
  OAI12HS U205 ( .B1(n504), .B2(n507), .A1(n505), .O(n38) );
  AOI12HS U206 ( .B1(n39), .B2(n489), .A1(n38), .O(n395) );
  NR2 U207 ( .I1(n42), .I2(n43), .O(n548) );
  FA1S U208 ( .A(i_pconv_202), .B(i_pconv_400), .CI(i_pconv_4), .CO(n40), .S(
        n37) );
  FA1S U209 ( .A(i_pconv_203), .B(i_pconv_401), .CI(i_pconv_5), .CO(n42), .S(
        n41) );
  NR2 U210 ( .I1(n40), .I2(n41), .O(n535) );
  NR2 U211 ( .I1(n548), .I2(n535), .O(n583) );
  FA1S U212 ( .A(i_pconv_206), .B(i_pconv_404), .CI(i_pconv_8), .CO(n25), .S(
        n47) );
  NR2 U213 ( .I1(n46), .I2(n47), .O(n392) );
  FA1S U214 ( .A(i_pconv_204), .B(i_pconv_402), .CI(i_pconv_6), .CO(n44), .S(
        n43) );
  FA1S U215 ( .A(i_pconv_205), .B(i_pconv_403), .CI(i_pconv_7), .CO(n46), .S(
        n45) );
  NR2 U216 ( .I1(n44), .I2(n45), .O(n579) );
  NR2 U217 ( .I1(n392), .I2(n579), .O(n49) );
  ND2 U218 ( .I1(n41), .I2(n40), .O(n551) );
  ND2 U219 ( .I1(n43), .I2(n42), .O(n549) );
  OAI12HS U220 ( .B1(n548), .B2(n551), .A1(n549), .O(n582) );
  ND2 U221 ( .I1(n45), .I2(n44), .O(n580) );
  ND2 U222 ( .I1(n47), .I2(n46), .O(n393) );
  OAI12HS U223 ( .B1(n392), .B2(n580), .A1(n393), .O(n48) );
  AOI12HS U224 ( .B1(n49), .B2(n582), .A1(n48), .O(n50) );
  XOR2HS U225 ( .I1(n52), .I2(n19), .O(n54) );
  NR2 U226 ( .I1(n55), .I2(n56), .O(n268) );
  INV1S U227 ( .I(n268), .O(n57) );
  ND2 U228 ( .I1(n56), .I2(n55), .O(n267) );
  NR2 U229 ( .I1(n65), .I2(n66), .O(n513) );
  FA1S U230 ( .A(i_pconv_57), .B(i_pconv_111), .CI(i_pconv_3), .CO(n65), .S(
        n64) );
  NR2 U231 ( .I1(n63), .I2(n64), .O(n517) );
  NR2 U232 ( .I1(n513), .I2(n517), .O(n68) );
  FA1S U233 ( .A(i_pconv_56), .B(i_pconv_110), .CI(i_pconv_2), .CO(n63), .S(
        n62) );
  NR2 U234 ( .I1(n61), .I2(n62), .O(n472) );
  HA1 U235 ( .A(i_pconv_55), .B(i_pconv_109), .C(n61), .S(n59) );
  OR2 U236 ( .I1(n2), .I2(n59), .O(n453) );
  NR2 U237 ( .I1(i_pconv_108), .I2(i_pconv_54), .O(n429) );
  OAI12HS U238 ( .B1(n429), .B2(n58), .A1(n430), .O(n455) );
  INV1S U239 ( .I(n452), .O(n60) );
  AOI12HS U240 ( .B1(n453), .B2(n455), .A1(n60), .O(n476) );
  ND2 U241 ( .I1(n62), .I2(n61), .O(n473) );
  OAI12HS U242 ( .B1(n472), .B2(n476), .A1(n473), .O(n493) );
  ND2 U243 ( .I1(n64), .I2(n63), .O(n516) );
  ND2 U244 ( .I1(n66), .I2(n65), .O(n514) );
  OAI12HS U245 ( .B1(n513), .B2(n516), .A1(n514), .O(n67) );
  AOI12HS U246 ( .B1(n68), .B2(n493), .A1(n67), .O(n406) );
  NR2 U247 ( .I1(n71), .I2(n72), .O(n557) );
  FA1S U248 ( .A(i_pconv_58), .B(i_pconv_112), .CI(i_pconv_4), .CO(n69), .S(
        n66) );
  FA1S U249 ( .A(i_pconv_59), .B(i_pconv_113), .CI(i_pconv_5), .CO(n71), .S(
        n70) );
  NR2 U250 ( .I1(n69), .I2(n70), .O(n538) );
  NR2 U251 ( .I1(n557), .I2(n538), .O(n592) );
  FA1S U252 ( .A(i_pconv_62), .B(i_pconv_116), .CI(i_pconv_8), .CO(n55), .S(
        n76) );
  NR2 U253 ( .I1(n75), .I2(n76), .O(n403) );
  FA1S U254 ( .A(i_pconv_60), .B(i_pconv_114), .CI(i_pconv_6), .CO(n73), .S(
        n72) );
  FA1S U255 ( .A(i_pconv_61), .B(i_pconv_115), .CI(i_pconv_7), .CO(n75), .S(
        n74) );
  NR2 U256 ( .I1(n73), .I2(n74), .O(n588) );
  NR2 U257 ( .I1(n403), .I2(n588), .O(n78) );
  ND2 U258 ( .I1(n70), .I2(n69), .O(n560) );
  ND2 U259 ( .I1(n72), .I2(n71), .O(n558) );
  OAI12HS U260 ( .B1(n557), .B2(n560), .A1(n558), .O(n591) );
  ND2 U261 ( .I1(n74), .I2(n73), .O(n589) );
  ND2 U262 ( .I1(n76), .I2(n75), .O(n404) );
  OAI12HS U263 ( .B1(n403), .B2(n589), .A1(n404), .O(n77) );
  AOI12HS U264 ( .B1(n78), .B2(n591), .A1(n77), .O(n79) );
  XOR2HS U265 ( .I1(n81), .I2(n20), .O(n83) );
  INV2 U266 ( .I(n5), .O(n82) );
  NR2 U267 ( .I1(n84), .I2(n85), .O(n276) );
  INV1S U268 ( .I(n276), .O(n86) );
  ND2 U269 ( .I1(n85), .I2(n84), .O(n275) );
  NR2 U270 ( .I1(n93), .I2(n94), .O(n522) );
  FA1S U271 ( .A(i_pconv[939]), .B(i_pconv_471), .CI(i_pconv_3), .CO(n93), .S(
        n92) );
  NR2 U272 ( .I1(n91), .I2(n92), .O(n526) );
  NR2 U273 ( .I1(n522), .I2(n526), .O(n96) );
  FA1S U274 ( .A(i_pconv[938]), .B(i_pconv_470), .CI(i_pconv_2), .CO(n91), .S(
        n90) );
  NR2 U275 ( .I1(n89), .I2(n90), .O(n478) );
  HA1 U276 ( .A(i_pconv_469), .B(i_pconv[937]), .C(n89), .S(n87) );
  OR2 U277 ( .I1(i_pconv_1), .I2(n87), .O(n458) );
  NR2 U278 ( .I1(i_pconv[936]), .I2(i_pconv_468), .O(n439) );
  OAI12HS U279 ( .B1(n439), .B2(n58), .A1(n440), .O(n460) );
  INV1S U280 ( .I(n457), .O(n88) );
  AOI12HS U281 ( .B1(n458), .B2(n460), .A1(n88), .O(n482) );
  ND2 U282 ( .I1(n90), .I2(n89), .O(n479) );
  OAI12HS U283 ( .B1(n478), .B2(n482), .A1(n479), .O(n497) );
  ND2 U284 ( .I1(n92), .I2(n91), .O(n525) );
  ND2 U285 ( .I1(n94), .I2(n93), .O(n523) );
  OAI12HS U286 ( .B1(n522), .B2(n525), .A1(n523), .O(n95) );
  AOI12HS U287 ( .B1(n96), .B2(n497), .A1(n95), .O(n417) );
  NR2 U288 ( .I1(n99), .I2(n100), .O(n566) );
  FA1S U289 ( .A(i_pconv[940]), .B(i_pconv_472), .CI(i_pconv_4), .CO(n97), .S(
        n94) );
  FA1S U290 ( .A(i_pconv[941]), .B(i_pconv_473), .CI(i_pconv_5), .CO(n99), .S(
        n98) );
  NR2 U291 ( .I1(n97), .I2(n98), .O(n541) );
  NR2 U292 ( .I1(n566), .I2(n541), .O(n601) );
  FA1S U293 ( .A(i_pconv[944]), .B(i_pconv_476), .CI(i_pconv_8), .CO(n84), .S(
        n104) );
  NR2 U294 ( .I1(n103), .I2(n104), .O(n414) );
  FA1S U295 ( .A(i_pconv[942]), .B(i_pconv_474), .CI(i_pconv_6), .CO(n101), 
        .S(n100) );
  FA1S U296 ( .A(i_pconv[943]), .B(i_pconv_475), .CI(i_pconv_7), .CO(n103), 
        .S(n102) );
  NR2 U297 ( .I1(n101), .I2(n102), .O(n597) );
  NR2 U298 ( .I1(n414), .I2(n597), .O(n106) );
  ND2 U299 ( .I1(n98), .I2(n97), .O(n569) );
  ND2 U300 ( .I1(n100), .I2(n99), .O(n567) );
  OAI12HS U301 ( .B1(n566), .B2(n569), .A1(n567), .O(n600) );
  ND2 U302 ( .I1(n102), .I2(n101), .O(n598) );
  ND2 U303 ( .I1(n104), .I2(n103), .O(n415) );
  OAI12HS U304 ( .B1(n414), .B2(n598), .A1(n415), .O(n105) );
  AOI12HS U305 ( .B1(n106), .B2(n600), .A1(n105), .O(n107) );
  XOR2HS U306 ( .I1(n109), .I2(n21), .O(n110) );
  AN3 U307 ( .I1(n113), .I2(n112), .I3(n111), .O(n217) );
  NR2 U308 ( .I1(n124), .I2(n125), .O(n284) );
  FA1S U309 ( .A(i_pconv_211), .B(i_pconv_409), .CI(i_pconv_13), .CO(n124), 
        .S(n123) );
  NR2 U310 ( .I1(n122), .I2(n123), .O(n218) );
  NR2 U311 ( .I1(n284), .I2(n218), .O(n613) );
  NR2 U312 ( .I1(n128), .I2(n129), .O(n610) );
  FA1S U313 ( .A(i_pconv_212), .B(i_pconv_410), .CI(i_pconv_14), .CO(n126), 
        .S(n125) );
  FA1S U314 ( .A(i_pconv_213), .B(i_pconv_411), .CI(i_pconv_15), .CO(n128), 
        .S(n127) );
  NR2 U315 ( .I1(n126), .I2(n127), .O(n618) );
  NR2 U316 ( .I1(n610), .I2(n618), .O(n131) );
  ND2 U317 ( .I1(n613), .I2(n131), .O(n133) );
  FA1S U318 ( .A(i_pconv_207), .B(i_pconv_405), .CI(i_pconv_9), .CO(n114), .S(
        n26) );
  NR2 U319 ( .I1(n114), .I2(n115), .O(n256) );
  NR2 U320 ( .I1(n256), .I2(n260), .O(n330) );
  FA1S U321 ( .A(i_pconv_210), .B(i_pconv_408), .CI(i_pconv_12), .CO(n122), 
        .S(n119) );
  NR2 U322 ( .I1(n118), .I2(n119), .O(n327) );
  FA1S U323 ( .A(i_pconv_208), .B(i_pconv_406), .CI(i_pconv_10), .CO(n116), 
        .S(n115) );
  FA1S U324 ( .A(i_pconv_209), .B(i_pconv_407), .CI(i_pconv_11), .CO(n118), 
        .S(n117) );
  NR2 U325 ( .I1(n116), .I2(n117), .O(n234) );
  NR2 U326 ( .I1(n327), .I2(n234), .O(n121) );
  ND2 U327 ( .I1(n330), .I2(n121), .O(n287) );
  NR2 U328 ( .I1(n133), .I2(n287), .O(n135) );
  ND2 U329 ( .I1(n115), .I2(n114), .O(n257) );
  OAI12HS U330 ( .B1(n256), .B2(n259), .A1(n257), .O(n334) );
  ND2 U331 ( .I1(n117), .I2(n116), .O(n331) );
  ND2 U332 ( .I1(n119), .I2(n118), .O(n328) );
  OAI12HS U333 ( .B1(n327), .B2(n331), .A1(n328), .O(n120) );
  AOI12HS U334 ( .B1(n121), .B2(n334), .A1(n120), .O(n288) );
  ND2 U335 ( .I1(n123), .I2(n122), .O(n289) );
  ND2 U336 ( .I1(n125), .I2(n124), .O(n285) );
  OAI12HS U337 ( .B1(n284), .B2(n289), .A1(n285), .O(n616) );
  ND2 U338 ( .I1(n127), .I2(n126), .O(n617) );
  ND2 U339 ( .I1(n129), .I2(n128), .O(n611) );
  OAI12HS U340 ( .B1(n610), .B2(n617), .A1(n611), .O(n130) );
  AOI12HS U341 ( .B1(n131), .B2(n616), .A1(n130), .O(n132) );
  OAI12HS U342 ( .B1(n288), .B2(n133), .A1(n132), .O(n134) );
  AOI12HS U343 ( .B1(n136), .B2(n135), .A1(n134), .O(n672) );
  INV1S U344 ( .I(i_pconv_413), .O(n138) );
  OR2 U345 ( .I1(n139), .I2(n140), .O(n689) );
  INV1S U346 ( .I(i_pconv_215), .O(n141) );
  FA1S U347 ( .A(i_pconv_215), .B(n138), .CI(n137), .CO(n142), .S(n140) );
  OR2 U348 ( .I1(n141), .I2(n142), .O(n143) );
  ND2 U349 ( .I1(n689), .I2(n143), .O(n145) );
  ND2 U350 ( .I1(n140), .I2(n139), .O(n671) );
  INV1S U351 ( .I(n671), .O(n688) );
  AOI12HS U352 ( .B1(n143), .B2(n688), .A1(n687), .O(n144) );
  NR2 U353 ( .I1(n157), .I2(n158), .O(n297) );
  FA1S U354 ( .A(i_pconv_67), .B(i_pconv_121), .CI(i_pconv_13), .CO(n157), .S(
        n156) );
  NR2 U355 ( .I1(n155), .I2(n156), .O(n222) );
  NR2 U356 ( .I1(n297), .I2(n222), .O(n632) );
  NR2 U357 ( .I1(n161), .I2(n162), .O(n629) );
  FA1S U358 ( .A(i_pconv_68), .B(i_pconv_122), .CI(i_pconv_14), .CO(n159), .S(
        n158) );
  FA1S U359 ( .A(i_pconv_69), .B(i_pconv_123), .CI(i_pconv_15), .CO(n161), .S(
        n160) );
  NR2 U360 ( .I1(n159), .I2(n160), .O(n637) );
  NR2 U361 ( .I1(n629), .I2(n637), .O(n164) );
  ND2 U362 ( .I1(n632), .I2(n164), .O(n166) );
  FA1S U363 ( .A(i_pconv_63), .B(i_pconv_117), .CI(i_pconv_9), .CO(n147), .S(
        n56) );
  NR2 U364 ( .I1(n147), .I2(n148), .O(n264) );
  NR2 U365 ( .I1(n264), .I2(n268), .O(n343) );
  FA1S U366 ( .A(i_pconv_66), .B(i_pconv_120), .CI(i_pconv_12), .CO(n155), .S(
        n152) );
  NR2 U367 ( .I1(n151), .I2(n152), .O(n340) );
  FA1S U368 ( .A(i_pconv_64), .B(i_pconv_118), .CI(i_pconv_10), .CO(n149), .S(
        n148) );
  FA1S U369 ( .A(i_pconv_65), .B(i_pconv_119), .CI(i_pconv_11), .CO(n151), .S(
        n150) );
  NR2 U370 ( .I1(n149), .I2(n150), .O(n240) );
  NR2 U371 ( .I1(n340), .I2(n240), .O(n154) );
  ND2 U372 ( .I1(n343), .I2(n154), .O(n300) );
  NR2 U373 ( .I1(n166), .I2(n300), .O(n168) );
  ND2 U374 ( .I1(n148), .I2(n147), .O(n265) );
  OAI12HS U375 ( .B1(n264), .B2(n267), .A1(n265), .O(n347) );
  ND2 U376 ( .I1(n150), .I2(n149), .O(n344) );
  ND2 U377 ( .I1(n152), .I2(n151), .O(n341) );
  OAI12HS U378 ( .B1(n340), .B2(n344), .A1(n341), .O(n153) );
  AOI12HS U379 ( .B1(n154), .B2(n347), .A1(n153), .O(n301) );
  ND2 U380 ( .I1(n156), .I2(n155), .O(n302) );
  ND2 U381 ( .I1(n158), .I2(n157), .O(n298) );
  OAI12HS U382 ( .B1(n297), .B2(n302), .A1(n298), .O(n635) );
  ND2 U383 ( .I1(n160), .I2(n159), .O(n636) );
  ND2 U384 ( .I1(n162), .I2(n161), .O(n630) );
  OAI12HS U385 ( .B1(n629), .B2(n636), .A1(n630), .O(n163) );
  AOI12HS U386 ( .B1(n164), .B2(n635), .A1(n163), .O(n165) );
  OAI12HS U387 ( .B1(n301), .B2(n166), .A1(n165), .O(n167) );
  AOI12HS U388 ( .B1(n169), .B2(n168), .A1(n167), .O(n676) );
  INV1S U389 ( .I(i_pconv_125), .O(n171) );
  OR2 U390 ( .I1(n172), .I2(n173), .O(n696) );
  INV1S U391 ( .I(i_pconv_71), .O(n174) );
  FA1S U392 ( .A(i_pconv_71), .B(n171), .CI(n170), .CO(n175), .S(n173) );
  OR2 U393 ( .I1(n174), .I2(n175), .O(n176) );
  ND2 U394 ( .I1(n696), .I2(n176), .O(n178) );
  ND2 U395 ( .I1(n173), .I2(n172), .O(n675) );
  INV1S U396 ( .I(n675), .O(n695) );
  AOI12HS U397 ( .B1(n176), .B2(n695), .A1(n694), .O(n177) );
  NR2 U398 ( .I1(n190), .I2(n191), .O(n310) );
  FA1S U399 ( .A(i_pconv[949]), .B(i_pconv_481), .CI(i_pconv_13), .CO(n190), 
        .S(n189) );
  NR2 U400 ( .I1(n188), .I2(n189), .O(n226) );
  NR2 U401 ( .I1(n310), .I2(n226), .O(n651) );
  NR2 U402 ( .I1(n194), .I2(n195), .O(n648) );
  FA1S U403 ( .A(i_pconv[950]), .B(i_pconv_482), .CI(i_pconv_14), .CO(n192), 
        .S(n191) );
  FA1S U404 ( .A(i_pconv[951]), .B(i_pconv_483), .CI(i_pconv_15), .CO(n194), 
        .S(n193) );
  NR2 U405 ( .I1(n192), .I2(n193), .O(n656) );
  NR2 U406 ( .I1(n648), .I2(n656), .O(n197) );
  ND2 U407 ( .I1(n651), .I2(n197), .O(n199) );
  FA1S U408 ( .A(i_pconv[945]), .B(i_pconv_477), .CI(i_pconv_9), .CO(n180), 
        .S(n85) );
  NR2 U409 ( .I1(n180), .I2(n181), .O(n272) );
  NR2 U410 ( .I1(n272), .I2(n276), .O(n356) );
  FA1S U411 ( .A(i_pconv[948]), .B(i_pconv_480), .CI(i_pconv_12), .CO(n188), 
        .S(n185) );
  NR2 U412 ( .I1(n184), .I2(n185), .O(n353) );
  FA1S U413 ( .A(i_pconv[946]), .B(i_pconv_478), .CI(i_pconv_10), .CO(n182), 
        .S(n181) );
  FA1S U414 ( .A(i_pconv[947]), .B(i_pconv_479), .CI(i_pconv_11), .CO(n184), 
        .S(n183) );
  NR2 U415 ( .I1(n182), .I2(n183), .O(n246) );
  NR2 U416 ( .I1(n353), .I2(n246), .O(n187) );
  ND2 U417 ( .I1(n356), .I2(n187), .O(n313) );
  NR2 U418 ( .I1(n199), .I2(n313), .O(n201) );
  ND2 U419 ( .I1(n181), .I2(n180), .O(n273) );
  OAI12HS U420 ( .B1(n272), .B2(n275), .A1(n273), .O(n360) );
  ND2 U421 ( .I1(n183), .I2(n182), .O(n357) );
  ND2 U422 ( .I1(n185), .I2(n184), .O(n354) );
  OAI12HS U423 ( .B1(n353), .B2(n357), .A1(n354), .O(n186) );
  AOI12HS U424 ( .B1(n187), .B2(n360), .A1(n186), .O(n314) );
  ND2 U425 ( .I1(n189), .I2(n188), .O(n315) );
  ND2 U426 ( .I1(n191), .I2(n190), .O(n311) );
  OAI12HS U427 ( .B1(n310), .B2(n315), .A1(n311), .O(n654) );
  ND2 U428 ( .I1(n193), .I2(n192), .O(n655) );
  ND2 U429 ( .I1(n195), .I2(n194), .O(n649) );
  OAI12HS U430 ( .B1(n648), .B2(n655), .A1(n649), .O(n196) );
  AOI12HS U431 ( .B1(n197), .B2(n654), .A1(n196), .O(n198) );
  OAI12HS U432 ( .B1(n314), .B2(n199), .A1(n198), .O(n200) );
  AOI12HS U433 ( .B1(n202), .B2(n201), .A1(n200), .O(n680) );
  INV1S U434 ( .I(i_pconv[953]), .O(n204) );
  OR2 U435 ( .I1(n205), .I2(n206), .O(n703) );
  INV1S U436 ( .I(i_pconv_485), .O(n207) );
  FA1S U437 ( .A(i_pconv_485), .B(n204), .CI(n203), .CO(n208), .S(n206) );
  OR2 U438 ( .I1(n207), .I2(n208), .O(n209) );
  ND2 U439 ( .I1(n703), .I2(n209), .O(n211) );
  ND2 U440 ( .I1(n206), .I2(n205), .O(n679) );
  INV1S U441 ( .I(n679), .O(n702) );
  AOI12HS U442 ( .B1(n209), .B2(n702), .A1(n701), .O(n210) );
  NR2 U443 ( .I1(n217), .I2(n711), .O(o_conv[9]) );
  INV1S U444 ( .I(n218), .O(n291) );
  OAI12HS U445 ( .B1(n625), .B2(n287), .A1(n288), .O(n219) );
  XNR2HS U446 ( .I1(n220), .I2(n219), .O(n221) );
  INV1S U447 ( .I(n222), .O(n304) );
  OAI12HS U448 ( .B1(n644), .B2(n300), .A1(n301), .O(n223) );
  XNR2HS U449 ( .I1(n224), .I2(n223), .O(n225) );
  INV1S U450 ( .I(n226), .O(n317) );
  OAI12HS U451 ( .B1(n663), .B2(n313), .A1(n314), .O(n227) );
  XNR2HS U452 ( .I1(n228), .I2(n227), .O(n229) );
  AN3 U453 ( .I1(n232), .I2(n231), .I3(n230), .O(n233) );
  INV1S U454 ( .I(n234), .O(n333) );
  INV1S U455 ( .I(n330), .O(n236) );
  INV1S U456 ( .I(n334), .O(n235) );
  OAI12HS U457 ( .B1(n625), .B2(n236), .A1(n235), .O(n237) );
  XNR2HS U458 ( .I1(n238), .I2(n237), .O(n239) );
  INV1S U459 ( .I(n240), .O(n346) );
  INV1S U460 ( .I(n343), .O(n242) );
  INV1S U461 ( .I(n347), .O(n241) );
  OAI12HS U462 ( .B1(n644), .B2(n242), .A1(n241), .O(n243) );
  XNR2HS U463 ( .I1(n244), .I2(n243), .O(n245) );
  INV1S U464 ( .I(n246), .O(n359) );
  INV1S U465 ( .I(n356), .O(n248) );
  INV1S U466 ( .I(n360), .O(n247) );
  OAI12HS U467 ( .B1(n663), .B2(n248), .A1(n247), .O(n249) );
  XNR2HS U468 ( .I1(n250), .I2(n249), .O(n251) );
  AN3 U469 ( .I1(n254), .I2(n253), .I3(n252), .O(n255) );
  INV1S U470 ( .I(n256), .O(n258) );
  OAI12HS U471 ( .B1(n625), .B2(n260), .A1(n259), .O(n261) );
  XNR2HS U472 ( .I1(n262), .I2(n261), .O(n263) );
  INV1S U473 ( .I(n264), .O(n266) );
  OAI12HS U474 ( .B1(n644), .B2(n268), .A1(n267), .O(n269) );
  XNR2HS U475 ( .I1(n270), .I2(n269), .O(n271) );
  INV1S U476 ( .I(n272), .O(n274) );
  OAI12HS U477 ( .B1(n663), .B2(n276), .A1(n275), .O(n277) );
  XNR2HS U478 ( .I1(n278), .I2(n277), .O(n279) );
  AN3 U479 ( .I1(n282), .I2(n281), .I3(n280), .O(n283) );
  NR2 U480 ( .I1(n283), .I2(n711), .O(o_conv[10]) );
  INV1S U481 ( .I(n284), .O(n286) );
  INV1S U482 ( .I(n287), .O(n615) );
  INV1S U483 ( .I(n288), .O(n622) );
  INV1S U484 ( .I(n289), .O(n290) );
  AOI12HS U485 ( .B1(n622), .B2(n291), .A1(n290), .O(n292) );
  OAI12HS U486 ( .B1(n19), .B2(n293), .A1(n292), .O(n294) );
  XNR2HS U487 ( .I1(n295), .I2(n294), .O(n296) );
  INV1S U488 ( .I(n297), .O(n299) );
  INV1S U489 ( .I(n300), .O(n634) );
  INV1S U490 ( .I(n301), .O(n641) );
  INV1S U491 ( .I(n302), .O(n303) );
  AOI12HS U492 ( .B1(n641), .B2(n304), .A1(n303), .O(n305) );
  OAI12HS U493 ( .B1(n20), .B2(n306), .A1(n305), .O(n307) );
  XNR2HS U494 ( .I1(n308), .I2(n307), .O(n309) );
  INV1S U495 ( .I(n310), .O(n312) );
  INV1S U496 ( .I(n313), .O(n653) );
  INV1S U497 ( .I(n314), .O(n660) );
  INV1S U498 ( .I(n315), .O(n316) );
  AOI12HS U499 ( .B1(n660), .B2(n317), .A1(n316), .O(n318) );
  OAI12HS U500 ( .B1(n21), .B2(n319), .A1(n318), .O(n320) );
  XNR2HS U501 ( .I1(n321), .I2(n320), .O(n322) );
  AN3 U502 ( .I1(n325), .I2(n324), .I3(n323), .O(n326) );
  INV1S U503 ( .I(n327), .O(n329) );
  INV1S U504 ( .I(n331), .O(n332) );
  AOI12HS U505 ( .B1(n334), .B2(n333), .A1(n332), .O(n335) );
  OAI12HS U506 ( .B1(n19), .B2(n336), .A1(n335), .O(n337) );
  XNR2HS U507 ( .I1(n338), .I2(n337), .O(n339) );
  INV1S U508 ( .I(n340), .O(n342) );
  INV1S U509 ( .I(n344), .O(n345) );
  AOI12HS U510 ( .B1(n347), .B2(n346), .A1(n345), .O(n348) );
  OAI12HS U511 ( .B1(n20), .B2(n349), .A1(n348), .O(n350) );
  XNR2HS U512 ( .I1(n351), .I2(n350), .O(n352) );
  INV1S U513 ( .I(n353), .O(n355) );
  INV1S U514 ( .I(n357), .O(n358) );
  AOI12HS U515 ( .B1(n360), .B2(n359), .A1(n358), .O(n361) );
  OAI12HS U516 ( .B1(n21), .B2(n362), .A1(n361), .O(n363) );
  XNR2HS U517 ( .I1(n364), .I2(n363), .O(n365) );
  AN3 U518 ( .I1(n368), .I2(n367), .I3(n366), .O(n369) );
  INV1S U519 ( .I(n618), .O(n370) );
  AOI12HS U520 ( .B1(n622), .B2(n613), .A1(n616), .O(n371) );
  OAI12HS U521 ( .B1(n625), .B2(n372), .A1(n371), .O(n373) );
  XNR2HS U522 ( .I1(n374), .I2(n373), .O(n375) );
  INV1S U523 ( .I(n637), .O(n376) );
  AOI12HS U524 ( .B1(n641), .B2(n632), .A1(n635), .O(n377) );
  OAI12HS U525 ( .B1(n644), .B2(n378), .A1(n377), .O(n379) );
  XNR2HS U526 ( .I1(n380), .I2(n379), .O(n381) );
  INV1S U527 ( .I(n656), .O(n382) );
  AOI12HS U528 ( .B1(n660), .B2(n651), .A1(n654), .O(n383) );
  OAI12HS U529 ( .B1(n663), .B2(n384), .A1(n383), .O(n385) );
  XNR2HS U530 ( .I1(n386), .I2(n385), .O(n387) );
  AN3 U531 ( .I1(n390), .I2(n389), .I3(n388), .O(n391) );
  NR2 U532 ( .I1(n391), .I2(n711), .O(o_conv[15]) );
  INV1S U533 ( .I(n392), .O(n394) );
  INV1S U534 ( .I(n395), .O(n584) );
  INV1S U535 ( .I(n583), .O(n396) );
  NR2 U536 ( .I1(n579), .I2(n396), .O(n399) );
  INV1S U537 ( .I(n582), .O(n397) );
  OAI12HS U538 ( .B1(n397), .B2(n579), .A1(n580), .O(n398) );
  AOI12HS U539 ( .B1(n584), .B2(n399), .A1(n398), .O(n400) );
  XOR2HS U540 ( .I1(n401), .I2(n400), .O(n402) );
  INV1S U541 ( .I(n403), .O(n405) );
  INV1S U542 ( .I(n406), .O(n593) );
  INV1S U543 ( .I(n592), .O(n407) );
  NR2 U544 ( .I1(n588), .I2(n407), .O(n410) );
  INV1S U545 ( .I(n591), .O(n408) );
  OAI12HS U546 ( .B1(n408), .B2(n588), .A1(n589), .O(n409) );
  AOI12HS U547 ( .B1(n593), .B2(n410), .A1(n409), .O(n411) );
  XOR2HS U548 ( .I1(n412), .I2(n411), .O(n413) );
  INV1S U549 ( .I(n414), .O(n416) );
  INV1S U550 ( .I(n417), .O(n602) );
  INV1S U551 ( .I(n601), .O(n418) );
  NR2 U552 ( .I1(n597), .I2(n418), .O(n421) );
  INV1S U553 ( .I(n600), .O(n419) );
  OAI12HS U554 ( .B1(n419), .B2(n597), .A1(n598), .O(n420) );
  AOI12HS U555 ( .B1(n602), .B2(n421), .A1(n420), .O(n422) );
  XOR2HS U556 ( .I1(n423), .I2(n422), .O(n424) );
  AN3 U557 ( .I1(n427), .I2(n426), .I3(n425), .O(n428) );
  NR2 U558 ( .I1(n428), .I2(n711), .O(o_conv[8]) );
  INV1S U559 ( .I(n429), .O(n431) );
  ND2S U560 ( .I1(n431), .I2(n430), .O(n432) );
  XNR2HS U561 ( .I1(n18), .I2(n432), .O(n433) );
  INV1S U562 ( .I(n434), .O(n436) );
  ND2S U563 ( .I1(n436), .I2(n435), .O(n437) );
  XNR2HS U564 ( .I1(n18), .I2(n437), .O(n438) );
  INV1S U565 ( .I(n439), .O(n441) );
  ND2S U566 ( .I1(n441), .I2(n440), .O(n442) );
  XNR2HS U567 ( .I1(n18), .I2(n442), .O(n443) );
  AN3 U568 ( .I1(n446), .I2(n445), .I3(n444), .O(n447) );
  NR2 U569 ( .I1(n447), .I2(n711), .O(o_conv[0]) );
  XNR2HS U570 ( .I1(n450), .I2(n449), .O(n451) );
  ND2 U571 ( .I1(n10), .I2(n451), .O(n464) );
  XNR2HS U572 ( .I1(n455), .I2(n454), .O(n456) );
  XNR2HS U573 ( .I1(n460), .I2(n459), .O(n461) );
  AN3 U574 ( .I1(n464), .I2(n463), .I3(n462), .O(n465) );
  NR2 U575 ( .I1(n465), .I2(n3), .O(o_conv[1]) );
  INV1S U576 ( .I(n466), .O(n468) );
  XOR2HS U577 ( .I1(n470), .I2(n469), .O(n471) );
  ND2 U578 ( .I1(n471), .I2(n11), .O(n486) );
  INV1S U579 ( .I(n472), .O(n474) );
  XOR2HS U580 ( .I1(n476), .I2(n475), .O(n477) );
  ND2 U581 ( .I1(n477), .I2(n13), .O(n485) );
  INV1S U582 ( .I(n478), .O(n480) );
  XOR2HS U583 ( .I1(n482), .I2(n481), .O(n483) );
  AN3 U584 ( .I1(n486), .I2(n485), .I3(n484), .O(n487) );
  NR2 U585 ( .I1(n487), .I2(n23), .O(o_conv[2]) );
  INV1S U586 ( .I(n508), .O(n488) );
  INV1S U587 ( .I(n489), .O(n509) );
  XOR2HS U588 ( .I1(n490), .I2(n509), .O(n491) );
  INV1S U589 ( .I(n517), .O(n492) );
  INV1S U590 ( .I(n493), .O(n518) );
  XOR2HS U591 ( .I1(n494), .I2(n518), .O(n495) );
  ND2 U592 ( .I1(n495), .I2(n12), .O(n501) );
  INV1S U593 ( .I(n526), .O(n496) );
  INV1S U594 ( .I(n497), .O(n527) );
  XOR2HS U595 ( .I1(n498), .I2(n527), .O(n499) );
  AN3 U596 ( .I1(n502), .I2(n501), .I3(n500), .O(n503) );
  NR2 U597 ( .I1(n503), .I2(n3), .O(o_conv[3]) );
  INV1S U598 ( .I(n504), .O(n506) );
  OAI12HS U599 ( .B1(n509), .B2(n508), .A1(n507), .O(n510) );
  XNR2HS U600 ( .I1(n511), .I2(n510), .O(n512) );
  INV1S U601 ( .I(n513), .O(n515) );
  OAI12HS U602 ( .B1(n518), .B2(n517), .A1(n516), .O(n519) );
  XNR2HS U603 ( .I1(n520), .I2(n519), .O(n521) );
  INV1S U604 ( .I(n522), .O(n524) );
  OAI12HS U605 ( .B1(n527), .B2(n526), .A1(n525), .O(n528) );
  XNR2HS U606 ( .I1(n529), .I2(n528), .O(n530) );
  AN3 U607 ( .I1(n533), .I2(n532), .I3(n531), .O(n534) );
  NR2 U608 ( .I1(n534), .I2(n23), .O(o_conv[4]) );
  INV1S U609 ( .I(n535), .O(n553) );
  XNR2HS U610 ( .I1(n536), .I2(n584), .O(n537) );
  INV1S U611 ( .I(n538), .O(n562) );
  XNR2HS U612 ( .I1(n539), .I2(n593), .O(n540) );
  INV1S U613 ( .I(n541), .O(n571) );
  XNR2HS U614 ( .I1(n542), .I2(n602), .O(n543) );
  AN3 U615 ( .I1(n546), .I2(n545), .I3(n544), .O(n547) );
  NR2 U616 ( .I1(n547), .I2(n3), .O(o_conv[5]) );
  INV1S U617 ( .I(n548), .O(n550) );
  INV1S U618 ( .I(n551), .O(n552) );
  AOI12HS U619 ( .B1(n584), .B2(n553), .A1(n552), .O(n554) );
  XOR2HS U620 ( .I1(n555), .I2(n554), .O(n556) );
  INV1S U621 ( .I(n557), .O(n559) );
  INV1S U622 ( .I(n560), .O(n561) );
  AOI12HS U623 ( .B1(n593), .B2(n562), .A1(n561), .O(n563) );
  XOR2HS U624 ( .I1(n564), .I2(n563), .O(n565) );
  INV1S U625 ( .I(n566), .O(n568) );
  INV1S U626 ( .I(n569), .O(n570) );
  AOI12HS U627 ( .B1(n602), .B2(n571), .A1(n570), .O(n572) );
  XOR2HS U628 ( .I1(n573), .I2(n572), .O(n574) );
  AN3 U629 ( .I1(n577), .I2(n576), .I3(n575), .O(n578) );
  NR2 U630 ( .I1(n578), .I2(n23), .O(o_conv[6]) );
  INV1S U631 ( .I(n579), .O(n581) );
  AOI12HS U632 ( .B1(n584), .B2(n583), .A1(n582), .O(n585) );
  XOR2HS U633 ( .I1(n586), .I2(n585), .O(n587) );
  INV1S U634 ( .I(n588), .O(n590) );
  AOI12HS U635 ( .B1(n593), .B2(n592), .A1(n591), .O(n594) );
  XOR2HS U636 ( .I1(n595), .I2(n594), .O(n596) );
  INV1S U637 ( .I(n597), .O(n599) );
  AOI12HS U638 ( .B1(n602), .B2(n601), .A1(n600), .O(n603) );
  XOR2HS U639 ( .I1(n604), .I2(n603), .O(n605) );
  AN3 U640 ( .I1(n608), .I2(n607), .I3(n606), .O(n609) );
  NR2 U641 ( .I1(n609), .I2(n1), .O(o_conv[7]) );
  INV1S U642 ( .I(n610), .O(n612) );
  INV1S U643 ( .I(n613), .O(n614) );
  NR2 U644 ( .I1(n618), .I2(n614), .O(n621) );
  INV1S U645 ( .I(n616), .O(n619) );
  OAI12HS U646 ( .B1(n619), .B2(n618), .A1(n617), .O(n620) );
  AOI12HS U647 ( .B1(n622), .B2(n621), .A1(n620), .O(n623) );
  OAI12HS U648 ( .B1(n19), .B2(n624), .A1(n623), .O(n626) );
  XNR2HS U649 ( .I1(n627), .I2(n626), .O(n628) );
  INV1S U650 ( .I(n629), .O(n631) );
  INV1S U651 ( .I(n632), .O(n633) );
  NR2 U652 ( .I1(n637), .I2(n633), .O(n640) );
  INV1S U653 ( .I(n635), .O(n638) );
  OAI12HS U654 ( .B1(n638), .B2(n637), .A1(n636), .O(n639) );
  AOI12HS U655 ( .B1(n641), .B2(n640), .A1(n639), .O(n642) );
  OAI12HS U656 ( .B1(n20), .B2(n643), .A1(n642), .O(n645) );
  XNR2HS U657 ( .I1(n646), .I2(n645), .O(n647) );
  INV1S U658 ( .I(n648), .O(n650) );
  INV1S U659 ( .I(n651), .O(n652) );
  NR2 U660 ( .I1(n656), .I2(n652), .O(n659) );
  INV1S U661 ( .I(n654), .O(n657) );
  OAI12HS U662 ( .B1(n657), .B2(n656), .A1(n655), .O(n658) );
  AOI12HS U663 ( .B1(n660), .B2(n659), .A1(n658), .O(n661) );
  OAI12HS U664 ( .B1(n21), .B2(n662), .A1(n661), .O(n664) );
  XNR2HS U665 ( .I1(n665), .I2(n664), .O(n666) );
  NR2 U666 ( .I1(n711), .I2(n670), .O(o_conv[16]) );
  INV1S U667 ( .I(n672), .O(n690) );
  XNR2HS U668 ( .I1(n673), .I2(n690), .O(n674) );
  INV1S U669 ( .I(n676), .O(n697) );
  XNR2HS U670 ( .I1(n677), .I2(n697), .O(n678) );
  INV1S U671 ( .I(n680), .O(n704) );
  XNR2HS U672 ( .I1(n681), .I2(n704), .O(n682) );
  AN3 U673 ( .I1(n685), .I2(n684), .I3(n683), .O(n686) );
  NR2 U674 ( .I1(n686), .I2(n1), .O(o_conv[17]) );
  AOI12HS U675 ( .B1(n690), .B2(n689), .A1(n688), .O(n691) );
  XOR2HS U676 ( .I1(n687), .I2(n691), .O(n693) );
  AOI12HS U677 ( .B1(n697), .B2(n696), .A1(n695), .O(n698) );
  XOR2HS U678 ( .I1(n694), .I2(n698), .O(n700) );
  AOI12HS U679 ( .B1(n704), .B2(n703), .A1(n702), .O(n705) );
  XOR2HS U680 ( .I1(n701), .I2(n705), .O(n707) );
endmodule


module conv_0 ( layer_num, i_pconv, o_conv );
  input [1:0] layer_num;
  input [953:0] i_pconv;
  output [20:0] o_conv;
  wire   i_pconv_485, i_pconv_484, i_pconv_483, i_pconv_482, i_pconv_481,
         i_pconv_480, i_pconv_479, i_pconv_478, i_pconv_477, i_pconv_476,
         i_pconv_475, i_pconv_474, i_pconv_473, i_pconv_472, i_pconv_471,
         i_pconv_470, i_pconv_469, i_pconv_468, i_pconv_413, i_pconv_412,
         i_pconv_411, i_pconv_410, i_pconv_409, i_pconv_408, i_pconv_407,
         i_pconv_406, i_pconv_405, i_pconv_404, i_pconv_403, i_pconv_402,
         i_pconv_401, i_pconv_400, i_pconv_399, i_pconv_398, i_pconv_397,
         i_pconv_396, i_pconv_215, i_pconv_214, i_pconv_213, i_pconv_212,
         i_pconv_211, i_pconv_210, i_pconv_209, i_pconv_208, i_pconv_207,
         i_pconv_206, i_pconv_205, i_pconv_204, i_pconv_203, i_pconv_202,
         i_pconv_201, i_pconv_200, i_pconv_199, i_pconv_198, i_pconv_125,
         i_pconv_124, i_pconv_123, i_pconv_122, i_pconv_121, i_pconv_120,
         i_pconv_119, i_pconv_118, i_pconv_117, i_pconv_116, i_pconv_115,
         i_pconv_114, i_pconv_113, i_pconv_112, i_pconv_111, i_pconv_110,
         i_pconv_109, i_pconv_108, i_pconv_71, i_pconv_70, i_pconv_69,
         i_pconv_68, i_pconv_67, i_pconv_66, i_pconv_65, i_pconv_64,
         i_pconv_63, i_pconv_62, i_pconv_61, i_pconv_60, i_pconv_59,
         i_pconv_58, i_pconv_57, i_pconv_56, i_pconv_55, i_pconv_54,
         i_pconv_16, i_pconv_15, i_pconv_14, i_pconv_13, i_pconv_12,
         i_pconv_11, i_pconv_10, i_pconv_9, i_pconv_8, i_pconv_7, i_pconv_6,
         i_pconv_5, i_pconv_4, i_pconv_3, i_pconv_2, i_pconv_1, i_pconv_0, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460, n461, n462, n463,
         n464, n465, n466, n467, n468, n469, n470, n471, n472, n473, n474,
         n475, n476, n477, n478, n479, n480, n481, n482, n483, n484, n485,
         n486, n487, n488, n489, n490, n491, n492, n493, n494, n495, n496,
         n497, n498, n499, n500, n501, n502, n503, n504, n505, n506, n507,
         n508, n509, n510, n511, n512, n513, n514, n515, n516, n517, n518,
         n519, n520, n521, n522, n523, n524, n525, n526, n527, n528, n529,
         n530, n531, n532, n533, n534, n535, n536, n537, n538, n539, n540,
         n541, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709;
  assign i_pconv_485 = i_pconv[485];
  assign i_pconv_484 = i_pconv[484];
  assign i_pconv_483 = i_pconv[483];
  assign i_pconv_482 = i_pconv[482];
  assign i_pconv_481 = i_pconv[481];
  assign i_pconv_480 = i_pconv[480];
  assign i_pconv_479 = i_pconv[479];
  assign i_pconv_478 = i_pconv[478];
  assign i_pconv_477 = i_pconv[477];
  assign i_pconv_476 = i_pconv[476];
  assign i_pconv_475 = i_pconv[475];
  assign i_pconv_474 = i_pconv[474];
  assign i_pconv_473 = i_pconv[473];
  assign i_pconv_472 = i_pconv[472];
  assign i_pconv_471 = i_pconv[471];
  assign i_pconv_470 = i_pconv[470];
  assign i_pconv_469 = i_pconv[469];
  assign i_pconv_468 = i_pconv[468];
  assign i_pconv_413 = i_pconv[413];
  assign i_pconv_412 = i_pconv[412];
  assign i_pconv_411 = i_pconv[411];
  assign i_pconv_410 = i_pconv[410];
  assign i_pconv_409 = i_pconv[409];
  assign i_pconv_408 = i_pconv[408];
  assign i_pconv_407 = i_pconv[407];
  assign i_pconv_406 = i_pconv[406];
  assign i_pconv_405 = i_pconv[405];
  assign i_pconv_404 = i_pconv[404];
  assign i_pconv_403 = i_pconv[403];
  assign i_pconv_402 = i_pconv[402];
  assign i_pconv_401 = i_pconv[401];
  assign i_pconv_400 = i_pconv[400];
  assign i_pconv_399 = i_pconv[399];
  assign i_pconv_398 = i_pconv[398];
  assign i_pconv_397 = i_pconv[397];
  assign i_pconv_396 = i_pconv[396];
  assign i_pconv_215 = i_pconv[215];
  assign i_pconv_214 = i_pconv[214];
  assign i_pconv_213 = i_pconv[213];
  assign i_pconv_212 = i_pconv[212];
  assign i_pconv_211 = i_pconv[211];
  assign i_pconv_210 = i_pconv[210];
  assign i_pconv_209 = i_pconv[209];
  assign i_pconv_208 = i_pconv[208];
  assign i_pconv_207 = i_pconv[207];
  assign i_pconv_206 = i_pconv[206];
  assign i_pconv_205 = i_pconv[205];
  assign i_pconv_204 = i_pconv[204];
  assign i_pconv_203 = i_pconv[203];
  assign i_pconv_202 = i_pconv[202];
  assign i_pconv_201 = i_pconv[201];
  assign i_pconv_200 = i_pconv[200];
  assign i_pconv_199 = i_pconv[199];
  assign i_pconv_198 = i_pconv[198];
  assign i_pconv_125 = i_pconv[125];
  assign i_pconv_124 = i_pconv[124];
  assign i_pconv_123 = i_pconv[123];
  assign i_pconv_122 = i_pconv[122];
  assign i_pconv_121 = i_pconv[121];
  assign i_pconv_120 = i_pconv[120];
  assign i_pconv_119 = i_pconv[119];
  assign i_pconv_118 = i_pconv[118];
  assign i_pconv_117 = i_pconv[117];
  assign i_pconv_116 = i_pconv[116];
  assign i_pconv_115 = i_pconv[115];
  assign i_pconv_114 = i_pconv[114];
  assign i_pconv_113 = i_pconv[113];
  assign i_pconv_112 = i_pconv[112];
  assign i_pconv_111 = i_pconv[111];
  assign i_pconv_110 = i_pconv[110];
  assign i_pconv_109 = i_pconv[109];
  assign i_pconv_108 = i_pconv[108];
  assign i_pconv_71 = i_pconv[71];
  assign i_pconv_70 = i_pconv[70];
  assign i_pconv_69 = i_pconv[69];
  assign i_pconv_68 = i_pconv[68];
  assign i_pconv_67 = i_pconv[67];
  assign i_pconv_66 = i_pconv[66];
  assign i_pconv_65 = i_pconv[65];
  assign i_pconv_64 = i_pconv[64];
  assign i_pconv_63 = i_pconv[63];
  assign i_pconv_62 = i_pconv[62];
  assign i_pconv_61 = i_pconv[61];
  assign i_pconv_60 = i_pconv[60];
  assign i_pconv_59 = i_pconv[59];
  assign i_pconv_58 = i_pconv[58];
  assign i_pconv_57 = i_pconv[57];
  assign i_pconv_56 = i_pconv[56];
  assign i_pconv_55 = i_pconv[55];
  assign i_pconv_54 = i_pconv[54];
  assign i_pconv_16 = i_pconv[16];
  assign i_pconv_15 = i_pconv[15];
  assign i_pconv_14 = i_pconv[14];
  assign i_pconv_13 = i_pconv[13];
  assign i_pconv_12 = i_pconv[12];
  assign i_pconv_11 = i_pconv[11];
  assign i_pconv_10 = i_pconv[10];
  assign i_pconv_9 = i_pconv[9];
  assign i_pconv_8 = i_pconv[8];
  assign i_pconv_7 = i_pconv[7];
  assign i_pconv_6 = i_pconv[6];
  assign i_pconv_5 = i_pconv[5];
  assign i_pconv_4 = i_pconv[4];
  assign i_pconv_3 = i_pconv[3];
  assign i_pconv_2 = i_pconv[2];
  assign i_pconv_1 = i_pconv[1];
  assign i_pconv_0 = i_pconv[0];

  INV2 U2 ( .I(n4), .O(n3) );
  NR2 U3 ( .I1(n575), .I2(n5), .O(o_conv[6]) );
  INV1S U4 ( .I(n703), .O(n21) );
  INV1S U5 ( .I(n689), .O(n7) );
  INV1S U6 ( .I(n696), .O(n11) );
  INV1S U7 ( .I(n689), .O(n9) );
  INV1S U8 ( .I(n696), .O(n13) );
  INV1S U9 ( .I(n689), .O(n6) );
  INV1S U10 ( .I(n696), .O(n10) );
  FA1S U11 ( .A(i_pconv_70), .B(i_pconv_124), .CI(i_pconv_16), .CO(n170), .S(
        n160) );
  INV1S U12 ( .I(n703), .O(n20) );
  INV1S U13 ( .I(n703), .O(n18) );
  AN3S U14 ( .I1(n707), .I2(n706), .I3(n705), .O(n709) );
  BUF3 U15 ( .I(n214), .O(n708) );
  AN3S U16 ( .I1(n369), .I2(n368), .I3(n367), .O(n370) );
  AN3S U17 ( .I1(n666), .I2(n665), .I3(n664), .O(n667) );
  INV1 U18 ( .I(n200), .O(n660) );
  INV1 U19 ( .I(n167), .O(n641) );
  INV3CK U20 ( .I(n134), .O(n622) );
  INV1 U21 ( .I(n134), .O(n15) );
  OAI12HS U22 ( .B1(n239), .B2(n47), .A1(n46), .O(n134) );
  INV1S U23 ( .I(layer_num[1]), .O(n79) );
  INV1S U24 ( .I(layer_num[0]), .O(n49) );
  NR2P U25 ( .I1(n606), .I2(n3), .O(o_conv[7]) );
  NR2P U26 ( .I1(n544), .I2(n3), .O(o_conv[8]) );
  NR2 U27 ( .I1(n3), .I2(n709), .O(o_conv[18]) );
  ND2S U28 ( .I1(n697), .I2(n12), .O(n706) );
  INV2 U29 ( .I(n214), .O(n4) );
  ND2 U30 ( .I1(n456), .I2(n21), .O(n457) );
  ND2P U31 ( .I1(n144), .I2(n6), .O(n213) );
  ND2P U32 ( .I1(n177), .I2(n10), .O(n212) );
  OA12S U33 ( .B1(n673), .B2(n176), .A1(n175), .O(n177) );
  OA12P U34 ( .B1(n669), .B2(n143), .A1(n142), .O(n144) );
  OA12S U35 ( .B1(n677), .B2(n209), .A1(n208), .O(n210) );
  ND2S U36 ( .I1(n12), .I2(n258), .O(n271) );
  ND2 U37 ( .I1(n589), .I2(n75), .O(n77) );
  ND2 U38 ( .I1(n580), .I2(n45), .O(n47) );
  ND2 U39 ( .I1(n598), .I2(n104), .O(n106) );
  INV2 U40 ( .I(n696), .O(n12) );
  OR2P U41 ( .I1(layer_num[0]), .I2(n79), .O(n696) );
  OR2P U42 ( .I1(layer_num[1]), .I2(n49), .O(n689) );
  INV1S U43 ( .I(i_pconv_0), .O(n55) );
  NR2P U44 ( .I1(n3), .I2(n404), .O(o_conv[12]) );
  INV2 U45 ( .I(n4), .O(n2) );
  NR2P U46 ( .I1(n460), .I2(n5), .O(o_conv[13]) );
  NR2P U47 ( .I1(n435), .I2(n5), .O(o_conv[11]) );
  ND2S U48 ( .I1(n690), .I2(n8), .O(n707) );
  BUF6 U49 ( .I(n214), .O(n5) );
  ND2S U50 ( .I1(n704), .I2(n20), .O(n705) );
  ND2S U51 ( .I1(n413), .I2(n9), .O(n434) );
  ND2S U52 ( .I1(n422), .I2(n13), .O(n433) );
  ND2S U53 ( .I1(n506), .I2(n19), .O(n507) );
  ND2S U54 ( .I1(n500), .I2(n12), .O(n508) );
  ND2S U55 ( .I1(n494), .I2(n8), .O(n509) );
  ND2S U56 ( .I1(n366), .I2(n20), .O(n367) );
  ND2S U57 ( .I1(n356), .I2(n12), .O(n368) );
  ND2S U58 ( .I1(n346), .I2(n8), .O(n369) );
  ND2S U59 ( .I1(n663), .I2(n19), .O(n664) );
  ND2S U60 ( .I1(n400), .I2(n21), .O(n401) );
  ND2S U61 ( .I1(n390), .I2(n11), .O(n402) );
  ND2S U62 ( .I1(n380), .I2(n7), .O(n403) );
  ND2S U63 ( .I1(n644), .I2(n11), .O(n665) );
  ND2S U64 ( .I1(n625), .I2(n7), .O(n666) );
  ND2S U65 ( .I1(n484), .I2(n20), .O(n485) );
  ND2S U66 ( .I1(n476), .I2(n13), .O(n486) );
  ND2S U67 ( .I1(n679), .I2(n21), .O(n680) );
  ND2S U68 ( .I1(n675), .I2(n13), .O(n681) );
  ND2S U69 ( .I1(n671), .I2(n9), .O(n682) );
  ND2S U70 ( .I1(n468), .I2(n9), .O(n487) );
  ND2S U71 ( .I1(n431), .I2(n20), .O(n432) );
  ND2S U72 ( .I1(n50), .I2(n7), .O(n111) );
  ND2S U73 ( .I1(n80), .I2(n11), .O(n110) );
  ND2S U74 ( .I1(n108), .I2(n21), .O(n109) );
  ND2P U75 ( .I1(n210), .I2(n18), .O(n211) );
  ND2S U76 ( .I1(n584), .I2(n9), .O(n605) );
  ND2S U77 ( .I1(n593), .I2(n13), .O(n604) );
  ND2S U78 ( .I1(n602), .I2(n20), .O(n603) );
  ND2S U79 ( .I1(n520), .I2(n8), .O(n543) );
  ND2S U80 ( .I1(n530), .I2(n12), .O(n542) );
  ND2S U81 ( .I1(n540), .I2(n19), .O(n541) );
  ND2S U82 ( .I1(n553), .I2(n7), .O(n574) );
  ND2S U83 ( .I1(n562), .I2(n11), .O(n573) );
  ND2S U84 ( .I1(n571), .I2(n21), .O(n572) );
  ND2S U85 ( .I1(n241), .I2(n9), .O(n252) );
  ND2S U86 ( .I1(n245), .I2(n13), .O(n251) );
  ND2S U87 ( .I1(n249), .I2(n20), .O(n250) );
  ND2S U88 ( .I1(n297), .I2(n6), .O(n318) );
  ND2S U89 ( .I1(n306), .I2(n10), .O(n317) );
  ND2S U90 ( .I1(n315), .I2(n18), .O(n316) );
  ND2S U91 ( .I1(n276), .I2(n7), .O(n287) );
  ND2S U92 ( .I1(n280), .I2(n11), .O(n286) );
  ND2S U93 ( .I1(n284), .I2(n21), .O(n285) );
  ND2S U94 ( .I1(n9), .I2(n323), .O(n335) );
  ND2S U95 ( .I1(n13), .I2(n327), .O(n334) );
  ND2S U96 ( .I1(n221), .I2(n8), .O(n236) );
  ND2S U97 ( .I1(n612), .I2(n437), .O(n343) );
  ND2S U98 ( .I1(n631), .I2(n444), .O(n353) );
  ND2S U99 ( .I1(n233), .I2(n19), .O(n234) );
  ND2S U100 ( .I1(n656), .I2(n650), .O(n659) );
  ND2S U101 ( .I1(n650), .I2(n451), .O(n363) );
  ND2S U102 ( .I1(n612), .I2(n610), .O(n491) );
  ND2S U103 ( .I1(n637), .I2(n631), .O(n640) );
  ND2S U104 ( .I1(n650), .I2(n648), .O(n503) );
  ND2S U105 ( .I1(n686), .I2(n668), .O(n670) );
  ND2S U106 ( .I1(n618), .I2(n612), .O(n621) );
  ND2S U107 ( .I1(n693), .I2(n672), .O(n674) );
  ND2S U108 ( .I1(n631), .I2(n629), .O(n497) );
  ND2S U109 ( .I1(n700), .I2(n676), .O(n678) );
  ND2S U110 ( .I1(n19), .I2(n332), .O(n333) );
  ND2S U111 ( .I1(n8), .I2(n263), .O(n270) );
  ND2S U112 ( .I1(n19), .I2(n268), .O(n269) );
  AN2 U113 ( .I1(n173), .I2(n172), .O(n691) );
  AN2 U114 ( .I1(n140), .I2(n139), .O(n684) );
  AN2 U115 ( .I1(n206), .I2(n205), .O(n698) );
  ND2S U116 ( .I1(n523), .I2(n522), .O(n529) );
  ND2S U117 ( .I1(n556), .I2(n555), .O(n561) );
  ND2S U118 ( .I1(n533), .I2(n532), .O(n539) );
  ND2S U119 ( .I1(n513), .I2(n512), .O(n519) );
  ND2S U120 ( .I1(n547), .I2(n546), .O(n552) );
  ND2S U121 ( .I1(n277), .I2(n301), .O(n279) );
  ND2S U122 ( .I1(n281), .I2(n310), .O(n283) );
  ND2S U123 ( .I1(n218), .I2(n217), .O(n219) );
  ND2S U124 ( .I1(n224), .I2(n223), .O(n225) );
  ND2S U125 ( .I1(n230), .I2(n229), .O(n231) );
  ND2S U126 ( .I1(n565), .I2(n564), .O(n570) );
  ND2S U127 ( .I1(n550), .I2(n548), .O(n240) );
  ND2S U128 ( .I1(n559), .I2(n557), .O(n244) );
  ND2S U129 ( .I1(n568), .I2(n566), .O(n248) );
  ND2S U130 ( .I1(n25), .I2(n320), .O(n321) );
  ND2S U131 ( .I1(n54), .I2(n324), .O(n325) );
  ND2S U132 ( .I1(n291), .I2(n290), .O(n296) );
  ND2S U133 ( .I1(n300), .I2(n299), .O(n305) );
  ND2S U134 ( .I1(n309), .I2(n308), .O(n314) );
  ND2S U135 ( .I1(n273), .I2(n292), .O(n275) );
  ND2S U136 ( .I1(n339), .I2(n338), .O(n345) );
  ND2S U137 ( .I1(n425), .I2(n424), .O(n397) );
  ND2S U138 ( .I1(n393), .I2(n392), .O(n399) );
  ND2S U139 ( .I1(n416), .I2(n415), .O(n387) );
  ND2S U140 ( .I1(n383), .I2(n382), .O(n389) );
  ND2S U141 ( .I1(n407), .I2(n406), .O(n377) );
  ND2S U142 ( .I1(n373), .I2(n372), .O(n379) );
  ND2S U143 ( .I1(n479), .I2(n478), .O(n483) );
  ND2S U144 ( .I1(n471), .I2(n470), .O(n475) );
  ND2S U145 ( .I1(n463), .I2(n462), .O(n467) );
  ND2S U146 ( .I1(n83), .I2(n480), .O(n107) );
  ND2S U147 ( .I1(n53), .I2(n472), .O(n78) );
  ND2S U148 ( .I1(n24), .I2(n464), .O(n48) );
  ND2S U149 ( .I1(n495), .I2(n633), .O(n499) );
  ND2S U150 ( .I1(n489), .I2(n614), .O(n493) );
  ND2S U151 ( .I1(n359), .I2(n358), .O(n365) );
  ND2S U152 ( .I1(n349), .I2(n348), .O(n355) );
  ND2S U153 ( .I1(n501), .I2(n652), .O(n505) );
  ND2S U154 ( .I1(n578), .I2(n577), .O(n583) );
  ND2S U155 ( .I1(n587), .I2(n586), .O(n592) );
  ND2S U156 ( .I1(n596), .I2(n595), .O(n601) );
  ND2S U157 ( .I1(n424), .I2(n423), .O(n430) );
  ND2S U158 ( .I1(n415), .I2(n414), .O(n421) );
  ND2S U159 ( .I1(n406), .I2(n405), .O(n412) );
  ND2S U160 ( .I1(n647), .I2(n646), .O(n662) );
  ND2S U161 ( .I1(n628), .I2(n627), .O(n643) );
  ND2S U162 ( .I1(n609), .I2(n608), .O(n624) );
  INV1S U163 ( .I(i_pconv[17]), .O(n168) );
  INV1S U164 ( .I(i_pconv[17]), .O(n201) );
  INV1S U165 ( .I(i_pconv[17]), .O(n135) );
  ND2S U166 ( .I1(n329), .I2(n328), .O(n330) );
  OR2 U167 ( .I1(i_pconv_1), .I2(n26), .O(n25) );
  OR2 U168 ( .I1(i_pconv_1), .I2(n56), .O(n54) );
  INV2 U169 ( .I(n703), .O(n19) );
  ND2S U170 ( .I1(i_pconv_468), .I2(i_pconv[936]), .O(n265) );
  ND2S U171 ( .I1(i_pconv_198), .I2(i_pconv_396), .O(n260) );
  ND2S U172 ( .I1(i_pconv_54), .I2(i_pconv_108), .O(n255) );
  NR2P U173 ( .I1(n510), .I2(n2), .O(o_conv[15]) );
  NR2P U174 ( .I1(n215), .I2(n2), .O(o_conv[9]) );
  ND3HT U175 ( .I1(n213), .I2(n212), .I3(n211), .O(n214) );
  INV2 U176 ( .I(n689), .O(n8) );
  INV1S U177 ( .I(n55), .O(n14) );
  FA1 U178 ( .A(i_pconv[952]), .B(i_pconv_484), .CI(i_pconv_16), .CO(n203), 
        .S(n193) );
  FA1 U179 ( .A(i_pconv_214), .B(i_pconv_412), .CI(i_pconv_16), .CO(n137), .S(
        n127) );
  INV2 U180 ( .I(n167), .O(n16) );
  OAI12H U181 ( .B1(n243), .B2(n77), .A1(n76), .O(n167) );
  INV2 U182 ( .I(n200), .O(n17) );
  OAI12H U183 ( .B1(n247), .B2(n106), .A1(n105), .O(n200) );
  XOR2H U184 ( .I1(layer_num[0]), .I2(layer_num[1]), .O(n703) );
  NR2 U185 ( .I1(n22), .I2(n23), .O(n465) );
  INV1S U186 ( .I(n465), .O(n24) );
  ND2 U187 ( .I1(n23), .I2(n22), .O(n464) );
  NR2 U188 ( .I1(n32), .I2(n33), .O(n289) );
  FA1S U189 ( .A(i_pconv_201), .B(i_pconv_399), .CI(i_pconv_3), .CO(n32), .S(
        n31) );
  NR2 U190 ( .I1(n30), .I2(n31), .O(n293) );
  NR2 U191 ( .I1(n289), .I2(n293), .O(n35) );
  FA1S U192 ( .A(i_pconv_200), .B(i_pconv_398), .CI(i_pconv_2), .CO(n30), .S(
        n29) );
  NR2 U193 ( .I1(n28), .I2(n29), .O(n216) );
  HA1 U194 ( .A(i_pconv_199), .B(i_pconv_397), .C(n28), .S(n26) );
  NR2 U195 ( .I1(i_pconv_396), .I2(i_pconv_198), .O(n259) );
  OAI12HS U196 ( .B1(n259), .B2(n84), .A1(n260), .O(n322) );
  ND2 U197 ( .I1(n26), .I2(i_pconv_1), .O(n320) );
  INV1S U198 ( .I(n320), .O(n27) );
  AOI12HS U199 ( .B1(n25), .B2(n322), .A1(n27), .O(n220) );
  ND2 U200 ( .I1(n29), .I2(n28), .O(n217) );
  OAI12HS U201 ( .B1(n216), .B2(n220), .A1(n217), .O(n274) );
  ND2 U202 ( .I1(n31), .I2(n30), .O(n292) );
  ND2 U203 ( .I1(n33), .I2(n32), .O(n290) );
  OAI12HS U204 ( .B1(n289), .B2(n292), .A1(n290), .O(n34) );
  AOI12HS U205 ( .B1(n35), .B2(n274), .A1(n34), .O(n239) );
  NR2 U206 ( .I1(n38), .I2(n39), .O(n545) );
  FA1S U207 ( .A(i_pconv_202), .B(i_pconv_400), .CI(i_pconv_4), .CO(n36), .S(
        n33) );
  FA1S U208 ( .A(i_pconv_203), .B(i_pconv_401), .CI(i_pconv_5), .CO(n38), .S(
        n37) );
  NR2 U209 ( .I1(n36), .I2(n37), .O(n238) );
  NR2 U210 ( .I1(n545), .I2(n238), .O(n580) );
  FA1S U211 ( .A(i_pconv_206), .B(i_pconv_404), .CI(i_pconv_8), .CO(n22), .S(
        n43) );
  NR2 U212 ( .I1(n42), .I2(n43), .O(n511) );
  FA1S U213 ( .A(i_pconv_204), .B(i_pconv_402), .CI(i_pconv_6), .CO(n40), .S(
        n39) );
  FA1S U214 ( .A(i_pconv_205), .B(i_pconv_403), .CI(i_pconv_7), .CO(n42), .S(
        n41) );
  NR2 U215 ( .I1(n40), .I2(n41), .O(n576) );
  NR2 U216 ( .I1(n511), .I2(n576), .O(n45) );
  ND2 U217 ( .I1(n37), .I2(n36), .O(n548) );
  ND2 U218 ( .I1(n39), .I2(n38), .O(n546) );
  OAI12HS U219 ( .B1(n545), .B2(n548), .A1(n546), .O(n579) );
  ND2 U220 ( .I1(n41), .I2(n40), .O(n577) );
  ND2 U221 ( .I1(n43), .I2(n42), .O(n512) );
  OAI12HS U222 ( .B1(n511), .B2(n577), .A1(n512), .O(n44) );
  AOI12HS U223 ( .B1(n45), .B2(n579), .A1(n44), .O(n46) );
  XOR2HS U224 ( .I1(n48), .I2(n15), .O(n50) );
  NR2 U225 ( .I1(n51), .I2(n52), .O(n473) );
  INV1S U226 ( .I(n473), .O(n53) );
  ND2 U227 ( .I1(n52), .I2(n51), .O(n472) );
  NR2 U228 ( .I1(n62), .I2(n63), .O(n298) );
  FA1S U229 ( .A(i_pconv_57), .B(i_pconv_111), .CI(i_pconv_3), .CO(n62), .S(
        n61) );
  NR2 U230 ( .I1(n60), .I2(n61), .O(n302) );
  NR2 U231 ( .I1(n298), .I2(n302), .O(n65) );
  FA1S U232 ( .A(i_pconv_56), .B(i_pconv_110), .CI(i_pconv_2), .CO(n60), .S(
        n59) );
  NR2 U233 ( .I1(n58), .I2(n59), .O(n222) );
  HA1 U234 ( .A(i_pconv_55), .B(i_pconv_109), .C(n58), .S(n56) );
  NR2 U235 ( .I1(i_pconv_108), .I2(i_pconv_54), .O(n254) );
  OAI12HS U236 ( .B1(n254), .B2(n55), .A1(n255), .O(n326) );
  ND2 U237 ( .I1(n56), .I2(i_pconv_1), .O(n324) );
  INV1S U238 ( .I(n324), .O(n57) );
  AOI12HS U239 ( .B1(n54), .B2(n326), .A1(n57), .O(n226) );
  ND2 U240 ( .I1(n59), .I2(n58), .O(n223) );
  OAI12HS U241 ( .B1(n222), .B2(n226), .A1(n223), .O(n278) );
  ND2 U242 ( .I1(n61), .I2(n60), .O(n301) );
  ND2 U243 ( .I1(n63), .I2(n62), .O(n299) );
  OAI12HS U244 ( .B1(n298), .B2(n301), .A1(n299), .O(n64) );
  AOI12HS U245 ( .B1(n65), .B2(n278), .A1(n64), .O(n243) );
  NR2 U246 ( .I1(n68), .I2(n69), .O(n554) );
  FA1S U247 ( .A(i_pconv_58), .B(i_pconv_112), .CI(i_pconv_4), .CO(n66), .S(
        n63) );
  FA1S U248 ( .A(i_pconv_59), .B(i_pconv_113), .CI(i_pconv_5), .CO(n68), .S(
        n67) );
  NR2 U249 ( .I1(n66), .I2(n67), .O(n242) );
  NR2 U250 ( .I1(n554), .I2(n242), .O(n589) );
  FA1S U251 ( .A(i_pconv_62), .B(i_pconv_116), .CI(i_pconv_8), .CO(n51), .S(
        n73) );
  NR2 U252 ( .I1(n72), .I2(n73), .O(n521) );
  FA1S U253 ( .A(i_pconv_60), .B(i_pconv_114), .CI(i_pconv_6), .CO(n70), .S(
        n69) );
  FA1S U254 ( .A(i_pconv_61), .B(i_pconv_115), .CI(i_pconv_7), .CO(n72), .S(
        n71) );
  NR2 U255 ( .I1(n70), .I2(n71), .O(n585) );
  NR2 U256 ( .I1(n521), .I2(n585), .O(n75) );
  ND2 U257 ( .I1(n67), .I2(n66), .O(n557) );
  ND2 U258 ( .I1(n69), .I2(n68), .O(n555) );
  OAI12HS U259 ( .B1(n554), .B2(n557), .A1(n555), .O(n588) );
  ND2 U260 ( .I1(n71), .I2(n70), .O(n586) );
  ND2 U261 ( .I1(n73), .I2(n72), .O(n522) );
  OAI12HS U262 ( .B1(n521), .B2(n586), .A1(n522), .O(n74) );
  AOI12HS U263 ( .B1(n75), .B2(n588), .A1(n74), .O(n76) );
  XOR2HS U264 ( .I1(n78), .I2(n16), .O(n80) );
  NR2 U265 ( .I1(n81), .I2(n82), .O(n481) );
  INV1S U266 ( .I(n481), .O(n83) );
  ND2 U267 ( .I1(n82), .I2(n81), .O(n480) );
  NR2 U268 ( .I1(n91), .I2(n92), .O(n307) );
  FA1S U269 ( .A(i_pconv[939]), .B(i_pconv_471), .CI(i_pconv_3), .CO(n91), .S(
        n90) );
  NR2 U270 ( .I1(n89), .I2(n90), .O(n311) );
  NR2 U271 ( .I1(n307), .I2(n311), .O(n94) );
  FA1S U272 ( .A(i_pconv[938]), .B(i_pconv_470), .CI(i_pconv_2), .CO(n89), .S(
        n88) );
  NR2 U273 ( .I1(n87), .I2(n88), .O(n228) );
  HA1 U274 ( .A(i_pconv_469), .B(i_pconv[937]), .C(n87), .S(n85) );
  OR2 U275 ( .I1(i_pconv_1), .I2(n85), .O(n329) );
  NR2 U276 ( .I1(i_pconv[936]), .I2(i_pconv_468), .O(n264) );
  INV1S U277 ( .I(i_pconv_0), .O(n84) );
  OAI12HS U278 ( .B1(n264), .B2(n84), .A1(n265), .O(n331) );
  ND2 U279 ( .I1(n85), .I2(i_pconv_1), .O(n328) );
  INV1S U280 ( .I(n328), .O(n86) );
  AOI12HS U281 ( .B1(n329), .B2(n331), .A1(n86), .O(n232) );
  ND2 U282 ( .I1(n88), .I2(n87), .O(n229) );
  OAI12HS U283 ( .B1(n228), .B2(n232), .A1(n229), .O(n282) );
  ND2 U284 ( .I1(n90), .I2(n89), .O(n310) );
  ND2 U285 ( .I1(n92), .I2(n91), .O(n308) );
  OAI12HS U286 ( .B1(n307), .B2(n310), .A1(n308), .O(n93) );
  AOI12HS U287 ( .B1(n94), .B2(n282), .A1(n93), .O(n247) );
  NR2 U288 ( .I1(n97), .I2(n98), .O(n563) );
  FA1S U289 ( .A(i_pconv[940]), .B(i_pconv_472), .CI(i_pconv_4), .CO(n95), .S(
        n92) );
  FA1S U290 ( .A(i_pconv[941]), .B(i_pconv_473), .CI(i_pconv_5), .CO(n97), .S(
        n96) );
  NR2 U291 ( .I1(n95), .I2(n96), .O(n246) );
  NR2 U292 ( .I1(n563), .I2(n246), .O(n598) );
  FA1S U293 ( .A(i_pconv[944]), .B(i_pconv_476), .CI(i_pconv_8), .CO(n81), .S(
        n102) );
  NR2 U294 ( .I1(n101), .I2(n102), .O(n531) );
  FA1S U295 ( .A(i_pconv[942]), .B(i_pconv_474), .CI(i_pconv_6), .CO(n99), .S(
        n98) );
  FA1S U296 ( .A(i_pconv[943]), .B(i_pconv_475), .CI(i_pconv_7), .CO(n101), 
        .S(n100) );
  NR2 U297 ( .I1(n99), .I2(n100), .O(n594) );
  NR2 U298 ( .I1(n531), .I2(n594), .O(n104) );
  ND2 U299 ( .I1(n96), .I2(n95), .O(n566) );
  ND2 U300 ( .I1(n98), .I2(n97), .O(n564) );
  OAI12HS U301 ( .B1(n563), .B2(n566), .A1(n564), .O(n597) );
  ND2 U302 ( .I1(n100), .I2(n99), .O(n595) );
  ND2 U303 ( .I1(n102), .I2(n101), .O(n532) );
  OAI12HS U304 ( .B1(n531), .B2(n595), .A1(n532), .O(n103) );
  AOI12HS U305 ( .B1(n104), .B2(n597), .A1(n103), .O(n105) );
  XOR2HS U306 ( .I1(n107), .I2(n17), .O(n108) );
  AN3 U307 ( .I1(n111), .I2(n110), .I3(n109), .O(n215) );
  NR2 U308 ( .I1(n122), .I2(n123), .O(n337) );
  FA1S U309 ( .A(i_pconv_211), .B(i_pconv_409), .CI(i_pconv_13), .CO(n122), 
        .S(n121) );
  NR2 U310 ( .I1(n120), .I2(n121), .O(n340) );
  NR2 U311 ( .I1(n337), .I2(n340), .O(n610) );
  NR2 U312 ( .I1(n126), .I2(n127), .O(n607) );
  FA1S U313 ( .A(i_pconv_212), .B(i_pconv_410), .CI(i_pconv_14), .CO(n124), 
        .S(n123) );
  FA1S U314 ( .A(i_pconv_213), .B(i_pconv_411), .CI(i_pconv_15), .CO(n126), 
        .S(n125) );
  NR2 U315 ( .I1(n124), .I2(n125), .O(n615) );
  NR2 U316 ( .I1(n607), .I2(n615), .O(n129) );
  ND2 U317 ( .I1(n610), .I2(n129), .O(n131) );
  FA1S U318 ( .A(i_pconv_207), .B(i_pconv_405), .CI(i_pconv_9), .CO(n112), .S(
        n23) );
  NR2 U319 ( .I1(n112), .I2(n113), .O(n461) );
  NR2 U320 ( .I1(n461), .I2(n465), .O(n407) );
  FA1S U321 ( .A(i_pconv_210), .B(i_pconv_408), .CI(i_pconv_12), .CO(n120), 
        .S(n117) );
  NR2 U322 ( .I1(n116), .I2(n117), .O(n371) );
  FA1S U323 ( .A(i_pconv_208), .B(i_pconv_406), .CI(i_pconv_10), .CO(n114), 
        .S(n113) );
  FA1S U324 ( .A(i_pconv_209), .B(i_pconv_407), .CI(i_pconv_11), .CO(n116), 
        .S(n115) );
  NR2 U325 ( .I1(n114), .I2(n115), .O(n374) );
  NR2 U326 ( .I1(n371), .I2(n374), .O(n119) );
  ND2 U327 ( .I1(n407), .I2(n119), .O(n439) );
  NR2 U328 ( .I1(n131), .I2(n439), .O(n133) );
  ND2 U329 ( .I1(n113), .I2(n112), .O(n462) );
  OAI12HS U330 ( .B1(n461), .B2(n464), .A1(n462), .O(n408) );
  ND2 U331 ( .I1(n115), .I2(n114), .O(n405) );
  ND2 U332 ( .I1(n117), .I2(n116), .O(n372) );
  OAI12HS U333 ( .B1(n371), .B2(n405), .A1(n372), .O(n118) );
  AOI12HS U334 ( .B1(n119), .B2(n408), .A1(n118), .O(n438) );
  ND2 U335 ( .I1(n121), .I2(n120), .O(n436) );
  ND2 U336 ( .I1(n123), .I2(n122), .O(n338) );
  OAI12HS U337 ( .B1(n337), .B2(n436), .A1(n338), .O(n613) );
  ND2 U338 ( .I1(n125), .I2(n124), .O(n614) );
  ND2 U339 ( .I1(n127), .I2(n126), .O(n608) );
  OAI12HS U340 ( .B1(n607), .B2(n614), .A1(n608), .O(n128) );
  AOI12HS U341 ( .B1(n129), .B2(n613), .A1(n128), .O(n130) );
  OAI12HS U342 ( .B1(n438), .B2(n131), .A1(n130), .O(n132) );
  AOI12HS U343 ( .B1(n134), .B2(n133), .A1(n132), .O(n669) );
  INV1S U344 ( .I(i_pconv_413), .O(n136) );
  OR2 U345 ( .I1(n137), .I2(n138), .O(n686) );
  INV1S U346 ( .I(i_pconv_215), .O(n139) );
  FA1S U347 ( .A(i_pconv_215), .B(n136), .CI(n135), .CO(n140), .S(n138) );
  OR2 U348 ( .I1(n139), .I2(n140), .O(n141) );
  ND2 U349 ( .I1(n686), .I2(n141), .O(n143) );
  ND2 U350 ( .I1(n138), .I2(n137), .O(n668) );
  INV1S U351 ( .I(n668), .O(n685) );
  AOI12HS U352 ( .B1(n141), .B2(n685), .A1(n684), .O(n142) );
  NR2 U353 ( .I1(n155), .I2(n156), .O(n347) );
  FA1S U354 ( .A(i_pconv_67), .B(i_pconv_121), .CI(i_pconv_13), .CO(n155), .S(
        n154) );
  NR2 U355 ( .I1(n153), .I2(n154), .O(n350) );
  NR2 U356 ( .I1(n347), .I2(n350), .O(n629) );
  NR2 U357 ( .I1(n159), .I2(n160), .O(n626) );
  FA1S U358 ( .A(i_pconv_68), .B(i_pconv_122), .CI(i_pconv_14), .CO(n157), .S(
        n156) );
  FA1S U359 ( .A(i_pconv_69), .B(i_pconv_123), .CI(i_pconv_15), .CO(n159), .S(
        n158) );
  NR2 U360 ( .I1(n157), .I2(n158), .O(n634) );
  NR2 U361 ( .I1(n626), .I2(n634), .O(n162) );
  ND2 U362 ( .I1(n629), .I2(n162), .O(n164) );
  FA1S U363 ( .A(i_pconv_63), .B(i_pconv_117), .CI(i_pconv_9), .CO(n145), .S(
        n52) );
  NR2 U364 ( .I1(n145), .I2(n146), .O(n469) );
  NR2 U365 ( .I1(n469), .I2(n473), .O(n416) );
  FA1S U366 ( .A(i_pconv_66), .B(i_pconv_120), .CI(i_pconv_12), .CO(n153), .S(
        n150) );
  NR2 U367 ( .I1(n149), .I2(n150), .O(n381) );
  FA1S U368 ( .A(i_pconv_64), .B(i_pconv_118), .CI(i_pconv_10), .CO(n147), .S(
        n146) );
  FA1S U369 ( .A(i_pconv_65), .B(i_pconv_119), .CI(i_pconv_11), .CO(n149), .S(
        n148) );
  NR2 U370 ( .I1(n147), .I2(n148), .O(n384) );
  NR2 U371 ( .I1(n381), .I2(n384), .O(n152) );
  ND2 U372 ( .I1(n416), .I2(n152), .O(n446) );
  NR2 U373 ( .I1(n164), .I2(n446), .O(n166) );
  ND2 U374 ( .I1(n146), .I2(n145), .O(n470) );
  OAI12HS U375 ( .B1(n469), .B2(n472), .A1(n470), .O(n417) );
  ND2 U376 ( .I1(n148), .I2(n147), .O(n414) );
  ND2 U377 ( .I1(n150), .I2(n149), .O(n382) );
  OAI12HS U378 ( .B1(n381), .B2(n414), .A1(n382), .O(n151) );
  AOI12HS U379 ( .B1(n152), .B2(n417), .A1(n151), .O(n445) );
  ND2 U380 ( .I1(n154), .I2(n153), .O(n443) );
  ND2 U381 ( .I1(n156), .I2(n155), .O(n348) );
  OAI12HS U382 ( .B1(n347), .B2(n443), .A1(n348), .O(n632) );
  ND2 U383 ( .I1(n158), .I2(n157), .O(n633) );
  ND2 U384 ( .I1(n160), .I2(n159), .O(n627) );
  OAI12HS U385 ( .B1(n626), .B2(n633), .A1(n627), .O(n161) );
  AOI12HS U386 ( .B1(n162), .B2(n632), .A1(n161), .O(n163) );
  OAI12HS U387 ( .B1(n445), .B2(n164), .A1(n163), .O(n165) );
  AOI12HS U388 ( .B1(n167), .B2(n166), .A1(n165), .O(n673) );
  INV1S U389 ( .I(i_pconv_125), .O(n169) );
  OR2 U390 ( .I1(n170), .I2(n171), .O(n693) );
  INV1S U391 ( .I(i_pconv_71), .O(n172) );
  FA1S U392 ( .A(i_pconv_71), .B(n169), .CI(n168), .CO(n173), .S(n171) );
  OR2 U393 ( .I1(n172), .I2(n173), .O(n174) );
  ND2 U394 ( .I1(n693), .I2(n174), .O(n176) );
  ND2 U395 ( .I1(n171), .I2(n170), .O(n672) );
  INV1S U396 ( .I(n672), .O(n692) );
  AOI12HS U397 ( .B1(n174), .B2(n692), .A1(n691), .O(n175) );
  NR2 U398 ( .I1(n188), .I2(n189), .O(n357) );
  FA1S U399 ( .A(i_pconv[949]), .B(i_pconv_481), .CI(i_pconv_13), .CO(n188), 
        .S(n187) );
  NR2 U400 ( .I1(n186), .I2(n187), .O(n360) );
  NR2 U401 ( .I1(n357), .I2(n360), .O(n648) );
  NR2 U402 ( .I1(n192), .I2(n193), .O(n645) );
  FA1S U403 ( .A(i_pconv[950]), .B(i_pconv_482), .CI(i_pconv_14), .CO(n190), 
        .S(n189) );
  FA1S U404 ( .A(i_pconv[951]), .B(i_pconv_483), .CI(i_pconv_15), .CO(n192), 
        .S(n191) );
  NR2 U405 ( .I1(n190), .I2(n191), .O(n653) );
  NR2 U406 ( .I1(n645), .I2(n653), .O(n195) );
  ND2 U407 ( .I1(n648), .I2(n195), .O(n197) );
  FA1S U408 ( .A(i_pconv[945]), .B(i_pconv_477), .CI(i_pconv_9), .CO(n178), 
        .S(n82) );
  NR2 U409 ( .I1(n178), .I2(n179), .O(n477) );
  NR2 U410 ( .I1(n477), .I2(n481), .O(n425) );
  FA1S U411 ( .A(i_pconv[948]), .B(i_pconv_480), .CI(i_pconv_12), .CO(n186), 
        .S(n183) );
  NR2 U412 ( .I1(n182), .I2(n183), .O(n391) );
  FA1S U413 ( .A(i_pconv[946]), .B(i_pconv_478), .CI(i_pconv_10), .CO(n180), 
        .S(n179) );
  FA1S U414 ( .A(i_pconv[947]), .B(i_pconv_479), .CI(i_pconv_11), .CO(n182), 
        .S(n181) );
  NR2 U415 ( .I1(n180), .I2(n181), .O(n394) );
  NR2 U416 ( .I1(n391), .I2(n394), .O(n185) );
  ND2 U417 ( .I1(n425), .I2(n185), .O(n453) );
  NR2 U418 ( .I1(n197), .I2(n453), .O(n199) );
  ND2 U419 ( .I1(n179), .I2(n178), .O(n478) );
  OAI12HS U420 ( .B1(n477), .B2(n480), .A1(n478), .O(n426) );
  ND2 U421 ( .I1(n181), .I2(n180), .O(n423) );
  ND2 U422 ( .I1(n183), .I2(n182), .O(n392) );
  OAI12HS U423 ( .B1(n391), .B2(n423), .A1(n392), .O(n184) );
  AOI12HS U424 ( .B1(n185), .B2(n426), .A1(n184), .O(n452) );
  ND2 U425 ( .I1(n187), .I2(n186), .O(n450) );
  ND2 U426 ( .I1(n189), .I2(n188), .O(n358) );
  OAI12HS U427 ( .B1(n357), .B2(n450), .A1(n358), .O(n651) );
  ND2 U428 ( .I1(n191), .I2(n190), .O(n652) );
  ND2 U429 ( .I1(n193), .I2(n192), .O(n646) );
  OAI12HS U430 ( .B1(n645), .B2(n652), .A1(n646), .O(n194) );
  AOI12HS U431 ( .B1(n195), .B2(n651), .A1(n194), .O(n196) );
  OAI12HS U432 ( .B1(n452), .B2(n197), .A1(n196), .O(n198) );
  AOI12HS U433 ( .B1(n200), .B2(n199), .A1(n198), .O(n677) );
  INV1S U434 ( .I(i_pconv[953]), .O(n202) );
  OR2 U435 ( .I1(n203), .I2(n204), .O(n700) );
  INV1S U436 ( .I(i_pconv_485), .O(n205) );
  FA1S U437 ( .A(i_pconv_485), .B(n202), .CI(n201), .CO(n206), .S(n204) );
  OR2 U438 ( .I1(n205), .I2(n206), .O(n207) );
  ND2 U439 ( .I1(n700), .I2(n207), .O(n209) );
  ND2 U440 ( .I1(n204), .I2(n203), .O(n676) );
  INV1S U441 ( .I(n676), .O(n699) );
  AOI12HS U442 ( .B1(n207), .B2(n699), .A1(n698), .O(n208) );
  INV1S U443 ( .I(n216), .O(n218) );
  XOR2HS U444 ( .I1(n220), .I2(n219), .O(n221) );
  INV1S U445 ( .I(n222), .O(n224) );
  XOR2HS U446 ( .I1(n226), .I2(n225), .O(n227) );
  ND2 U447 ( .I1(n227), .I2(n12), .O(n235) );
  INV1S U448 ( .I(n228), .O(n230) );
  XOR2HS U449 ( .I1(n232), .I2(n231), .O(n233) );
  AN3 U450 ( .I1(n236), .I2(n235), .I3(n234), .O(n237) );
  NR2 U451 ( .I1(n237), .I2(n708), .O(o_conv[2]) );
  INV1S U452 ( .I(n238), .O(n550) );
  INV1S U453 ( .I(n239), .O(n581) );
  XNR2HS U454 ( .I1(n240), .I2(n581), .O(n241) );
  INV1S U455 ( .I(n242), .O(n559) );
  INV1S U456 ( .I(n243), .O(n590) );
  XNR2HS U457 ( .I1(n244), .I2(n590), .O(n245) );
  INV1S U458 ( .I(n246), .O(n568) );
  INV1S U459 ( .I(n247), .O(n599) );
  XNR2HS U460 ( .I1(n248), .I2(n599), .O(n249) );
  AN3 U461 ( .I1(n252), .I2(n251), .I3(n250), .O(n253) );
  NR2 U462 ( .I1(n253), .I2(n708), .O(o_conv[5]) );
  INV1S U463 ( .I(n254), .O(n256) );
  ND2S U464 ( .I1(n256), .I2(n255), .O(n257) );
  XNR2HS U465 ( .I1(n14), .I2(n257), .O(n258) );
  INV1S U466 ( .I(n259), .O(n261) );
  ND2S U467 ( .I1(n261), .I2(n260), .O(n262) );
  XNR2HS U468 ( .I1(n14), .I2(n262), .O(n263) );
  INV1S U469 ( .I(n264), .O(n266) );
  ND2S U470 ( .I1(n266), .I2(n265), .O(n267) );
  XNR2HS U471 ( .I1(n14), .I2(n267), .O(n268) );
  AN3 U472 ( .I1(n271), .I2(n270), .I3(n269), .O(n272) );
  NR2 U473 ( .I1(n272), .I2(n708), .O(o_conv[0]) );
  INV1S U474 ( .I(n293), .O(n273) );
  INV1S U475 ( .I(n274), .O(n294) );
  XOR2HS U476 ( .I1(n275), .I2(n294), .O(n276) );
  INV1S U477 ( .I(n302), .O(n277) );
  INV1S U478 ( .I(n278), .O(n303) );
  XOR2HS U479 ( .I1(n279), .I2(n303), .O(n280) );
  INV1S U480 ( .I(n311), .O(n281) );
  INV1S U481 ( .I(n282), .O(n312) );
  XOR2HS U482 ( .I1(n283), .I2(n312), .O(n284) );
  AN3 U483 ( .I1(n287), .I2(n286), .I3(n285), .O(n288) );
  NR2 U484 ( .I1(n288), .I2(n5), .O(o_conv[3]) );
  INV1S U485 ( .I(n289), .O(n291) );
  OAI12HS U486 ( .B1(n294), .B2(n293), .A1(n292), .O(n295) );
  XNR2HS U487 ( .I1(n296), .I2(n295), .O(n297) );
  INV1S U488 ( .I(n298), .O(n300) );
  OAI12HS U489 ( .B1(n303), .B2(n302), .A1(n301), .O(n304) );
  XNR2HS U490 ( .I1(n305), .I2(n304), .O(n306) );
  INV1S U491 ( .I(n307), .O(n309) );
  OAI12HS U492 ( .B1(n312), .B2(n311), .A1(n310), .O(n313) );
  XNR2HS U493 ( .I1(n314), .I2(n313), .O(n315) );
  AN3 U494 ( .I1(n318), .I2(n317), .I3(n316), .O(n319) );
  NR2 U495 ( .I1(n319), .I2(n708), .O(o_conv[4]) );
  XNR2HS U496 ( .I1(n322), .I2(n321), .O(n323) );
  XNR2HS U497 ( .I1(n326), .I2(n325), .O(n327) );
  XNR2HS U498 ( .I1(n331), .I2(n330), .O(n332) );
  AN3 U499 ( .I1(n335), .I2(n334), .I3(n333), .O(n336) );
  NR2 U500 ( .I1(n336), .I2(n708), .O(o_conv[1]) );
  INV1S U501 ( .I(n337), .O(n339) );
  INV1S U502 ( .I(n439), .O(n612) );
  INV1S U503 ( .I(n340), .O(n437) );
  INV1S U504 ( .I(n438), .O(n619) );
  INV1S U505 ( .I(n436), .O(n341) );
  AOI12HS U506 ( .B1(n619), .B2(n437), .A1(n341), .O(n342) );
  OAI12HS U507 ( .B1(n15), .B2(n343), .A1(n342), .O(n344) );
  XNR2HS U508 ( .I1(n345), .I2(n344), .O(n346) );
  INV1S U509 ( .I(n347), .O(n349) );
  INV1S U510 ( .I(n446), .O(n631) );
  INV1S U511 ( .I(n350), .O(n444) );
  INV1S U512 ( .I(n445), .O(n638) );
  INV1S U513 ( .I(n443), .O(n351) );
  AOI12HS U514 ( .B1(n638), .B2(n444), .A1(n351), .O(n352) );
  OAI12HS U515 ( .B1(n16), .B2(n353), .A1(n352), .O(n354) );
  XNR2HS U516 ( .I1(n355), .I2(n354), .O(n356) );
  INV1S U517 ( .I(n357), .O(n359) );
  INV1S U518 ( .I(n453), .O(n650) );
  INV1S U519 ( .I(n360), .O(n451) );
  INV1S U520 ( .I(n452), .O(n657) );
  INV1S U521 ( .I(n450), .O(n361) );
  AOI12HS U522 ( .B1(n657), .B2(n451), .A1(n361), .O(n362) );
  OAI12HS U523 ( .B1(n17), .B2(n363), .A1(n362), .O(n364) );
  XNR2HS U524 ( .I1(n365), .I2(n364), .O(n366) );
  NR2 U525 ( .I1(n708), .I2(n370), .O(o_conv[14]) );
  INV1S U526 ( .I(n371), .O(n373) );
  INV1S U527 ( .I(n374), .O(n406) );
  INV1S U528 ( .I(n405), .O(n375) );
  AOI12HS U529 ( .B1(n408), .B2(n406), .A1(n375), .O(n376) );
  OAI12HS U530 ( .B1(n15), .B2(n377), .A1(n376), .O(n378) );
  XNR2HS U531 ( .I1(n379), .I2(n378), .O(n380) );
  INV1S U532 ( .I(n381), .O(n383) );
  INV1S U533 ( .I(n384), .O(n415) );
  INV1S U534 ( .I(n414), .O(n385) );
  AOI12HS U535 ( .B1(n417), .B2(n415), .A1(n385), .O(n386) );
  OAI12HS U536 ( .B1(n16), .B2(n387), .A1(n386), .O(n388) );
  XNR2HS U537 ( .I1(n389), .I2(n388), .O(n390) );
  INV1S U538 ( .I(n391), .O(n393) );
  INV1S U539 ( .I(n394), .O(n424) );
  INV1S U540 ( .I(n423), .O(n395) );
  AOI12HS U541 ( .B1(n426), .B2(n424), .A1(n395), .O(n396) );
  OAI12HS U542 ( .B1(n17), .B2(n397), .A1(n396), .O(n398) );
  XNR2HS U543 ( .I1(n399), .I2(n398), .O(n400) );
  AN3 U544 ( .I1(n403), .I2(n402), .I3(n401), .O(n404) );
  INV1S U545 ( .I(n407), .O(n410) );
  INV1S U546 ( .I(n408), .O(n409) );
  OAI12HS U547 ( .B1(n622), .B2(n410), .A1(n409), .O(n411) );
  XNR2HS U548 ( .I1(n412), .I2(n411), .O(n413) );
  INV1S U549 ( .I(n416), .O(n419) );
  INV1S U550 ( .I(n417), .O(n418) );
  OAI12HS U551 ( .B1(n641), .B2(n419), .A1(n418), .O(n420) );
  XNR2HS U552 ( .I1(n421), .I2(n420), .O(n422) );
  INV1S U553 ( .I(n425), .O(n428) );
  INV1S U554 ( .I(n426), .O(n427) );
  OAI12HS U555 ( .B1(n660), .B2(n428), .A1(n427), .O(n429) );
  XNR2HS U556 ( .I1(n430), .I2(n429), .O(n431) );
  AN3 U557 ( .I1(n434), .I2(n433), .I3(n432), .O(n435) );
  ND2 U558 ( .I1(n437), .I2(n436), .O(n441) );
  OAI12HS U559 ( .B1(n622), .B2(n439), .A1(n438), .O(n440) );
  XNR2HS U560 ( .I1(n441), .I2(n440), .O(n442) );
  ND2 U561 ( .I1(n442), .I2(n7), .O(n459) );
  ND2 U562 ( .I1(n444), .I2(n443), .O(n448) );
  OAI12HS U563 ( .B1(n641), .B2(n446), .A1(n445), .O(n447) );
  XNR2HS U564 ( .I1(n448), .I2(n447), .O(n449) );
  ND2 U565 ( .I1(n449), .I2(n11), .O(n458) );
  ND2 U566 ( .I1(n451), .I2(n450), .O(n455) );
  OAI12HS U567 ( .B1(n660), .B2(n453), .A1(n452), .O(n454) );
  XNR2HS U568 ( .I1(n455), .I2(n454), .O(n456) );
  AN3 U569 ( .I1(n459), .I2(n458), .I3(n457), .O(n460) );
  INV1S U570 ( .I(n461), .O(n463) );
  OAI12HS U571 ( .B1(n622), .B2(n465), .A1(n464), .O(n466) );
  XNR2HS U572 ( .I1(n467), .I2(n466), .O(n468) );
  INV1S U573 ( .I(n469), .O(n471) );
  OAI12HS U574 ( .B1(n641), .B2(n473), .A1(n472), .O(n474) );
  XNR2HS U575 ( .I1(n475), .I2(n474), .O(n476) );
  INV1S U576 ( .I(n477), .O(n479) );
  OAI12HS U577 ( .B1(n660), .B2(n481), .A1(n480), .O(n482) );
  XNR2HS U578 ( .I1(n483), .I2(n482), .O(n484) );
  AN3 U579 ( .I1(n487), .I2(n486), .I3(n485), .O(n488) );
  NR2 U580 ( .I1(n488), .I2(n5), .O(o_conv[10]) );
  INV1S U581 ( .I(n615), .O(n489) );
  AOI12HS U582 ( .B1(n619), .B2(n610), .A1(n613), .O(n490) );
  OAI12HS U583 ( .B1(n622), .B2(n491), .A1(n490), .O(n492) );
  XNR2HS U584 ( .I1(n493), .I2(n492), .O(n494) );
  INV1S U585 ( .I(n634), .O(n495) );
  AOI12HS U586 ( .B1(n638), .B2(n629), .A1(n632), .O(n496) );
  OAI12HS U587 ( .B1(n641), .B2(n497), .A1(n496), .O(n498) );
  XNR2HS U588 ( .I1(n499), .I2(n498), .O(n500) );
  INV1S U589 ( .I(n653), .O(n501) );
  AOI12HS U590 ( .B1(n657), .B2(n648), .A1(n651), .O(n502) );
  OAI12HS U591 ( .B1(n660), .B2(n503), .A1(n502), .O(n504) );
  XNR2HS U592 ( .I1(n505), .I2(n504), .O(n506) );
  AN3 U593 ( .I1(n509), .I2(n508), .I3(n507), .O(n510) );
  INV1S U594 ( .I(n511), .O(n513) );
  INV1S U595 ( .I(n580), .O(n514) );
  NR2 U596 ( .I1(n576), .I2(n514), .O(n517) );
  INV1S U597 ( .I(n579), .O(n515) );
  OAI12HS U598 ( .B1(n515), .B2(n576), .A1(n577), .O(n516) );
  AOI12HS U599 ( .B1(n581), .B2(n517), .A1(n516), .O(n518) );
  XOR2HS U600 ( .I1(n519), .I2(n518), .O(n520) );
  INV1S U601 ( .I(n521), .O(n523) );
  INV1S U602 ( .I(n589), .O(n524) );
  NR2 U603 ( .I1(n585), .I2(n524), .O(n527) );
  INV1S U604 ( .I(n588), .O(n525) );
  OAI12HS U605 ( .B1(n525), .B2(n585), .A1(n586), .O(n526) );
  AOI12HS U606 ( .B1(n590), .B2(n527), .A1(n526), .O(n528) );
  XOR2HS U607 ( .I1(n529), .I2(n528), .O(n530) );
  INV1S U608 ( .I(n531), .O(n533) );
  INV1S U609 ( .I(n598), .O(n534) );
  NR2 U610 ( .I1(n594), .I2(n534), .O(n537) );
  INV1S U611 ( .I(n597), .O(n535) );
  OAI12HS U612 ( .B1(n535), .B2(n594), .A1(n595), .O(n536) );
  AOI12HS U613 ( .B1(n599), .B2(n537), .A1(n536), .O(n538) );
  XOR2HS U614 ( .I1(n539), .I2(n538), .O(n540) );
  AN3 U615 ( .I1(n543), .I2(n542), .I3(n541), .O(n544) );
  INV1S U616 ( .I(n545), .O(n547) );
  INV1S U617 ( .I(n548), .O(n549) );
  AOI12HS U618 ( .B1(n581), .B2(n550), .A1(n549), .O(n551) );
  XOR2HS U619 ( .I1(n552), .I2(n551), .O(n553) );
  INV1S U620 ( .I(n554), .O(n556) );
  INV1S U621 ( .I(n557), .O(n558) );
  AOI12HS U622 ( .B1(n590), .B2(n559), .A1(n558), .O(n560) );
  XOR2HS U623 ( .I1(n561), .I2(n560), .O(n562) );
  INV1S U624 ( .I(n563), .O(n565) );
  INV1S U625 ( .I(n566), .O(n567) );
  AOI12HS U626 ( .B1(n599), .B2(n568), .A1(n567), .O(n569) );
  XOR2HS U627 ( .I1(n570), .I2(n569), .O(n571) );
  AN3 U628 ( .I1(n574), .I2(n573), .I3(n572), .O(n575) );
  INV1S U629 ( .I(n576), .O(n578) );
  AOI12HS U630 ( .B1(n581), .B2(n580), .A1(n579), .O(n582) );
  XOR2HS U631 ( .I1(n583), .I2(n582), .O(n584) );
  INV1S U632 ( .I(n585), .O(n587) );
  AOI12HS U633 ( .B1(n590), .B2(n589), .A1(n588), .O(n591) );
  XOR2HS U634 ( .I1(n592), .I2(n591), .O(n593) );
  INV1S U635 ( .I(n594), .O(n596) );
  AOI12HS U636 ( .B1(n599), .B2(n598), .A1(n597), .O(n600) );
  XOR2HS U637 ( .I1(n601), .I2(n600), .O(n602) );
  AN3 U638 ( .I1(n605), .I2(n604), .I3(n603), .O(n606) );
  INV1S U639 ( .I(n607), .O(n609) );
  INV1S U640 ( .I(n610), .O(n611) );
  NR2 U641 ( .I1(n615), .I2(n611), .O(n618) );
  INV1S U642 ( .I(n613), .O(n616) );
  OAI12HS U643 ( .B1(n616), .B2(n615), .A1(n614), .O(n617) );
  AOI12HS U644 ( .B1(n619), .B2(n618), .A1(n617), .O(n620) );
  OAI12HS U645 ( .B1(n15), .B2(n621), .A1(n620), .O(n623) );
  XNR2HS U646 ( .I1(n624), .I2(n623), .O(n625) );
  INV1S U647 ( .I(n626), .O(n628) );
  INV1S U648 ( .I(n629), .O(n630) );
  NR2 U649 ( .I1(n634), .I2(n630), .O(n637) );
  INV1S U650 ( .I(n632), .O(n635) );
  OAI12HS U651 ( .B1(n635), .B2(n634), .A1(n633), .O(n636) );
  AOI12HS U652 ( .B1(n638), .B2(n637), .A1(n636), .O(n639) );
  OAI12HS U653 ( .B1(n16), .B2(n640), .A1(n639), .O(n642) );
  XNR2HS U654 ( .I1(n643), .I2(n642), .O(n644) );
  INV1S U655 ( .I(n645), .O(n647) );
  INV1S U656 ( .I(n648), .O(n649) );
  NR2 U657 ( .I1(n653), .I2(n649), .O(n656) );
  INV1S U658 ( .I(n651), .O(n654) );
  OAI12HS U659 ( .B1(n654), .B2(n653), .A1(n652), .O(n655) );
  AOI12HS U660 ( .B1(n657), .B2(n656), .A1(n655), .O(n658) );
  OAI12HS U661 ( .B1(n17), .B2(n659), .A1(n658), .O(n661) );
  XNR2HS U662 ( .I1(n662), .I2(n661), .O(n663) );
  NR2 U663 ( .I1(n5), .I2(n667), .O(o_conv[16]) );
  INV1S U664 ( .I(n669), .O(n687) );
  XNR2HS U665 ( .I1(n670), .I2(n687), .O(n671) );
  INV1S U666 ( .I(n673), .O(n694) );
  XNR2HS U667 ( .I1(n674), .I2(n694), .O(n675) );
  INV1S U668 ( .I(n677), .O(n701) );
  XNR2HS U669 ( .I1(n678), .I2(n701), .O(n679) );
  AN3 U670 ( .I1(n682), .I2(n681), .I3(n680), .O(n683) );
  NR2 U671 ( .I1(n683), .I2(n2), .O(o_conv[17]) );
  AOI12HS U672 ( .B1(n687), .B2(n686), .A1(n685), .O(n688) );
  XOR2HS U673 ( .I1(n684), .I2(n688), .O(n690) );
  AOI12HS U674 ( .B1(n694), .B2(n693), .A1(n692), .O(n695) );
  XOR2HS U675 ( .I1(n691), .I2(n695), .O(n697) );
  AOI12HS U676 ( .B1(n701), .B2(n700), .A1(n699), .O(n702) );
  XOR2HS U677 ( .I1(n698), .I2(n702), .O(n704) );
endmodule


module partial_pooling_1 ( i_data, o_data );
  input [41:0] i_data;
  output [20:0] o_data;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90;

  ND2 U1 ( .I1(n4), .I2(i_data[39]), .O(n61) );
  INV1S U2 ( .I(i_data[18]), .O(n4) );
  INV1S U3 ( .I(i_data[38]), .O(n7) );
  MOAI1S U4 ( .A1(n43), .A2(n42), .B1(n41), .B2(i_data[5]), .O(n44) );
  INV1S U5 ( .I(i_data[32]), .O(n19) );
  BUF6 U6 ( .I(n64), .O(n1) );
  BUF6 U7 ( .I(n64), .O(n89) );
  BUF6 U8 ( .I(n64), .O(n2) );
  AN2S U9 ( .I1(n12), .I2(n13), .O(n10) );
  MOAI1S U10 ( .A1(i_data[6]), .A2(n78), .B1(i_data[28]), .B2(n50), .O(n48) );
  ND2T U11 ( .I1(n3), .I2(n63), .O(n64) );
  AOI13HS U12 ( .B1(n58), .B2(n57), .B3(n56), .A1(n55), .O(n59) );
  ND3 U13 ( .I1(n54), .I2(n53), .I3(n52), .O(n56) );
  OAI222S U14 ( .A1(i_data[27]), .A2(n51), .B1(i_data[28]), .B2(n50), .C1(n49), 
        .C2(n48), .O(n53) );
  AOI13HS U15 ( .B1(n47), .B2(n46), .B3(n45), .A1(n44), .O(n49) );
  AO13 U16 ( .B1(n39), .B2(n38), .B3(n37), .A1(n36), .O(n45) );
  ND2S U17 ( .I1(i_data[2]), .I2(n37), .O(n35) );
  ND2S U18 ( .I1(i_data[6]), .I2(n31), .O(n51) );
  ND2S U19 ( .I1(i_data[28]), .I2(n50), .O(n31) );
  ND2S U20 ( .I1(n11), .I2(i_data[34]), .O(n12) );
  ND2S U21 ( .I1(n42), .I2(i_data[25]), .O(n46) );
  NR2 U22 ( .I1(n7), .I2(i_data[17]), .O(n55) );
  INV2 U23 ( .I(i_data[13]), .O(n11) );
  INV1S U24 ( .I(i_data[24]), .O(n34) );
  ND2 U25 ( .I1(n61), .I2(n8), .O(n3) );
  INV1S U26 ( .I(i_data[33]), .O(n13) );
  MOAI1S U27 ( .A1(i_data[34]), .A2(n11), .B1(i_data[12]), .B2(n10), .O(n23)
         );
  AOI22S U28 ( .A1(n24), .A2(n23), .B1(n22), .B2(n21), .O(n58) );
  ND2P U29 ( .I1(n62), .I2(n61), .O(n63) );
  INV1S U30 ( .I(i_data[21]), .O(n66) );
  INV1S U31 ( .I(i_data[0]), .O(n65) );
  INV1S U32 ( .I(i_data[39]), .O(n6) );
  NR2 U33 ( .I1(i_data[37]), .I2(n55), .O(n5) );
  AO222 U34 ( .A1(i_data[17]), .A2(n7), .B1(i_data[18]), .B2(n6), .C1(n5), 
        .C2(i_data[16]), .O(n8) );
  INV1S U35 ( .I(i_data[37]), .O(n60) );
  INV1S U36 ( .I(i_data[35]), .O(n9) );
  INV2 U37 ( .I(i_data[36]), .O(n27) );
  OA22 U38 ( .A1(n9), .A2(i_data[14]), .B1(n27), .B2(i_data[15]), .O(n24) );
  OAI112HS U39 ( .C1(i_data[12]), .C2(n13), .A1(n24), .B1(n12), .O(n28) );
  INV1S U40 ( .I(n28), .O(n22) );
  NR2 U41 ( .I1(i_data[11]), .I2(n19), .O(n14) );
  NR2 U42 ( .I1(n14), .I2(i_data[31]), .O(n20) );
  INV1S U43 ( .I(i_data[31]), .O(n15) );
  OA22 U44 ( .A1(n15), .A2(i_data[10]), .B1(n19), .B2(i_data[11]), .O(n52) );
  INV1S U45 ( .I(i_data[30]), .O(n16) );
  NR2 U46 ( .I1(i_data[9]), .I2(n16), .O(n29) );
  OR2B1S U47 ( .I1(n29), .B1(i_data[8]), .O(n17) );
  MOAI1S U48 ( .A1(i_data[29]), .A2(n17), .B1(i_data[9]), .B2(n16), .O(n18) );
  AO222 U49 ( .A1(i_data[10]), .A2(n20), .B1(i_data[11]), .B2(n19), .C1(n52), 
        .C2(n18), .O(n21) );
  NR2 U50 ( .I1(i_data[15]), .I2(n27), .O(n25) );
  NR2 U51 ( .I1(n25), .I2(i_data[35]), .O(n26) );
  AOI22S U52 ( .A1(i_data[15]), .A2(n27), .B1(i_data[14]), .B2(n26), .O(n57)
         );
  AN2B1S U53 ( .I1(i_data[29]), .B1(i_data[8]), .O(n30) );
  NR3 U54 ( .I1(n30), .I2(n29), .I3(n28), .O(n54) );
  INV2 U55 ( .I(i_data[7]), .O(n50) );
  INV1S U56 ( .I(i_data[26]), .O(n41) );
  NR2 U57 ( .I1(n41), .I2(i_data[5]), .O(n40) );
  INV1S U58 ( .I(n40), .O(n47) );
  INV1S U59 ( .I(i_data[4]), .O(n42) );
  OR2B1S U60 ( .I1(i_data[2]), .B1(i_data[23]), .O(n39) );
  INV1S U61 ( .I(i_data[22]), .O(n32) );
  OAI12HS U62 ( .B1(i_data[1]), .B2(n32), .A1(i_data[0]), .O(n33) );
  MOAI1S U63 ( .A1(n33), .A2(i_data[21]), .B1(i_data[1]), .B2(n32), .O(n38) );
  OR2 U64 ( .I1(n34), .I2(i_data[3]), .O(n37) );
  MOAI1 U65 ( .A1(i_data[23]), .A2(n35), .B1(n34), .B2(i_data[3]), .O(n36) );
  OR2 U66 ( .I1(n40), .I2(i_data[25]), .O(n43) );
  OA12P U67 ( .B1(i_data[16]), .B2(n60), .A1(n59), .O(n62) );
  MXL2HS U68 ( .A(n66), .B(n65), .S(n2), .OB(o_data[0]) );
  INV1S U69 ( .I(i_data[22]), .O(n68) );
  INV1S U70 ( .I(i_data[1]), .O(n67) );
  MXL2HS U71 ( .A(n68), .B(n67), .S(n1), .OB(o_data[1]) );
  INV1S U72 ( .I(i_data[23]), .O(n70) );
  INV1S U73 ( .I(i_data[2]), .O(n69) );
  MXL2HS U74 ( .A(n70), .B(n69), .S(n1), .OB(o_data[2]) );
  INV1S U75 ( .I(i_data[24]), .O(n72) );
  INV1S U76 ( .I(i_data[3]), .O(n71) );
  MXL2HS U77 ( .A(n72), .B(n71), .S(n1), .OB(o_data[3]) );
  INV1S U78 ( .I(i_data[25]), .O(n74) );
  INV1S U79 ( .I(i_data[4]), .O(n73) );
  MXL2HS U80 ( .A(n74), .B(n73), .S(n2), .OB(o_data[4]) );
  INV1S U81 ( .I(i_data[26]), .O(n76) );
  INV1S U82 ( .I(i_data[5]), .O(n75) );
  MXL2HS U83 ( .A(n76), .B(n75), .S(n1), .OB(o_data[5]) );
  INV1S U84 ( .I(i_data[27]), .O(n78) );
  INV1S U85 ( .I(i_data[6]), .O(n77) );
  MXL2HS U86 ( .A(n78), .B(n77), .S(n89), .OB(o_data[6]) );
  INV1S U87 ( .I(i_data[28]), .O(n79) );
  MXL2HS U88 ( .A(n79), .B(n50), .S(n1), .OB(o_data[7]) );
  INV1S U89 ( .I(i_data[29]), .O(n81) );
  INV1S U90 ( .I(i_data[8]), .O(n80) );
  MXL2HS U91 ( .A(n81), .B(n80), .S(n89), .OB(o_data[8]) );
  INV1S U92 ( .I(i_data[30]), .O(n83) );
  INV1S U93 ( .I(i_data[9]), .O(n82) );
  MXL2HS U94 ( .A(n83), .B(n82), .S(n2), .OB(o_data[9]) );
  INV1S U95 ( .I(i_data[10]), .O(n84) );
  MXL2HS U96 ( .A(n15), .B(n84), .S(n2), .OB(o_data[10]) );
  INV1S U97 ( .I(i_data[11]), .O(n85) );
  MXL2HS U98 ( .A(n19), .B(n85), .S(n89), .OB(o_data[11]) );
  INV1S U99 ( .I(i_data[12]), .O(n86) );
  MXL2HS U100 ( .A(n13), .B(n86), .S(n89), .OB(o_data[12]) );
  INV1S U101 ( .I(i_data[34]), .O(n87) );
  MXL2HS U102 ( .A(n87), .B(n11), .S(n2), .OB(o_data[13]) );
  INV1S U103 ( .I(i_data[14]), .O(n88) );
  MXL2HS U104 ( .A(n9), .B(n88), .S(n2), .OB(o_data[14]) );
  INV1S U105 ( .I(i_data[15]), .O(n90) );
  MXL2HS U106 ( .A(n27), .B(n90), .S(n89), .OB(o_data[15]) );
endmodule


module partial_pooling_0 ( i_data, o_data );
  input [41:0] i_data;
  output [20:0] o_data;


  BUF1 U1 ( .I(i_data[0]), .O(o_data[0]) );
  BUF1 U2 ( .I(i_data[1]), .O(o_data[1]) );
  BUF1 U3 ( .I(i_data[2]), .O(o_data[2]) );
  BUF1 U4 ( .I(i_data[3]), .O(o_data[3]) );
  BUF1 U5 ( .I(i_data[4]), .O(o_data[4]) );
  BUF1 U6 ( .I(i_data[5]), .O(o_data[5]) );
  BUF1 U7 ( .I(i_data[6]), .O(o_data[6]) );
  BUF1 U8 ( .I(i_data[7]), .O(o_data[7]) );
  BUF1 U9 ( .I(i_data[8]), .O(o_data[8]) );
  BUF1 U10 ( .I(i_data[9]), .O(o_data[9]) );
  BUF1 U11 ( .I(i_data[10]), .O(o_data[10]) );
  BUF1 U12 ( .I(i_data[11]), .O(o_data[11]) );
  BUF1 U13 ( .I(i_data[12]), .O(o_data[12]) );
  BUF1 U14 ( .I(i_data[13]), .O(o_data[13]) );
  BUF1 U15 ( .I(i_data[14]), .O(o_data[14]) );
  BUF1 U16 ( .I(i_data[15]), .O(o_data[15]) );
endmodule


module partial_pooling_3 ( i_data, o_data );
  input [41:0] i_data;
  output [20:0] o_data;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76;

  INV1S U1 ( .I(i_data[38]), .O(n6) );
  MOAI1S U2 ( .A1(n42), .A2(n41), .B1(n40), .B2(i_data[5]), .O(n43) );
  INV1CK U3 ( .I(i_data[32]), .O(n18) );
  BUF2 U4 ( .I(n64), .O(n75) );
  BUF2 U5 ( .I(n64), .O(n1) );
  ND2 U6 ( .I1(n2), .I2(n63), .O(n64) );
  OA12 U7 ( .B1(i_data[16]), .B2(n60), .A1(n59), .O(n62) );
  AOI13HS U8 ( .B1(n58), .B2(n57), .B3(n56), .A1(n55), .O(n59) );
  MOAI1S U9 ( .A1(i_data[34]), .A2(n10), .B1(i_data[12]), .B2(n9), .O(n22) );
  ND2S U10 ( .I1(i_data[2]), .I2(n36), .O(n34) );
  ND2S U11 ( .I1(i_data[6]), .I2(n30), .O(n51) );
  ND2S U12 ( .I1(n10), .I2(i_data[34]), .O(n11) );
  ND2S U13 ( .I1(i_data[28]), .I2(n50), .O(n30) );
  ND2S U14 ( .I1(n41), .I2(i_data[25]), .O(n45) );
  MOAI1S U15 ( .A1(i_data[6]), .A2(n47), .B1(i_data[28]), .B2(n50), .O(n48) );
  INV1S U16 ( .I(i_data[7]), .O(n50) );
  ND2 U17 ( .I1(n61), .I2(n7), .O(n2) );
  INV1S U18 ( .I(i_data[29]), .O(n66) );
  INV1S U19 ( .I(i_data[8]), .O(n65) );
  INV1S U20 ( .I(i_data[18]), .O(n3) );
  ND2 U21 ( .I1(n3), .I2(i_data[39]), .O(n61) );
  INV1S U22 ( .I(i_data[39]), .O(n5) );
  NR2 U23 ( .I1(n6), .I2(i_data[17]), .O(n55) );
  NR2 U24 ( .I1(i_data[37]), .I2(n55), .O(n4) );
  AO222 U25 ( .A1(i_data[17]), .A2(n6), .B1(i_data[18]), .B2(n5), .C1(n4), 
        .C2(i_data[16]), .O(n7) );
  INV1S U26 ( .I(i_data[37]), .O(n60) );
  INV1S U27 ( .I(i_data[35]), .O(n8) );
  INV2 U28 ( .I(i_data[36]), .O(n26) );
  OA22 U29 ( .A1(n8), .A2(i_data[14]), .B1(n26), .B2(i_data[15]), .O(n23) );
  INV1S U30 ( .I(i_data[13]), .O(n10) );
  INV1S U31 ( .I(i_data[33]), .O(n12) );
  AN2 U32 ( .I1(n11), .I2(n12), .O(n9) );
  OAI112HS U33 ( .C1(i_data[12]), .C2(n12), .A1(n23), .B1(n11), .O(n27) );
  INV1S U34 ( .I(n27), .O(n21) );
  NR2 U35 ( .I1(i_data[11]), .I2(n18), .O(n13) );
  NR2 U36 ( .I1(n13), .I2(i_data[31]), .O(n19) );
  INV1S U37 ( .I(i_data[31]), .O(n14) );
  OA22 U38 ( .A1(n14), .A2(i_data[10]), .B1(n18), .B2(i_data[11]), .O(n52) );
  INV1S U39 ( .I(i_data[30]), .O(n15) );
  NR2 U40 ( .I1(i_data[9]), .I2(n15), .O(n28) );
  OR2B1S U41 ( .I1(n28), .B1(i_data[8]), .O(n16) );
  MOAI1S U42 ( .A1(i_data[29]), .A2(n16), .B1(i_data[9]), .B2(n15), .O(n17) );
  AO222 U43 ( .A1(i_data[10]), .A2(n19), .B1(i_data[11]), .B2(n18), .C1(n52), 
        .C2(n17), .O(n20) );
  AOI22S U44 ( .A1(n23), .A2(n22), .B1(n21), .B2(n20), .O(n58) );
  NR2 U45 ( .I1(i_data[15]), .I2(n26), .O(n24) );
  NR2 U46 ( .I1(n24), .I2(i_data[35]), .O(n25) );
  AOI22S U47 ( .A1(i_data[15]), .A2(n26), .B1(i_data[14]), .B2(n25), .O(n57)
         );
  AN2B1S U48 ( .I1(i_data[29]), .B1(i_data[8]), .O(n29) );
  NR3 U49 ( .I1(n29), .I2(n28), .I3(n27), .O(n54) );
  INV1S U50 ( .I(i_data[26]), .O(n40) );
  NR2 U51 ( .I1(n40), .I2(i_data[5]), .O(n39) );
  INV1S U52 ( .I(n39), .O(n46) );
  INV1S U53 ( .I(i_data[4]), .O(n41) );
  OR2B1S U54 ( .I1(i_data[2]), .B1(i_data[23]), .O(n38) );
  INV1S U55 ( .I(i_data[22]), .O(n31) );
  OAI12HS U56 ( .B1(i_data[1]), .B2(n31), .A1(i_data[0]), .O(n32) );
  MOAI1S U57 ( .A1(n32), .A2(i_data[21]), .B1(i_data[1]), .B2(n31), .O(n37) );
  INV1S U58 ( .I(i_data[24]), .O(n33) );
  OR2 U59 ( .I1(n33), .I2(i_data[3]), .O(n36) );
  MOAI1S U60 ( .A1(i_data[23]), .A2(n34), .B1(n33), .B2(i_data[3]), .O(n35) );
  AO13 U61 ( .B1(n38), .B2(n37), .B3(n36), .A1(n35), .O(n44) );
  OR2 U62 ( .I1(n39), .I2(i_data[25]), .O(n42) );
  AOI13HS U63 ( .B1(n46), .B2(n45), .B3(n44), .A1(n43), .O(n49) );
  INV1S U64 ( .I(i_data[27]), .O(n47) );
  OAI222S U65 ( .A1(i_data[27]), .A2(n51), .B1(i_data[28]), .B2(n50), .C1(n49), 
        .C2(n48), .O(n53) );
  ND3 U66 ( .I1(n54), .I2(n53), .I3(n52), .O(n56) );
  ND2 U67 ( .I1(n62), .I2(n61), .O(n63) );
  MXL2HS U68 ( .A(n66), .B(n65), .S(n75), .OB(o_data[8]) );
  INV1S U69 ( .I(i_data[30]), .O(n68) );
  INV1S U70 ( .I(i_data[9]), .O(n67) );
  MXL2HS U71 ( .A(n68), .B(n67), .S(n1), .OB(o_data[9]) );
  INV1S U72 ( .I(i_data[10]), .O(n69) );
  MXL2HS U73 ( .A(n14), .B(n69), .S(n1), .OB(o_data[10]) );
  INV1S U74 ( .I(i_data[11]), .O(n70) );
  MXL2HS U75 ( .A(n18), .B(n70), .S(n75), .OB(o_data[11]) );
  INV1S U76 ( .I(i_data[12]), .O(n71) );
  MXL2HS U77 ( .A(n12), .B(n71), .S(n75), .OB(o_data[12]) );
  INV1S U78 ( .I(i_data[34]), .O(n73) );
  INV1S U79 ( .I(i_data[13]), .O(n72) );
  MXL2HS U80 ( .A(n73), .B(n72), .S(n1), .OB(o_data[13]) );
  INV1S U81 ( .I(i_data[14]), .O(n74) );
  MXL2HS U82 ( .A(n8), .B(n74), .S(n1), .OB(o_data[14]) );
  INV1S U83 ( .I(i_data[15]), .O(n76) );
  MXL2HS U84 ( .A(n26), .B(n76), .S(n75), .OB(o_data[15]) );
endmodule


module Top ( clk, rst_n, layer_num, i_data, o_data );
  input [1:0] layer_num;
  input [7:0] i_data;
  output [7:0] o_data;
  input clk, rst_n;
  wire   n3864, n3865, n3866, n3867, n3868, n3869, n3870, n3871, sel, N190,
         N191, N192, N193, N194, N195, N196, N197, N198, N199, N200, N201,
         N202, N203, N204, N205, N206, N207, N208, N209, N210, N211, N212,
         N213, N214, N215, N216, N217, N218, N219, N220, N221, N222, N223,
         N224, N225, N226, N227, N228, N229, N230, N231, N232, N233, N234,
         N235, N236, N237, N238, N239, N240, N241, N242, N243, N244, N245,
         N246, N247, N248, N249, N250, N251, N252, N253, N254, N255, N256,
         N257, N258, N259, N260, N261, N262, N263, N264, N265, N266, N267,
         N268, N269, N270, N271, N272, N273, N274, N275, N276, N277, N278,
         N279, N280, N281, N282, N283, N284, N285, N286, N287, N288, N289,
         N290, N291, N292, N293, N294, N295, N296, N297, N298, N299, N300,
         N301, N302, N303, N304, N305, N306, N307, N308, N309, N310, N311,
         N312, N313, N314, N315, N316, N317, N318, N319, N320, N321, N322,
         N323, N324, N325, N326, N327, N328, N329, N330, N331, N332, N333,
         \CHIPS[0].core/buffer_ppool_8 , \CHIPS[0].core/buffer_ppool_9 ,
         \CHIPS[0].core/buffer_ppool_10 , \CHIPS[0].core/buffer_ppool_11 ,
         \CHIPS[0].core/buffer_ppool_12 , \CHIPS[0].core/buffer_ppool_13 ,
         \CHIPS[0].core/buffer_ppool_14 , \CHIPS[0].core/buffer_ppool_15 ,
         net21266, \CHIPS[0].core/pooling[15] , \CHIPS[0].core/pooling[14] ,
         \CHIPS[0].core/pooling[13] , \CHIPS[0].core/pooling[12] ,
         \CHIPS[0].core/pooling[11] , \CHIPS[0].core/pooling[10] ,
         \CHIPS[0].core/pooling[9] , \CHIPS[0].core/pooling[8] ,
         \CHIPS[0].core/temp_ppool[15] , \CHIPS[0].core/temp_ppool[14] ,
         \CHIPS[0].core/temp_ppool[13] , \CHIPS[0].core/temp_ppool[12] ,
         \CHIPS[0].core/temp_ppool[11] , \CHIPS[0].core/temp_ppool[10] ,
         \CHIPS[0].core/temp_ppool[9] , \CHIPS[0].core/temp_ppool[8] ,
         \CHIPS[0].core/buffer_conv[39] , \CHIPS[0].core/buffer_conv[38] ,
         \CHIPS[0].core/buffer_conv[37] , \CHIPS[0].core/buffer_conv[36] ,
         \CHIPS[0].core/buffer_conv[35] , \CHIPS[0].core/buffer_conv[34] ,
         \CHIPS[0].core/buffer_conv[33] , \CHIPS[0].core/buffer_conv[32] ,
         \CHIPS[0].core/buffer_conv[31] , \CHIPS[0].core/buffer_conv[30] ,
         \CHIPS[0].core/buffer_conv[29] , \CHIPS[0].core/buffer_conv[28] ,
         \CHIPS[0].core/buffer_conv[27] , \CHIPS[0].core/buffer_conv[26] ,
         \CHIPS[0].core/buffer_conv[25] , \CHIPS[0].core/buffer_conv[24] ,
         \CHIPS[0].core/buffer_conv[23] , \CHIPS[0].core/buffer_conv[22] ,
         \CHIPS[0].core/buffer_conv[21] , \CHIPS[0].core/buffer_conv[18] ,
         \CHIPS[0].core/buffer_conv[17] , \CHIPS[0].core/buffer_conv[16] ,
         \CHIPS[0].core/buffer_conv[15] , \CHIPS[0].core/buffer_conv[14] ,
         \CHIPS[0].core/buffer_conv[13] , \CHIPS[0].core/buffer_conv[12] ,
         \CHIPS[0].core/buffer_conv[11] , \CHIPS[0].core/buffer_conv[10] ,
         \CHIPS[0].core/buffer_conv[9] , \CHIPS[0].core/buffer_conv[8] ,
         \CHIPS[0].core/buffer_conv[7] , \CHIPS[0].core/buffer_conv[6] ,
         \CHIPS[0].core/buffer_conv[5] , \CHIPS[0].core/buffer_conv[4] ,
         \CHIPS[0].core/buffer_conv[3] , \CHIPS[0].core/buffer_conv[2] ,
         \CHIPS[0].core/buffer_conv[1] , \CHIPS[0].core/buffer_conv[0] ,
         \CHIPS[0].core/temp_conv[18] , \CHIPS[0].core/temp_conv[17] ,
         \CHIPS[0].core/temp_conv[16] , \CHIPS[0].core/temp_conv[15] ,
         \CHIPS[0].core/temp_conv[12] , \CHIPS[0].core/temp_conv[10] ,
         \CHIPS[0].core/temp_conv[9] , \CHIPS[0].core/temp_conv[8] ,
         \CHIPS[0].core/temp_conv[7] , \CHIPS[0].core/temp_conv[6] ,
         \CHIPS[0].core/temp_conv[5] , \CHIPS[0].core/temp_conv[4] ,
         \CHIPS[0].core/temp_conv[3] , \CHIPS[0].core/temp_conv[2] ,
         \CHIPS[0].core/temp_conv[1] , \CHIPS[0].core/temp_conv[0] ,
         \CHIPS[0].core/buffer_pconv[953] , \CHIPS[0].core/buffer_pconv[952] ,
         \CHIPS[0].core/buffer_pconv[951] , \CHIPS[0].core/buffer_pconv[950] ,
         \CHIPS[0].core/buffer_pconv[949] , \CHIPS[0].core/buffer_pconv[948] ,
         \CHIPS[0].core/buffer_pconv[947] , \CHIPS[0].core/buffer_pconv[946] ,
         \CHIPS[0].core/buffer_pconv[945] , \CHIPS[0].core/buffer_pconv[944] ,
         \CHIPS[0].core/buffer_pconv[943] , \CHIPS[0].core/buffer_pconv[942] ,
         \CHIPS[0].core/buffer_pconv[941] , \CHIPS[0].core/buffer_pconv[940] ,
         \CHIPS[0].core/buffer_pconv[939] , \CHIPS[0].core/buffer_pconv[938] ,
         \CHIPS[0].core/buffer_pconv[937] , \CHIPS[0].core/buffer_pconv[936] ,
         \CHIPS[0].core/buffer_pconv[935] , \CHIPS[0].core/buffer_pconv[934] ,
         \CHIPS[0].core/buffer_pconv[933] , \CHIPS[0].core/buffer_pconv[932] ,
         \CHIPS[0].core/buffer_pconv[931] , \CHIPS[0].core/buffer_pconv[930] ,
         \CHIPS[0].core/buffer_pconv[929] , \CHIPS[0].core/buffer_pconv[928] ,
         \CHIPS[0].core/buffer_pconv[927] , \CHIPS[0].core/buffer_pconv[926] ,
         \CHIPS[0].core/buffer_pconv[925] , \CHIPS[0].core/buffer_pconv[924] ,
         \CHIPS[0].core/buffer_pconv[923] , \CHIPS[0].core/buffer_pconv[922] ,
         \CHIPS[0].core/buffer_pconv[921] , \CHIPS[0].core/buffer_pconv[920] ,
         \CHIPS[0].core/buffer_pconv[919] , \CHIPS[0].core/buffer_pconv[918] ,
         \CHIPS[0].core/buffer_pconv[917] , \CHIPS[0].core/buffer_pconv[916] ,
         \CHIPS[0].core/buffer_pconv[915] , \CHIPS[0].core/buffer_pconv[914] ,
         \CHIPS[0].core/buffer_pconv[913] , \CHIPS[0].core/buffer_pconv[912] ,
         \CHIPS[0].core/buffer_pconv[911] , \CHIPS[0].core/buffer_pconv[910] ,
         \CHIPS[0].core/buffer_pconv[909] , \CHIPS[0].core/buffer_pconv[908] ,
         \CHIPS[0].core/buffer_pconv[907] , \CHIPS[0].core/buffer_pconv[906] ,
         \CHIPS[0].core/buffer_pconv[905] , \CHIPS[0].core/buffer_pconv[904] ,
         \CHIPS[0].core/buffer_pconv[903] , \CHIPS[0].core/buffer_pconv[902] ,
         \CHIPS[0].core/buffer_pconv[901] , \CHIPS[0].core/buffer_pconv[900] ,
         \CHIPS[0].core/buffer_pconv[899] , \CHIPS[0].core/buffer_pconv[898] ,
         \CHIPS[0].core/buffer_pconv[897] , \CHIPS[0].core/buffer_pconv[896] ,
         \CHIPS[0].core/buffer_pconv[895] , \CHIPS[0].core/buffer_pconv[894] ,
         \CHIPS[0].core/buffer_pconv[893] , \CHIPS[0].core/buffer_pconv[892] ,
         \CHIPS[0].core/buffer_pconv[891] , \CHIPS[0].core/buffer_pconv[890] ,
         \CHIPS[0].core/buffer_pconv[889] , \CHIPS[0].core/buffer_pconv[888] ,
         \CHIPS[0].core/buffer_pconv[887] , \CHIPS[0].core/buffer_pconv[886] ,
         \CHIPS[0].core/buffer_pconv[885] , \CHIPS[0].core/buffer_pconv[884] ,
         \CHIPS[0].core/buffer_pconv[883] , \CHIPS[0].core/buffer_pconv[882] ,
         \CHIPS[0].core/buffer_pconv[881] , \CHIPS[0].core/buffer_pconv[880] ,
         \CHIPS[0].core/buffer_pconv[879] , \CHIPS[0].core/buffer_pconv[878] ,
         \CHIPS[0].core/buffer_pconv[877] , \CHIPS[0].core/buffer_pconv[876] ,
         \CHIPS[0].core/buffer_pconv[875] , \CHIPS[0].core/buffer_pconv[874] ,
         \CHIPS[0].core/buffer_pconv[873] , \CHIPS[0].core/buffer_pconv[872] ,
         \CHIPS[0].core/buffer_pconv[871] , \CHIPS[0].core/buffer_pconv[870] ,
         \CHIPS[0].core/buffer_pconv[869] , \CHIPS[0].core/buffer_pconv[868] ,
         \CHIPS[0].core/buffer_pconv[867] , \CHIPS[0].core/buffer_pconv[866] ,
         \CHIPS[0].core/buffer_pconv[865] , \CHIPS[0].core/buffer_pconv[864] ,
         \CHIPS[0].core/buffer_pconv[863] , \CHIPS[0].core/buffer_pconv[862] ,
         \CHIPS[0].core/buffer_pconv[861] , \CHIPS[0].core/buffer_pconv[860] ,
         \CHIPS[0].core/buffer_pconv[859] , \CHIPS[0].core/buffer_pconv[858] ,
         \CHIPS[0].core/buffer_pconv[857] , \CHIPS[0].core/buffer_pconv[856] ,
         \CHIPS[0].core/buffer_pconv[855] , \CHIPS[0].core/buffer_pconv[854] ,
         \CHIPS[0].core/buffer_pconv[853] , \CHIPS[0].core/buffer_pconv[852] ,
         \CHIPS[0].core/buffer_pconv[851] , \CHIPS[0].core/buffer_pconv[850] ,
         \CHIPS[0].core/buffer_pconv[849] , \CHIPS[0].core/buffer_pconv[848] ,
         \CHIPS[0].core/buffer_pconv[847] , \CHIPS[0].core/buffer_pconv[846] ,
         \CHIPS[0].core/buffer_pconv[845] , \CHIPS[0].core/buffer_pconv[844] ,
         \CHIPS[0].core/buffer_pconv[843] , \CHIPS[0].core/buffer_pconv[842] ,
         \CHIPS[0].core/buffer_pconv[841] , \CHIPS[0].core/buffer_pconv[840] ,
         \CHIPS[0].core/buffer_pconv[839] , \CHIPS[0].core/buffer_pconv[838] ,
         \CHIPS[0].core/buffer_pconv[837] , \CHIPS[0].core/buffer_pconv[836] ,
         \CHIPS[0].core/buffer_pconv[835] , \CHIPS[0].core/buffer_pconv[834] ,
         \CHIPS[0].core/buffer_pconv[833] , \CHIPS[0].core/buffer_pconv[832] ,
         \CHIPS[0].core/buffer_pconv[831] , \CHIPS[0].core/buffer_pconv[830] ,
         \CHIPS[0].core/buffer_pconv[829] , \CHIPS[0].core/buffer_pconv[828] ,
         \CHIPS[0].core/buffer_pconv[827] , \CHIPS[0].core/buffer_pconv[826] ,
         \CHIPS[0].core/buffer_pconv[825] , \CHIPS[0].core/buffer_pconv[824] ,
         \CHIPS[0].core/buffer_pconv[823] , \CHIPS[0].core/buffer_pconv[822] ,
         \CHIPS[0].core/buffer_pconv[821] , \CHIPS[0].core/buffer_pconv[820] ,
         \CHIPS[0].core/buffer_pconv[819] , \CHIPS[0].core/buffer_pconv[818] ,
         \CHIPS[0].core/buffer_pconv[817] , \CHIPS[0].core/buffer_pconv[816] ,
         \CHIPS[0].core/buffer_pconv[815] , \CHIPS[0].core/buffer_pconv[814] ,
         \CHIPS[0].core/buffer_pconv[813] , \CHIPS[0].core/buffer_pconv[812] ,
         \CHIPS[0].core/buffer_pconv[811] , \CHIPS[0].core/buffer_pconv[810] ,
         \CHIPS[0].core/buffer_pconv[809] , \CHIPS[0].core/buffer_pconv[808] ,
         \CHIPS[0].core/buffer_pconv[807] , \CHIPS[0].core/buffer_pconv[806] ,
         \CHIPS[0].core/buffer_pconv[805] , \CHIPS[0].core/buffer_pconv[804] ,
         \CHIPS[0].core/buffer_pconv[803] , \CHIPS[0].core/buffer_pconv[802] ,
         \CHIPS[0].core/buffer_pconv[801] , \CHIPS[0].core/buffer_pconv[800] ,
         \CHIPS[0].core/buffer_pconv[799] , \CHIPS[0].core/buffer_pconv[798] ,
         \CHIPS[0].core/buffer_pconv[797] , \CHIPS[0].core/buffer_pconv[796] ,
         \CHIPS[0].core/buffer_pconv[795] , \CHIPS[0].core/buffer_pconv[794] ,
         \CHIPS[0].core/buffer_pconv[793] , \CHIPS[0].core/buffer_pconv[792] ,
         \CHIPS[0].core/buffer_pconv[791] , \CHIPS[0].core/buffer_pconv[790] ,
         \CHIPS[0].core/buffer_pconv[789] , \CHIPS[0].core/buffer_pconv[788] ,
         \CHIPS[0].core/buffer_pconv[787] , \CHIPS[0].core/buffer_pconv[786] ,
         \CHIPS[0].core/buffer_pconv[785] , \CHIPS[0].core/buffer_pconv[784] ,
         \CHIPS[0].core/buffer_pconv[783] , \CHIPS[0].core/buffer_pconv[782] ,
         \CHIPS[0].core/buffer_pconv[781] , \CHIPS[0].core/buffer_pconv[780] ,
         \CHIPS[0].core/buffer_pconv[779] , \CHIPS[0].core/buffer_pconv[778] ,
         \CHIPS[0].core/buffer_pconv[777] , \CHIPS[0].core/buffer_pconv[776] ,
         \CHIPS[0].core/buffer_pconv[775] , \CHIPS[0].core/buffer_pconv[774] ,
         \CHIPS[0].core/buffer_pconv[773] , \CHIPS[0].core/buffer_pconv[772] ,
         \CHIPS[0].core/buffer_pconv[771] , \CHIPS[0].core/buffer_pconv[770] ,
         \CHIPS[0].core/buffer_pconv[769] , \CHIPS[0].core/buffer_pconv[768] ,
         \CHIPS[0].core/buffer_pconv[767] , \CHIPS[0].core/buffer_pconv[766] ,
         \CHIPS[0].core/buffer_pconv[765] , \CHIPS[0].core/buffer_pconv[764] ,
         \CHIPS[0].core/buffer_pconv[763] , \CHIPS[0].core/buffer_pconv[762] ,
         \CHIPS[0].core/buffer_pconv[761] , \CHIPS[0].core/buffer_pconv[760] ,
         \CHIPS[0].core/buffer_pconv[759] , \CHIPS[0].core/buffer_pconv[758] ,
         \CHIPS[0].core/buffer_pconv[757] , \CHIPS[0].core/buffer_pconv[756] ,
         \CHIPS[0].core/buffer_pconv[755] , \CHIPS[0].core/buffer_pconv[754] ,
         \CHIPS[0].core/buffer_pconv[753] , \CHIPS[0].core/buffer_pconv[752] ,
         \CHIPS[0].core/buffer_pconv[751] , \CHIPS[0].core/buffer_pconv[750] ,
         \CHIPS[0].core/buffer_pconv[749] , \CHIPS[0].core/buffer_pconv[748] ,
         \CHIPS[0].core/buffer_pconv[747] , \CHIPS[0].core/buffer_pconv[746] ,
         \CHIPS[0].core/buffer_pconv[745] , \CHIPS[0].core/buffer_pconv[744] ,
         \CHIPS[0].core/buffer_pconv[743] , \CHIPS[0].core/buffer_pconv[742] ,
         \CHIPS[0].core/buffer_pconv[741] , \CHIPS[0].core/buffer_pconv[740] ,
         \CHIPS[0].core/buffer_pconv[739] , \CHIPS[0].core/buffer_pconv[738] ,
         \CHIPS[0].core/buffer_pconv[737] , \CHIPS[0].core/buffer_pconv[736] ,
         \CHIPS[0].core/buffer_pconv[735] , \CHIPS[0].core/buffer_pconv[734] ,
         \CHIPS[0].core/buffer_pconv[733] , \CHIPS[0].core/buffer_pconv[732] ,
         \CHIPS[0].core/buffer_pconv[731] , \CHIPS[0].core/buffer_pconv[730] ,
         \CHIPS[0].core/buffer_pconv[729] , \CHIPS[0].core/buffer_pconv[728] ,
         \CHIPS[0].core/buffer_pconv[727] , \CHIPS[0].core/buffer_pconv[726] ,
         \CHIPS[0].core/buffer_pconv[725] , \CHIPS[0].core/buffer_pconv[724] ,
         \CHIPS[0].core/buffer_pconv[723] , \CHIPS[0].core/buffer_pconv[722] ,
         \CHIPS[0].core/buffer_pconv[721] , \CHIPS[0].core/buffer_pconv[720] ,
         \CHIPS[0].core/buffer_pconv[719] , \CHIPS[0].core/buffer_pconv[718] ,
         \CHIPS[0].core/buffer_pconv[717] , \CHIPS[0].core/buffer_pconv[716] ,
         \CHIPS[0].core/buffer_pconv[715] , \CHIPS[0].core/buffer_pconv[714] ,
         \CHIPS[0].core/buffer_pconv[713] , \CHIPS[0].core/buffer_pconv[712] ,
         \CHIPS[0].core/buffer_pconv[711] , \CHIPS[0].core/buffer_pconv[710] ,
         \CHIPS[0].core/buffer_pconv[709] , \CHIPS[0].core/buffer_pconv[708] ,
         \CHIPS[0].core/buffer_pconv[707] , \CHIPS[0].core/buffer_pconv[706] ,
         \CHIPS[0].core/buffer_pconv[705] , \CHIPS[0].core/buffer_pconv[704] ,
         \CHIPS[0].core/buffer_pconv[703] , \CHIPS[0].core/buffer_pconv[702] ,
         \CHIPS[0].core/buffer_pconv[701] , \CHIPS[0].core/buffer_pconv[700] ,
         \CHIPS[0].core/buffer_pconv[699] , \CHIPS[0].core/buffer_pconv[698] ,
         \CHIPS[0].core/buffer_pconv[697] , \CHIPS[0].core/buffer_pconv[696] ,
         \CHIPS[0].core/buffer_pconv[695] , \CHIPS[0].core/buffer_pconv[694] ,
         \CHIPS[0].core/buffer_pconv[693] , \CHIPS[0].core/buffer_pconv[692] ,
         \CHIPS[0].core/buffer_pconv[691] , \CHIPS[0].core/buffer_pconv[690] ,
         \CHIPS[0].core/buffer_pconv[689] , \CHIPS[0].core/buffer_pconv[688] ,
         \CHIPS[0].core/buffer_pconv[687] , \CHIPS[0].core/buffer_pconv[686] ,
         \CHIPS[0].core/buffer_pconv[685] , \CHIPS[0].core/buffer_pconv[684] ,
         \CHIPS[0].core/buffer_pconv[683] , \CHIPS[0].core/buffer_pconv[682] ,
         \CHIPS[0].core/buffer_pconv[681] , \CHIPS[0].core/buffer_pconv[680] ,
         \CHIPS[0].core/buffer_pconv[679] , \CHIPS[0].core/buffer_pconv[678] ,
         \CHIPS[0].core/buffer_pconv[677] , \CHIPS[0].core/buffer_pconv[676] ,
         \CHIPS[0].core/buffer_pconv[675] , \CHIPS[0].core/buffer_pconv[674] ,
         \CHIPS[0].core/buffer_pconv[673] , \CHIPS[0].core/buffer_pconv[672] ,
         \CHIPS[0].core/buffer_pconv[671] , \CHIPS[0].core/buffer_pconv[670] ,
         \CHIPS[0].core/buffer_pconv[669] , \CHIPS[0].core/buffer_pconv[668] ,
         \CHIPS[0].core/buffer_pconv[667] , \CHIPS[0].core/buffer_pconv[666] ,
         \CHIPS[0].core/buffer_pconv[665] , \CHIPS[0].core/buffer_pconv[664] ,
         \CHIPS[0].core/buffer_pconv[663] , \CHIPS[0].core/buffer_pconv[662] ,
         \CHIPS[0].core/buffer_pconv[661] , \CHIPS[0].core/buffer_pconv[660] ,
         \CHIPS[0].core/buffer_pconv[659] , \CHIPS[0].core/buffer_pconv[658] ,
         \CHIPS[0].core/buffer_pconv[657] , \CHIPS[0].core/buffer_pconv[656] ,
         \CHIPS[0].core/buffer_pconv[655] , \CHIPS[0].core/buffer_pconv[654] ,
         \CHIPS[0].core/buffer_pconv[653] , \CHIPS[0].core/buffer_pconv[652] ,
         \CHIPS[0].core/buffer_pconv[651] , \CHIPS[0].core/buffer_pconv[650] ,
         \CHIPS[0].core/buffer_pconv[649] , \CHIPS[0].core/buffer_pconv[648] ,
         \CHIPS[0].core/buffer_pconv[647] , \CHIPS[0].core/buffer_pconv[646] ,
         \CHIPS[0].core/buffer_pconv[645] , \CHIPS[0].core/buffer_pconv[644] ,
         \CHIPS[0].core/buffer_pconv[643] , \CHIPS[0].core/buffer_pconv[642] ,
         \CHIPS[0].core/buffer_pconv[641] , \CHIPS[0].core/buffer_pconv[640] ,
         \CHIPS[0].core/buffer_pconv[639] , \CHIPS[0].core/buffer_pconv[638] ,
         \CHIPS[0].core/buffer_pconv[637] , \CHIPS[0].core/buffer_pconv[636] ,
         \CHIPS[0].core/buffer_pconv[635] , \CHIPS[0].core/buffer_pconv[634] ,
         \CHIPS[0].core/buffer_pconv[633] , \CHIPS[0].core/buffer_pconv[632] ,
         \CHIPS[0].core/buffer_pconv[631] , \CHIPS[0].core/buffer_pconv[630] ,
         \CHIPS[0].core/buffer_pconv[629] , \CHIPS[0].core/buffer_pconv[628] ,
         \CHIPS[0].core/buffer_pconv[627] , \CHIPS[0].core/buffer_pconv[626] ,
         \CHIPS[0].core/buffer_pconv[625] , \CHIPS[0].core/buffer_pconv[624] ,
         \CHIPS[0].core/buffer_pconv[623] , \CHIPS[0].core/buffer_pconv[622] ,
         \CHIPS[0].core/buffer_pconv[621] , \CHIPS[0].core/buffer_pconv[620] ,
         \CHIPS[0].core/buffer_pconv[619] , \CHIPS[0].core/buffer_pconv[618] ,
         \CHIPS[0].core/buffer_pconv[617] , \CHIPS[0].core/buffer_pconv[616] ,
         \CHIPS[0].core/buffer_pconv[615] , \CHIPS[0].core/buffer_pconv[614] ,
         \CHIPS[0].core/buffer_pconv[613] , \CHIPS[0].core/buffer_pconv[612] ,
         \CHIPS[0].core/buffer_pconv[611] , \CHIPS[0].core/buffer_pconv[610] ,
         \CHIPS[0].core/buffer_pconv[609] , \CHIPS[0].core/buffer_pconv[608] ,
         \CHIPS[0].core/buffer_pconv[607] , \CHIPS[0].core/buffer_pconv[606] ,
         \CHIPS[0].core/buffer_pconv[605] , \CHIPS[0].core/buffer_pconv[604] ,
         \CHIPS[0].core/buffer_pconv[603] , \CHIPS[0].core/buffer_pconv[602] ,
         \CHIPS[0].core/buffer_pconv[601] , \CHIPS[0].core/buffer_pconv[600] ,
         \CHIPS[0].core/buffer_pconv[599] , \CHIPS[0].core/buffer_pconv[598] ,
         \CHIPS[0].core/buffer_pconv[597] , \CHIPS[0].core/buffer_pconv[596] ,
         \CHIPS[0].core/buffer_pconv[595] , \CHIPS[0].core/buffer_pconv[594] ,
         \CHIPS[0].core/buffer_pconv[593] , \CHIPS[0].core/buffer_pconv[592] ,
         \CHIPS[0].core/buffer_pconv[591] , \CHIPS[0].core/buffer_pconv[590] ,
         \CHIPS[0].core/buffer_pconv[589] , \CHIPS[0].core/buffer_pconv[588] ,
         \CHIPS[0].core/buffer_pconv[587] , \CHIPS[0].core/buffer_pconv[586] ,
         \CHIPS[0].core/buffer_pconv[585] , \CHIPS[0].core/buffer_pconv[584] ,
         \CHIPS[0].core/buffer_pconv[583] , \CHIPS[0].core/buffer_pconv[582] ,
         \CHIPS[0].core/buffer_pconv[581] , \CHIPS[0].core/buffer_pconv[580] ,
         \CHIPS[0].core/buffer_pconv[579] , \CHIPS[0].core/buffer_pconv[578] ,
         \CHIPS[0].core/buffer_pconv[577] , \CHIPS[0].core/buffer_pconv[576] ,
         \CHIPS[0].core/buffer_pconv[575] , \CHIPS[0].core/buffer_pconv[574] ,
         \CHIPS[0].core/buffer_pconv[573] , \CHIPS[0].core/buffer_pconv[572] ,
         \CHIPS[0].core/buffer_pconv[571] , \CHIPS[0].core/buffer_pconv[570] ,
         \CHIPS[0].core/buffer_pconv[569] , \CHIPS[0].core/buffer_pconv[568] ,
         \CHIPS[0].core/buffer_pconv[567] , \CHIPS[0].core/buffer_pconv[566] ,
         \CHIPS[0].core/buffer_pconv[565] , \CHIPS[0].core/buffer_pconv[564] ,
         \CHIPS[0].core/buffer_pconv[563] , \CHIPS[0].core/buffer_pconv[562] ,
         \CHIPS[0].core/buffer_pconv[561] , \CHIPS[0].core/buffer_pconv[560] ,
         \CHIPS[0].core/buffer_pconv[559] , \CHIPS[0].core/buffer_pconv[558] ,
         \CHIPS[0].core/buffer_pconv[557] , \CHIPS[0].core/buffer_pconv[556] ,
         \CHIPS[0].core/buffer_pconv[555] , \CHIPS[0].core/buffer_pconv[554] ,
         \CHIPS[0].core/buffer_pconv[553] , \CHIPS[0].core/buffer_pconv[552] ,
         \CHIPS[0].core/buffer_pconv[551] , \CHIPS[0].core/buffer_pconv[550] ,
         \CHIPS[0].core/buffer_pconv[549] , \CHIPS[0].core/buffer_pconv[548] ,
         \CHIPS[0].core/buffer_pconv[547] , \CHIPS[0].core/buffer_pconv[546] ,
         \CHIPS[0].core/buffer_pconv[545] , \CHIPS[0].core/buffer_pconv[544] ,
         \CHIPS[0].core/buffer_pconv[543] , \CHIPS[0].core/buffer_pconv[542] ,
         \CHIPS[0].core/buffer_pconv[541] , \CHIPS[0].core/buffer_pconv[540] ,
         \CHIPS[0].core/buffer_pconv[539] , \CHIPS[0].core/buffer_pconv[538] ,
         \CHIPS[0].core/buffer_pconv[537] , \CHIPS[0].core/buffer_pconv[536] ,
         \CHIPS[0].core/buffer_pconv[535] , \CHIPS[0].core/buffer_pconv[534] ,
         \CHIPS[0].core/buffer_pconv[533] , \CHIPS[0].core/buffer_pconv[532] ,
         \CHIPS[0].core/buffer_pconv[531] , \CHIPS[0].core/buffer_pconv[530] ,
         \CHIPS[0].core/buffer_pconv[529] , \CHIPS[0].core/buffer_pconv[528] ,
         \CHIPS[0].core/buffer_pconv[527] , \CHIPS[0].core/buffer_pconv[526] ,
         \CHIPS[0].core/buffer_pconv[525] , \CHIPS[0].core/buffer_pconv[524] ,
         \CHIPS[0].core/buffer_pconv[523] , \CHIPS[0].core/buffer_pconv[522] ,
         \CHIPS[0].core/buffer_pconv[521] , \CHIPS[0].core/buffer_pconv[520] ,
         \CHIPS[0].core/buffer_pconv[519] , \CHIPS[0].core/buffer_pconv[518] ,
         \CHIPS[0].core/buffer_pconv[517] , \CHIPS[0].core/buffer_pconv[516] ,
         \CHIPS[0].core/buffer_pconv[515] , \CHIPS[0].core/buffer_pconv[514] ,
         \CHIPS[0].core/buffer_pconv[513] , \CHIPS[0].core/buffer_pconv[512] ,
         \CHIPS[0].core/buffer_pconv[511] , \CHIPS[0].core/buffer_pconv[510] ,
         \CHIPS[0].core/buffer_pconv[509] , \CHIPS[0].core/buffer_pconv[508] ,
         \CHIPS[0].core/buffer_pconv[507] , \CHIPS[0].core/buffer_pconv[506] ,
         \CHIPS[0].core/buffer_pconv[505] , \CHIPS[0].core/buffer_pconv[504] ,
         \CHIPS[0].core/buffer_pconv[503] , \CHIPS[0].core/buffer_pconv[502] ,
         \CHIPS[0].core/buffer_pconv[501] , \CHIPS[0].core/buffer_pconv[500] ,
         \CHIPS[0].core/buffer_pconv[499] , \CHIPS[0].core/buffer_pconv[498] ,
         \CHIPS[0].core/buffer_pconv[497] , \CHIPS[0].core/buffer_pconv[496] ,
         \CHIPS[0].core/buffer_pconv[495] , \CHIPS[0].core/buffer_pconv[494] ,
         \CHIPS[0].core/buffer_pconv[493] , \CHIPS[0].core/buffer_pconv[492] ,
         \CHIPS[0].core/buffer_pconv[491] , \CHIPS[0].core/buffer_pconv[490] ,
         \CHIPS[0].core/buffer_pconv[489] , \CHIPS[0].core/buffer_pconv[488] ,
         \CHIPS[0].core/buffer_pconv[487] , \CHIPS[0].core/buffer_pconv[486] ,
         \CHIPS[0].core/buffer_pconv[485] , \CHIPS[0].core/buffer_pconv[484] ,
         \CHIPS[0].core/buffer_pconv[483] , \CHIPS[0].core/buffer_pconv[482] ,
         \CHIPS[0].core/buffer_pconv[481] , \CHIPS[0].core/buffer_pconv[480] ,
         \CHIPS[0].core/buffer_pconv[479] , \CHIPS[0].core/buffer_pconv[478] ,
         \CHIPS[0].core/buffer_pconv[477] , \CHIPS[0].core/buffer_pconv[476] ,
         \CHIPS[0].core/buffer_pconv[475] , \CHIPS[0].core/buffer_pconv[474] ,
         \CHIPS[0].core/buffer_pconv[473] , \CHIPS[0].core/buffer_pconv[472] ,
         \CHIPS[0].core/buffer_pconv[471] , \CHIPS[0].core/buffer_pconv[470] ,
         \CHIPS[0].core/buffer_pconv[469] , \CHIPS[0].core/buffer_pconv[468] ,
         \CHIPS[0].core/buffer_pconv[467] , \CHIPS[0].core/buffer_pconv[466] ,
         \CHIPS[0].core/buffer_pconv[465] , \CHIPS[0].core/buffer_pconv[464] ,
         \CHIPS[0].core/buffer_pconv[463] , \CHIPS[0].core/buffer_pconv[462] ,
         \CHIPS[0].core/buffer_pconv[461] , \CHIPS[0].core/buffer_pconv[460] ,
         \CHIPS[0].core/buffer_pconv[459] , \CHIPS[0].core/buffer_pconv[458] ,
         \CHIPS[0].core/buffer_pconv[457] , \CHIPS[0].core/buffer_pconv[456] ,
         \CHIPS[0].core/buffer_pconv[455] , \CHIPS[0].core/buffer_pconv[454] ,
         \CHIPS[0].core/buffer_pconv[453] , \CHIPS[0].core/buffer_pconv[452] ,
         \CHIPS[0].core/buffer_pconv[451] , \CHIPS[0].core/buffer_pconv[450] ,
         \CHIPS[0].core/buffer_pconv[449] , \CHIPS[0].core/buffer_pconv[448] ,
         \CHIPS[0].core/buffer_pconv[447] , \CHIPS[0].core/buffer_pconv[446] ,
         \CHIPS[0].core/buffer_pconv[445] , \CHIPS[0].core/buffer_pconv[444] ,
         \CHIPS[0].core/buffer_pconv[443] , \CHIPS[0].core/buffer_pconv[442] ,
         \CHIPS[0].core/buffer_pconv[441] , \CHIPS[0].core/buffer_pconv[440] ,
         \CHIPS[0].core/buffer_pconv[439] , \CHIPS[0].core/buffer_pconv[438] ,
         \CHIPS[0].core/buffer_pconv[437] , \CHIPS[0].core/buffer_pconv[436] ,
         \CHIPS[0].core/buffer_pconv[435] , \CHIPS[0].core/buffer_pconv[434] ,
         \CHIPS[0].core/buffer_pconv[433] , \CHIPS[0].core/buffer_pconv[432] ,
         \CHIPS[0].core/buffer_pconv[431] , \CHIPS[0].core/buffer_pconv[430] ,
         \CHIPS[0].core/buffer_pconv[429] , \CHIPS[0].core/buffer_pconv[428] ,
         \CHIPS[0].core/buffer_pconv[427] , \CHIPS[0].core/buffer_pconv[426] ,
         \CHIPS[0].core/buffer_pconv[425] , \CHIPS[0].core/buffer_pconv[424] ,
         \CHIPS[0].core/buffer_pconv[423] , \CHIPS[0].core/buffer_pconv[422] ,
         \CHIPS[0].core/buffer_pconv[421] , \CHIPS[0].core/buffer_pconv[420] ,
         \CHIPS[0].core/buffer_pconv[419] , \CHIPS[0].core/buffer_pconv[418] ,
         \CHIPS[0].core/buffer_pconv[417] , \CHIPS[0].core/buffer_pconv[416] ,
         \CHIPS[0].core/buffer_pconv[415] , \CHIPS[0].core/buffer_pconv[414] ,
         \CHIPS[0].core/buffer_pconv[413] , \CHIPS[0].core/buffer_pconv[412] ,
         \CHIPS[0].core/buffer_pconv[411] , \CHIPS[0].core/buffer_pconv[410] ,
         \CHIPS[0].core/buffer_pconv[409] , \CHIPS[0].core/buffer_pconv[408] ,
         \CHIPS[0].core/buffer_pconv[407] , \CHIPS[0].core/buffer_pconv[406] ,
         \CHIPS[0].core/buffer_pconv[405] , \CHIPS[0].core/buffer_pconv[404] ,
         \CHIPS[0].core/buffer_pconv[403] , \CHIPS[0].core/buffer_pconv[402] ,
         \CHIPS[0].core/buffer_pconv[401] , \CHIPS[0].core/buffer_pconv[400] ,
         \CHIPS[0].core/buffer_pconv[399] , \CHIPS[0].core/buffer_pconv[398] ,
         \CHIPS[0].core/buffer_pconv[397] , \CHIPS[0].core/buffer_pconv[396] ,
         \CHIPS[0].core/buffer_pconv[395] , \CHIPS[0].core/buffer_pconv[394] ,
         \CHIPS[0].core/buffer_pconv[393] , \CHIPS[0].core/buffer_pconv[392] ,
         \CHIPS[0].core/buffer_pconv[391] , \CHIPS[0].core/buffer_pconv[390] ,
         \CHIPS[0].core/buffer_pconv[389] , \CHIPS[0].core/buffer_pconv[388] ,
         \CHIPS[0].core/buffer_pconv[387] , \CHIPS[0].core/buffer_pconv[386] ,
         \CHIPS[0].core/buffer_pconv[385] , \CHIPS[0].core/buffer_pconv[384] ,
         \CHIPS[0].core/buffer_pconv[383] , \CHIPS[0].core/buffer_pconv[382] ,
         \CHIPS[0].core/buffer_pconv[381] , \CHIPS[0].core/buffer_pconv[380] ,
         \CHIPS[0].core/buffer_pconv[379] , \CHIPS[0].core/buffer_pconv[378] ,
         \CHIPS[0].core/buffer_pconv[377] , \CHIPS[0].core/buffer_pconv[376] ,
         \CHIPS[0].core/buffer_pconv[375] , \CHIPS[0].core/buffer_pconv[374] ,
         \CHIPS[0].core/buffer_pconv[373] , \CHIPS[0].core/buffer_pconv[372] ,
         \CHIPS[0].core/buffer_pconv[371] , \CHIPS[0].core/buffer_pconv[370] ,
         \CHIPS[0].core/buffer_pconv[369] , \CHIPS[0].core/buffer_pconv[368] ,
         \CHIPS[0].core/buffer_pconv[367] , \CHIPS[0].core/buffer_pconv[366] ,
         \CHIPS[0].core/buffer_pconv[365] , \CHIPS[0].core/buffer_pconv[364] ,
         \CHIPS[0].core/buffer_pconv[363] , \CHIPS[0].core/buffer_pconv[362] ,
         \CHIPS[0].core/buffer_pconv[361] , \CHIPS[0].core/buffer_pconv[360] ,
         \CHIPS[0].core/buffer_pconv[359] , \CHIPS[0].core/buffer_pconv[358] ,
         \CHIPS[0].core/buffer_pconv[357] , \CHIPS[0].core/buffer_pconv[356] ,
         \CHIPS[0].core/buffer_pconv[355] , \CHIPS[0].core/buffer_pconv[354] ,
         \CHIPS[0].core/buffer_pconv[353] , \CHIPS[0].core/buffer_pconv[352] ,
         \CHIPS[0].core/buffer_pconv[351] , \CHIPS[0].core/buffer_pconv[350] ,
         \CHIPS[0].core/buffer_pconv[349] , \CHIPS[0].core/buffer_pconv[348] ,
         \CHIPS[0].core/buffer_pconv[347] , \CHIPS[0].core/buffer_pconv[346] ,
         \CHIPS[0].core/buffer_pconv[345] , \CHIPS[0].core/buffer_pconv[344] ,
         \CHIPS[0].core/buffer_pconv[343] , \CHIPS[0].core/buffer_pconv[342] ,
         \CHIPS[0].core/buffer_pconv[341] , \CHIPS[0].core/buffer_pconv[340] ,
         \CHIPS[0].core/buffer_pconv[339] , \CHIPS[0].core/buffer_pconv[338] ,
         \CHIPS[0].core/buffer_pconv[337] , \CHIPS[0].core/buffer_pconv[336] ,
         \CHIPS[0].core/buffer_pconv[335] , \CHIPS[0].core/buffer_pconv[334] ,
         \CHIPS[0].core/buffer_pconv[333] , \CHIPS[0].core/buffer_pconv[332] ,
         \CHIPS[0].core/buffer_pconv[331] , \CHIPS[0].core/buffer_pconv[330] ,
         \CHIPS[0].core/buffer_pconv[329] , \CHIPS[0].core/buffer_pconv[328] ,
         \CHIPS[0].core/buffer_pconv[327] , \CHIPS[0].core/buffer_pconv[326] ,
         \CHIPS[0].core/buffer_pconv[325] , \CHIPS[0].core/buffer_pconv[324] ,
         \CHIPS[0].core/buffer_pconv[323] , \CHIPS[0].core/buffer_pconv[322] ,
         \CHIPS[0].core/buffer_pconv[321] , \CHIPS[0].core/buffer_pconv[320] ,
         \CHIPS[0].core/buffer_pconv[319] , \CHIPS[0].core/buffer_pconv[318] ,
         \CHIPS[0].core/buffer_pconv[317] , \CHIPS[0].core/buffer_pconv[316] ,
         \CHIPS[0].core/buffer_pconv[315] , \CHIPS[0].core/buffer_pconv[314] ,
         \CHIPS[0].core/buffer_pconv[313] , \CHIPS[0].core/buffer_pconv[312] ,
         \CHIPS[0].core/buffer_pconv[311] , \CHIPS[0].core/buffer_pconv[310] ,
         \CHIPS[0].core/buffer_pconv[309] , \CHIPS[0].core/buffer_pconv[308] ,
         \CHIPS[0].core/buffer_pconv[307] , \CHIPS[0].core/buffer_pconv[306] ,
         \CHIPS[0].core/buffer_pconv[305] , \CHIPS[0].core/buffer_pconv[304] ,
         \CHIPS[0].core/buffer_pconv[303] , \CHIPS[0].core/buffer_pconv[302] ,
         \CHIPS[0].core/buffer_pconv[301] , \CHIPS[0].core/buffer_pconv[300] ,
         \CHIPS[0].core/buffer_pconv[299] , \CHIPS[0].core/buffer_pconv[298] ,
         \CHIPS[0].core/buffer_pconv[297] , \CHIPS[0].core/buffer_pconv[296] ,
         \CHIPS[0].core/buffer_pconv[295] , \CHIPS[0].core/buffer_pconv[294] ,
         \CHIPS[0].core/buffer_pconv[293] , \CHIPS[0].core/buffer_pconv[292] ,
         \CHIPS[0].core/buffer_pconv[291] , \CHIPS[0].core/buffer_pconv[290] ,
         \CHIPS[0].core/buffer_pconv[289] , \CHIPS[0].core/buffer_pconv[288] ,
         \CHIPS[0].core/buffer_pconv[287] , \CHIPS[0].core/buffer_pconv[286] ,
         \CHIPS[0].core/buffer_pconv[285] , \CHIPS[0].core/buffer_pconv[284] ,
         \CHIPS[0].core/buffer_pconv[283] , \CHIPS[0].core/buffer_pconv[282] ,
         \CHIPS[0].core/buffer_pconv[281] , \CHIPS[0].core/buffer_pconv[280] ,
         \CHIPS[0].core/buffer_pconv[279] , \CHIPS[0].core/buffer_pconv[278] ,
         \CHIPS[0].core/buffer_pconv[277] , \CHIPS[0].core/buffer_pconv[276] ,
         \CHIPS[0].core/buffer_pconv[275] , \CHIPS[0].core/buffer_pconv[274] ,
         \CHIPS[0].core/buffer_pconv[273] , \CHIPS[0].core/buffer_pconv[272] ,
         \CHIPS[0].core/buffer_pconv[271] , \CHIPS[0].core/buffer_pconv[270] ,
         \CHIPS[0].core/buffer_pconv[269] , \CHIPS[0].core/buffer_pconv[268] ,
         \CHIPS[0].core/buffer_pconv[267] , \CHIPS[0].core/buffer_pconv[266] ,
         \CHIPS[0].core/buffer_pconv[265] , \CHIPS[0].core/buffer_pconv[264] ,
         \CHIPS[0].core/buffer_pconv[263] , \CHIPS[0].core/buffer_pconv[262] ,
         \CHIPS[0].core/buffer_pconv[261] , \CHIPS[0].core/buffer_pconv[260] ,
         \CHIPS[0].core/buffer_pconv[259] , \CHIPS[0].core/buffer_pconv[258] ,
         \CHIPS[0].core/buffer_pconv[257] , \CHIPS[0].core/buffer_pconv[256] ,
         \CHIPS[0].core/buffer_pconv[255] , \CHIPS[0].core/buffer_pconv[254] ,
         \CHIPS[0].core/buffer_pconv[253] , \CHIPS[0].core/buffer_pconv[252] ,
         \CHIPS[0].core/buffer_pconv[251] , \CHIPS[0].core/buffer_pconv[250] ,
         \CHIPS[0].core/buffer_pconv[249] , \CHIPS[0].core/buffer_pconv[248] ,
         \CHIPS[0].core/buffer_pconv[247] , \CHIPS[0].core/buffer_pconv[246] ,
         \CHIPS[0].core/buffer_pconv[245] , \CHIPS[0].core/buffer_pconv[244] ,
         \CHIPS[0].core/buffer_pconv[243] , \CHIPS[0].core/buffer_pconv[242] ,
         \CHIPS[0].core/buffer_pconv[241] , \CHIPS[0].core/buffer_pconv[240] ,
         \CHIPS[0].core/buffer_pconv[239] , \CHIPS[0].core/buffer_pconv[238] ,
         \CHIPS[0].core/buffer_pconv[237] , \CHIPS[0].core/buffer_pconv[236] ,
         \CHIPS[0].core/buffer_pconv[235] , \CHIPS[0].core/buffer_pconv[234] ,
         \CHIPS[0].core/buffer_pconv[233] , \CHIPS[0].core/buffer_pconv[232] ,
         \CHIPS[0].core/buffer_pconv[231] , \CHIPS[0].core/buffer_pconv[230] ,
         \CHIPS[0].core/buffer_pconv[229] , \CHIPS[0].core/buffer_pconv[228] ,
         \CHIPS[0].core/buffer_pconv[227] , \CHIPS[0].core/buffer_pconv[226] ,
         \CHIPS[0].core/buffer_pconv[225] , \CHIPS[0].core/buffer_pconv[224] ,
         \CHIPS[0].core/buffer_pconv[223] , \CHIPS[0].core/buffer_pconv[222] ,
         \CHIPS[0].core/buffer_pconv[221] , \CHIPS[0].core/buffer_pconv[220] ,
         \CHIPS[0].core/buffer_pconv[219] , \CHIPS[0].core/buffer_pconv[218] ,
         \CHIPS[0].core/buffer_pconv[217] , \CHIPS[0].core/buffer_pconv[216] ,
         \CHIPS[0].core/buffer_pconv[215] , \CHIPS[0].core/buffer_pconv[214] ,
         \CHIPS[0].core/buffer_pconv[213] , \CHIPS[0].core/buffer_pconv[212] ,
         \CHIPS[0].core/buffer_pconv[211] , \CHIPS[0].core/buffer_pconv[210] ,
         \CHIPS[0].core/buffer_pconv[209] , \CHIPS[0].core/buffer_pconv[208] ,
         \CHIPS[0].core/buffer_pconv[207] , \CHIPS[0].core/buffer_pconv[206] ,
         \CHIPS[0].core/buffer_pconv[205] , \CHIPS[0].core/buffer_pconv[204] ,
         \CHIPS[0].core/buffer_pconv[203] , \CHIPS[0].core/buffer_pconv[202] ,
         \CHIPS[0].core/buffer_pconv[201] , \CHIPS[0].core/buffer_pconv[200] ,
         \CHIPS[0].core/buffer_pconv[199] , \CHIPS[0].core/buffer_pconv[198] ,
         \CHIPS[0].core/buffer_pconv[197] , \CHIPS[0].core/buffer_pconv[196] ,
         \CHIPS[0].core/buffer_pconv[195] , \CHIPS[0].core/buffer_pconv[194] ,
         \CHIPS[0].core/buffer_pconv[193] , \CHIPS[0].core/buffer_pconv[192] ,
         \CHIPS[0].core/buffer_pconv[191] , \CHIPS[0].core/buffer_pconv[190] ,
         \CHIPS[0].core/buffer_pconv[189] , \CHIPS[0].core/buffer_pconv[188] ,
         \CHIPS[0].core/buffer_pconv[187] , \CHIPS[0].core/buffer_pconv[186] ,
         \CHIPS[0].core/buffer_pconv[185] , \CHIPS[0].core/buffer_pconv[184] ,
         \CHIPS[0].core/buffer_pconv[183] , \CHIPS[0].core/buffer_pconv[182] ,
         \CHIPS[0].core/buffer_pconv[181] , \CHIPS[0].core/buffer_pconv[180] ,
         \CHIPS[0].core/buffer_pconv[179] , \CHIPS[0].core/buffer_pconv[178] ,
         \CHIPS[0].core/buffer_pconv[177] , \CHIPS[0].core/buffer_pconv[176] ,
         \CHIPS[0].core/buffer_pconv[175] , \CHIPS[0].core/buffer_pconv[174] ,
         \CHIPS[0].core/buffer_pconv[173] , \CHIPS[0].core/buffer_pconv[172] ,
         \CHIPS[0].core/buffer_pconv[171] , \CHIPS[0].core/buffer_pconv[170] ,
         \CHIPS[0].core/buffer_pconv[169] , \CHIPS[0].core/buffer_pconv[168] ,
         \CHIPS[0].core/buffer_pconv[167] , \CHIPS[0].core/buffer_pconv[166] ,
         \CHIPS[0].core/buffer_pconv[165] , \CHIPS[0].core/buffer_pconv[164] ,
         \CHIPS[0].core/buffer_pconv[163] , \CHIPS[0].core/buffer_pconv[162] ,
         \CHIPS[0].core/buffer_pconv[161] , \CHIPS[0].core/buffer_pconv[160] ,
         \CHIPS[0].core/buffer_pconv[159] , \CHIPS[0].core/buffer_pconv[158] ,
         \CHIPS[0].core/buffer_pconv[157] , \CHIPS[0].core/buffer_pconv[156] ,
         \CHIPS[0].core/buffer_pconv[155] , \CHIPS[0].core/buffer_pconv[154] ,
         \CHIPS[0].core/buffer_pconv[153] , \CHIPS[0].core/buffer_pconv[152] ,
         \CHIPS[0].core/buffer_pconv[151] , \CHIPS[0].core/buffer_pconv[150] ,
         \CHIPS[0].core/buffer_pconv[149] , \CHIPS[0].core/buffer_pconv[148] ,
         \CHIPS[0].core/buffer_pconv[147] , \CHIPS[0].core/buffer_pconv[146] ,
         \CHIPS[0].core/buffer_pconv[145] , \CHIPS[0].core/buffer_pconv[144] ,
         \CHIPS[0].core/buffer_pconv[143] , \CHIPS[0].core/buffer_pconv[142] ,
         \CHIPS[0].core/buffer_pconv[141] , \CHIPS[0].core/buffer_pconv[140] ,
         \CHIPS[0].core/buffer_pconv[139] , \CHIPS[0].core/buffer_pconv[138] ,
         \CHIPS[0].core/buffer_pconv[137] , \CHIPS[0].core/buffer_pconv[136] ,
         \CHIPS[0].core/buffer_pconv[135] , \CHIPS[0].core/buffer_pconv[134] ,
         \CHIPS[0].core/buffer_pconv[133] , \CHIPS[0].core/buffer_pconv[132] ,
         \CHIPS[0].core/buffer_pconv[131] , \CHIPS[0].core/buffer_pconv[130] ,
         \CHIPS[0].core/buffer_pconv[129] , \CHIPS[0].core/buffer_pconv[128] ,
         \CHIPS[0].core/buffer_pconv[127] , \CHIPS[0].core/buffer_pconv[126] ,
         \CHIPS[0].core/buffer_pconv[125] , \CHIPS[0].core/buffer_pconv[124] ,
         \CHIPS[0].core/buffer_pconv[123] , \CHIPS[0].core/buffer_pconv[122] ,
         \CHIPS[0].core/buffer_pconv[121] , \CHIPS[0].core/buffer_pconv[120] ,
         \CHIPS[0].core/buffer_pconv[119] , \CHIPS[0].core/buffer_pconv[118] ,
         \CHIPS[0].core/buffer_pconv[117] , \CHIPS[0].core/buffer_pconv[116] ,
         \CHIPS[0].core/buffer_pconv[115] , \CHIPS[0].core/buffer_pconv[114] ,
         \CHIPS[0].core/buffer_pconv[113] , \CHIPS[0].core/buffer_pconv[112] ,
         \CHIPS[0].core/buffer_pconv[111] , \CHIPS[0].core/buffer_pconv[110] ,
         \CHIPS[0].core/buffer_pconv[109] , \CHIPS[0].core/buffer_pconv[108] ,
         \CHIPS[0].core/buffer_pconv[107] , \CHIPS[0].core/buffer_pconv[106] ,
         \CHIPS[0].core/buffer_pconv[105] , \CHIPS[0].core/buffer_pconv[104] ,
         \CHIPS[0].core/buffer_pconv[103] , \CHIPS[0].core/buffer_pconv[102] ,
         \CHIPS[0].core/buffer_pconv[101] , \CHIPS[0].core/buffer_pconv[100] ,
         \CHIPS[0].core/buffer_pconv[99] , \CHIPS[0].core/buffer_pconv[98] ,
         \CHIPS[0].core/buffer_pconv[97] , \CHIPS[0].core/buffer_pconv[96] ,
         \CHIPS[0].core/buffer_pconv[95] , \CHIPS[0].core/buffer_pconv[94] ,
         \CHIPS[0].core/buffer_pconv[93] , \CHIPS[0].core/buffer_pconv[92] ,
         \CHIPS[0].core/buffer_pconv[91] , \CHIPS[0].core/buffer_pconv[90] ,
         \CHIPS[0].core/buffer_pconv[89] , \CHIPS[0].core/buffer_pconv[88] ,
         \CHIPS[0].core/buffer_pconv[87] , \CHIPS[0].core/buffer_pconv[86] ,
         \CHIPS[0].core/buffer_pconv[85] , \CHIPS[0].core/buffer_pconv[84] ,
         \CHIPS[0].core/buffer_pconv[83] , \CHIPS[0].core/buffer_pconv[82] ,
         \CHIPS[0].core/buffer_pconv[81] , \CHIPS[0].core/buffer_pconv[80] ,
         \CHIPS[0].core/buffer_pconv[79] , \CHIPS[0].core/buffer_pconv[78] ,
         \CHIPS[0].core/buffer_pconv[77] , \CHIPS[0].core/buffer_pconv[76] ,
         \CHIPS[0].core/buffer_pconv[75] , \CHIPS[0].core/buffer_pconv[74] ,
         \CHIPS[0].core/buffer_pconv[73] , \CHIPS[0].core/buffer_pconv[72] ,
         \CHIPS[0].core/buffer_pconv[70] , \CHIPS[0].core/buffer_pconv[69] ,
         \CHIPS[0].core/buffer_pconv[68] , \CHIPS[0].core/buffer_pconv[67] ,
         \CHIPS[0].core/buffer_pconv[66] , \CHIPS[0].core/buffer_pconv[65] ,
         \CHIPS[0].core/buffer_pconv[64] , \CHIPS[0].core/buffer_pconv[63] ,
         \CHIPS[0].core/buffer_pconv[62] , \CHIPS[0].core/buffer_pconv[61] ,
         \CHIPS[0].core/buffer_pconv[60] , \CHIPS[0].core/buffer_pconv[59] ,
         \CHIPS[0].core/buffer_pconv[58] , \CHIPS[0].core/buffer_pconv[57] ,
         \CHIPS[0].core/buffer_pconv[56] , \CHIPS[0].core/buffer_pconv[55] ,
         \CHIPS[0].core/buffer_pconv[54] , \CHIPS[0].core/buffer_pconv[52] ,
         \CHIPS[0].core/buffer_pconv[51] , \CHIPS[0].core/buffer_pconv[50] ,
         \CHIPS[0].core/buffer_pconv[49] , \CHIPS[0].core/buffer_pconv[48] ,
         \CHIPS[0].core/buffer_pconv[47] , \CHIPS[0].core/buffer_pconv[46] ,
         \CHIPS[0].core/buffer_pconv[45] , \CHIPS[0].core/buffer_pconv[44] ,
         \CHIPS[0].core/buffer_pconv[43] , \CHIPS[0].core/buffer_pconv[42] ,
         \CHIPS[0].core/buffer_pconv[41] , \CHIPS[0].core/buffer_pconv[40] ,
         \CHIPS[0].core/buffer_pconv[39] , \CHIPS[0].core/buffer_pconv[38] ,
         \CHIPS[0].core/buffer_pconv[37] , \CHIPS[0].core/buffer_pconv[36] ,
         \CHIPS[0].core/buffer_pconv[34] , \CHIPS[0].core/buffer_pconv[33] ,
         \CHIPS[0].core/buffer_pconv[32] , \CHIPS[0].core/buffer_pconv[31] ,
         \CHIPS[0].core/buffer_pconv[30] , \CHIPS[0].core/buffer_pconv[29] ,
         \CHIPS[0].core/buffer_pconv[28] , \CHIPS[0].core/buffer_pconv[27] ,
         \CHIPS[0].core/buffer_pconv[26] , \CHIPS[0].core/buffer_pconv[25] ,
         \CHIPS[0].core/buffer_pconv[24] , \CHIPS[0].core/buffer_pconv[23] ,
         \CHIPS[0].core/buffer_pconv[22] , \CHIPS[0].core/buffer_pconv[21] ,
         \CHIPS[0].core/buffer_pconv[20] , \CHIPS[0].core/buffer_pconv[19] ,
         \CHIPS[0].core/buffer_pconv[18] , \CHIPS[0].core/buffer_pconv[16] ,
         \CHIPS[0].core/buffer_pconv[15] , \CHIPS[0].core/buffer_pconv[14] ,
         \CHIPS[0].core/buffer_pconv[13] , \CHIPS[0].core/buffer_pconv[12] ,
         \CHIPS[0].core/buffer_pconv[11] , \CHIPS[0].core/buffer_pconv[10] ,
         \CHIPS[0].core/buffer_pconv[9] , \CHIPS[0].core/buffer_pconv[8] ,
         \CHIPS[0].core/buffer_pconv[7] , \CHIPS[0].core/buffer_pconv[6] ,
         \CHIPS[0].core/buffer_pconv[5] , \CHIPS[0].core/buffer_pconv[4] ,
         \CHIPS[0].core/buffer_pconv[3] , \CHIPS[0].core/buffer_pconv[2] ,
         \CHIPS[0].core/buffer_pconv[1] , \CHIPS[0].core/buffer_pconv[0] ,
         \CHIPS[0].core/temp_pconv[16] , \CHIPS[0].core/temp_pconv[15] ,
         \CHIPS[0].core/temp_pconv[14] , \CHIPS[0].core/temp_pconv[13] ,
         \CHIPS[0].core/temp_pconv[12] , \CHIPS[0].core/temp_pconv[11] ,
         \CHIPS[0].core/temp_pconv[10] , \CHIPS[0].core/temp_pconv[9] ,
         \CHIPS[0].core/temp_pconv[8] , \CHIPS[0].core/temp_pconv[7] ,
         \CHIPS[0].core/temp_pconv[6] , \CHIPS[0].core/temp_pconv[5] ,
         \CHIPS[0].core/temp_pconv[4] , \CHIPS[0].core/temp_pconv[3] ,
         \CHIPS[0].core/temp_pconv[2] , \CHIPS[0].core/temp_pconv[1] ,
         \CHIPS[0].core/temp_pconv[0] , \CHIPS[1].core/buffer_ppool_0 ,
         \CHIPS[1].core/buffer_ppool_1 , \CHIPS[1].core/buffer_ppool_2 ,
         \CHIPS[1].core/buffer_ppool_3 , \CHIPS[1].core/buffer_ppool_4 ,
         \CHIPS[1].core/buffer_ppool_5 , \CHIPS[1].core/buffer_ppool_6 ,
         \CHIPS[1].core/buffer_ppool_7 , \CHIPS[1].core/buffer_ppool_8 ,
         \CHIPS[1].core/buffer_ppool_9 , \CHIPS[1].core/buffer_ppool_10 ,
         \CHIPS[1].core/buffer_ppool_11 , \CHIPS[1].core/buffer_ppool_12 ,
         \CHIPS[1].core/buffer_ppool_13 , \CHIPS[1].core/buffer_ppool_14 ,
         \CHIPS[1].core/buffer_ppool_15 , \CHIPS[1].core/pooling[15] ,
         \CHIPS[1].core/pooling[14] , \CHIPS[1].core/pooling[13] ,
         \CHIPS[1].core/pooling[12] , \CHIPS[1].core/pooling[11] ,
         \CHIPS[1].core/pooling[10] , \CHIPS[1].core/pooling[9] ,
         \CHIPS[1].core/pooling[8] , \CHIPS[1].core/pooling[7] ,
         \CHIPS[1].core/pooling[6] , \CHIPS[1].core/pooling[5] ,
         \CHIPS[1].core/pooling[4] , \CHIPS[1].core/pooling[3] ,
         \CHIPS[1].core/pooling[2] , \CHIPS[1].core/pooling[1] ,
         \CHIPS[1].core/pooling[0] , \CHIPS[1].core/temp_ppool[15] ,
         \CHIPS[1].core/temp_ppool[14] , \CHIPS[1].core/temp_ppool[13] ,
         \CHIPS[1].core/temp_ppool[12] , \CHIPS[1].core/temp_ppool[11] ,
         \CHIPS[1].core/temp_ppool[10] , \CHIPS[1].core/temp_ppool[9] ,
         \CHIPS[1].core/temp_ppool[8] , \CHIPS[1].core/temp_ppool[7] ,
         \CHIPS[1].core/temp_ppool[6] , \CHIPS[1].core/temp_ppool[5] ,
         \CHIPS[1].core/temp_ppool[4] , \CHIPS[1].core/temp_ppool[3] ,
         \CHIPS[1].core/temp_ppool[2] , \CHIPS[1].core/temp_ppool[1] ,
         \CHIPS[1].core/temp_ppool[0] , \CHIPS[1].core/buffer_conv[39] ,
         \CHIPS[1].core/buffer_conv[38] , \CHIPS[1].core/buffer_conv[37] ,
         \CHIPS[1].core/buffer_conv[36] , \CHIPS[1].core/buffer_conv[35] ,
         \CHIPS[1].core/buffer_conv[34] , \CHIPS[1].core/buffer_conv[33] ,
         \CHIPS[1].core/buffer_conv[32] , \CHIPS[1].core/buffer_conv[31] ,
         \CHIPS[1].core/buffer_conv[30] , \CHIPS[1].core/buffer_conv[29] ,
         \CHIPS[1].core/buffer_conv[28] , \CHIPS[1].core/buffer_conv[27] ,
         \CHIPS[1].core/buffer_conv[26] , \CHIPS[1].core/buffer_conv[25] ,
         \CHIPS[1].core/buffer_conv[24] , \CHIPS[1].core/buffer_conv[23] ,
         \CHIPS[1].core/buffer_conv[22] , \CHIPS[1].core/buffer_conv[21] ,
         \CHIPS[1].core/buffer_conv[18] , \CHIPS[1].core/buffer_conv[17] ,
         \CHIPS[1].core/buffer_conv[16] , \CHIPS[1].core/buffer_conv[15] ,
         \CHIPS[1].core/buffer_conv[14] , \CHIPS[1].core/buffer_conv[13] ,
         \CHIPS[1].core/buffer_conv[12] , \CHIPS[1].core/buffer_conv[11] ,
         \CHIPS[1].core/buffer_conv[10] , \CHIPS[1].core/buffer_conv[9] ,
         \CHIPS[1].core/buffer_conv[8] , \CHIPS[1].core/buffer_conv[7] ,
         \CHIPS[1].core/buffer_conv[6] , \CHIPS[1].core/buffer_conv[5] ,
         \CHIPS[1].core/buffer_conv[4] , \CHIPS[1].core/buffer_conv[3] ,
         \CHIPS[1].core/buffer_conv[2] , \CHIPS[1].core/buffer_conv[1] ,
         \CHIPS[1].core/buffer_conv[0] , \CHIPS[1].core/temp_conv[18] ,
         \CHIPS[1].core/temp_conv[17] , \CHIPS[1].core/temp_conv[16] ,
         \CHIPS[1].core/temp_conv[15] , \CHIPS[1].core/temp_conv[14] ,
         \CHIPS[1].core/temp_conv[12] , \CHIPS[1].core/temp_conv[10] ,
         \CHIPS[1].core/temp_conv[9] , \CHIPS[1].core/temp_conv[5] ,
         \CHIPS[1].core/temp_conv[4] , \CHIPS[1].core/temp_conv[3] ,
         \CHIPS[1].core/temp_conv[2] , \CHIPS[1].core/temp_conv[1] ,
         \CHIPS[1].core/temp_conv[0] , \CHIPS[1].core/buffer_pconv[953] ,
         \CHIPS[1].core/buffer_pconv[952] , \CHIPS[1].core/buffer_pconv[951] ,
         \CHIPS[1].core/buffer_pconv[950] , \CHIPS[1].core/buffer_pconv[949] ,
         \CHIPS[1].core/buffer_pconv[948] , \CHIPS[1].core/buffer_pconv[947] ,
         \CHIPS[1].core/buffer_pconv[946] , \CHIPS[1].core/buffer_pconv[945] ,
         \CHIPS[1].core/buffer_pconv[944] , \CHIPS[1].core/buffer_pconv[943] ,
         \CHIPS[1].core/buffer_pconv[942] , \CHIPS[1].core/buffer_pconv[941] ,
         \CHIPS[1].core/buffer_pconv[940] , \CHIPS[1].core/buffer_pconv[939] ,
         \CHIPS[1].core/buffer_pconv[938] , \CHIPS[1].core/buffer_pconv[937] ,
         \CHIPS[1].core/buffer_pconv[936] , \CHIPS[1].core/buffer_pconv[935] ,
         \CHIPS[1].core/buffer_pconv[934] , \CHIPS[1].core/buffer_pconv[933] ,
         \CHIPS[1].core/buffer_pconv[932] , \CHIPS[1].core/buffer_pconv[931] ,
         \CHIPS[1].core/buffer_pconv[930] , \CHIPS[1].core/buffer_pconv[929] ,
         \CHIPS[1].core/buffer_pconv[928] , \CHIPS[1].core/buffer_pconv[927] ,
         \CHIPS[1].core/buffer_pconv[926] , \CHIPS[1].core/buffer_pconv[925] ,
         \CHIPS[1].core/buffer_pconv[924] , \CHIPS[1].core/buffer_pconv[923] ,
         \CHIPS[1].core/buffer_pconv[922] , \CHIPS[1].core/buffer_pconv[921] ,
         \CHIPS[1].core/buffer_pconv[920] , \CHIPS[1].core/buffer_pconv[919] ,
         \CHIPS[1].core/buffer_pconv[918] , \CHIPS[1].core/buffer_pconv[917] ,
         \CHIPS[1].core/buffer_pconv[916] , \CHIPS[1].core/buffer_pconv[915] ,
         \CHIPS[1].core/buffer_pconv[914] , \CHIPS[1].core/buffer_pconv[913] ,
         \CHIPS[1].core/buffer_pconv[912] , \CHIPS[1].core/buffer_pconv[911] ,
         \CHIPS[1].core/buffer_pconv[910] , \CHIPS[1].core/buffer_pconv[909] ,
         \CHIPS[1].core/buffer_pconv[908] , \CHIPS[1].core/buffer_pconv[907] ,
         \CHIPS[1].core/buffer_pconv[906] , \CHIPS[1].core/buffer_pconv[905] ,
         \CHIPS[1].core/buffer_pconv[904] , \CHIPS[1].core/buffer_pconv[903] ,
         \CHIPS[1].core/buffer_pconv[902] , \CHIPS[1].core/buffer_pconv[901] ,
         \CHIPS[1].core/buffer_pconv[900] , \CHIPS[1].core/buffer_pconv[899] ,
         \CHIPS[1].core/buffer_pconv[898] , \CHIPS[1].core/buffer_pconv[897] ,
         \CHIPS[1].core/buffer_pconv[896] , \CHIPS[1].core/buffer_pconv[895] ,
         \CHIPS[1].core/buffer_pconv[894] , \CHIPS[1].core/buffer_pconv[893] ,
         \CHIPS[1].core/buffer_pconv[892] , \CHIPS[1].core/buffer_pconv[891] ,
         \CHIPS[1].core/buffer_pconv[890] , \CHIPS[1].core/buffer_pconv[889] ,
         \CHIPS[1].core/buffer_pconv[888] , \CHIPS[1].core/buffer_pconv[887] ,
         \CHIPS[1].core/buffer_pconv[886] , \CHIPS[1].core/buffer_pconv[885] ,
         \CHIPS[1].core/buffer_pconv[884] , \CHIPS[1].core/buffer_pconv[883] ,
         \CHIPS[1].core/buffer_pconv[882] , \CHIPS[1].core/buffer_pconv[881] ,
         \CHIPS[1].core/buffer_pconv[880] , \CHIPS[1].core/buffer_pconv[879] ,
         \CHIPS[1].core/buffer_pconv[878] , \CHIPS[1].core/buffer_pconv[877] ,
         \CHIPS[1].core/buffer_pconv[876] , \CHIPS[1].core/buffer_pconv[875] ,
         \CHIPS[1].core/buffer_pconv[874] , \CHIPS[1].core/buffer_pconv[873] ,
         \CHIPS[1].core/buffer_pconv[872] , \CHIPS[1].core/buffer_pconv[871] ,
         \CHIPS[1].core/buffer_pconv[870] , \CHIPS[1].core/buffer_pconv[869] ,
         \CHIPS[1].core/buffer_pconv[868] , \CHIPS[1].core/buffer_pconv[867] ,
         \CHIPS[1].core/buffer_pconv[866] , \CHIPS[1].core/buffer_pconv[865] ,
         \CHIPS[1].core/buffer_pconv[864] , \CHIPS[1].core/buffer_pconv[863] ,
         \CHIPS[1].core/buffer_pconv[862] , \CHIPS[1].core/buffer_pconv[861] ,
         \CHIPS[1].core/buffer_pconv[860] , \CHIPS[1].core/buffer_pconv[859] ,
         \CHIPS[1].core/buffer_pconv[858] , \CHIPS[1].core/buffer_pconv[857] ,
         \CHIPS[1].core/buffer_pconv[856] , \CHIPS[1].core/buffer_pconv[855] ,
         \CHIPS[1].core/buffer_pconv[854] , \CHIPS[1].core/buffer_pconv[853] ,
         \CHIPS[1].core/buffer_pconv[852] , \CHIPS[1].core/buffer_pconv[851] ,
         \CHIPS[1].core/buffer_pconv[850] , \CHIPS[1].core/buffer_pconv[849] ,
         \CHIPS[1].core/buffer_pconv[848] , \CHIPS[1].core/buffer_pconv[847] ,
         \CHIPS[1].core/buffer_pconv[846] , \CHIPS[1].core/buffer_pconv[845] ,
         \CHIPS[1].core/buffer_pconv[844] , \CHIPS[1].core/buffer_pconv[843] ,
         \CHIPS[1].core/buffer_pconv[842] , \CHIPS[1].core/buffer_pconv[841] ,
         \CHIPS[1].core/buffer_pconv[840] , \CHIPS[1].core/buffer_pconv[839] ,
         \CHIPS[1].core/buffer_pconv[838] , \CHIPS[1].core/buffer_pconv[837] ,
         \CHIPS[1].core/buffer_pconv[836] , \CHIPS[1].core/buffer_pconv[835] ,
         \CHIPS[1].core/buffer_pconv[834] , \CHIPS[1].core/buffer_pconv[833] ,
         \CHIPS[1].core/buffer_pconv[832] , \CHIPS[1].core/buffer_pconv[831] ,
         \CHIPS[1].core/buffer_pconv[830] , \CHIPS[1].core/buffer_pconv[829] ,
         \CHIPS[1].core/buffer_pconv[828] , \CHIPS[1].core/buffer_pconv[827] ,
         \CHIPS[1].core/buffer_pconv[826] , \CHIPS[1].core/buffer_pconv[825] ,
         \CHIPS[1].core/buffer_pconv[824] , \CHIPS[1].core/buffer_pconv[823] ,
         \CHIPS[1].core/buffer_pconv[822] , \CHIPS[1].core/buffer_pconv[821] ,
         \CHIPS[1].core/buffer_pconv[820] , \CHIPS[1].core/buffer_pconv[819] ,
         \CHIPS[1].core/buffer_pconv[818] , \CHIPS[1].core/buffer_pconv[817] ,
         \CHIPS[1].core/buffer_pconv[816] , \CHIPS[1].core/buffer_pconv[815] ,
         \CHIPS[1].core/buffer_pconv[814] , \CHIPS[1].core/buffer_pconv[813] ,
         \CHIPS[1].core/buffer_pconv[812] , \CHIPS[1].core/buffer_pconv[811] ,
         \CHIPS[1].core/buffer_pconv[810] , \CHIPS[1].core/buffer_pconv[809] ,
         \CHIPS[1].core/buffer_pconv[808] , \CHIPS[1].core/buffer_pconv[807] ,
         \CHIPS[1].core/buffer_pconv[806] , \CHIPS[1].core/buffer_pconv[805] ,
         \CHIPS[1].core/buffer_pconv[804] , \CHIPS[1].core/buffer_pconv[803] ,
         \CHIPS[1].core/buffer_pconv[802] , \CHIPS[1].core/buffer_pconv[801] ,
         \CHIPS[1].core/buffer_pconv[800] , \CHIPS[1].core/buffer_pconv[799] ,
         \CHIPS[1].core/buffer_pconv[798] , \CHIPS[1].core/buffer_pconv[797] ,
         \CHIPS[1].core/buffer_pconv[796] , \CHIPS[1].core/buffer_pconv[795] ,
         \CHIPS[1].core/buffer_pconv[794] , \CHIPS[1].core/buffer_pconv[793] ,
         \CHIPS[1].core/buffer_pconv[792] , \CHIPS[1].core/buffer_pconv[791] ,
         \CHIPS[1].core/buffer_pconv[790] , \CHIPS[1].core/buffer_pconv[789] ,
         \CHIPS[1].core/buffer_pconv[788] , \CHIPS[1].core/buffer_pconv[787] ,
         \CHIPS[1].core/buffer_pconv[786] , \CHIPS[1].core/buffer_pconv[785] ,
         \CHIPS[1].core/buffer_pconv[784] , \CHIPS[1].core/buffer_pconv[783] ,
         \CHIPS[1].core/buffer_pconv[782] , \CHIPS[1].core/buffer_pconv[781] ,
         \CHIPS[1].core/buffer_pconv[780] , \CHIPS[1].core/buffer_pconv[779] ,
         \CHIPS[1].core/buffer_pconv[778] , \CHIPS[1].core/buffer_pconv[777] ,
         \CHIPS[1].core/buffer_pconv[776] , \CHIPS[1].core/buffer_pconv[775] ,
         \CHIPS[1].core/buffer_pconv[774] , \CHIPS[1].core/buffer_pconv[773] ,
         \CHIPS[1].core/buffer_pconv[772] , \CHIPS[1].core/buffer_pconv[771] ,
         \CHIPS[1].core/buffer_pconv[770] , \CHIPS[1].core/buffer_pconv[769] ,
         \CHIPS[1].core/buffer_pconv[768] , \CHIPS[1].core/buffer_pconv[767] ,
         \CHIPS[1].core/buffer_pconv[766] , \CHIPS[1].core/buffer_pconv[765] ,
         \CHIPS[1].core/buffer_pconv[764] , \CHIPS[1].core/buffer_pconv[763] ,
         \CHIPS[1].core/buffer_pconv[762] , \CHIPS[1].core/buffer_pconv[761] ,
         \CHIPS[1].core/buffer_pconv[760] , \CHIPS[1].core/buffer_pconv[759] ,
         \CHIPS[1].core/buffer_pconv[758] , \CHIPS[1].core/buffer_pconv[757] ,
         \CHIPS[1].core/buffer_pconv[756] , \CHIPS[1].core/buffer_pconv[755] ,
         \CHIPS[1].core/buffer_pconv[754] , \CHIPS[1].core/buffer_pconv[753] ,
         \CHIPS[1].core/buffer_pconv[752] , \CHIPS[1].core/buffer_pconv[751] ,
         \CHIPS[1].core/buffer_pconv[750] , \CHIPS[1].core/buffer_pconv[749] ,
         \CHIPS[1].core/buffer_pconv[748] , \CHIPS[1].core/buffer_pconv[747] ,
         \CHIPS[1].core/buffer_pconv[746] , \CHIPS[1].core/buffer_pconv[745] ,
         \CHIPS[1].core/buffer_pconv[744] , \CHIPS[1].core/buffer_pconv[743] ,
         \CHIPS[1].core/buffer_pconv[742] , \CHIPS[1].core/buffer_pconv[741] ,
         \CHIPS[1].core/buffer_pconv[740] , \CHIPS[1].core/buffer_pconv[739] ,
         \CHIPS[1].core/buffer_pconv[738] , \CHIPS[1].core/buffer_pconv[737] ,
         \CHIPS[1].core/buffer_pconv[736] , \CHIPS[1].core/buffer_pconv[735] ,
         \CHIPS[1].core/buffer_pconv[734] , \CHIPS[1].core/buffer_pconv[733] ,
         \CHIPS[1].core/buffer_pconv[732] , \CHIPS[1].core/buffer_pconv[731] ,
         \CHIPS[1].core/buffer_pconv[730] , \CHIPS[1].core/buffer_pconv[729] ,
         \CHIPS[1].core/buffer_pconv[728] , \CHIPS[1].core/buffer_pconv[727] ,
         \CHIPS[1].core/buffer_pconv[726] , \CHIPS[1].core/buffer_pconv[725] ,
         \CHIPS[1].core/buffer_pconv[724] , \CHIPS[1].core/buffer_pconv[723] ,
         \CHIPS[1].core/buffer_pconv[722] , \CHIPS[1].core/buffer_pconv[721] ,
         \CHIPS[1].core/buffer_pconv[720] , \CHIPS[1].core/buffer_pconv[719] ,
         \CHIPS[1].core/buffer_pconv[718] , \CHIPS[1].core/buffer_pconv[717] ,
         \CHIPS[1].core/buffer_pconv[716] , \CHIPS[1].core/buffer_pconv[715] ,
         \CHIPS[1].core/buffer_pconv[714] , \CHIPS[1].core/buffer_pconv[713] ,
         \CHIPS[1].core/buffer_pconv[712] , \CHIPS[1].core/buffer_pconv[711] ,
         \CHIPS[1].core/buffer_pconv[710] , \CHIPS[1].core/buffer_pconv[709] ,
         \CHIPS[1].core/buffer_pconv[708] , \CHIPS[1].core/buffer_pconv[707] ,
         \CHIPS[1].core/buffer_pconv[706] , \CHIPS[1].core/buffer_pconv[705] ,
         \CHIPS[1].core/buffer_pconv[704] , \CHIPS[1].core/buffer_pconv[703] ,
         \CHIPS[1].core/buffer_pconv[702] , \CHIPS[1].core/buffer_pconv[701] ,
         \CHIPS[1].core/buffer_pconv[700] , \CHIPS[1].core/buffer_pconv[699] ,
         \CHIPS[1].core/buffer_pconv[698] , \CHIPS[1].core/buffer_pconv[697] ,
         \CHIPS[1].core/buffer_pconv[696] , \CHIPS[1].core/buffer_pconv[695] ,
         \CHIPS[1].core/buffer_pconv[694] , \CHIPS[1].core/buffer_pconv[693] ,
         \CHIPS[1].core/buffer_pconv[692] , \CHIPS[1].core/buffer_pconv[691] ,
         \CHIPS[1].core/buffer_pconv[690] , \CHIPS[1].core/buffer_pconv[689] ,
         \CHIPS[1].core/buffer_pconv[688] , \CHIPS[1].core/buffer_pconv[687] ,
         \CHIPS[1].core/buffer_pconv[686] , \CHIPS[1].core/buffer_pconv[685] ,
         \CHIPS[1].core/buffer_pconv[684] , \CHIPS[1].core/buffer_pconv[683] ,
         \CHIPS[1].core/buffer_pconv[682] , \CHIPS[1].core/buffer_pconv[681] ,
         \CHIPS[1].core/buffer_pconv[680] , \CHIPS[1].core/buffer_pconv[679] ,
         \CHIPS[1].core/buffer_pconv[678] , \CHIPS[1].core/buffer_pconv[677] ,
         \CHIPS[1].core/buffer_pconv[676] , \CHIPS[1].core/buffer_pconv[675] ,
         \CHIPS[1].core/buffer_pconv[674] , \CHIPS[1].core/buffer_pconv[673] ,
         \CHIPS[1].core/buffer_pconv[672] , \CHIPS[1].core/buffer_pconv[671] ,
         \CHIPS[1].core/buffer_pconv[670] , \CHIPS[1].core/buffer_pconv[669] ,
         \CHIPS[1].core/buffer_pconv[668] , \CHIPS[1].core/buffer_pconv[667] ,
         \CHIPS[1].core/buffer_pconv[666] , \CHIPS[1].core/buffer_pconv[665] ,
         \CHIPS[1].core/buffer_pconv[664] , \CHIPS[1].core/buffer_pconv[663] ,
         \CHIPS[1].core/buffer_pconv[662] , \CHIPS[1].core/buffer_pconv[661] ,
         \CHIPS[1].core/buffer_pconv[660] , \CHIPS[1].core/buffer_pconv[659] ,
         \CHIPS[1].core/buffer_pconv[658] , \CHIPS[1].core/buffer_pconv[657] ,
         \CHIPS[1].core/buffer_pconv[656] , \CHIPS[1].core/buffer_pconv[655] ,
         \CHIPS[1].core/buffer_pconv[654] , \CHIPS[1].core/buffer_pconv[653] ,
         \CHIPS[1].core/buffer_pconv[652] , \CHIPS[1].core/buffer_pconv[651] ,
         \CHIPS[1].core/buffer_pconv[650] , \CHIPS[1].core/buffer_pconv[649] ,
         \CHIPS[1].core/buffer_pconv[648] , \CHIPS[1].core/buffer_pconv[647] ,
         \CHIPS[1].core/buffer_pconv[646] , \CHIPS[1].core/buffer_pconv[645] ,
         \CHIPS[1].core/buffer_pconv[644] , \CHIPS[1].core/buffer_pconv[643] ,
         \CHIPS[1].core/buffer_pconv[642] , \CHIPS[1].core/buffer_pconv[641] ,
         \CHIPS[1].core/buffer_pconv[640] , \CHIPS[1].core/buffer_pconv[639] ,
         \CHIPS[1].core/buffer_pconv[638] , \CHIPS[1].core/buffer_pconv[637] ,
         \CHIPS[1].core/buffer_pconv[636] , \CHIPS[1].core/buffer_pconv[635] ,
         \CHIPS[1].core/buffer_pconv[634] , \CHIPS[1].core/buffer_pconv[633] ,
         \CHIPS[1].core/buffer_pconv[632] , \CHIPS[1].core/buffer_pconv[631] ,
         \CHIPS[1].core/buffer_pconv[630] , \CHIPS[1].core/buffer_pconv[629] ,
         \CHIPS[1].core/buffer_pconv[628] , \CHIPS[1].core/buffer_pconv[627] ,
         \CHIPS[1].core/buffer_pconv[626] , \CHIPS[1].core/buffer_pconv[625] ,
         \CHIPS[1].core/buffer_pconv[624] , \CHIPS[1].core/buffer_pconv[623] ,
         \CHIPS[1].core/buffer_pconv[622] , \CHIPS[1].core/buffer_pconv[621] ,
         \CHIPS[1].core/buffer_pconv[620] , \CHIPS[1].core/buffer_pconv[619] ,
         \CHIPS[1].core/buffer_pconv[618] , \CHIPS[1].core/buffer_pconv[617] ,
         \CHIPS[1].core/buffer_pconv[616] , \CHIPS[1].core/buffer_pconv[615] ,
         \CHIPS[1].core/buffer_pconv[614] , \CHIPS[1].core/buffer_pconv[613] ,
         \CHIPS[1].core/buffer_pconv[612] , \CHIPS[1].core/buffer_pconv[611] ,
         \CHIPS[1].core/buffer_pconv[610] , \CHIPS[1].core/buffer_pconv[609] ,
         \CHIPS[1].core/buffer_pconv[608] , \CHIPS[1].core/buffer_pconv[607] ,
         \CHIPS[1].core/buffer_pconv[606] , \CHIPS[1].core/buffer_pconv[605] ,
         \CHIPS[1].core/buffer_pconv[604] , \CHIPS[1].core/buffer_pconv[603] ,
         \CHIPS[1].core/buffer_pconv[602] , \CHIPS[1].core/buffer_pconv[601] ,
         \CHIPS[1].core/buffer_pconv[600] , \CHIPS[1].core/buffer_pconv[599] ,
         \CHIPS[1].core/buffer_pconv[598] , \CHIPS[1].core/buffer_pconv[597] ,
         \CHIPS[1].core/buffer_pconv[596] , \CHIPS[1].core/buffer_pconv[595] ,
         \CHIPS[1].core/buffer_pconv[594] , \CHIPS[1].core/buffer_pconv[593] ,
         \CHIPS[1].core/buffer_pconv[592] , \CHIPS[1].core/buffer_pconv[591] ,
         \CHIPS[1].core/buffer_pconv[590] , \CHIPS[1].core/buffer_pconv[589] ,
         \CHIPS[1].core/buffer_pconv[588] , \CHIPS[1].core/buffer_pconv[587] ,
         \CHIPS[1].core/buffer_pconv[586] , \CHIPS[1].core/buffer_pconv[585] ,
         \CHIPS[1].core/buffer_pconv[584] , \CHIPS[1].core/buffer_pconv[583] ,
         \CHIPS[1].core/buffer_pconv[582] , \CHIPS[1].core/buffer_pconv[581] ,
         \CHIPS[1].core/buffer_pconv[580] , \CHIPS[1].core/buffer_pconv[579] ,
         \CHIPS[1].core/buffer_pconv[578] , \CHIPS[1].core/buffer_pconv[577] ,
         \CHIPS[1].core/buffer_pconv[576] , \CHIPS[1].core/buffer_pconv[575] ,
         \CHIPS[1].core/buffer_pconv[574] , \CHIPS[1].core/buffer_pconv[573] ,
         \CHIPS[1].core/buffer_pconv[572] , \CHIPS[1].core/buffer_pconv[571] ,
         \CHIPS[1].core/buffer_pconv[570] , \CHIPS[1].core/buffer_pconv[569] ,
         \CHIPS[1].core/buffer_pconv[568] , \CHIPS[1].core/buffer_pconv[567] ,
         \CHIPS[1].core/buffer_pconv[566] , \CHIPS[1].core/buffer_pconv[565] ,
         \CHIPS[1].core/buffer_pconv[564] , \CHIPS[1].core/buffer_pconv[563] ,
         \CHIPS[1].core/buffer_pconv[562] , \CHIPS[1].core/buffer_pconv[561] ,
         \CHIPS[1].core/buffer_pconv[560] , \CHIPS[1].core/buffer_pconv[559] ,
         \CHIPS[1].core/buffer_pconv[558] , \CHIPS[1].core/buffer_pconv[557] ,
         \CHIPS[1].core/buffer_pconv[556] , \CHIPS[1].core/buffer_pconv[555] ,
         \CHIPS[1].core/buffer_pconv[554] , \CHIPS[1].core/buffer_pconv[553] ,
         \CHIPS[1].core/buffer_pconv[552] , \CHIPS[1].core/buffer_pconv[551] ,
         \CHIPS[1].core/buffer_pconv[550] , \CHIPS[1].core/buffer_pconv[549] ,
         \CHIPS[1].core/buffer_pconv[548] , \CHIPS[1].core/buffer_pconv[547] ,
         \CHIPS[1].core/buffer_pconv[546] , \CHIPS[1].core/buffer_pconv[545] ,
         \CHIPS[1].core/buffer_pconv[544] , \CHIPS[1].core/buffer_pconv[543] ,
         \CHIPS[1].core/buffer_pconv[542] , \CHIPS[1].core/buffer_pconv[541] ,
         \CHIPS[1].core/buffer_pconv[540] , \CHIPS[1].core/buffer_pconv[539] ,
         \CHIPS[1].core/buffer_pconv[538] , \CHIPS[1].core/buffer_pconv[537] ,
         \CHIPS[1].core/buffer_pconv[536] , \CHIPS[1].core/buffer_pconv[535] ,
         \CHIPS[1].core/buffer_pconv[534] , \CHIPS[1].core/buffer_pconv[533] ,
         \CHIPS[1].core/buffer_pconv[532] , \CHIPS[1].core/buffer_pconv[531] ,
         \CHIPS[1].core/buffer_pconv[530] , \CHIPS[1].core/buffer_pconv[529] ,
         \CHIPS[1].core/buffer_pconv[528] , \CHIPS[1].core/buffer_pconv[527] ,
         \CHIPS[1].core/buffer_pconv[526] , \CHIPS[1].core/buffer_pconv[525] ,
         \CHIPS[1].core/buffer_pconv[524] , \CHIPS[1].core/buffer_pconv[523] ,
         \CHIPS[1].core/buffer_pconv[522] , \CHIPS[1].core/buffer_pconv[521] ,
         \CHIPS[1].core/buffer_pconv[520] , \CHIPS[1].core/buffer_pconv[519] ,
         \CHIPS[1].core/buffer_pconv[518] , \CHIPS[1].core/buffer_pconv[517] ,
         \CHIPS[1].core/buffer_pconv[516] , \CHIPS[1].core/buffer_pconv[515] ,
         \CHIPS[1].core/buffer_pconv[514] , \CHIPS[1].core/buffer_pconv[513] ,
         \CHIPS[1].core/buffer_pconv[512] , \CHIPS[1].core/buffer_pconv[511] ,
         \CHIPS[1].core/buffer_pconv[510] , \CHIPS[1].core/buffer_pconv[509] ,
         \CHIPS[1].core/buffer_pconv[508] , \CHIPS[1].core/buffer_pconv[507] ,
         \CHIPS[1].core/buffer_pconv[506] , \CHIPS[1].core/buffer_pconv[505] ,
         \CHIPS[1].core/buffer_pconv[504] , \CHIPS[1].core/buffer_pconv[503] ,
         \CHIPS[1].core/buffer_pconv[502] , \CHIPS[1].core/buffer_pconv[501] ,
         \CHIPS[1].core/buffer_pconv[500] , \CHIPS[1].core/buffer_pconv[499] ,
         \CHIPS[1].core/buffer_pconv[498] , \CHIPS[1].core/buffer_pconv[497] ,
         \CHIPS[1].core/buffer_pconv[496] , \CHIPS[1].core/buffer_pconv[495] ,
         \CHIPS[1].core/buffer_pconv[494] , \CHIPS[1].core/buffer_pconv[493] ,
         \CHIPS[1].core/buffer_pconv[492] , \CHIPS[1].core/buffer_pconv[491] ,
         \CHIPS[1].core/buffer_pconv[490] , \CHIPS[1].core/buffer_pconv[489] ,
         \CHIPS[1].core/buffer_pconv[488] , \CHIPS[1].core/buffer_pconv[487] ,
         \CHIPS[1].core/buffer_pconv[486] , \CHIPS[1].core/buffer_pconv[485] ,
         \CHIPS[1].core/buffer_pconv[484] , \CHIPS[1].core/buffer_pconv[483] ,
         \CHIPS[1].core/buffer_pconv[482] , \CHIPS[1].core/buffer_pconv[481] ,
         \CHIPS[1].core/buffer_pconv[480] , \CHIPS[1].core/buffer_pconv[479] ,
         \CHIPS[1].core/buffer_pconv[478] , \CHIPS[1].core/buffer_pconv[477] ,
         \CHIPS[1].core/buffer_pconv[476] , \CHIPS[1].core/buffer_pconv[475] ,
         \CHIPS[1].core/buffer_pconv[474] , \CHIPS[1].core/buffer_pconv[473] ,
         \CHIPS[1].core/buffer_pconv[472] , \CHIPS[1].core/buffer_pconv[471] ,
         \CHIPS[1].core/buffer_pconv[470] , \CHIPS[1].core/buffer_pconv[469] ,
         \CHIPS[1].core/buffer_pconv[468] , \CHIPS[1].core/buffer_pconv[467] ,
         \CHIPS[1].core/buffer_pconv[466] , \CHIPS[1].core/buffer_pconv[465] ,
         \CHIPS[1].core/buffer_pconv[464] , \CHIPS[1].core/buffer_pconv[463] ,
         \CHIPS[1].core/buffer_pconv[462] , \CHIPS[1].core/buffer_pconv[461] ,
         \CHIPS[1].core/buffer_pconv[460] , \CHIPS[1].core/buffer_pconv[459] ,
         \CHIPS[1].core/buffer_pconv[458] , \CHIPS[1].core/buffer_pconv[457] ,
         \CHIPS[1].core/buffer_pconv[456] , \CHIPS[1].core/buffer_pconv[455] ,
         \CHIPS[1].core/buffer_pconv[454] , \CHIPS[1].core/buffer_pconv[453] ,
         \CHIPS[1].core/buffer_pconv[452] , \CHIPS[1].core/buffer_pconv[451] ,
         \CHIPS[1].core/buffer_pconv[450] , \CHIPS[1].core/buffer_pconv[449] ,
         \CHIPS[1].core/buffer_pconv[448] , \CHIPS[1].core/buffer_pconv[447] ,
         \CHIPS[1].core/buffer_pconv[446] , \CHIPS[1].core/buffer_pconv[445] ,
         \CHIPS[1].core/buffer_pconv[444] , \CHIPS[1].core/buffer_pconv[443] ,
         \CHIPS[1].core/buffer_pconv[442] , \CHIPS[1].core/buffer_pconv[441] ,
         \CHIPS[1].core/buffer_pconv[440] , \CHIPS[1].core/buffer_pconv[439] ,
         \CHIPS[1].core/buffer_pconv[438] , \CHIPS[1].core/buffer_pconv[437] ,
         \CHIPS[1].core/buffer_pconv[436] , \CHIPS[1].core/buffer_pconv[435] ,
         \CHIPS[1].core/buffer_pconv[434] , \CHIPS[1].core/buffer_pconv[433] ,
         \CHIPS[1].core/buffer_pconv[432] , \CHIPS[1].core/buffer_pconv[431] ,
         \CHIPS[1].core/buffer_pconv[430] , \CHIPS[1].core/buffer_pconv[429] ,
         \CHIPS[1].core/buffer_pconv[428] , \CHIPS[1].core/buffer_pconv[427] ,
         \CHIPS[1].core/buffer_pconv[426] , \CHIPS[1].core/buffer_pconv[425] ,
         \CHIPS[1].core/buffer_pconv[424] , \CHIPS[1].core/buffer_pconv[423] ,
         \CHIPS[1].core/buffer_pconv[422] , \CHIPS[1].core/buffer_pconv[421] ,
         \CHIPS[1].core/buffer_pconv[420] , \CHIPS[1].core/buffer_pconv[419] ,
         \CHIPS[1].core/buffer_pconv[418] , \CHIPS[1].core/buffer_pconv[417] ,
         \CHIPS[1].core/buffer_pconv[416] , \CHIPS[1].core/buffer_pconv[415] ,
         \CHIPS[1].core/buffer_pconv[414] , \CHIPS[1].core/buffer_pconv[413] ,
         \CHIPS[1].core/buffer_pconv[412] , \CHIPS[1].core/buffer_pconv[411] ,
         \CHIPS[1].core/buffer_pconv[410] , \CHIPS[1].core/buffer_pconv[409] ,
         \CHIPS[1].core/buffer_pconv[408] , \CHIPS[1].core/buffer_pconv[407] ,
         \CHIPS[1].core/buffer_pconv[406] , \CHIPS[1].core/buffer_pconv[405] ,
         \CHIPS[1].core/buffer_pconv[404] , \CHIPS[1].core/buffer_pconv[403] ,
         \CHIPS[1].core/buffer_pconv[402] , \CHIPS[1].core/buffer_pconv[401] ,
         \CHIPS[1].core/buffer_pconv[400] , \CHIPS[1].core/buffer_pconv[399] ,
         \CHIPS[1].core/buffer_pconv[398] , \CHIPS[1].core/buffer_pconv[397] ,
         \CHIPS[1].core/buffer_pconv[396] , \CHIPS[1].core/buffer_pconv[395] ,
         \CHIPS[1].core/buffer_pconv[394] , \CHIPS[1].core/buffer_pconv[393] ,
         \CHIPS[1].core/buffer_pconv[392] , \CHIPS[1].core/buffer_pconv[391] ,
         \CHIPS[1].core/buffer_pconv[390] , \CHIPS[1].core/buffer_pconv[389] ,
         \CHIPS[1].core/buffer_pconv[388] , \CHIPS[1].core/buffer_pconv[387] ,
         \CHIPS[1].core/buffer_pconv[386] , \CHIPS[1].core/buffer_pconv[385] ,
         \CHIPS[1].core/buffer_pconv[384] , \CHIPS[1].core/buffer_pconv[383] ,
         \CHIPS[1].core/buffer_pconv[382] , \CHIPS[1].core/buffer_pconv[381] ,
         \CHIPS[1].core/buffer_pconv[380] , \CHIPS[1].core/buffer_pconv[379] ,
         \CHIPS[1].core/buffer_pconv[378] , \CHIPS[1].core/buffer_pconv[377] ,
         \CHIPS[1].core/buffer_pconv[376] , \CHIPS[1].core/buffer_pconv[375] ,
         \CHIPS[1].core/buffer_pconv[374] , \CHIPS[1].core/buffer_pconv[373] ,
         \CHIPS[1].core/buffer_pconv[372] , \CHIPS[1].core/buffer_pconv[371] ,
         \CHIPS[1].core/buffer_pconv[370] , \CHIPS[1].core/buffer_pconv[369] ,
         \CHIPS[1].core/buffer_pconv[368] , \CHIPS[1].core/buffer_pconv[367] ,
         \CHIPS[1].core/buffer_pconv[366] , \CHIPS[1].core/buffer_pconv[365] ,
         \CHIPS[1].core/buffer_pconv[364] , \CHIPS[1].core/buffer_pconv[363] ,
         \CHIPS[1].core/buffer_pconv[362] , \CHIPS[1].core/buffer_pconv[361] ,
         \CHIPS[1].core/buffer_pconv[360] , \CHIPS[1].core/buffer_pconv[359] ,
         \CHIPS[1].core/buffer_pconv[358] , \CHIPS[1].core/buffer_pconv[357] ,
         \CHIPS[1].core/buffer_pconv[356] , \CHIPS[1].core/buffer_pconv[355] ,
         \CHIPS[1].core/buffer_pconv[354] , \CHIPS[1].core/buffer_pconv[353] ,
         \CHIPS[1].core/buffer_pconv[352] , \CHIPS[1].core/buffer_pconv[351] ,
         \CHIPS[1].core/buffer_pconv[350] , \CHIPS[1].core/buffer_pconv[349] ,
         \CHIPS[1].core/buffer_pconv[348] , \CHIPS[1].core/buffer_pconv[347] ,
         \CHIPS[1].core/buffer_pconv[346] , \CHIPS[1].core/buffer_pconv[345] ,
         \CHIPS[1].core/buffer_pconv[344] , \CHIPS[1].core/buffer_pconv[343] ,
         \CHIPS[1].core/buffer_pconv[342] , \CHIPS[1].core/buffer_pconv[341] ,
         \CHIPS[1].core/buffer_pconv[340] , \CHIPS[1].core/buffer_pconv[339] ,
         \CHIPS[1].core/buffer_pconv[338] , \CHIPS[1].core/buffer_pconv[337] ,
         \CHIPS[1].core/buffer_pconv[336] , \CHIPS[1].core/buffer_pconv[335] ,
         \CHIPS[1].core/buffer_pconv[334] , \CHIPS[1].core/buffer_pconv[333] ,
         \CHIPS[1].core/buffer_pconv[332] , \CHIPS[1].core/buffer_pconv[331] ,
         \CHIPS[1].core/buffer_pconv[330] , \CHIPS[1].core/buffer_pconv[329] ,
         \CHIPS[1].core/buffer_pconv[328] , \CHIPS[1].core/buffer_pconv[327] ,
         \CHIPS[1].core/buffer_pconv[326] , \CHIPS[1].core/buffer_pconv[325] ,
         \CHIPS[1].core/buffer_pconv[324] , \CHIPS[1].core/buffer_pconv[323] ,
         \CHIPS[1].core/buffer_pconv[322] , \CHIPS[1].core/buffer_pconv[321] ,
         \CHIPS[1].core/buffer_pconv[320] , \CHIPS[1].core/buffer_pconv[319] ,
         \CHIPS[1].core/buffer_pconv[318] , \CHIPS[1].core/buffer_pconv[317] ,
         \CHIPS[1].core/buffer_pconv[316] , \CHIPS[1].core/buffer_pconv[315] ,
         \CHIPS[1].core/buffer_pconv[314] , \CHIPS[1].core/buffer_pconv[313] ,
         \CHIPS[1].core/buffer_pconv[312] , \CHIPS[1].core/buffer_pconv[311] ,
         \CHIPS[1].core/buffer_pconv[310] , \CHIPS[1].core/buffer_pconv[309] ,
         \CHIPS[1].core/buffer_pconv[308] , \CHIPS[1].core/buffer_pconv[307] ,
         \CHIPS[1].core/buffer_pconv[306] , \CHIPS[1].core/buffer_pconv[305] ,
         \CHIPS[1].core/buffer_pconv[304] , \CHIPS[1].core/buffer_pconv[303] ,
         \CHIPS[1].core/buffer_pconv[302] , \CHIPS[1].core/buffer_pconv[301] ,
         \CHIPS[1].core/buffer_pconv[300] , \CHIPS[1].core/buffer_pconv[299] ,
         \CHIPS[1].core/buffer_pconv[298] , \CHIPS[1].core/buffer_pconv[297] ,
         \CHIPS[1].core/buffer_pconv[296] , \CHIPS[1].core/buffer_pconv[295] ,
         \CHIPS[1].core/buffer_pconv[294] , \CHIPS[1].core/buffer_pconv[293] ,
         \CHIPS[1].core/buffer_pconv[292] , \CHIPS[1].core/buffer_pconv[291] ,
         \CHIPS[1].core/buffer_pconv[290] , \CHIPS[1].core/buffer_pconv[289] ,
         \CHIPS[1].core/buffer_pconv[288] , \CHIPS[1].core/buffer_pconv[287] ,
         \CHIPS[1].core/buffer_pconv[286] , \CHIPS[1].core/buffer_pconv[285] ,
         \CHIPS[1].core/buffer_pconv[284] , \CHIPS[1].core/buffer_pconv[283] ,
         \CHIPS[1].core/buffer_pconv[282] , \CHIPS[1].core/buffer_pconv[281] ,
         \CHIPS[1].core/buffer_pconv[280] , \CHIPS[1].core/buffer_pconv[279] ,
         \CHIPS[1].core/buffer_pconv[278] , \CHIPS[1].core/buffer_pconv[277] ,
         \CHIPS[1].core/buffer_pconv[276] , \CHIPS[1].core/buffer_pconv[275] ,
         \CHIPS[1].core/buffer_pconv[274] , \CHIPS[1].core/buffer_pconv[273] ,
         \CHIPS[1].core/buffer_pconv[272] , \CHIPS[1].core/buffer_pconv[271] ,
         \CHIPS[1].core/buffer_pconv[270] , \CHIPS[1].core/buffer_pconv[269] ,
         \CHIPS[1].core/buffer_pconv[268] , \CHIPS[1].core/buffer_pconv[267] ,
         \CHIPS[1].core/buffer_pconv[266] , \CHIPS[1].core/buffer_pconv[265] ,
         \CHIPS[1].core/buffer_pconv[264] , \CHIPS[1].core/buffer_pconv[263] ,
         \CHIPS[1].core/buffer_pconv[262] , \CHIPS[1].core/buffer_pconv[261] ,
         \CHIPS[1].core/buffer_pconv[260] , \CHIPS[1].core/buffer_pconv[259] ,
         \CHIPS[1].core/buffer_pconv[258] , \CHIPS[1].core/buffer_pconv[257] ,
         \CHIPS[1].core/buffer_pconv[256] , \CHIPS[1].core/buffer_pconv[255] ,
         \CHIPS[1].core/buffer_pconv[254] , \CHIPS[1].core/buffer_pconv[253] ,
         \CHIPS[1].core/buffer_pconv[252] , \CHIPS[1].core/buffer_pconv[251] ,
         \CHIPS[1].core/buffer_pconv[250] , \CHIPS[1].core/buffer_pconv[249] ,
         \CHIPS[1].core/buffer_pconv[248] , \CHIPS[1].core/buffer_pconv[247] ,
         \CHIPS[1].core/buffer_pconv[246] , \CHIPS[1].core/buffer_pconv[245] ,
         \CHIPS[1].core/buffer_pconv[244] , \CHIPS[1].core/buffer_pconv[243] ,
         \CHIPS[1].core/buffer_pconv[242] , \CHIPS[1].core/buffer_pconv[241] ,
         \CHIPS[1].core/buffer_pconv[240] , \CHIPS[1].core/buffer_pconv[239] ,
         \CHIPS[1].core/buffer_pconv[238] , \CHIPS[1].core/buffer_pconv[237] ,
         \CHIPS[1].core/buffer_pconv[236] , \CHIPS[1].core/buffer_pconv[235] ,
         \CHIPS[1].core/buffer_pconv[234] , \CHIPS[1].core/buffer_pconv[233] ,
         \CHIPS[1].core/buffer_pconv[232] , \CHIPS[1].core/buffer_pconv[231] ,
         \CHIPS[1].core/buffer_pconv[230] , \CHIPS[1].core/buffer_pconv[229] ,
         \CHIPS[1].core/buffer_pconv[228] , \CHIPS[1].core/buffer_pconv[227] ,
         \CHIPS[1].core/buffer_pconv[226] , \CHIPS[1].core/buffer_pconv[225] ,
         \CHIPS[1].core/buffer_pconv[224] , \CHIPS[1].core/buffer_pconv[223] ,
         \CHIPS[1].core/buffer_pconv[222] , \CHIPS[1].core/buffer_pconv[221] ,
         \CHIPS[1].core/buffer_pconv[220] , \CHIPS[1].core/buffer_pconv[219] ,
         \CHIPS[1].core/buffer_pconv[218] , \CHIPS[1].core/buffer_pconv[217] ,
         \CHIPS[1].core/buffer_pconv[216] , \CHIPS[1].core/buffer_pconv[215] ,
         \CHIPS[1].core/buffer_pconv[214] , \CHIPS[1].core/buffer_pconv[213] ,
         \CHIPS[1].core/buffer_pconv[212] , \CHIPS[1].core/buffer_pconv[211] ,
         \CHIPS[1].core/buffer_pconv[210] , \CHIPS[1].core/buffer_pconv[209] ,
         \CHIPS[1].core/buffer_pconv[208] , \CHIPS[1].core/buffer_pconv[207] ,
         \CHIPS[1].core/buffer_pconv[206] , \CHIPS[1].core/buffer_pconv[205] ,
         \CHIPS[1].core/buffer_pconv[204] , \CHIPS[1].core/buffer_pconv[203] ,
         \CHIPS[1].core/buffer_pconv[202] , \CHIPS[1].core/buffer_pconv[201] ,
         \CHIPS[1].core/buffer_pconv[200] , \CHIPS[1].core/buffer_pconv[199] ,
         \CHIPS[1].core/buffer_pconv[198] , \CHIPS[1].core/buffer_pconv[197] ,
         \CHIPS[1].core/buffer_pconv[196] , \CHIPS[1].core/buffer_pconv[195] ,
         \CHIPS[1].core/buffer_pconv[194] , \CHIPS[1].core/buffer_pconv[193] ,
         \CHIPS[1].core/buffer_pconv[192] , \CHIPS[1].core/buffer_pconv[191] ,
         \CHIPS[1].core/buffer_pconv[190] , \CHIPS[1].core/buffer_pconv[189] ,
         \CHIPS[1].core/buffer_pconv[188] , \CHIPS[1].core/buffer_pconv[187] ,
         \CHIPS[1].core/buffer_pconv[186] , \CHIPS[1].core/buffer_pconv[185] ,
         \CHIPS[1].core/buffer_pconv[184] , \CHIPS[1].core/buffer_pconv[183] ,
         \CHIPS[1].core/buffer_pconv[182] , \CHIPS[1].core/buffer_pconv[181] ,
         \CHIPS[1].core/buffer_pconv[180] , \CHIPS[1].core/buffer_pconv[179] ,
         \CHIPS[1].core/buffer_pconv[178] , \CHIPS[1].core/buffer_pconv[177] ,
         \CHIPS[1].core/buffer_pconv[176] , \CHIPS[1].core/buffer_pconv[175] ,
         \CHIPS[1].core/buffer_pconv[174] , \CHIPS[1].core/buffer_pconv[173] ,
         \CHIPS[1].core/buffer_pconv[172] , \CHIPS[1].core/buffer_pconv[171] ,
         \CHIPS[1].core/buffer_pconv[170] , \CHIPS[1].core/buffer_pconv[169] ,
         \CHIPS[1].core/buffer_pconv[168] , \CHIPS[1].core/buffer_pconv[167] ,
         \CHIPS[1].core/buffer_pconv[166] , \CHIPS[1].core/buffer_pconv[165] ,
         \CHIPS[1].core/buffer_pconv[164] , \CHIPS[1].core/buffer_pconv[163] ,
         \CHIPS[1].core/buffer_pconv[162] , \CHIPS[1].core/buffer_pconv[161] ,
         \CHIPS[1].core/buffer_pconv[160] , \CHIPS[1].core/buffer_pconv[159] ,
         \CHIPS[1].core/buffer_pconv[158] , \CHIPS[1].core/buffer_pconv[157] ,
         \CHIPS[1].core/buffer_pconv[156] , \CHIPS[1].core/buffer_pconv[155] ,
         \CHIPS[1].core/buffer_pconv[154] , \CHIPS[1].core/buffer_pconv[153] ,
         \CHIPS[1].core/buffer_pconv[152] , \CHIPS[1].core/buffer_pconv[151] ,
         \CHIPS[1].core/buffer_pconv[150] , \CHIPS[1].core/buffer_pconv[149] ,
         \CHIPS[1].core/buffer_pconv[148] , \CHIPS[1].core/buffer_pconv[147] ,
         \CHIPS[1].core/buffer_pconv[146] , \CHIPS[1].core/buffer_pconv[145] ,
         \CHIPS[1].core/buffer_pconv[144] , \CHIPS[1].core/buffer_pconv[143] ,
         \CHIPS[1].core/buffer_pconv[142] , \CHIPS[1].core/buffer_pconv[141] ,
         \CHIPS[1].core/buffer_pconv[140] , \CHIPS[1].core/buffer_pconv[139] ,
         \CHIPS[1].core/buffer_pconv[138] , \CHIPS[1].core/buffer_pconv[137] ,
         \CHIPS[1].core/buffer_pconv[136] , \CHIPS[1].core/buffer_pconv[135] ,
         \CHIPS[1].core/buffer_pconv[134] , \CHIPS[1].core/buffer_pconv[133] ,
         \CHIPS[1].core/buffer_pconv[132] , \CHIPS[1].core/buffer_pconv[131] ,
         \CHIPS[1].core/buffer_pconv[130] , \CHIPS[1].core/buffer_pconv[129] ,
         \CHIPS[1].core/buffer_pconv[128] , \CHIPS[1].core/buffer_pconv[127] ,
         \CHIPS[1].core/buffer_pconv[126] , \CHIPS[1].core/buffer_pconv[125] ,
         \CHIPS[1].core/buffer_pconv[124] , \CHIPS[1].core/buffer_pconv[123] ,
         \CHIPS[1].core/buffer_pconv[122] , \CHIPS[1].core/buffer_pconv[121] ,
         \CHIPS[1].core/buffer_pconv[120] , \CHIPS[1].core/buffer_pconv[119] ,
         \CHIPS[1].core/buffer_pconv[118] , \CHIPS[1].core/buffer_pconv[117] ,
         \CHIPS[1].core/buffer_pconv[116] , \CHIPS[1].core/buffer_pconv[115] ,
         \CHIPS[1].core/buffer_pconv[114] , \CHIPS[1].core/buffer_pconv[113] ,
         \CHIPS[1].core/buffer_pconv[112] , \CHIPS[1].core/buffer_pconv[111] ,
         \CHIPS[1].core/buffer_pconv[110] , \CHIPS[1].core/buffer_pconv[109] ,
         \CHIPS[1].core/buffer_pconv[108] , \CHIPS[1].core/buffer_pconv[107] ,
         \CHIPS[1].core/buffer_pconv[106] , \CHIPS[1].core/buffer_pconv[105] ,
         \CHIPS[1].core/buffer_pconv[104] , \CHIPS[1].core/buffer_pconv[103] ,
         \CHIPS[1].core/buffer_pconv[102] , \CHIPS[1].core/buffer_pconv[101] ,
         \CHIPS[1].core/buffer_pconv[100] , \CHIPS[1].core/buffer_pconv[99] ,
         \CHIPS[1].core/buffer_pconv[98] , \CHIPS[1].core/buffer_pconv[97] ,
         \CHIPS[1].core/buffer_pconv[96] , \CHIPS[1].core/buffer_pconv[95] ,
         \CHIPS[1].core/buffer_pconv[94] , \CHIPS[1].core/buffer_pconv[93] ,
         \CHIPS[1].core/buffer_pconv[92] , \CHIPS[1].core/buffer_pconv[91] ,
         \CHIPS[1].core/buffer_pconv[90] , \CHIPS[1].core/buffer_pconv[89] ,
         \CHIPS[1].core/buffer_pconv[88] , \CHIPS[1].core/buffer_pconv[87] ,
         \CHIPS[1].core/buffer_pconv[86] , \CHIPS[1].core/buffer_pconv[85] ,
         \CHIPS[1].core/buffer_pconv[84] , \CHIPS[1].core/buffer_pconv[83] ,
         \CHIPS[1].core/buffer_pconv[82] , \CHIPS[1].core/buffer_pconv[81] ,
         \CHIPS[1].core/buffer_pconv[80] , \CHIPS[1].core/buffer_pconv[79] ,
         \CHIPS[1].core/buffer_pconv[78] , \CHIPS[1].core/buffer_pconv[77] ,
         \CHIPS[1].core/buffer_pconv[76] , \CHIPS[1].core/buffer_pconv[75] ,
         \CHIPS[1].core/buffer_pconv[74] , \CHIPS[1].core/buffer_pconv[73] ,
         \CHIPS[1].core/buffer_pconv[72] , \CHIPS[1].core/buffer_pconv[70] ,
         \CHIPS[1].core/buffer_pconv[69] , \CHIPS[1].core/buffer_pconv[68] ,
         \CHIPS[1].core/buffer_pconv[67] , \CHIPS[1].core/buffer_pconv[66] ,
         \CHIPS[1].core/buffer_pconv[65] , \CHIPS[1].core/buffer_pconv[64] ,
         \CHIPS[1].core/buffer_pconv[63] , \CHIPS[1].core/buffer_pconv[62] ,
         \CHIPS[1].core/buffer_pconv[61] , \CHIPS[1].core/buffer_pconv[60] ,
         \CHIPS[1].core/buffer_pconv[59] , \CHIPS[1].core/buffer_pconv[58] ,
         \CHIPS[1].core/buffer_pconv[57] , \CHIPS[1].core/buffer_pconv[56] ,
         \CHIPS[1].core/buffer_pconv[55] , \CHIPS[1].core/buffer_pconv[54] ,
         \CHIPS[1].core/buffer_pconv[52] , \CHIPS[1].core/buffer_pconv[51] ,
         \CHIPS[1].core/buffer_pconv[50] , \CHIPS[1].core/buffer_pconv[49] ,
         \CHIPS[1].core/buffer_pconv[48] , \CHIPS[1].core/buffer_pconv[47] ,
         \CHIPS[1].core/buffer_pconv[46] , \CHIPS[1].core/buffer_pconv[45] ,
         \CHIPS[1].core/buffer_pconv[44] , \CHIPS[1].core/buffer_pconv[43] ,
         \CHIPS[1].core/buffer_pconv[42] , \CHIPS[1].core/buffer_pconv[41] ,
         \CHIPS[1].core/buffer_pconv[40] , \CHIPS[1].core/buffer_pconv[39] ,
         \CHIPS[1].core/buffer_pconv[38] , \CHIPS[1].core/buffer_pconv[37] ,
         \CHIPS[1].core/buffer_pconv[36] , \CHIPS[1].core/buffer_pconv[34] ,
         \CHIPS[1].core/buffer_pconv[33] , \CHIPS[1].core/buffer_pconv[32] ,
         \CHIPS[1].core/buffer_pconv[31] , \CHIPS[1].core/buffer_pconv[30] ,
         \CHIPS[1].core/buffer_pconv[29] , \CHIPS[1].core/buffer_pconv[28] ,
         \CHIPS[1].core/buffer_pconv[27] , \CHIPS[1].core/buffer_pconv[26] ,
         \CHIPS[1].core/buffer_pconv[25] , \CHIPS[1].core/buffer_pconv[24] ,
         \CHIPS[1].core/buffer_pconv[23] , \CHIPS[1].core/buffer_pconv[22] ,
         \CHIPS[1].core/buffer_pconv[21] , \CHIPS[1].core/buffer_pconv[20] ,
         \CHIPS[1].core/buffer_pconv[19] , \CHIPS[1].core/buffer_pconv[18] ,
         \CHIPS[1].core/buffer_pconv[16] , \CHIPS[1].core/buffer_pconv[15] ,
         \CHIPS[1].core/buffer_pconv[14] , \CHIPS[1].core/buffer_pconv[13] ,
         \CHIPS[1].core/buffer_pconv[12] , \CHIPS[1].core/buffer_pconv[11] ,
         \CHIPS[1].core/buffer_pconv[10] , \CHIPS[1].core/buffer_pconv[9] ,
         \CHIPS[1].core/buffer_pconv[8] , \CHIPS[1].core/buffer_pconv[7] ,
         \CHIPS[1].core/buffer_pconv[6] , \CHIPS[1].core/buffer_pconv[5] ,
         \CHIPS[1].core/buffer_pconv[4] , \CHIPS[1].core/buffer_pconv[3] ,
         \CHIPS[1].core/buffer_pconv[2] , \CHIPS[1].core/buffer_pconv[1] ,
         \CHIPS[1].core/buffer_pconv[0] , \CHIPS[1].core/temp_pconv[16] ,
         \CHIPS[1].core/temp_pconv[15] , \CHIPS[1].core/temp_pconv[14] ,
         \CHIPS[1].core/temp_pconv[13] , \CHIPS[1].core/temp_pconv[12] ,
         \CHIPS[1].core/temp_pconv[11] , \CHIPS[1].core/temp_pconv[10] ,
         \CHIPS[1].core/temp_pconv[9] , \CHIPS[1].core/temp_pconv[8] ,
         \CHIPS[1].core/temp_pconv[7] , \CHIPS[1].core/temp_pconv[6] ,
         \CHIPS[1].core/temp_pconv[5] , \CHIPS[1].core/temp_pconv[4] ,
         \CHIPS[1].core/temp_pconv[3] , \CHIPS[1].core/temp_pconv[2] ,
         \CHIPS[1].core/temp_pconv[1] , \CHIPS[1].core/temp_pconv[0] , n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432,
         n433, n434, n435, n436, n437, n438, n439, n440, n441, n442, n443,
         n444, n445, n446, n447, n448, n449, n450, n451, n452, n453, n454,
         n455, n456, n457, n458, n459, n460, n461, n462, n463, n464, n465,
         n466, n467, n468, n469, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655, n656, n657, n658, n659, n660, n661,
         n662, n663, n664, n665, n666, n667, n668, n669, n670, n671, n672,
         n673, n674, n675, n676, n677, n678, n679, n680, n681, n682, n683,
         n684, n685, n686, n687, n688, n689, n690, n691, n692, n693, n694,
         n695, n696, n697, n698, n699, n700, n701, n702, n703, n704, n705,
         n706, n707, n708, n709, n710, n711, n712, n713, n714, n715, n716,
         n717, n718, n719, n720, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n749,
         n750, n751, n752, n753, n754, n755, n756, n757, n758, n759, n760,
         n761, n762, n763, n764, n765, n766, n767, n768, n769, n770, n771,
         n772, n773, n774, n775, n776, n777, n778, n779, n780, n781, n782,
         n783, n784, n785, n786, n787, n788, n789, n790, n791, n792, n793,
         n794, n795, n796, n797, n798, n799, n800, n801, n802, n803, n804,
         n805, n806, n807, n808, n809, n810, n811, n812, n813, n814, n815,
         n816, n817, n818, n819, n820, n821, n822, n823, n824, n825, n826,
         n827, n828, n829, n830, n831, n832, n833, n834, n835, n836, n837,
         n838, n839, n840, n841, n842, n843, n844, n845, n846, n847, n848,
         n849, n850, n851, n852, n853, n854, n855, n856, n857, n858, n859,
         n860, n861, n862, n863, n864, n865, n866, n867, n868, n869, n870,
         n871, n872, n873, n874, n875, n876, n877, n878, n879, n880, n881,
         n882, n883, n884, n885, n886, n887, n888, n889, n890, n891, n892,
         n893, n894, n895, n896, n897, n898, n899, n900, n901, n902, n903,
         n904, n905, n906, n907, n908, n909, n910, n911, n912, n913, n914,
         n915, n916, n917, n918, n919, n920, n921, n922, n923, n924, n925,
         n926, n927, n928, n929, n930, n931, n932, n933, n934, n935, n936,
         n937, n938, n939, n940, n941, n942, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083,
         n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123,
         n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133,
         n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143,
         n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153,
         n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163,
         n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173,
         n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263,
         n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273,
         n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283,
         n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293,
         n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303,
         n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313,
         n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323,
         n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333,
         n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343,
         n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353,
         n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363,
         n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373,
         n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383,
         n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393,
         n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403,
         n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413,
         n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423,
         n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433,
         n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443,
         n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453,
         n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463,
         n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473,
         n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483,
         n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493,
         n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503,
         n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513,
         n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523,
         n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533,
         n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543,
         n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553,
         n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563,
         n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573,
         n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583,
         n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593,
         n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603,
         n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613,
         n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623,
         n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632, n1633,
         n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643,
         n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653,
         n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663,
         n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672, n1673,
         n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682, n1683,
         n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693,
         n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703,
         n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712, n1713,
         n1714, n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722, n1723,
         n1724, n1725, n1726, n1727, n1728, n1729, n1730, n1731, n1732, n1733,
         n1734, n1735, n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743,
         n1744, n1745, n1746, n1747, n1748, n1749, n1750, n1751, n1752, n1753,
         n1754, n1755, n1756, n1757, n1758, n1759, n1760, n1761, n1762, n1763,
         n1764, n1765, n1766, n1767, n1768, n1769, n1770, n1771, n1772, n1773,
         n1774, n1775, n1776, n1777, n1778, n1779, n1780, n1781, n1782, n1783,
         n1784, n1785, n1786, n1787, n1788, n1789, n1790, n1791, n1792, n1793,
         n1794, n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1802, n1803,
         n1804, n1805, n1806, n1807, n1808, n1809, n1810, n1811, n1812, n1813,
         n1814, n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822, n1823,
         n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, n1832, n1833,
         n1834, n1835, n1836, n1837, n1838, n1839, n1840, n1841, n1842, n1843,
         n1844, n1845, n1846, n1847, n1848, n1849, n1850, n1851, n1852, n1853,
         n1854, n1855, n1856, n1857, n1858, n1859, n1860, n1861, n1862, n1863,
         n1864, n1865, n1866, n1867, n1868, n1869, n1870, n1871, n1872, n1873,
         n1874, n1875, n1876, n1877, n1878, n1879, n1880, n1881, n1882, n1883,
         n1884, n1885, n1886, n1887, n1888, n1889, n1890, n1891, n1892, n1893,
         n1894, n1895, n1896, n1897, n1898, n1899, n1900, n1901, n1902, n1903,
         n1904, n1905, n1906, n1907, n1908, n1909, n1910, n1911, n1912, n1913,
         n1914, n1915, n1916, n1917, n1918, n1919, n1920, n1921, n1922, n1923,
         n1924, n1925, n1926, n1927, n1928, n1929, n1930, n1931, n1932, n1933,
         n1934, n1935, n1936, n1937, n1938, n1939, n1940, n1941, n1942, n1943,
         n1944, n1945, n1946, n1947, n1948, n1949, n1950, n1951, n1952, n1953,
         n1954, n1955, n1956, n1957, n1958, n1959, n1960, n1961, n1962, n1963,
         n1964, n1965, n1966, n1967, n1968, n1969, n1970, n1971, n1972, n1973,
         n1974, n1975, n1976, n1977, n1978, n1979, n1980, n1981, n1982, n1983,
         n1984, n1985, n1986, n1987, n1988, n1989, n1990, n1991, n1992, n1993,
         n1994, n1995, n1996, n1997, n1998, n1999, n2000, n2001, n2002, n2003,
         n2004, n2005, n2006, n2007, n2008, n2009, n2010, n2011, n2012, n2013,
         n2014, n2015, n2016, n2017, n2018, n2019, n2020, n2021, n2022, n2023,
         n2024, n2025, n2026, n2027, n2028, n2029, n2030, n2031, n2032, n2033,
         n2034, n2035, n2036, n2037, n2038, n2039, n2040, n2041, n2042, n2043,
         n2044, n2045, n2046, n2047, n2048, n2049, n2050, n2051, n2052, n2053,
         n2054, n2055, n2056, n2057, n2058, n2059, n2060, n2061, n2062, n2063,
         n2064, n2065, n2066, n2067, n2068, n2069, n2070, n2071, n2072, n2073,
         n2074, n2075, n2076, n2077, n2078, n2079, n2080, n2081, n2082, n2083,
         n2084, n2085, n2086, n2087, n2088, n2089, n2090, n2091, n2092, n2093,
         n2094, n2095, n2096, n2097, n2098, n2099, n2100, n2101, n2102, n2103,
         n2104, n2105, n2106, n2107, n2108, n2109, n2110, n2111, n2112, n2113,
         n2114, n2115, n2116, n2117, n2118, n2119, n2120, n2121, n2122, n2123,
         n2124, n2125, n2126, n2127, n2128, n2129, n2130, n2131, n2132, n2133,
         n2134, n2135, n2136, n2137, n2138, n2139, n2140, n2141, n2142, n2143,
         n2144, n2145, n2146, n2147, n2148, n2149, n2150, n2151, n2152, n2153,
         n2154, n2155, n2156, n2157, n2158, n2159, n2160, n2161, n2162, n2163,
         n2164, n2165, n2166, n2167, n2168, n2169, n2170, n2171, n2172, n2173,
         n2174, n2175, n2176, n2177, n2178, n2179, n2180, n2181, n2182, n2183,
         n2184, n2185, n2186, n2187, n2188, n2189, n2190, n2191, n2192, n2193,
         n2194, n2195, n2196, n2197, n2198, n2199, n2200, n2201, n2202, n2203,
         n2204, n2205, n2206, n2207, n2208, n2209, n2210, n2211, n2212, n2213,
         n2214, n2215, n2216, n2217, n2218, n2219, n2220, n2221, n2222, n2223,
         n2224, n2225, n2226, n2227, n2228, n2229, n2230, n2231, n2232, n2233,
         n2234, n2235, n2236, n2237, n2238, n2239, n2240, n2241, n2242, n2243,
         n2244, n2245, n2246, n2247, n2248, n2249, n2250, n2251, n2252, n2253,
         n2254, n2255, n2256, n2257, n2258, n2259, n2260, n2261, n2262, n2263,
         n2264, n2265, n2266, n2267, n2268, n2269, n2270, n2271, n2272, n2273,
         n2274, n2275, n2276, n2277, n2278, n2279, n2280, n2281, n2282, n2283,
         n2284, n2285, n2286, n2287, n2288, n2289, n2290, n2291, n2292, n2293,
         n2294, n2295, n2296, n2297, n2298, n2299, n2300, n2301, n2302, n2303,
         n2304, n2305, n2306, n2307, n2308, n2309, n2310, n2311, n2312, n2313,
         n2314, n2315, n2316, n2317, n2318, n2319, n2320, n2321, n2322, n2323,
         n2324, n2325, n2326, n2327, n2328, n2329, n2330, n2331, n2332, n2333,
         n2334, n2335, n2336, n2337, n2338, n2339, n2340, n2341, n2342, n2343,
         n2344, n2345, n2346, n2347, n2348, n2349, n2350, n2351, n2352, n2353,
         n2354, n2355, n2356, n2357, n2358, n2359, n2360, n2361, n2362, n2363,
         n2364, n2365, n2366, n2367, n2368, n2369, n2370, n2371, n2372, n2373,
         n2374, n2375, n2376, n2377, n2378, n2379, n2380, n2381, n2382, n2383,
         n2384, n2385, n2386, n2387, n2388, n2389, n2390, n2391, n2392, n2393,
         n2394, n2395, n2396, n2397, n2398, n2399, n2400, n2401, n2402, n2403,
         n2404, n2405, n2406, n2407, n2408, n2409, n2410, n2411, n2412, n2413,
         n2414, n2415, n2416, n2417, n2418, n2419, n2420, n2421, n2422, n2423,
         n2424, n2425, n2426, n2427, n2428, n2429, n2430, n2431, n2432, n2433,
         n2434, n2435, n2436, n2437, n2438, n2439, n2440, n2441, n2442, n2443,
         n2444, n2445, n2446, n2447, n2448, n2449, n2450, n2451, n2452, n2453,
         n2454, n2455, n2456, n2457, n2458, n2459, n2460, n2461, n2462, n2463,
         n2464, n2465, n2466, n2467, n2468, n2469, n2470, n2471, n2472, n2473,
         n2474, n2475, n2476, n2477, n2478, n2479, n2480, n2481, n2482, n2483,
         n2484, n2485, n2486, n2487, n2488, n2489, n2490, n2491, n2492, n2493,
         n2494, n2495, n2496, n2497, n2498, n2499, n2500, n2501, n2502, n2503,
         n2504, n2505, n2506, n2507, n2508, n2509, n2510, n2511, n2512, n2513,
         n2514, n2515, n2516, n2517, n2518, n2519, n2520, n2521, n2522, n2523,
         n2524, n2525, n2526, n2527, n2528, n2529, n2530, n2531, n2532, n2533,
         n2534, n2535, n2536, n2537, n2538, n2539, n2540, n2541, n2542, n2543,
         n2544, n2545, n2546, n2547, n2548, n2549, n2550, n2551, n2552, n2553,
         n2554, n2555, n2556, n2557, n2558, n2559, n2560, n2561, n2562, n2563,
         n2564, n2565, n2566, n2567, n2568, n2569, n2570, n2571, n2572, n2573,
         n2574, n2575, n2576, n2577, n2578, n2579, n2580, n2581, n2582, n2583,
         n2584, n2585, n2586, n2587, n2588, n2589, n2590, n2591, n2592, n2593,
         n2594, n2595, n2596, n2597, n2598, n2599, n2600, n2601, n2602, n2603,
         n2604, n2605, n2606, n2607, n2608, n2609, n2610, n2611, n2612, n2613,
         n2614, n2615, n2616, n2617, n2618, n2619, n2620, n2621, n2622, n2623,
         n2624, n2625, n2626, n2627, n2628, n2629, n2630, n2631, n2632, n2633,
         n2634, n2635, n2636, n2637, n2638, n2639, n2640, n2641, n2642, n2643,
         n2644, n2645, n2646, n2647, n2648, n2649, n2650, n2651, n2652, n2653,
         n2654, n2655, n2656, n2657, n2658, n2659, n2660, n2661, n2662, n2663,
         n2664, n2665, n2666, n2667, n2668, n2669, n2670, n2671, n2672, n2673,
         n2674, n2675, n2676, n2677, n2678, n2679, n2680, n2681, n2682, n2683,
         n2684, n2685, n2686, n2687, n2688, n2689, n2690, n2691, n2692, n2693,
         n2694, n2695, n2696, n2697, n2698, n2699, n2700, n2701, n2702, n2703,
         n2704, n2705, n2706, n2707, n2708, n2709, n2710, n2711, n2712, n2713,
         n2714, n2715, n2716, n2717, n2718, n2719, n2720, n2721, n2722, n2723,
         n2724, n2725, n2726, n2727, n2728, n2729, n2730, n2731, n2732, n2733,
         n2734, n2735, n2736, n2737, n2738, n2739, n2740, n2741, n2742, n2743,
         n2744, n2745, n2746, n2747, n2748, n2749, n2750, n2751, n2752, n2753,
         n2754, n2755, n2756, n2757, n2758, n2759, n2760, n2761, n2762, n2763,
         n2764, n2765, n2766, n2767, n2768, n2769, n2770, n2771, n2772, n2773,
         n2774, n2775, n2776, n2777, n2778, n2779, n2780, n2781, n2782, n2783,
         n2784, n2785, n2786, n2787, n2788, n2789, n2790, n2791, n2792, n2793,
         n2794, n2795, n2796, n2797, n2798, n2799, n2800, n2801, n2802, n2803,
         n2804, n2805, n2806, n2807, n2808, n2809, n2810, n2811, n2812, n2813,
         n2814, n2815, n2816, n2817, n2818, n2819, n2820, n2821, n2822, n2823,
         n2824, n2825, n2826, n2827, n2828, n2829, n2830, n2831, n2832, n2833,
         n2834, n2835, n2836, n2837, n2838, n2839, n2840, n2841, n2842, n2843,
         n2844, n2845, n2846, n2847, n2848, n2849, n2850, n2851, n2852, n2853,
         n2854, n2855, n2856, n2857, n2858, n2859, n2860, n2861, n2862, n2863,
         n2864, n2865, n2866, n2867, n2868, n2869, n2870, n2871, n2872, n2873,
         n2874, n2875, n2876, n2877, n2878, n2879, n2880, n2881, n2882, n2883,
         n2884, n2885, n2886, n2887, n2888, n2889, n2890, n2891, n2892, n2893,
         n2894, n2895, n2896, n2897, n2898, n2899, n2900, n2901, n2902, n2903,
         n2904, n2905, n2906, n2907, n2908, n2909, n2910, n2911, n2912, n2913,
         n2914, n2915, n2916, n2917, n2918, n2919, n2920, n2921, n2922, n2923,
         n2924, n2925, n2926, n2927, n2928, n2929, n2930, n2931, n2932, n2933,
         n2934, n2935, n2936, n2937, n2938, n2939, n2940, n2941, n2942, n2943,
         n2944, n2945, n2946, n2947, n2948, n2949, n2950, n2951, n2952, n2953,
         n2954, n2955, n2956, n2957, n2958, n2959, n2960, n2961, n2962, n2963,
         n2964, n2965, n2966, n2967, n2968, n2969, n2970, n2971, n2972, n2973,
         n2974, n2975, n2976, n2977, n2978, n2979, n2980, n2981, n2982, n2983,
         n2984, n2985, n2986, n2987, n2988, n2989, n2990, n2991, n2992, n2993,
         n2994, n2995, n2996, n2997, n2998, n2999, n3000, n3001, n3002, n3003,
         n3004, n3005, n3006, n3007, n3008, n3009, n3010, n3011, n3012, n3013,
         n3014, n3015, n3016, n3017, n3018, n3019, n3020, n3021, n3022, n3023,
         n3024, n3025, n3026, n3027, n3028, n3029, n3030, n3031, n3032, n3033,
         n3034, n3035, n3036, n3037, n3038, n3039, n3040, n3041, n3042, n3043,
         n3044, n3045, n3046, n3047, n3048, n3049, n3050, n3051, n3052, n3053,
         n3054, n3055, n3056, n3057, n3058, n3059, n3060, n3061, n3062, n3063,
         n3064, n3065, n3066, n3067, n3068, n3069, n3070, n3071, n3072, n3073,
         n3074, n3075, n3076, n3077, n3078, n3079, n3080, n3081, n3082, n3083,
         n3084, n3085, n3086, n3087, n3088, n3089, n3090, n3091, n3092, n3093,
         n3094, n3095, n3096, n3097, n3098, n3099, n3100, n3101, n3102, n3103,
         n3104, n3105, n3106, n3107, n3108, n3109, n3110, n3111, n3112, n3113,
         n3114, n3115, n3116, n3117, n3118, n3119, n3120, n3121, n3122, n3123,
         n3124, n3125, n3126, n3127, n3128, n3129, n3130, n3131, n3132, n3133,
         n3134, n3135, n3136, n3137, n3138, n3139, n3140, n3141, n3142, n3143,
         n3144, n3145, n3146, n3147, n3148, n3149, n3150, n3151, n3152, n3153,
         n3154, n3155, n3156, n3157, n3158, n3159, n3160, n3161, n3162, n3163,
         n3164, n3165, n3166, n3167, n3168, n3169, n3170, n3171, n3172, n3173,
         n3174, n3175, n3176, n3177, n3178, n3179, n3180, n3181, n3182, n3183,
         n3184, n3185, n3186, n3187, n3188, n3189, n3190, n3191, n3192, n3193,
         n3194, n3195, n3196, n3197, n3198, n3199, n3200, n3201, n3202, n3203,
         n3204, n3205, n3206, n3207, n3208, n3209, n3210, n3211, n3212, n3213,
         n3214, n3215, n3216, n3217, n3218, n3219, n3220, n3221, n3222, n3223,
         n3224, n3225, n3226, n3227, n3228, n3229, n3230, n3231, n3232, n3233,
         n3234, n3235, n3236, n3237, n3238, n3239, n3240, n3241, n3242, n3243,
         n3244, n3245, n3246, n3247, n3248, n3249, n3250, n3251, n3252, n3253,
         n3254, n3255, n3256, n3257, n3258, n3259, n3260, n3261, n3262, n3263,
         n3264, n3265, n3266, n3267, n3268, n3269, n3270, n3271, n3272, n3273,
         n3274, n3275, n3276, n3277, n3278, n3279, n3280, n3281, n3282, n3283,
         n3284, n3285, n3286, n3287, n3288, n3289, n3290, n3291, n3292, n3293,
         n3294, n3295, n3296, n3297, n3298, n3299, n3300, n3301, n3302, n3303,
         n3304, n3305, n3306, n3307, n3308, n3309, n3310, n3311, n3312, n3313,
         n3314, n3315, n3316, n3317, n3318, n3319, n3320, n3321, n3322, n3323,
         n3324, n3325, n3326, n3327, n3328, n3329, n3330, n3331, n3332, n3333,
         n3334, n3335, n3336, n3337, n3338, n3339, n3340, n3341, n3342, n3343,
         n3344, n3345, n3346, n3347, n3348, n3349, n3350, n3351, n3352, n3353,
         n3354, n3355, n3356, n3357, n3358, n3359, n3360, n3361, n3362, n3363,
         n3364, n3365, n3366, n3367, n3368, n3369, n3370, n3371, n3372, n3373,
         n3374, n3375, n3376, n3377, n3378, n3379, n3380, n3381, n3382, n3383,
         n3384, n3385, n3386, n3387, n3388, n3389, n3390, n3391, n3392, n3393,
         n3394, n3395, n3396, n3397, n3398, n3399, n3400, n3401, n3402, n3403,
         n3404, n3405, n3406, n3407, n3408, n3409, n3410, n3411, n3412, n3413,
         n3414, n3415, n3416, n3417, n3418, n3419, n3420, n3421, n3422, n3423,
         n3424, n3425, n3426, n3427, n3428, n3429, n3430, n3431, n3432, n3433,
         n3434, n3435, n3436, n3437, n3438, n3439, n3440, n3441, n3442, n3443,
         n3444, n3445, n3446, n3447, n3448, n3449, n3450, n3451, n3452, n3453,
         n3454, n3456, n3457, n3458, n3459, n3460, n3461, n3462, n3463, n3464,
         n3465, n3466, n3467, n3468, n3469, n3470, n3471, n3472, n3473, n3474,
         n3475, n3476, n3477, n3478, n3479, n3480, n3481, n3482, n3483, n3484,
         n3485, n3486, n3487, n3488, n3489, n3490, n3491, n3492, n3493, n3494,
         n3495, n3496, n3497, n3498, n3499, n3500, n3501, n3502, n3503, n3504,
         n3505, n3506, n3507, n3508, n3509, n3510, n3511, n3512, n3513, n3514,
         n3515, n3516, n3517, n3518, n3519, n3520, n3521, n3522, n3523, n3524,
         n3525, n3526, n3527, n3528, n3529, n3530, n3531, n3532, n3533, n3534,
         n3535, n3536, n3537, n3538, n3539, n3540, n3541, n3542, n3543, n3544,
         n3545, n3546, n3547, n3548, n3549, n3550, n3551, n3552, n3553, n3554,
         n3555, n3556, n3557, n3558, n3559, n3560, n3561, n3562, n3563, n3564,
         n3565, n3566, n3567, n3568, n3569, n3570, n3571, n3572, n3573, n3574,
         n3575, n3576, n3577, n3578, n3579, n3580, n3581, n3582, n3583, n3584,
         n3585, n3586, n3587, n3588, n3589, n3590, n3591, n3592, n3593, n3594,
         n3595, n3596, n3597, n3598, n3599, n3600, n3601, n3602, n3603, n3604,
         n3605, n3606, n3607, n3608, n3609, n3610, n3611, n3612, n3613, n3614,
         n3615, n3616, n3617, n3618, n3619, n3620, n3621, n3622, n3623, n3624,
         n3625, n3626, n3627, n3628, n3629, n3630, n3631, n3632, n3633, n3634,
         n3635, n3636, n3637, n3638, n3639, n3640, n3641, n3642, n3643, n3644,
         n3645, n3646, n3647, n3648, n3649, n3650, n3651, n3652, n3653, n3654,
         n3655, n3656, n3657, n3658, n3659, n3660, n3661, n3662, n3663, n3664,
         n3665, n3666, n3667, n3668, n3669, n3670, n3671, n3672, n3673, n3674,
         n3675, n3676, n3677, n3678, n3679, n3680, n3681, n3682, n3683, n3684,
         n3685, n3686, n3687, n3688, n3689, n3690, n3691, n3692, n3693, n3694,
         n3695, n3696, n3697, n3698, n3699, n3700, n3701, n3702, n3703, n3704,
         n3705, n3706, n3707, n3708, n3709, n3710, n3711, n3712, n3713, n3714,
         n3715, n3716, n3717, n3718, n3719, n3720, n3721, n3722, n3723, n3724,
         n3725, n3726, n3727, n3728, n3729, n3730, n3731, n3732, n3733, n3734,
         n3735, n3736, n3737, n3738, n3739, n3740, n3741, n3742, n3743, n3744,
         n3745, n3746, n3747, n3748, n3749, n3750, n3751, n3752, n3753, n3754,
         n3755, n3756, n3757, n3758, n3759, n3760, n3761, n3762, n3763, n3764,
         n3765, n3766, n3767, n3768, n3769, n3770, n3771, n3772, n3773, n3774,
         n3775, n3776, n3777, n3778, n3779, n3780, n3781, n3782, n3783, n3784,
         n3785, n3786, n3787, n3788, n3789, n3790, n3791, n3792, n3793, n3794,
         n3795, n3796, n3797, n3798, n3799, n3800, n3801, n3802, n3803, n3804,
         n3805, n3806, n3807, n3808, n3809, n3810, n3811, n3812, n3813, n3814,
         n3815, n3816, n3817, n3818, n3819, n3820, n3821, n3822, n3823, n3824,
         n3825, n3826, n3827, n3828, n3829, n3830, n3831, n3832, n3833, n3834,
         n3835, n3836, n3837, n3838, n3839, n3840, n3841, n3842, n3843, n3844,
         n3845, n3846, n3847, n3848, n3849, n3850, n3851, n3852, n3853, n3854,
         n3855, n3856, n3857, n3858, n3859, n3860, n3861, n3862, n3863;
  wire   [23:0] buffer_data;
  wire   [5:0] counter_initial_next;
  wire   [4:0] counter_next;
  wire   [143:0] weights;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39;

  partial_pooling_2 \CHIPS[0].core/pool  ( .i_data({net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, \CHIPS[0].core/buffer_ppool_15 , 
        \CHIPS[0].core/buffer_ppool_14 , \CHIPS[0].core/buffer_ppool_13 , 
        \CHIPS[0].core/buffer_ppool_12 , \CHIPS[0].core/buffer_ppool_11 , 
        \CHIPS[0].core/buffer_ppool_10 , \CHIPS[0].core/buffer_ppool_9 , 
        \CHIPS[0].core/buffer_ppool_8 , net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266}), .o_data({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, \CHIPS[0].core/pooling[15] , 
        \CHIPS[0].core/pooling[14] , \CHIPS[0].core/pooling[13] , 
        \CHIPS[0].core/pooling[12] , \CHIPS[0].core/pooling[11] , 
        \CHIPS[0].core/pooling[10] , \CHIPS[0].core/pooling[9] , 
        \CHIPS[0].core/pooling[8] , SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12}) );
  partial_pooling_3 \CHIPS[0].core/partial_pool  ( .i_data({net21266, net21266, 
        \CHIPS[0].core/buffer_conv[39] , \CHIPS[0].core/buffer_conv[38] , 
        \CHIPS[0].core/buffer_conv[37] , \CHIPS[0].core/buffer_conv[36] , 
        \CHIPS[0].core/buffer_conv[35] , \CHIPS[0].core/buffer_conv[34] , 
        \CHIPS[0].core/buffer_conv[33] , \CHIPS[0].core/buffer_conv[32] , 
        \CHIPS[0].core/buffer_conv[31] , \CHIPS[0].core/buffer_conv[30] , 
        \CHIPS[0].core/buffer_conv[29] , \CHIPS[0].core/buffer_conv[28] , 
        \CHIPS[0].core/buffer_conv[27] , \CHIPS[0].core/buffer_conv[26] , 
        \CHIPS[0].core/buffer_conv[25] , \CHIPS[0].core/buffer_conv[24] , 
        \CHIPS[0].core/buffer_conv[23] , \CHIPS[0].core/buffer_conv[22] , 
        \CHIPS[0].core/buffer_conv[21] , net21266, net21266, 
        \CHIPS[0].core/buffer_conv[18] , \CHIPS[0].core/buffer_conv[17] , 
        \CHIPS[0].core/buffer_conv[16] , \CHIPS[0].core/buffer_conv[15] , 
        \CHIPS[0].core/buffer_conv[14] , \CHIPS[0].core/buffer_conv[13] , 
        \CHIPS[0].core/buffer_conv[12] , \CHIPS[0].core/buffer_conv[11] , 
        \CHIPS[0].core/buffer_conv[10] , \CHIPS[0].core/buffer_conv[9] , 
        \CHIPS[0].core/buffer_conv[8] , \CHIPS[0].core/buffer_conv[7] , 
        \CHIPS[0].core/buffer_conv[6] , \CHIPS[0].core/buffer_conv[5] , 
        \CHIPS[0].core/buffer_conv[4] , \CHIPS[0].core/buffer_conv[3] , 
        \CHIPS[0].core/buffer_conv[2] , \CHIPS[0].core/buffer_conv[1] , 
        \CHIPS[0].core/buffer_conv[0] }), .o_data({SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        \CHIPS[0].core/temp_ppool[15] , \CHIPS[0].core/temp_ppool[14] , 
        \CHIPS[0].core/temp_ppool[13] , \CHIPS[0].core/temp_ppool[12] , 
        \CHIPS[0].core/temp_ppool[11] , \CHIPS[0].core/temp_ppool[10] , 
        \CHIPS[0].core/temp_ppool[9] , \CHIPS[0].core/temp_ppool[8] , 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25}) );
  conv_1 \CHIPS[0].core/conv  ( .layer_num({n3456, layer_num[0]}), .i_pconv({
        \CHIPS[0].core/buffer_pconv[953] , \CHIPS[0].core/buffer_pconv[952] , 
        \CHIPS[0].core/buffer_pconv[951] , \CHIPS[0].core/buffer_pconv[950] , 
        \CHIPS[0].core/buffer_pconv[949] , \CHIPS[0].core/buffer_pconv[948] , 
        \CHIPS[0].core/buffer_pconv[947] , \CHIPS[0].core/buffer_pconv[946] , 
        \CHIPS[0].core/buffer_pconv[945] , \CHIPS[0].core/buffer_pconv[944] , 
        \CHIPS[0].core/buffer_pconv[943] , \CHIPS[0].core/buffer_pconv[942] , 
        \CHIPS[0].core/buffer_pconv[941] , \CHIPS[0].core/buffer_pconv[940] , 
        \CHIPS[0].core/buffer_pconv[939] , \CHIPS[0].core/buffer_pconv[938] , 
        \CHIPS[0].core/buffer_pconv[937] , \CHIPS[0].core/buffer_pconv[936] , 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, \CHIPS[0].core/buffer_pconv[485] , 
        \CHIPS[0].core/buffer_pconv[484] , \CHIPS[0].core/buffer_pconv[483] , 
        \CHIPS[0].core/buffer_pconv[482] , \CHIPS[0].core/buffer_pconv[481] , 
        \CHIPS[0].core/buffer_pconv[480] , \CHIPS[0].core/buffer_pconv[479] , 
        \CHIPS[0].core/buffer_pconv[478] , \CHIPS[0].core/buffer_pconv[477] , 
        \CHIPS[0].core/buffer_pconv[476] , \CHIPS[0].core/buffer_pconv[475] , 
        \CHIPS[0].core/buffer_pconv[474] , \CHIPS[0].core/buffer_pconv[473] , 
        \CHIPS[0].core/buffer_pconv[472] , \CHIPS[0].core/buffer_pconv[471] , 
        \CHIPS[0].core/buffer_pconv[470] , \CHIPS[0].core/buffer_pconv[469] , 
        \CHIPS[0].core/buffer_pconv[468] , net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, \CHIPS[0].core/buffer_pconv[413] , 
        \CHIPS[0].core/buffer_pconv[412] , \CHIPS[0].core/buffer_pconv[411] , 
        \CHIPS[0].core/buffer_pconv[410] , \CHIPS[0].core/buffer_pconv[409] , 
        \CHIPS[0].core/buffer_pconv[408] , \CHIPS[0].core/buffer_pconv[407] , 
        \CHIPS[0].core/buffer_pconv[406] , \CHIPS[0].core/buffer_pconv[405] , 
        \CHIPS[0].core/buffer_pconv[404] , \CHIPS[0].core/buffer_pconv[403] , 
        \CHIPS[0].core/buffer_pconv[402] , \CHIPS[0].core/buffer_pconv[401] , 
        \CHIPS[0].core/buffer_pconv[400] , \CHIPS[0].core/buffer_pconv[399] , 
        \CHIPS[0].core/buffer_pconv[398] , \CHIPS[0].core/buffer_pconv[397] , 
        \CHIPS[0].core/buffer_pconv[396] , net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, \CHIPS[0].core/buffer_pconv[215] , 
        \CHIPS[0].core/buffer_pconv[214] , \CHIPS[0].core/buffer_pconv[213] , 
        \CHIPS[0].core/buffer_pconv[212] , \CHIPS[0].core/buffer_pconv[211] , 
        \CHIPS[0].core/buffer_pconv[210] , \CHIPS[0].core/buffer_pconv[209] , 
        \CHIPS[0].core/buffer_pconv[208] , \CHIPS[0].core/buffer_pconv[207] , 
        \CHIPS[0].core/buffer_pconv[206] , \CHIPS[0].core/buffer_pconv[205] , 
        \CHIPS[0].core/buffer_pconv[204] , \CHIPS[0].core/buffer_pconv[203] , 
        \CHIPS[0].core/buffer_pconv[202] , \CHIPS[0].core/buffer_pconv[201] , 
        \CHIPS[0].core/buffer_pconv[200] , \CHIPS[0].core/buffer_pconv[199] , 
        \CHIPS[0].core/buffer_pconv[198] , net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, 
        \CHIPS[0].core/buffer_pconv[125] , \CHIPS[0].core/buffer_pconv[124] , 
        \CHIPS[0].core/buffer_pconv[123] , \CHIPS[0].core/buffer_pconv[122] , 
        \CHIPS[0].core/buffer_pconv[121] , \CHIPS[0].core/buffer_pconv[120] , 
        \CHIPS[0].core/buffer_pconv[119] , \CHIPS[0].core/buffer_pconv[118] , 
        \CHIPS[0].core/buffer_pconv[117] , \CHIPS[0].core/buffer_pconv[116] , 
        \CHIPS[0].core/buffer_pconv[115] , \CHIPS[0].core/buffer_pconv[114] , 
        \CHIPS[0].core/buffer_pconv[113] , \CHIPS[0].core/buffer_pconv[112] , 
        \CHIPS[0].core/buffer_pconv[111] , \CHIPS[0].core/buffer_pconv[110] , 
        \CHIPS[0].core/buffer_pconv[109] , \CHIPS[0].core/buffer_pconv[108] , 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, \CHIPS[0].core/buffer_pconv[70] , 
        \CHIPS[0].core/buffer_pconv[70] , \CHIPS[0].core/buffer_pconv[69] , 
        \CHIPS[0].core/buffer_pconv[68] , \CHIPS[0].core/buffer_pconv[67] , 
        \CHIPS[0].core/buffer_pconv[66] , \CHIPS[0].core/buffer_pconv[65] , 
        \CHIPS[0].core/buffer_pconv[64] , \CHIPS[0].core/buffer_pconv[63] , 
        \CHIPS[0].core/buffer_pconv[62] , \CHIPS[0].core/buffer_pconv[61] , 
        \CHIPS[0].core/buffer_pconv[60] , \CHIPS[0].core/buffer_pconv[59] , 
        \CHIPS[0].core/buffer_pconv[58] , \CHIPS[0].core/buffer_pconv[57] , 
        \CHIPS[0].core/buffer_pconv[56] , \CHIPS[0].core/buffer_pconv[55] , 
        \CHIPS[0].core/buffer_pconv[54] , net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, n637, 
        \CHIPS[0].core/buffer_pconv[16] , \CHIPS[0].core/buffer_pconv[15] , 
        \CHIPS[0].core/buffer_pconv[14] , \CHIPS[0].core/buffer_pconv[13] , 
        \CHIPS[0].core/buffer_pconv[12] , \CHIPS[0].core/buffer_pconv[11] , 
        \CHIPS[0].core/buffer_pconv[10] , \CHIPS[0].core/buffer_pconv[9] , 
        \CHIPS[0].core/buffer_pconv[8] , \CHIPS[0].core/buffer_pconv[7] , 
        \CHIPS[0].core/buffer_pconv[6] , \CHIPS[0].core/buffer_pconv[5] , 
        \CHIPS[0].core/buffer_pconv[4] , \CHIPS[0].core/buffer_pconv[3] , 
        \CHIPS[0].core/buffer_pconv[2] , \CHIPS[0].core/buffer_pconv[1] , 
        \CHIPS[0].core/buffer_pconv[0] }), .o_conv({SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, \CHIPS[0].core/temp_conv[18] , 
        \CHIPS[0].core/temp_conv[17] , \CHIPS[0].core/temp_conv[16] , 
        \CHIPS[0].core/temp_conv[15] , n224, n228, 
        \CHIPS[0].core/temp_conv[12] , n227, \CHIPS[0].core/temp_conv[10] , 
        \CHIPS[0].core/temp_conv[9] , \CHIPS[0].core/temp_conv[8] , 
        \CHIPS[0].core/temp_conv[7] , \CHIPS[0].core/temp_conv[6] , 
        \CHIPS[0].core/temp_conv[5] , \CHIPS[0].core/temp_conv[4] , 
        \CHIPS[0].core/temp_conv[3] , \CHIPS[0].core/temp_conv[2] , 
        \CHIPS[0].core/temp_conv[1] , \CHIPS[0].core/temp_conv[0] }) );
  partial_pooling_0 \CHIPS[1].core/pool  ( .i_data({net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, \CHIPS[1].core/buffer_ppool_15 , 
        \CHIPS[1].core/buffer_ppool_14 , \CHIPS[1].core/buffer_ppool_13 , 
        \CHIPS[1].core/buffer_ppool_12 , \CHIPS[1].core/buffer_ppool_11 , 
        \CHIPS[1].core/buffer_ppool_10 , \CHIPS[1].core/buffer_ppool_9 , 
        \CHIPS[1].core/buffer_ppool_8 , \CHIPS[1].core/buffer_ppool_7 , 
        \CHIPS[1].core/buffer_ppool_6 , \CHIPS[1].core/buffer_ppool_5 , 
        \CHIPS[1].core/buffer_ppool_4 , \CHIPS[1].core/buffer_ppool_3 , 
        \CHIPS[1].core/buffer_ppool_2 , \CHIPS[1].core/buffer_ppool_1 , 
        \CHIPS[1].core/buffer_ppool_0 }), .o_data({SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        \CHIPS[1].core/pooling[15] , \CHIPS[1].core/pooling[14] , 
        \CHIPS[1].core/pooling[13] , \CHIPS[1].core/pooling[12] , 
        \CHIPS[1].core/pooling[11] , \CHIPS[1].core/pooling[10] , 
        \CHIPS[1].core/pooling[9] , \CHIPS[1].core/pooling[8] , 
        \CHIPS[1].core/pooling[7] , \CHIPS[1].core/pooling[6] , 
        \CHIPS[1].core/pooling[5] , \CHIPS[1].core/pooling[4] , 
        \CHIPS[1].core/pooling[3] , \CHIPS[1].core/pooling[2] , 
        \CHIPS[1].core/pooling[1] , \CHIPS[1].core/pooling[0] }) );
  partial_pooling_1 \CHIPS[1].core/partial_pool  ( .i_data({net21266, net21266, 
        \CHIPS[1].core/buffer_conv[39] , \CHIPS[1].core/buffer_conv[38] , 
        \CHIPS[1].core/buffer_conv[37] , \CHIPS[1].core/buffer_conv[36] , 
        \CHIPS[1].core/buffer_conv[35] , \CHIPS[1].core/buffer_conv[34] , 
        \CHIPS[1].core/buffer_conv[33] , \CHIPS[1].core/buffer_conv[32] , 
        \CHIPS[1].core/buffer_conv[31] , \CHIPS[1].core/buffer_conv[30] , 
        \CHIPS[1].core/buffer_conv[29] , \CHIPS[1].core/buffer_conv[28] , 
        \CHIPS[1].core/buffer_conv[27] , \CHIPS[1].core/buffer_conv[26] , 
        \CHIPS[1].core/buffer_conv[25] , \CHIPS[1].core/buffer_conv[24] , 
        \CHIPS[1].core/buffer_conv[23] , \CHIPS[1].core/buffer_conv[22] , 
        \CHIPS[1].core/buffer_conv[21] , net21266, net21266, 
        \CHIPS[1].core/buffer_conv[18] , \CHIPS[1].core/buffer_conv[17] , 
        \CHIPS[1].core/buffer_conv[16] , \CHIPS[1].core/buffer_conv[15] , 
        \CHIPS[1].core/buffer_conv[14] , \CHIPS[1].core/buffer_conv[13] , 
        \CHIPS[1].core/buffer_conv[12] , \CHIPS[1].core/buffer_conv[11] , 
        \CHIPS[1].core/buffer_conv[10] , \CHIPS[1].core/buffer_conv[9] , 
        \CHIPS[1].core/buffer_conv[8] , \CHIPS[1].core/buffer_conv[7] , 
        \CHIPS[1].core/buffer_conv[6] , \CHIPS[1].core/buffer_conv[5] , 
        \CHIPS[1].core/buffer_conv[4] , \CHIPS[1].core/buffer_conv[3] , 
        \CHIPS[1].core/buffer_conv[2] , \CHIPS[1].core/buffer_conv[1] , 
        \CHIPS[1].core/buffer_conv[0] }), .o_data({SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        \CHIPS[1].core/temp_ppool[15] , \CHIPS[1].core/temp_ppool[14] , 
        \CHIPS[1].core/temp_ppool[13] , \CHIPS[1].core/temp_ppool[12] , 
        \CHIPS[1].core/temp_ppool[11] , \CHIPS[1].core/temp_ppool[10] , 
        \CHIPS[1].core/temp_ppool[9] , \CHIPS[1].core/temp_ppool[8] , 
        \CHIPS[1].core/temp_ppool[7] , \CHIPS[1].core/temp_ppool[6] , 
        \CHIPS[1].core/temp_ppool[5] , \CHIPS[1].core/temp_ppool[4] , 
        \CHIPS[1].core/temp_ppool[3] , \CHIPS[1].core/temp_ppool[2] , 
        \CHIPS[1].core/temp_ppool[1] , \CHIPS[1].core/temp_ppool[0] }) );
  conv_0 \CHIPS[1].core/conv  ( .layer_num({n3456, layer_num[0]}), .i_pconv({
        \CHIPS[1].core/buffer_pconv[953] , \CHIPS[1].core/buffer_pconv[952] , 
        \CHIPS[1].core/buffer_pconv[951] , \CHIPS[1].core/buffer_pconv[950] , 
        \CHIPS[1].core/buffer_pconv[949] , \CHIPS[1].core/buffer_pconv[948] , 
        \CHIPS[1].core/buffer_pconv[947] , \CHIPS[1].core/buffer_pconv[946] , 
        \CHIPS[1].core/buffer_pconv[945] , \CHIPS[1].core/buffer_pconv[944] , 
        \CHIPS[1].core/buffer_pconv[943] , \CHIPS[1].core/buffer_pconv[942] , 
        \CHIPS[1].core/buffer_pconv[941] , \CHIPS[1].core/buffer_pconv[940] , 
        \CHIPS[1].core/buffer_pconv[939] , \CHIPS[1].core/buffer_pconv[938] , 
        \CHIPS[1].core/buffer_pconv[937] , \CHIPS[1].core/buffer_pconv[936] , 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, \CHIPS[1].core/buffer_pconv[485] , 
        \CHIPS[1].core/buffer_pconv[484] , \CHIPS[1].core/buffer_pconv[483] , 
        \CHIPS[1].core/buffer_pconv[482] , \CHIPS[1].core/buffer_pconv[481] , 
        \CHIPS[1].core/buffer_pconv[480] , \CHIPS[1].core/buffer_pconv[479] , 
        \CHIPS[1].core/buffer_pconv[478] , \CHIPS[1].core/buffer_pconv[477] , 
        \CHIPS[1].core/buffer_pconv[476] , \CHIPS[1].core/buffer_pconv[475] , 
        \CHIPS[1].core/buffer_pconv[474] , \CHIPS[1].core/buffer_pconv[473] , 
        \CHIPS[1].core/buffer_pconv[472] , \CHIPS[1].core/buffer_pconv[471] , 
        \CHIPS[1].core/buffer_pconv[470] , \CHIPS[1].core/buffer_pconv[469] , 
        \CHIPS[1].core/buffer_pconv[468] , net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, \CHIPS[1].core/buffer_pconv[413] , 
        \CHIPS[1].core/buffer_pconv[412] , \CHIPS[1].core/buffer_pconv[411] , 
        \CHIPS[1].core/buffer_pconv[410] , \CHIPS[1].core/buffer_pconv[409] , 
        \CHIPS[1].core/buffer_pconv[408] , \CHIPS[1].core/buffer_pconv[407] , 
        \CHIPS[1].core/buffer_pconv[406] , \CHIPS[1].core/buffer_pconv[405] , 
        \CHIPS[1].core/buffer_pconv[404] , \CHIPS[1].core/buffer_pconv[403] , 
        \CHIPS[1].core/buffer_pconv[402] , \CHIPS[1].core/buffer_pconv[401] , 
        \CHIPS[1].core/buffer_pconv[400] , \CHIPS[1].core/buffer_pconv[399] , 
        \CHIPS[1].core/buffer_pconv[398] , \CHIPS[1].core/buffer_pconv[397] , 
        \CHIPS[1].core/buffer_pconv[396] , net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, \CHIPS[1].core/buffer_pconv[215] , 
        \CHIPS[1].core/buffer_pconv[214] , \CHIPS[1].core/buffer_pconv[213] , 
        \CHIPS[1].core/buffer_pconv[212] , \CHIPS[1].core/buffer_pconv[211] , 
        \CHIPS[1].core/buffer_pconv[210] , \CHIPS[1].core/buffer_pconv[209] , 
        \CHIPS[1].core/buffer_pconv[208] , \CHIPS[1].core/buffer_pconv[207] , 
        \CHIPS[1].core/buffer_pconv[206] , \CHIPS[1].core/buffer_pconv[205] , 
        \CHIPS[1].core/buffer_pconv[204] , \CHIPS[1].core/buffer_pconv[203] , 
        \CHIPS[1].core/buffer_pconv[202] , \CHIPS[1].core/buffer_pconv[201] , 
        \CHIPS[1].core/buffer_pconv[200] , \CHIPS[1].core/buffer_pconv[199] , 
        \CHIPS[1].core/buffer_pconv[198] , net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, 
        \CHIPS[1].core/buffer_pconv[125] , \CHIPS[1].core/buffer_pconv[124] , 
        \CHIPS[1].core/buffer_pconv[123] , \CHIPS[1].core/buffer_pconv[122] , 
        \CHIPS[1].core/buffer_pconv[121] , \CHIPS[1].core/buffer_pconv[120] , 
        \CHIPS[1].core/buffer_pconv[119] , \CHIPS[1].core/buffer_pconv[118] , 
        \CHIPS[1].core/buffer_pconv[117] , \CHIPS[1].core/buffer_pconv[116] , 
        \CHIPS[1].core/buffer_pconv[115] , \CHIPS[1].core/buffer_pconv[114] , 
        \CHIPS[1].core/buffer_pconv[113] , \CHIPS[1].core/buffer_pconv[112] , 
        \CHIPS[1].core/buffer_pconv[111] , \CHIPS[1].core/buffer_pconv[110] , 
        \CHIPS[1].core/buffer_pconv[109] , \CHIPS[1].core/buffer_pconv[108] , 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, \CHIPS[1].core/buffer_pconv[70] , 
        \CHIPS[1].core/buffer_pconv[70] , \CHIPS[1].core/buffer_pconv[69] , 
        \CHIPS[1].core/buffer_pconv[68] , \CHIPS[1].core/buffer_pconv[67] , 
        \CHIPS[1].core/buffer_pconv[66] , \CHIPS[1].core/buffer_pconv[65] , 
        \CHIPS[1].core/buffer_pconv[64] , \CHIPS[1].core/buffer_pconv[63] , 
        \CHIPS[1].core/buffer_pconv[62] , \CHIPS[1].core/buffer_pconv[61] , 
        \CHIPS[1].core/buffer_pconv[60] , \CHIPS[1].core/buffer_pconv[59] , 
        \CHIPS[1].core/buffer_pconv[58] , \CHIPS[1].core/buffer_pconv[57] , 
        \CHIPS[1].core/buffer_pconv[56] , \CHIPS[1].core/buffer_pconv[55] , 
        \CHIPS[1].core/buffer_pconv[54] , net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, net21266, net21266, 
        net21266, net21266, net21266, net21266, net21266, n636, 
        \CHIPS[1].core/buffer_pconv[16] , \CHIPS[1].core/buffer_pconv[15] , 
        \CHIPS[1].core/buffer_pconv[14] , \CHIPS[1].core/buffer_pconv[13] , 
        \CHIPS[1].core/buffer_pconv[12] , \CHIPS[1].core/buffer_pconv[11] , 
        \CHIPS[1].core/buffer_pconv[10] , \CHIPS[1].core/buffer_pconv[9] , 
        \CHIPS[1].core/buffer_pconv[8] , \CHIPS[1].core/buffer_pconv[7] , 
        \CHIPS[1].core/buffer_pconv[6] , \CHIPS[1].core/buffer_pconv[5] , 
        \CHIPS[1].core/buffer_pconv[4] , \CHIPS[1].core/buffer_pconv[3] , 
        \CHIPS[1].core/buffer_pconv[2] , n634, \CHIPS[1].core/buffer_pconv[0] }), .o_conv({SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        \CHIPS[1].core/temp_conv[18] , \CHIPS[1].core/temp_conv[17] , 
        \CHIPS[1].core/temp_conv[16] , \CHIPS[1].core/temp_conv[15] , 
        \CHIPS[1].core/temp_conv[14] , n225, \CHIPS[1].core/temp_conv[12] , 
        n226, \CHIPS[1].core/temp_conv[10] , \CHIPS[1].core/temp_conv[9] , 
        n222, n223, n229, \CHIPS[1].core/temp_conv[5] , 
        \CHIPS[1].core/temp_conv[4] , \CHIPS[1].core/temp_conv[3] , 
        \CHIPS[1].core/temp_conv[2] , \CHIPS[1].core/temp_conv[1] , 
        \CHIPS[1].core/temp_conv[0] }) );
  QDFFRBN \counter_next_reg[3]  ( .D(n93), .CK(clk), .RB(n3727), .Q(
        counter_next[3]) );
  QDFFRBN \counter_next_reg[1]  ( .D(n91), .CK(clk), .RB(n3704), .Q(
        counter_next[1]) );
  QDFFRBN \counter_next_reg[0]  ( .D(n90), .CK(clk), .RB(n3704), .Q(
        counter_next[0]) );
  QDFFRBP \counter_initial_next_reg[4]  ( .D(n88), .CK(clk), .RB(n3703), .Q(
        counter_initial_next[4]) );
  QDFFRBN \counter_initial_next_reg[3]  ( .D(n87), .CK(clk), .RB(n3703), .Q(
        counter_initial_next[3]) );
  QDFFRBP \counter_initial_next_reg[2]  ( .D(n86), .CK(clk), .RB(n3703), .Q(
        counter_initial_next[2]) );
  QDFFRBP \counter_initial_next_reg[1]  ( .D(n85), .CK(clk), .RB(n3703), .Q(
        counter_initial_next[1]) );
  QDFFRBN \counter_initial_next_reg[0]  ( .D(n84), .CK(clk), .RB(n3703), .Q(
        counter_initial_next[0]) );
  QDFFRBN \weights_reg[7]  ( .D(N197), .CK(clk), .RB(n3699), .Q(weights[7]) );
  QDFFRBN \weights_reg[31]  ( .D(N221), .CK(clk), .RB(n3699), .Q(weights[31])
         );
  QDFFRBN \weights_reg[103]  ( .D(N293), .CK(clk), .RB(n3699), .Q(weights[103]) );
  QDFFRBN \weights_reg[15]  ( .D(N205), .CK(clk), .RB(n3698), .Q(weights[15])
         );
  QDFFRBN \weights_reg[39]  ( .D(N229), .CK(clk), .RB(n3698), .Q(weights[39])
         );
  QDFFRBN \weights_reg[87]  ( .D(N277), .CK(clk), .RB(n3698), .Q(weights[87])
         );
  QDFFRBN \weights_reg[111]  ( .D(N301), .CK(clk), .RB(n3698), .Q(weights[111]) );
  QDFFRBN \weights_reg[95]  ( .D(N285), .CK(clk), .RB(n3697), .Q(weights[95])
         );
  QDFFRBN \weights_reg[6]  ( .D(N196), .CK(clk), .RB(n3696), .Q(weights[6]) );
  QDFFRBN \weights_reg[30]  ( .D(N220), .CK(clk), .RB(n3696), .Q(weights[30])
         );
  QDFFRBN \weights_reg[78]  ( .D(N268), .CK(clk), .RB(n3696), .Q(weights[78])
         );
  QDFFRBN \weights_reg[102]  ( .D(N292), .CK(clk), .RB(n3696), .Q(weights[102]) );
  QDFFRBN \weights_reg[22]  ( .D(N212), .CK(clk), .RB(n3694), .Q(weights[22])
         );
  QDFFRBN \weights_reg[46]  ( .D(N236), .CK(clk), .RB(n3694), .Q(weights[46])
         );
  QDFFRBN \weights_reg[118]  ( .D(N308), .CK(clk), .RB(n3694), .Q(weights[118]) );
  QDFFRBN \weights_reg[77]  ( .D(N267), .CK(clk), .RB(n3693), .Q(weights[77])
         );
  QDFFRBN \weights_reg[13]  ( .D(N203), .CK(clk), .RB(n3692), .Q(weights[13])
         );
  QDFFRBN \weights_reg[37]  ( .D(N227), .CK(clk), .RB(n3692), .Q(weights[37])
         );
  QDFFRBN \weights_reg[85]  ( .D(N275), .CK(clk), .RB(n3692), .Q(weights[85])
         );
  QDFFRBN \weights_reg[109]  ( .D(N299), .CK(clk), .RB(n3691), .Q(weights[109]) );
  QDFFRBN \weights_reg[21]  ( .D(N211), .CK(clk), .RB(n3691), .Q(weights[21])
         );
  QDFFRBN \weights_reg[45]  ( .D(N235), .CK(clk), .RB(n3691), .Q(weights[45])
         );
  QDFFRBN \weights_reg[93]  ( .D(N283), .CK(clk), .RB(n3691), .Q(weights[93])
         );
  QDFFRBN \weights_reg[117]  ( .D(N307), .CK(clk), .RB(n3690), .Q(weights[117]) );
  QDFFRBN \weights_reg[4]  ( .D(N194), .CK(clk), .RB(n3690), .Q(weights[4]) );
  QDFFRBN \weights_reg[28]  ( .D(N218), .CK(clk), .RB(n3690), .Q(weights[28])
         );
  QDFFRBN \weights_reg[76]  ( .D(N266), .CK(clk), .RB(n3690), .Q(weights[76])
         );
  QDFFRBN \weights_reg[100]  ( .D(N290), .CK(clk), .RB(n3690), .Q(weights[100]) );
  QDFFRBN \weights_reg[20]  ( .D(N210), .CK(clk), .RB(n3688), .Q(weights[20])
         );
  QDFFRBN \weights_reg[44]  ( .D(N234), .CK(clk), .RB(n3688), .Q(weights[44])
         );
  QDFFRBN \weights_reg[116]  ( .D(N306), .CK(clk), .RB(n3687), .Q(weights[116]) );
  QDFFRBN \weights_reg[75]  ( .D(N265), .CK(clk), .RB(n3687), .Q(weights[75])
         );
  QDFFRBN \weights_reg[99]  ( .D(N289), .CK(clk), .RB(n3687), .Q(weights[99])
         );
  QDFFRBN \weights_reg[11]  ( .D(N201), .CK(clk), .RB(n3686), .Q(weights[11])
         );
  QDFFRBN \weights_reg[35]  ( .D(N225), .CK(clk), .RB(n3686), .Q(weights[35])
         );
  QDFFRBN \weights_reg[83]  ( .D(N273), .CK(clk), .RB(n3686), .Q(weights[83])
         );
  QDFFRBN \weights_reg[107]  ( .D(N297), .CK(clk), .RB(n3685), .Q(weights[107]) );
  QDFFRBN \weights_reg[19]  ( .D(N209), .CK(clk), .RB(n3685), .Q(weights[19])
         );
  QDFFRBN \weights_reg[43]  ( .D(N233), .CK(clk), .RB(n3685), .Q(weights[43])
         );
  QDFFRBN \weights_reg[91]  ( .D(N281), .CK(clk), .RB(n3685), .Q(weights[91])
         );
  QDFFRBN \weights_reg[115]  ( .D(N305), .CK(clk), .RB(n3684), .Q(weights[115]) );
  QDFFRBN \weights_reg[2]  ( .D(N192), .CK(clk), .RB(n3684), .Q(weights[2]) );
  QDFFRBN \weights_reg[26]  ( .D(N216), .CK(clk), .RB(n3684), .Q(weights[26])
         );
  QDFFRBN \weights_reg[74]  ( .D(N264), .CK(clk), .RB(n3684), .Q(weights[74])
         );
  QDFFRBN \weights_reg[98]  ( .D(N288), .CK(clk), .RB(n3684), .Q(weights[98])
         );
  QDFFRBN \weights_reg[10]  ( .D(N200), .CK(clk), .RB(n3683), .Q(weights[10])
         );
  QDFFRBN \weights_reg[34]  ( .D(N224), .CK(clk), .RB(n3683), .Q(weights[34])
         );
  QDFFRBN \weights_reg[82]  ( .D(N272), .CK(clk), .RB(n3683), .Q(weights[82])
         );
  QDFFRBN \weights_reg[106]  ( .D(N296), .CK(clk), .RB(n3682), .Q(weights[106]) );
  QDFFRBN \weights_reg[18]  ( .D(N208), .CK(clk), .RB(n3682), .Q(weights[18])
         );
  QDFFRBN \weights_reg[42]  ( .D(N232), .CK(clk), .RB(n3682), .Q(weights[42])
         );
  QDFFRBN \weights_reg[90]  ( .D(N280), .CK(clk), .RB(n3682), .Q(weights[90])
         );
  QDFFRBN \weights_reg[114]  ( .D(N304), .CK(clk), .RB(n3681), .Q(weights[114]) );
  QDFFRBN \weights_reg[129]  ( .D(N319), .CK(clk), .RB(n3726), .Q(weights[129]) );
  QDFFRBN \weights_reg[9]  ( .D(N199), .CK(clk), .RB(n3726), .Q(weights[9]) );
  QDFFRBN \weights_reg[33]  ( .D(N223), .CK(clk), .RB(n3726), .Q(weights[33])
         );
  QDFFRBN \weights_reg[81]  ( .D(N271), .CK(clk), .RB(n3725), .Q(weights[81])
         );
  QDFFRBN \weights_reg[105]  ( .D(N295), .CK(clk), .RB(n3725), .Q(weights[105]) );
  QDFFRBN \weights_reg[89]  ( .D(N279), .CK(clk), .RB(n3724), .Q(weights[89])
         );
  QDFFRBN \weights_reg[113]  ( .D(N303), .CK(clk), .RB(n3724), .Q(weights[113]) );
  QDFFRBN \weights_reg[0]  ( .D(N190), .CK(clk), .RB(n3724), .Q(weights[0]) );
  QDFFRBN \weights_reg[24]  ( .D(N214), .CK(clk), .RB(n3724), .Q(weights[24])
         );
  QDFFRBN \weights_reg[72]  ( .D(N262), .CK(clk), .RB(n3723), .Q(weights[72])
         );
  QDFFRBN \weights_reg[96]  ( .D(N286), .CK(clk), .RB(n3723), .Q(weights[96])
         );
  QDFFRBN \weights_reg[16]  ( .D(N206), .CK(clk), .RB(n3722), .Q(weights[16])
         );
  QDFFRBN \weights_reg[40]  ( .D(N230), .CK(clk), .RB(n3722), .Q(weights[40])
         );
  QDFFRBN sel_reg ( .D(n95), .CK(clk), .RB(n3721), .Q(sel) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[1]  ( .D(
        \CHIPS[0].core/temp_pconv[1] ), .CK(clk), .RB(n3721), .Q(
        \CHIPS[0].core/buffer_pconv[1] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[2]  ( .D(
        \CHIPS[0].core/temp_pconv[2] ), .CK(clk), .RB(n3720), .Q(
        \CHIPS[0].core/buffer_pconv[2] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[3]  ( .D(
        \CHIPS[0].core/temp_pconv[3] ), .CK(clk), .RB(n3720), .Q(
        \CHIPS[0].core/buffer_pconv[3] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[18]  ( .D(
        \CHIPS[0].core/buffer_pconv[0] ), .CK(clk), .RB(n3718), .Q(
        \CHIPS[0].core/buffer_pconv[18] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[19]  ( .D(
        \CHIPS[0].core/buffer_pconv[1] ), .CK(clk), .RB(n3718), .Q(
        \CHIPS[0].core/buffer_pconv[19] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[20]  ( .D(
        \CHIPS[0].core/buffer_pconv[2] ), .CK(clk), .RB(n3718), .Q(
        \CHIPS[0].core/buffer_pconv[20] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[21]  ( .D(
        \CHIPS[0].core/buffer_pconv[3] ), .CK(clk), .RB(n3718), .Q(
        \CHIPS[0].core/buffer_pconv[21] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[22]  ( .D(
        \CHIPS[0].core/buffer_pconv[4] ), .CK(clk), .RB(n3718), .Q(
        \CHIPS[0].core/buffer_pconv[22] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[23]  ( .D(
        \CHIPS[0].core/buffer_pconv[5] ), .CK(clk), .RB(n3717), .Q(
        \CHIPS[0].core/buffer_pconv[23] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[24]  ( .D(
        \CHIPS[0].core/buffer_pconv[6] ), .CK(clk), .RB(n3717), .Q(
        \CHIPS[0].core/buffer_pconv[24] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[25]  ( .D(
        \CHIPS[0].core/buffer_pconv[7] ), .CK(clk), .RB(n3717), .Q(
        \CHIPS[0].core/buffer_pconv[25] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[26]  ( .D(
        \CHIPS[0].core/buffer_pconv[8] ), .CK(clk), .RB(n3717), .Q(
        \CHIPS[0].core/buffer_pconv[26] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[27]  ( .D(
        \CHIPS[0].core/buffer_pconv[9] ), .CK(clk), .RB(n3717), .Q(
        \CHIPS[0].core/buffer_pconv[27] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[28]  ( .D(
        \CHIPS[0].core/buffer_pconv[10] ), .CK(clk), .RB(n3717), .Q(
        \CHIPS[0].core/buffer_pconv[28] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[29]  ( .D(
        \CHIPS[0].core/buffer_pconv[11] ), .CK(clk), .RB(n3716), .Q(
        \CHIPS[0].core/buffer_pconv[29] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[30]  ( .D(
        \CHIPS[0].core/buffer_pconv[12] ), .CK(clk), .RB(n3716), .Q(
        \CHIPS[0].core/buffer_pconv[30] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[31]  ( .D(
        \CHIPS[0].core/buffer_pconv[13] ), .CK(clk), .RB(n3716), .Q(
        \CHIPS[0].core/buffer_pconv[31] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[32]  ( .D(
        \CHIPS[0].core/buffer_pconv[14] ), .CK(clk), .RB(n3716), .Q(
        \CHIPS[0].core/buffer_pconv[32] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[33]  ( .D(
        \CHIPS[0].core/buffer_pconv[15] ), .CK(clk), .RB(n3716), .Q(
        \CHIPS[0].core/buffer_pconv[33] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[34]  ( .D(n637), .CK(clk), .RB(n3716), .Q(\CHIPS[0].core/buffer_pconv[34] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[36]  ( .D(
        \CHIPS[0].core/buffer_pconv[18] ), .CK(clk), .RB(n3715), .Q(
        \CHIPS[0].core/buffer_pconv[36] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[37]  ( .D(
        \CHIPS[0].core/buffer_pconv[19] ), .CK(clk), .RB(n3715), .Q(
        \CHIPS[0].core/buffer_pconv[37] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[38]  ( .D(
        \CHIPS[0].core/buffer_pconv[20] ), .CK(clk), .RB(n3715), .Q(
        \CHIPS[0].core/buffer_pconv[38] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[39]  ( .D(
        \CHIPS[0].core/buffer_pconv[21] ), .CK(clk), .RB(n3715), .Q(
        \CHIPS[0].core/buffer_pconv[39] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[40]  ( .D(
        \CHIPS[0].core/buffer_pconv[22] ), .CK(clk), .RB(n3714), .Q(
        \CHIPS[0].core/buffer_pconv[40] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[41]  ( .D(
        \CHIPS[0].core/buffer_pconv[23] ), .CK(clk), .RB(n3714), .Q(
        \CHIPS[0].core/buffer_pconv[41] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[42]  ( .D(
        \CHIPS[0].core/buffer_pconv[24] ), .CK(clk), .RB(n3714), .Q(
        \CHIPS[0].core/buffer_pconv[42] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[43]  ( .D(
        \CHIPS[0].core/buffer_pconv[25] ), .CK(clk), .RB(n3714), .Q(
        \CHIPS[0].core/buffer_pconv[43] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[44]  ( .D(
        \CHIPS[0].core/buffer_pconv[26] ), .CK(clk), .RB(n3714), .Q(
        \CHIPS[0].core/buffer_pconv[44] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[45]  ( .D(
        \CHIPS[0].core/buffer_pconv[27] ), .CK(clk), .RB(n3714), .Q(
        \CHIPS[0].core/buffer_pconv[45] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[46]  ( .D(
        \CHIPS[0].core/buffer_pconv[28] ), .CK(clk), .RB(n3713), .Q(
        \CHIPS[0].core/buffer_pconv[46] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[47]  ( .D(
        \CHIPS[0].core/buffer_pconv[29] ), .CK(clk), .RB(n3713), .Q(
        \CHIPS[0].core/buffer_pconv[47] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[48]  ( .D(
        \CHIPS[0].core/buffer_pconv[30] ), .CK(clk), .RB(n3713), .Q(
        \CHIPS[0].core/buffer_pconv[48] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[49]  ( .D(
        \CHIPS[0].core/buffer_pconv[31] ), .CK(clk), .RB(n3713), .Q(
        \CHIPS[0].core/buffer_pconv[49] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[50]  ( .D(
        \CHIPS[0].core/buffer_pconv[32] ), .CK(clk), .RB(n3713), .Q(
        \CHIPS[0].core/buffer_pconv[50] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[51]  ( .D(
        \CHIPS[0].core/buffer_pconv[33] ), .CK(clk), .RB(n3713), .Q(
        \CHIPS[0].core/buffer_pconv[51] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[52]  ( .D(
        \CHIPS[0].core/buffer_pconv[34] ), .CK(clk), .RB(n3712), .Q(
        \CHIPS[0].core/buffer_pconv[52] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[54]  ( .D(
        \CHIPS[0].core/buffer_pconv[36] ), .CK(clk), .RB(n3712), .Q(
        \CHIPS[0].core/buffer_pconv[54] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[55]  ( .D(
        \CHIPS[0].core/buffer_pconv[37] ), .CK(clk), .RB(n3712), .Q(
        \CHIPS[0].core/buffer_pconv[55] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[56]  ( .D(
        \CHIPS[0].core/buffer_pconv[38] ), .CK(clk), .RB(n3712), .Q(
        \CHIPS[0].core/buffer_pconv[56] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[57]  ( .D(
        \CHIPS[0].core/buffer_pconv[39] ), .CK(clk), .RB(n3712), .Q(
        \CHIPS[0].core/buffer_pconv[57] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[58]  ( .D(
        \CHIPS[0].core/buffer_pconv[40] ), .CK(clk), .RB(n3711), .Q(
        \CHIPS[0].core/buffer_pconv[58] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[59]  ( .D(
        \CHIPS[0].core/buffer_pconv[41] ), .CK(clk), .RB(n3711), .Q(
        \CHIPS[0].core/buffer_pconv[59] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[60]  ( .D(
        \CHIPS[0].core/buffer_pconv[42] ), .CK(clk), .RB(n3711), .Q(
        \CHIPS[0].core/buffer_pconv[60] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[61]  ( .D(
        \CHIPS[0].core/buffer_pconv[43] ), .CK(clk), .RB(n3711), .Q(
        \CHIPS[0].core/buffer_pconv[61] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[62]  ( .D(
        \CHIPS[0].core/buffer_pconv[44] ), .CK(clk), .RB(n3711), .Q(
        \CHIPS[0].core/buffer_pconv[62] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[63]  ( .D(
        \CHIPS[0].core/buffer_pconv[45] ), .CK(clk), .RB(n3711), .Q(
        \CHIPS[0].core/buffer_pconv[63] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[64]  ( .D(
        \CHIPS[0].core/buffer_pconv[46] ), .CK(clk), .RB(n3710), .Q(
        \CHIPS[0].core/buffer_pconv[64] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[65]  ( .D(
        \CHIPS[0].core/buffer_pconv[47] ), .CK(clk), .RB(n3710), .Q(
        \CHIPS[0].core/buffer_pconv[65] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[66]  ( .D(
        \CHIPS[0].core/buffer_pconv[48] ), .CK(clk), .RB(n3710), .Q(
        \CHIPS[0].core/buffer_pconv[66] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[67]  ( .D(
        \CHIPS[0].core/buffer_pconv[49] ), .CK(clk), .RB(n3710), .Q(
        \CHIPS[0].core/buffer_pconv[67] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[68]  ( .D(
        \CHIPS[0].core/buffer_pconv[50] ), .CK(clk), .RB(n3710), .Q(
        \CHIPS[0].core/buffer_pconv[68] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[69]  ( .D(
        \CHIPS[0].core/buffer_pconv[51] ), .CK(clk), .RB(n3710), .Q(
        \CHIPS[0].core/buffer_pconv[69] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[70]  ( .D(
        \CHIPS[0].core/buffer_pconv[52] ), .CK(clk), .RB(n3709), .Q(
        \CHIPS[0].core/buffer_pconv[70] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[72]  ( .D(
        \CHIPS[0].core/buffer_pconv[54] ), .CK(clk), .RB(n3709), .Q(
        \CHIPS[0].core/buffer_pconv[72] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[73]  ( .D(
        \CHIPS[0].core/buffer_pconv[55] ), .CK(clk), .RB(n3709), .Q(
        \CHIPS[0].core/buffer_pconv[73] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[74]  ( .D(
        \CHIPS[0].core/buffer_pconv[56] ), .CK(clk), .RB(n3709), .Q(
        \CHIPS[0].core/buffer_pconv[74] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[75]  ( .D(
        \CHIPS[0].core/buffer_pconv[57] ), .CK(clk), .RB(n3709), .Q(
        \CHIPS[0].core/buffer_pconv[75] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[76]  ( .D(
        \CHIPS[0].core/buffer_pconv[58] ), .CK(clk), .RB(n3708), .Q(
        \CHIPS[0].core/buffer_pconv[76] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[77]  ( .D(
        \CHIPS[0].core/buffer_pconv[59] ), .CK(clk), .RB(n3708), .Q(
        \CHIPS[0].core/buffer_pconv[77] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[78]  ( .D(
        \CHIPS[0].core/buffer_pconv[60] ), .CK(clk), .RB(n3708), .Q(
        \CHIPS[0].core/buffer_pconv[78] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[80]  ( .D(
        \CHIPS[0].core/buffer_pconv[62] ), .CK(clk), .RB(n3708), .Q(
        \CHIPS[0].core/buffer_pconv[80] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[81]  ( .D(
        \CHIPS[0].core/buffer_pconv[63] ), .CK(clk), .RB(n3708), .Q(
        \CHIPS[0].core/buffer_pconv[81] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[82]  ( .D(
        \CHIPS[0].core/buffer_pconv[64] ), .CK(clk), .RB(n3707), .Q(
        \CHIPS[0].core/buffer_pconv[82] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[83]  ( .D(
        \CHIPS[0].core/buffer_pconv[65] ), .CK(clk), .RB(n3707), .Q(
        \CHIPS[0].core/buffer_pconv[83] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[84]  ( .D(
        \CHIPS[0].core/buffer_pconv[66] ), .CK(clk), .RB(n3707), .Q(
        \CHIPS[0].core/buffer_pconv[84] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[85]  ( .D(
        \CHIPS[0].core/buffer_pconv[67] ), .CK(clk), .RB(n3707), .Q(
        \CHIPS[0].core/buffer_pconv[85] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[86]  ( .D(
        \CHIPS[0].core/buffer_pconv[68] ), .CK(clk), .RB(n3707), .Q(
        \CHIPS[0].core/buffer_pconv[86] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[87]  ( .D(
        \CHIPS[0].core/buffer_pconv[69] ), .CK(clk), .RB(n3707), .Q(
        \CHIPS[0].core/buffer_pconv[87] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[88]  ( .D(
        \CHIPS[0].core/buffer_pconv[70] ), .CK(clk), .RB(n3706), .Q(
        \CHIPS[0].core/buffer_pconv[88] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[89]  ( .D(
        \CHIPS[0].core/buffer_pconv[70] ), .CK(clk), .RB(n3706), .Q(
        \CHIPS[0].core/buffer_pconv[89] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[90]  ( .D(
        \CHIPS[0].core/buffer_pconv[72] ), .CK(clk), .RB(n3706), .Q(
        \CHIPS[0].core/buffer_pconv[90] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[91]  ( .D(
        \CHIPS[0].core/buffer_pconv[73] ), .CK(clk), .RB(n3706), .Q(
        \CHIPS[0].core/buffer_pconv[91] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[92]  ( .D(
        \CHIPS[0].core/buffer_pconv[74] ), .CK(clk), .RB(n3706), .Q(
        \CHIPS[0].core/buffer_pconv[92] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[93]  ( .D(
        \CHIPS[0].core/buffer_pconv[75] ), .CK(clk), .RB(n3706), .Q(
        \CHIPS[0].core/buffer_pconv[93] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[94]  ( .D(
        \CHIPS[0].core/buffer_pconv[76] ), .CK(clk), .RB(n3705), .Q(
        \CHIPS[0].core/buffer_pconv[94] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[95]  ( .D(
        \CHIPS[0].core/buffer_pconv[77] ), .CK(clk), .RB(n3705), .Q(
        \CHIPS[0].core/buffer_pconv[95] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[96]  ( .D(
        \CHIPS[0].core/buffer_pconv[78] ), .CK(clk), .RB(n3705), .Q(
        \CHIPS[0].core/buffer_pconv[96] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[97]  ( .D(
        \CHIPS[0].core/buffer_pconv[79] ), .CK(clk), .RB(n3705), .Q(
        \CHIPS[0].core/buffer_pconv[97] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[98]  ( .D(
        \CHIPS[0].core/buffer_pconv[80] ), .CK(clk), .RB(n3705), .Q(
        \CHIPS[0].core/buffer_pconv[98] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[99]  ( .D(
        \CHIPS[0].core/buffer_pconv[81] ), .CK(clk), .RB(n3705), .Q(
        \CHIPS[0].core/buffer_pconv[99] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[100]  ( .D(
        \CHIPS[0].core/buffer_pconv[82] ), .CK(clk), .RB(n3704), .Q(
        \CHIPS[0].core/buffer_pconv[100] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[101]  ( .D(
        \CHIPS[0].core/buffer_pconv[83] ), .CK(clk), .RB(n3704), .Q(
        \CHIPS[0].core/buffer_pconv[101] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[102]  ( .D(
        \CHIPS[0].core/buffer_pconv[84] ), .CK(clk), .RB(n3715), .Q(
        \CHIPS[0].core/buffer_pconv[102] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[103]  ( .D(
        \CHIPS[0].core/buffer_pconv[85] ), .CK(clk), .RB(n3658), .Q(
        \CHIPS[0].core/buffer_pconv[103] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[104]  ( .D(
        \CHIPS[0].core/buffer_pconv[86] ), .CK(clk), .RB(n3658), .Q(
        \CHIPS[0].core/buffer_pconv[104] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[105]  ( .D(
        \CHIPS[0].core/buffer_pconv[87] ), .CK(clk), .RB(n3658), .Q(
        \CHIPS[0].core/buffer_pconv[105] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[106]  ( .D(
        \CHIPS[0].core/buffer_pconv[88] ), .CK(clk), .RB(n3658), .Q(
        \CHIPS[0].core/buffer_pconv[106] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[107]  ( .D(
        \CHIPS[0].core/buffer_pconv[89] ), .CK(clk), .RB(n3658), .Q(
        \CHIPS[0].core/buffer_pconv[107] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[108]  ( .D(
        \CHIPS[0].core/buffer_pconv[90] ), .CK(clk), .RB(n3658), .Q(
        \CHIPS[0].core/buffer_pconv[108] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[109]  ( .D(
        \CHIPS[0].core/buffer_pconv[91] ), .CK(clk), .RB(n3657), .Q(
        \CHIPS[0].core/buffer_pconv[109] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[110]  ( .D(
        \CHIPS[0].core/buffer_pconv[92] ), .CK(clk), .RB(n3657), .Q(
        \CHIPS[0].core/buffer_pconv[110] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[111]  ( .D(
        \CHIPS[0].core/buffer_pconv[93] ), .CK(clk), .RB(n3657), .Q(
        \CHIPS[0].core/buffer_pconv[111] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[112]  ( .D(
        \CHIPS[0].core/buffer_pconv[94] ), .CK(clk), .RB(n3657), .Q(
        \CHIPS[0].core/buffer_pconv[112] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[113]  ( .D(
        \CHIPS[0].core/buffer_pconv[95] ), .CK(clk), .RB(n3657), .Q(
        \CHIPS[0].core/buffer_pconv[113] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[114]  ( .D(
        \CHIPS[0].core/buffer_pconv[96] ), .CK(clk), .RB(n3657), .Q(
        \CHIPS[0].core/buffer_pconv[114] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[115]  ( .D(
        \CHIPS[0].core/buffer_pconv[97] ), .CK(clk), .RB(n3656), .Q(
        \CHIPS[0].core/buffer_pconv[115] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[116]  ( .D(
        \CHIPS[0].core/buffer_pconv[98] ), .CK(clk), .RB(n3656), .Q(
        \CHIPS[0].core/buffer_pconv[116] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[117]  ( .D(
        \CHIPS[0].core/buffer_pconv[99] ), .CK(clk), .RB(n3656), .Q(
        \CHIPS[0].core/buffer_pconv[117] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[118]  ( .D(
        \CHIPS[0].core/buffer_pconv[100] ), .CK(clk), .RB(n3656), .Q(
        \CHIPS[0].core/buffer_pconv[118] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[119]  ( .D(
        \CHIPS[0].core/buffer_pconv[101] ), .CK(clk), .RB(n3656), .Q(
        \CHIPS[0].core/buffer_pconv[119] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[120]  ( .D(
        \CHIPS[0].core/buffer_pconv[102] ), .CK(clk), .RB(n3656), .Q(
        \CHIPS[0].core/buffer_pconv[120] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[121]  ( .D(
        \CHIPS[0].core/buffer_pconv[103] ), .CK(clk), .RB(n3655), .Q(
        \CHIPS[0].core/buffer_pconv[121] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[122]  ( .D(
        \CHIPS[0].core/buffer_pconv[104] ), .CK(clk), .RB(n3655), .Q(
        \CHIPS[0].core/buffer_pconv[122] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[123]  ( .D(
        \CHIPS[0].core/buffer_pconv[105] ), .CK(clk), .RB(n3655), .Q(
        \CHIPS[0].core/buffer_pconv[123] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[124]  ( .D(
        \CHIPS[0].core/buffer_pconv[106] ), .CK(clk), .RB(n3655), .Q(
        \CHIPS[0].core/buffer_pconv[124] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[125]  ( .D(
        \CHIPS[0].core/buffer_pconv[107] ), .CK(clk), .RB(n3655), .Q(
        \CHIPS[0].core/buffer_pconv[125] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[126]  ( .D(
        \CHIPS[0].core/buffer_pconv[108] ), .CK(clk), .RB(n3655), .Q(
        \CHIPS[0].core/buffer_pconv[126] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[127]  ( .D(
        \CHIPS[0].core/buffer_pconv[109] ), .CK(clk), .RB(n3654), .Q(
        \CHIPS[0].core/buffer_pconv[127] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[128]  ( .D(
        \CHIPS[0].core/buffer_pconv[110] ), .CK(clk), .RB(n3654), .Q(
        \CHIPS[0].core/buffer_pconv[128] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[129]  ( .D(
        \CHIPS[0].core/buffer_pconv[111] ), .CK(clk), .RB(n3654), .Q(
        \CHIPS[0].core/buffer_pconv[129] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[130]  ( .D(
        \CHIPS[0].core/buffer_pconv[112] ), .CK(clk), .RB(n3654), .Q(
        \CHIPS[0].core/buffer_pconv[130] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[131]  ( .D(
        \CHIPS[0].core/buffer_pconv[113] ), .CK(clk), .RB(n3654), .Q(
        \CHIPS[0].core/buffer_pconv[131] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[132]  ( .D(
        \CHIPS[0].core/buffer_pconv[114] ), .CK(clk), .RB(n3654), .Q(
        \CHIPS[0].core/buffer_pconv[132] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[133]  ( .D(
        \CHIPS[0].core/buffer_pconv[115] ), .CK(clk), .RB(n3653), .Q(
        \CHIPS[0].core/buffer_pconv[133] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[134]  ( .D(
        \CHIPS[0].core/buffer_pconv[116] ), .CK(clk), .RB(n3653), .Q(
        \CHIPS[0].core/buffer_pconv[134] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[135]  ( .D(
        \CHIPS[0].core/buffer_pconv[117] ), .CK(clk), .RB(n3653), .Q(
        \CHIPS[0].core/buffer_pconv[135] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[136]  ( .D(
        \CHIPS[0].core/buffer_pconv[118] ), .CK(clk), .RB(n3653), .Q(
        \CHIPS[0].core/buffer_pconv[136] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[137]  ( .D(
        \CHIPS[0].core/buffer_pconv[119] ), .CK(clk), .RB(n3653), .Q(
        \CHIPS[0].core/buffer_pconv[137] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[138]  ( .D(
        \CHIPS[0].core/buffer_pconv[120] ), .CK(clk), .RB(n3653), .Q(
        \CHIPS[0].core/buffer_pconv[138] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[139]  ( .D(
        \CHIPS[0].core/buffer_pconv[121] ), .CK(clk), .RB(n3652), .Q(
        \CHIPS[0].core/buffer_pconv[139] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[140]  ( .D(
        \CHIPS[0].core/buffer_pconv[122] ), .CK(clk), .RB(n3652), .Q(
        \CHIPS[0].core/buffer_pconv[140] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[141]  ( .D(
        \CHIPS[0].core/buffer_pconv[123] ), .CK(clk), .RB(n3652), .Q(
        \CHIPS[0].core/buffer_pconv[141] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[142]  ( .D(
        \CHIPS[0].core/buffer_pconv[124] ), .CK(clk), .RB(n3652), .Q(
        \CHIPS[0].core/buffer_pconv[142] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[143]  ( .D(
        \CHIPS[0].core/buffer_pconv[125] ), .CK(clk), .RB(n3652), .Q(
        \CHIPS[0].core/buffer_pconv[143] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[144]  ( .D(
        \CHIPS[0].core/buffer_pconv[126] ), .CK(clk), .RB(n3652), .Q(
        \CHIPS[0].core/buffer_pconv[144] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[145]  ( .D(
        \CHIPS[0].core/buffer_pconv[127] ), .CK(clk), .RB(n3651), .Q(
        \CHIPS[0].core/buffer_pconv[145] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[146]  ( .D(
        \CHIPS[0].core/buffer_pconv[128] ), .CK(clk), .RB(n3651), .Q(
        \CHIPS[0].core/buffer_pconv[146] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[147]  ( .D(
        \CHIPS[0].core/buffer_pconv[129] ), .CK(clk), .RB(n3651), .Q(
        \CHIPS[0].core/buffer_pconv[147] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[148]  ( .D(
        \CHIPS[0].core/buffer_pconv[130] ), .CK(clk), .RB(n3651), .Q(
        \CHIPS[0].core/buffer_pconv[148] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[149]  ( .D(
        \CHIPS[0].core/buffer_pconv[131] ), .CK(clk), .RB(n3651), .Q(
        \CHIPS[0].core/buffer_pconv[149] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[150]  ( .D(
        \CHIPS[0].core/buffer_pconv[132] ), .CK(clk), .RB(n3651), .Q(
        \CHIPS[0].core/buffer_pconv[150] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[151]  ( .D(
        \CHIPS[0].core/buffer_pconv[133] ), .CK(clk), .RB(n3650), .Q(
        \CHIPS[0].core/buffer_pconv[151] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[152]  ( .D(
        \CHIPS[0].core/buffer_pconv[134] ), .CK(clk), .RB(n3650), .Q(
        \CHIPS[0].core/buffer_pconv[152] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[153]  ( .D(
        \CHIPS[0].core/buffer_pconv[135] ), .CK(clk), .RB(n3650), .Q(
        \CHIPS[0].core/buffer_pconv[153] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[154]  ( .D(
        \CHIPS[0].core/buffer_pconv[136] ), .CK(clk), .RB(n3650), .Q(
        \CHIPS[0].core/buffer_pconv[154] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[155]  ( .D(
        \CHIPS[0].core/buffer_pconv[137] ), .CK(clk), .RB(n3650), .Q(
        \CHIPS[0].core/buffer_pconv[155] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[156]  ( .D(
        \CHIPS[0].core/buffer_pconv[138] ), .CK(clk), .RB(n3650), .Q(
        \CHIPS[0].core/buffer_pconv[156] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[157]  ( .D(
        \CHIPS[0].core/buffer_pconv[139] ), .CK(clk), .RB(n3649), .Q(
        \CHIPS[0].core/buffer_pconv[157] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[158]  ( .D(
        \CHIPS[0].core/buffer_pconv[140] ), .CK(clk), .RB(n3649), .Q(
        \CHIPS[0].core/buffer_pconv[158] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[159]  ( .D(
        \CHIPS[0].core/buffer_pconv[141] ), .CK(clk), .RB(n3649), .Q(
        \CHIPS[0].core/buffer_pconv[159] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[160]  ( .D(
        \CHIPS[0].core/buffer_pconv[142] ), .CK(clk), .RB(n3649), .Q(
        \CHIPS[0].core/buffer_pconv[160] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[161]  ( .D(
        \CHIPS[0].core/buffer_pconv[143] ), .CK(clk), .RB(n3649), .Q(
        \CHIPS[0].core/buffer_pconv[161] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[162]  ( .D(
        \CHIPS[0].core/buffer_pconv[144] ), .CK(clk), .RB(n3649), .Q(
        \CHIPS[0].core/buffer_pconv[162] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[163]  ( .D(
        \CHIPS[0].core/buffer_pconv[145] ), .CK(clk), .RB(n3648), .Q(
        \CHIPS[0].core/buffer_pconv[163] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[164]  ( .D(
        \CHIPS[0].core/buffer_pconv[146] ), .CK(clk), .RB(n3648), .Q(
        \CHIPS[0].core/buffer_pconv[164] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[165]  ( .D(
        \CHIPS[0].core/buffer_pconv[147] ), .CK(clk), .RB(n3648), .Q(
        \CHIPS[0].core/buffer_pconv[165] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[166]  ( .D(
        \CHIPS[0].core/buffer_pconv[148] ), .CK(clk), .RB(n3648), .Q(
        \CHIPS[0].core/buffer_pconv[166] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[167]  ( .D(
        \CHIPS[0].core/buffer_pconv[149] ), .CK(clk), .RB(n3648), .Q(
        \CHIPS[0].core/buffer_pconv[167] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[168]  ( .D(
        \CHIPS[0].core/buffer_pconv[150] ), .CK(clk), .RB(n3648), .Q(
        \CHIPS[0].core/buffer_pconv[168] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[169]  ( .D(
        \CHIPS[0].core/buffer_pconv[151] ), .CK(clk), .RB(n3647), .Q(
        \CHIPS[0].core/buffer_pconv[169] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[170]  ( .D(
        \CHIPS[0].core/buffer_pconv[152] ), .CK(clk), .RB(n3647), .Q(
        \CHIPS[0].core/buffer_pconv[170] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[171]  ( .D(
        \CHIPS[0].core/buffer_pconv[153] ), .CK(clk), .RB(n3647), .Q(
        \CHIPS[0].core/buffer_pconv[171] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[172]  ( .D(
        \CHIPS[0].core/buffer_pconv[154] ), .CK(clk), .RB(n3647), .Q(
        \CHIPS[0].core/buffer_pconv[172] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[173]  ( .D(
        \CHIPS[0].core/buffer_pconv[155] ), .CK(clk), .RB(n3647), .Q(
        \CHIPS[0].core/buffer_pconv[173] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[174]  ( .D(
        \CHIPS[0].core/buffer_pconv[156] ), .CK(clk), .RB(n3646), .Q(
        \CHIPS[0].core/buffer_pconv[174] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[175]  ( .D(
        \CHIPS[0].core/buffer_pconv[157] ), .CK(clk), .RB(n3646), .Q(
        \CHIPS[0].core/buffer_pconv[175] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[176]  ( .D(
        \CHIPS[0].core/buffer_pconv[158] ), .CK(clk), .RB(n3646), .Q(
        \CHIPS[0].core/buffer_pconv[176] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[177]  ( .D(
        \CHIPS[0].core/buffer_pconv[159] ), .CK(clk), .RB(n3646), .Q(
        \CHIPS[0].core/buffer_pconv[177] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[178]  ( .D(
        \CHIPS[0].core/buffer_pconv[160] ), .CK(clk), .RB(n3646), .Q(
        \CHIPS[0].core/buffer_pconv[178] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[179]  ( .D(
        \CHIPS[0].core/buffer_pconv[161] ), .CK(clk), .RB(n3646), .Q(
        \CHIPS[0].core/buffer_pconv[179] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[180]  ( .D(
        \CHIPS[0].core/buffer_pconv[162] ), .CK(clk), .RB(n3645), .Q(
        \CHIPS[0].core/buffer_pconv[180] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[181]  ( .D(
        \CHIPS[0].core/buffer_pconv[163] ), .CK(clk), .RB(n3645), .Q(
        \CHIPS[0].core/buffer_pconv[181] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[182]  ( .D(
        \CHIPS[0].core/buffer_pconv[164] ), .CK(clk), .RB(n3645), .Q(
        \CHIPS[0].core/buffer_pconv[182] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[183]  ( .D(
        \CHIPS[0].core/buffer_pconv[165] ), .CK(clk), .RB(n3645), .Q(
        \CHIPS[0].core/buffer_pconv[183] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[184]  ( .D(
        \CHIPS[0].core/buffer_pconv[166] ), .CK(clk), .RB(n3645), .Q(
        \CHIPS[0].core/buffer_pconv[184] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[185]  ( .D(
        \CHIPS[0].core/buffer_pconv[167] ), .CK(clk), .RB(n3645), .Q(
        \CHIPS[0].core/buffer_pconv[185] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[186]  ( .D(
        \CHIPS[0].core/buffer_pconv[168] ), .CK(clk), .RB(n3644), .Q(
        \CHIPS[0].core/buffer_pconv[186] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[187]  ( .D(
        \CHIPS[0].core/buffer_pconv[169] ), .CK(clk), .RB(n3644), .Q(
        \CHIPS[0].core/buffer_pconv[187] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[188]  ( .D(
        \CHIPS[0].core/buffer_pconv[170] ), .CK(clk), .RB(n3644), .Q(
        \CHIPS[0].core/buffer_pconv[188] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[189]  ( .D(
        \CHIPS[0].core/buffer_pconv[171] ), .CK(clk), .RB(n3644), .Q(
        \CHIPS[0].core/buffer_pconv[189] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[190]  ( .D(
        \CHIPS[0].core/buffer_pconv[172] ), .CK(clk), .RB(n3644), .Q(
        \CHIPS[0].core/buffer_pconv[190] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[191]  ( .D(
        \CHIPS[0].core/buffer_pconv[173] ), .CK(clk), .RB(n3644), .Q(
        \CHIPS[0].core/buffer_pconv[191] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[192]  ( .D(
        \CHIPS[0].core/buffer_pconv[174] ), .CK(clk), .RB(n3643), .Q(
        \CHIPS[0].core/buffer_pconv[192] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[193]  ( .D(
        \CHIPS[0].core/buffer_pconv[175] ), .CK(clk), .RB(n3643), .Q(
        \CHIPS[0].core/buffer_pconv[193] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[194]  ( .D(
        \CHIPS[0].core/buffer_pconv[176] ), .CK(clk), .RB(n3643), .Q(
        \CHIPS[0].core/buffer_pconv[194] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[195]  ( .D(
        \CHIPS[0].core/buffer_pconv[177] ), .CK(clk), .RB(n3643), .Q(
        \CHIPS[0].core/buffer_pconv[195] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[196]  ( .D(
        \CHIPS[0].core/buffer_pconv[178] ), .CK(clk), .RB(n3643), .Q(
        \CHIPS[0].core/buffer_pconv[196] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[197]  ( .D(
        \CHIPS[0].core/buffer_pconv[179] ), .CK(clk), .RB(n3643), .Q(
        \CHIPS[0].core/buffer_pconv[197] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[198]  ( .D(
        \CHIPS[0].core/buffer_pconv[180] ), .CK(clk), .RB(n3642), .Q(
        \CHIPS[0].core/buffer_pconv[198] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[199]  ( .D(
        \CHIPS[0].core/buffer_pconv[181] ), .CK(clk), .RB(n3642), .Q(
        \CHIPS[0].core/buffer_pconv[199] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[200]  ( .D(
        \CHIPS[0].core/buffer_pconv[182] ), .CK(clk), .RB(n3642), .Q(
        \CHIPS[0].core/buffer_pconv[200] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[201]  ( .D(
        \CHIPS[0].core/buffer_pconv[183] ), .CK(clk), .RB(n3642), .Q(
        \CHIPS[0].core/buffer_pconv[201] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[202]  ( .D(
        \CHIPS[0].core/buffer_pconv[184] ), .CK(clk), .RB(n3642), .Q(
        \CHIPS[0].core/buffer_pconv[202] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[203]  ( .D(
        \CHIPS[0].core/buffer_pconv[185] ), .CK(clk), .RB(n3642), .Q(
        \CHIPS[0].core/buffer_pconv[203] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[204]  ( .D(
        \CHIPS[0].core/buffer_pconv[186] ), .CK(clk), .RB(n3641), .Q(
        \CHIPS[0].core/buffer_pconv[204] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[205]  ( .D(
        \CHIPS[0].core/buffer_pconv[187] ), .CK(clk), .RB(n3641), .Q(
        \CHIPS[0].core/buffer_pconv[205] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[206]  ( .D(
        \CHIPS[0].core/buffer_pconv[188] ), .CK(clk), .RB(n3641), .Q(
        \CHIPS[0].core/buffer_pconv[206] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[207]  ( .D(
        \CHIPS[0].core/buffer_pconv[189] ), .CK(clk), .RB(n3641), .Q(
        \CHIPS[0].core/buffer_pconv[207] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[208]  ( .D(
        \CHIPS[0].core/buffer_pconv[190] ), .CK(clk), .RB(n3641), .Q(
        \CHIPS[0].core/buffer_pconv[208] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[209]  ( .D(
        \CHIPS[0].core/buffer_pconv[191] ), .CK(clk), .RB(n3641), .Q(
        \CHIPS[0].core/buffer_pconv[209] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[210]  ( .D(
        \CHIPS[0].core/buffer_pconv[192] ), .CK(clk), .RB(n3640), .Q(
        \CHIPS[0].core/buffer_pconv[210] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[211]  ( .D(
        \CHIPS[0].core/buffer_pconv[193] ), .CK(clk), .RB(n3640), .Q(
        \CHIPS[0].core/buffer_pconv[211] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[212]  ( .D(
        \CHIPS[0].core/buffer_pconv[194] ), .CK(clk), .RB(n3640), .Q(
        \CHIPS[0].core/buffer_pconv[212] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[213]  ( .D(
        \CHIPS[0].core/buffer_pconv[195] ), .CK(clk), .RB(n3640), .Q(
        \CHIPS[0].core/buffer_pconv[213] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[214]  ( .D(
        \CHIPS[0].core/buffer_pconv[196] ), .CK(clk), .RB(n3640), .Q(
        \CHIPS[0].core/buffer_pconv[214] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[215]  ( .D(
        \CHIPS[0].core/buffer_pconv[197] ), .CK(clk), .RB(n3640), .Q(
        \CHIPS[0].core/buffer_pconv[215] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[216]  ( .D(
        \CHIPS[0].core/buffer_pconv[198] ), .CK(clk), .RB(n3830), .Q(
        \CHIPS[0].core/buffer_pconv[216] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[217]  ( .D(
        \CHIPS[0].core/buffer_pconv[199] ), .CK(clk), .RB(n3817), .Q(
        \CHIPS[0].core/buffer_pconv[217] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[218]  ( .D(
        \CHIPS[0].core/buffer_pconv[200] ), .CK(clk), .RB(n3819), .Q(
        \CHIPS[0].core/buffer_pconv[218] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[219]  ( .D(
        \CHIPS[0].core/buffer_pconv[201] ), .CK(clk), .RB(n3818), .Q(
        \CHIPS[0].core/buffer_pconv[219] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[220]  ( .D(
        \CHIPS[0].core/buffer_pconv[202] ), .CK(clk), .RB(n3637), .Q(
        \CHIPS[0].core/buffer_pconv[220] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[221]  ( .D(
        \CHIPS[0].core/buffer_pconv[203] ), .CK(clk), .RB(n3591), .Q(
        \CHIPS[0].core/buffer_pconv[221] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[222]  ( .D(
        \CHIPS[0].core/buffer_pconv[204] ), .CK(clk), .RB(n3639), .Q(
        \CHIPS[0].core/buffer_pconv[222] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[223]  ( .D(
        \CHIPS[0].core/buffer_pconv[205] ), .CK(clk), .RB(n3639), .Q(
        \CHIPS[0].core/buffer_pconv[223] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[224]  ( .D(
        \CHIPS[0].core/buffer_pconv[206] ), .CK(clk), .RB(n3639), .Q(
        \CHIPS[0].core/buffer_pconv[224] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[225]  ( .D(
        \CHIPS[0].core/buffer_pconv[207] ), .CK(clk), .RB(n3639), .Q(
        \CHIPS[0].core/buffer_pconv[225] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[226]  ( .D(
        \CHIPS[0].core/buffer_pconv[208] ), .CK(clk), .RB(n3639), .Q(
        \CHIPS[0].core/buffer_pconv[226] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[227]  ( .D(
        \CHIPS[0].core/buffer_pconv[209] ), .CK(clk), .RB(n3639), .Q(
        \CHIPS[0].core/buffer_pconv[227] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[228]  ( .D(
        \CHIPS[0].core/buffer_pconv[210] ), .CK(clk), .RB(n3638), .Q(
        \CHIPS[0].core/buffer_pconv[228] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[229]  ( .D(
        \CHIPS[0].core/buffer_pconv[211] ), .CK(clk), .RB(n3638), .Q(
        \CHIPS[0].core/buffer_pconv[229] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[230]  ( .D(
        \CHIPS[0].core/buffer_pconv[212] ), .CK(clk), .RB(n3638), .Q(
        \CHIPS[0].core/buffer_pconv[230] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[231]  ( .D(
        \CHIPS[0].core/buffer_pconv[213] ), .CK(clk), .RB(n3638), .Q(
        \CHIPS[0].core/buffer_pconv[231] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[232]  ( .D(
        \CHIPS[0].core/buffer_pconv[214] ), .CK(clk), .RB(n3638), .Q(
        \CHIPS[0].core/buffer_pconv[232] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[233]  ( .D(
        \CHIPS[0].core/buffer_pconv[215] ), .CK(clk), .RB(n3638), .Q(
        \CHIPS[0].core/buffer_pconv[233] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[234]  ( .D(
        \CHIPS[0].core/buffer_pconv[216] ), .CK(clk), .RB(n3637), .Q(
        \CHIPS[0].core/buffer_pconv[234] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[235]  ( .D(
        \CHIPS[0].core/buffer_pconv[217] ), .CK(clk), .RB(n3637), .Q(
        \CHIPS[0].core/buffer_pconv[235] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[236]  ( .D(
        \CHIPS[0].core/buffer_pconv[218] ), .CK(clk), .RB(n3637), .Q(
        \CHIPS[0].core/buffer_pconv[236] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[237]  ( .D(
        \CHIPS[0].core/buffer_pconv[219] ), .CK(clk), .RB(n3637), .Q(
        \CHIPS[0].core/buffer_pconv[237] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[238]  ( .D(
        \CHIPS[0].core/buffer_pconv[220] ), .CK(clk), .RB(n3637), .Q(
        \CHIPS[0].core/buffer_pconv[238] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[239]  ( .D(
        \CHIPS[0].core/buffer_pconv[221] ), .CK(clk), .RB(n3647), .Q(
        \CHIPS[0].core/buffer_pconv[239] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[240]  ( .D(
        \CHIPS[0].core/buffer_pconv[222] ), .CK(clk), .RB(n3681), .Q(
        \CHIPS[0].core/buffer_pconv[240] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[241]  ( .D(
        \CHIPS[0].core/buffer_pconv[223] ), .CK(clk), .RB(n3681), .Q(
        \CHIPS[0].core/buffer_pconv[241] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[242]  ( .D(
        \CHIPS[0].core/buffer_pconv[224] ), .CK(clk), .RB(n3681), .Q(
        \CHIPS[0].core/buffer_pconv[242] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[243]  ( .D(
        \CHIPS[0].core/buffer_pconv[225] ), .CK(clk), .RB(n3681), .Q(
        \CHIPS[0].core/buffer_pconv[243] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[244]  ( .D(
        \CHIPS[0].core/buffer_pconv[226] ), .CK(clk), .RB(n3680), .Q(
        \CHIPS[0].core/buffer_pconv[244] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[245]  ( .D(
        \CHIPS[0].core/buffer_pconv[227] ), .CK(clk), .RB(n3680), .Q(
        \CHIPS[0].core/buffer_pconv[245] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[246]  ( .D(
        \CHIPS[0].core/buffer_pconv[228] ), .CK(clk), .RB(n3680), .Q(
        \CHIPS[0].core/buffer_pconv[246] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[247]  ( .D(
        \CHIPS[0].core/buffer_pconv[229] ), .CK(clk), .RB(n3680), .Q(
        \CHIPS[0].core/buffer_pconv[247] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[248]  ( .D(
        \CHIPS[0].core/buffer_pconv[230] ), .CK(clk), .RB(n3680), .Q(
        \CHIPS[0].core/buffer_pconv[248] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[249]  ( .D(
        \CHIPS[0].core/buffer_pconv[231] ), .CK(clk), .RB(n3680), .Q(
        \CHIPS[0].core/buffer_pconv[249] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[250]  ( .D(
        \CHIPS[0].core/buffer_pconv[232] ), .CK(clk), .RB(n3679), .Q(
        \CHIPS[0].core/buffer_pconv[250] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[251]  ( .D(
        \CHIPS[0].core/buffer_pconv[233] ), .CK(clk), .RB(n3679), .Q(
        \CHIPS[0].core/buffer_pconv[251] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[252]  ( .D(
        \CHIPS[0].core/buffer_pconv[234] ), .CK(clk), .RB(n3679), .Q(
        \CHIPS[0].core/buffer_pconv[252] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[253]  ( .D(
        \CHIPS[0].core/buffer_pconv[235] ), .CK(clk), .RB(n3679), .Q(
        \CHIPS[0].core/buffer_pconv[253] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[254]  ( .D(
        \CHIPS[0].core/buffer_pconv[236] ), .CK(clk), .RB(n3679), .Q(
        \CHIPS[0].core/buffer_pconv[254] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[255]  ( .D(
        \CHIPS[0].core/buffer_pconv[237] ), .CK(clk), .RB(n3679), .Q(
        \CHIPS[0].core/buffer_pconv[255] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[256]  ( .D(
        \CHIPS[0].core/buffer_pconv[238] ), .CK(clk), .RB(n3678), .Q(
        \CHIPS[0].core/buffer_pconv[256] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[257]  ( .D(
        \CHIPS[0].core/buffer_pconv[239] ), .CK(clk), .RB(n3678), .Q(
        \CHIPS[0].core/buffer_pconv[257] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[258]  ( .D(
        \CHIPS[0].core/buffer_pconv[240] ), .CK(clk), .RB(n3678), .Q(
        \CHIPS[0].core/buffer_pconv[258] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[259]  ( .D(
        \CHIPS[0].core/buffer_pconv[241] ), .CK(clk), .RB(n3678), .Q(
        \CHIPS[0].core/buffer_pconv[259] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[260]  ( .D(
        \CHIPS[0].core/buffer_pconv[242] ), .CK(clk), .RB(n3678), .Q(
        \CHIPS[0].core/buffer_pconv[260] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[261]  ( .D(
        \CHIPS[0].core/buffer_pconv[243] ), .CK(clk), .RB(n3678), .Q(
        \CHIPS[0].core/buffer_pconv[261] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[262]  ( .D(
        \CHIPS[0].core/buffer_pconv[244] ), .CK(clk), .RB(n3677), .Q(
        \CHIPS[0].core/buffer_pconv[262] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[263]  ( .D(
        \CHIPS[0].core/buffer_pconv[245] ), .CK(clk), .RB(n3677), .Q(
        \CHIPS[0].core/buffer_pconv[263] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[264]  ( .D(
        \CHIPS[0].core/buffer_pconv[246] ), .CK(clk), .RB(n3677), .Q(
        \CHIPS[0].core/buffer_pconv[264] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[265]  ( .D(
        \CHIPS[0].core/buffer_pconv[247] ), .CK(clk), .RB(n3677), .Q(
        \CHIPS[0].core/buffer_pconv[265] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[266]  ( .D(
        \CHIPS[0].core/buffer_pconv[248] ), .CK(clk), .RB(n3677), .Q(
        \CHIPS[0].core/buffer_pconv[266] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[267]  ( .D(
        \CHIPS[0].core/buffer_pconv[249] ), .CK(clk), .RB(n3677), .Q(
        \CHIPS[0].core/buffer_pconv[267] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[268]  ( .D(
        \CHIPS[0].core/buffer_pconv[250] ), .CK(clk), .RB(n3676), .Q(
        \CHIPS[0].core/buffer_pconv[268] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[269]  ( .D(
        \CHIPS[0].core/buffer_pconv[251] ), .CK(clk), .RB(n3676), .Q(
        \CHIPS[0].core/buffer_pconv[269] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[270]  ( .D(
        \CHIPS[0].core/buffer_pconv[252] ), .CK(clk), .RB(n3676), .Q(
        \CHIPS[0].core/buffer_pconv[270] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[271]  ( .D(
        \CHIPS[0].core/buffer_pconv[253] ), .CK(clk), .RB(n3676), .Q(
        \CHIPS[0].core/buffer_pconv[271] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[272]  ( .D(
        \CHIPS[0].core/buffer_pconv[254] ), .CK(clk), .RB(n3676), .Q(
        \CHIPS[0].core/buffer_pconv[272] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[273]  ( .D(
        \CHIPS[0].core/buffer_pconv[255] ), .CK(clk), .RB(n3676), .Q(
        \CHIPS[0].core/buffer_pconv[273] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[274]  ( .D(
        \CHIPS[0].core/buffer_pconv[256] ), .CK(clk), .RB(n3675), .Q(
        \CHIPS[0].core/buffer_pconv[274] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[275]  ( .D(
        \CHIPS[0].core/buffer_pconv[257] ), .CK(clk), .RB(n3675), .Q(
        \CHIPS[0].core/buffer_pconv[275] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[276]  ( .D(
        \CHIPS[0].core/buffer_pconv[258] ), .CK(clk), .RB(n3675), .Q(
        \CHIPS[0].core/buffer_pconv[276] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[277]  ( .D(
        \CHIPS[0].core/buffer_pconv[259] ), .CK(clk), .RB(n3675), .Q(
        \CHIPS[0].core/buffer_pconv[277] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[278]  ( .D(
        \CHIPS[0].core/buffer_pconv[260] ), .CK(clk), .RB(n3675), .Q(
        \CHIPS[0].core/buffer_pconv[278] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[279]  ( .D(
        \CHIPS[0].core/buffer_pconv[261] ), .CK(clk), .RB(n3675), .Q(
        \CHIPS[0].core/buffer_pconv[279] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[280]  ( .D(
        \CHIPS[0].core/buffer_pconv[262] ), .CK(clk), .RB(n3674), .Q(
        \CHIPS[0].core/buffer_pconv[280] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[281]  ( .D(
        \CHIPS[0].core/buffer_pconv[263] ), .CK(clk), .RB(n3674), .Q(
        \CHIPS[0].core/buffer_pconv[281] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[282]  ( .D(
        \CHIPS[0].core/buffer_pconv[264] ), .CK(clk), .RB(n3674), .Q(
        \CHIPS[0].core/buffer_pconv[282] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[283]  ( .D(
        \CHIPS[0].core/buffer_pconv[265] ), .CK(clk), .RB(n3674), .Q(
        \CHIPS[0].core/buffer_pconv[283] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[284]  ( .D(
        \CHIPS[0].core/buffer_pconv[266] ), .CK(clk), .RB(n3674), .Q(
        \CHIPS[0].core/buffer_pconv[284] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[285]  ( .D(
        \CHIPS[0].core/buffer_pconv[267] ), .CK(clk), .RB(n3674), .Q(
        \CHIPS[0].core/buffer_pconv[285] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[286]  ( .D(
        \CHIPS[0].core/buffer_pconv[268] ), .CK(clk), .RB(n3673), .Q(
        \CHIPS[0].core/buffer_pconv[286] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[287]  ( .D(
        \CHIPS[0].core/buffer_pconv[269] ), .CK(clk), .RB(n3673), .Q(
        \CHIPS[0].core/buffer_pconv[287] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[288]  ( .D(
        \CHIPS[0].core/buffer_pconv[270] ), .CK(clk), .RB(n3673), .Q(
        \CHIPS[0].core/buffer_pconv[288] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[289]  ( .D(
        \CHIPS[0].core/buffer_pconv[271] ), .CK(clk), .RB(n3673), .Q(
        \CHIPS[0].core/buffer_pconv[289] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[290]  ( .D(
        \CHIPS[0].core/buffer_pconv[272] ), .CK(clk), .RB(n3673), .Q(
        \CHIPS[0].core/buffer_pconv[290] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[291]  ( .D(
        \CHIPS[0].core/buffer_pconv[273] ), .CK(clk), .RB(n3673), .Q(
        \CHIPS[0].core/buffer_pconv[291] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[292]  ( .D(
        \CHIPS[0].core/buffer_pconv[274] ), .CK(clk), .RB(n3672), .Q(
        \CHIPS[0].core/buffer_pconv[292] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[293]  ( .D(
        \CHIPS[0].core/buffer_pconv[275] ), .CK(clk), .RB(n3672), .Q(
        \CHIPS[0].core/buffer_pconv[293] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[294]  ( .D(
        \CHIPS[0].core/buffer_pconv[276] ), .CK(clk), .RB(n3672), .Q(
        \CHIPS[0].core/buffer_pconv[294] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[295]  ( .D(
        \CHIPS[0].core/buffer_pconv[277] ), .CK(clk), .RB(n3672), .Q(
        \CHIPS[0].core/buffer_pconv[295] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[296]  ( .D(
        \CHIPS[0].core/buffer_pconv[278] ), .CK(clk), .RB(n3672), .Q(
        \CHIPS[0].core/buffer_pconv[296] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[297]  ( .D(
        \CHIPS[0].core/buffer_pconv[279] ), .CK(clk), .RB(n3672), .Q(
        \CHIPS[0].core/buffer_pconv[297] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[298]  ( .D(
        \CHIPS[0].core/buffer_pconv[280] ), .CK(clk), .RB(n3671), .Q(
        \CHIPS[0].core/buffer_pconv[298] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[299]  ( .D(
        \CHIPS[0].core/buffer_pconv[281] ), .CK(clk), .RB(n3671), .Q(
        \CHIPS[0].core/buffer_pconv[299] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[300]  ( .D(
        \CHIPS[0].core/buffer_pconv[282] ), .CK(clk), .RB(n3671), .Q(
        \CHIPS[0].core/buffer_pconv[300] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[301]  ( .D(
        \CHIPS[0].core/buffer_pconv[283] ), .CK(clk), .RB(n3671), .Q(
        \CHIPS[0].core/buffer_pconv[301] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[302]  ( .D(
        \CHIPS[0].core/buffer_pconv[284] ), .CK(clk), .RB(n3671), .Q(
        \CHIPS[0].core/buffer_pconv[302] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[303]  ( .D(
        \CHIPS[0].core/buffer_pconv[285] ), .CK(clk), .RB(n3671), .Q(
        \CHIPS[0].core/buffer_pconv[303] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[304]  ( .D(
        \CHIPS[0].core/buffer_pconv[286] ), .CK(clk), .RB(n3670), .Q(
        \CHIPS[0].core/buffer_pconv[304] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[305]  ( .D(
        \CHIPS[0].core/buffer_pconv[287] ), .CK(clk), .RB(n3670), .Q(
        \CHIPS[0].core/buffer_pconv[305] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[306]  ( .D(
        \CHIPS[0].core/buffer_pconv[288] ), .CK(clk), .RB(n3670), .Q(
        \CHIPS[0].core/buffer_pconv[306] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[307]  ( .D(
        \CHIPS[0].core/buffer_pconv[289] ), .CK(clk), .RB(n3670), .Q(
        \CHIPS[0].core/buffer_pconv[307] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[308]  ( .D(
        \CHIPS[0].core/buffer_pconv[290] ), .CK(clk), .RB(n3670), .Q(
        \CHIPS[0].core/buffer_pconv[308] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[309]  ( .D(
        \CHIPS[0].core/buffer_pconv[291] ), .CK(clk), .RB(n3669), .Q(
        \CHIPS[0].core/buffer_pconv[309] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[310]  ( .D(
        \CHIPS[0].core/buffer_pconv[292] ), .CK(clk), .RB(n3669), .Q(
        \CHIPS[0].core/buffer_pconv[310] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[311]  ( .D(
        \CHIPS[0].core/buffer_pconv[293] ), .CK(clk), .RB(n3669), .Q(
        \CHIPS[0].core/buffer_pconv[311] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[312]  ( .D(
        \CHIPS[0].core/buffer_pconv[294] ), .CK(clk), .RB(n3669), .Q(
        \CHIPS[0].core/buffer_pconv[312] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[313]  ( .D(
        \CHIPS[0].core/buffer_pconv[295] ), .CK(clk), .RB(n3669), .Q(
        \CHIPS[0].core/buffer_pconv[313] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[314]  ( .D(
        \CHIPS[0].core/buffer_pconv[296] ), .CK(clk), .RB(n3669), .Q(
        \CHIPS[0].core/buffer_pconv[314] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[315]  ( .D(
        \CHIPS[0].core/buffer_pconv[297] ), .CK(clk), .RB(n3668), .Q(
        \CHIPS[0].core/buffer_pconv[315] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[316]  ( .D(
        \CHIPS[0].core/buffer_pconv[298] ), .CK(clk), .RB(n3668), .Q(
        \CHIPS[0].core/buffer_pconv[316] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[317]  ( .D(
        \CHIPS[0].core/buffer_pconv[299] ), .CK(clk), .RB(n3668), .Q(
        \CHIPS[0].core/buffer_pconv[317] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[318]  ( .D(
        \CHIPS[0].core/buffer_pconv[300] ), .CK(clk), .RB(n3668), .Q(
        \CHIPS[0].core/buffer_pconv[318] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[319]  ( .D(
        \CHIPS[0].core/buffer_pconv[301] ), .CK(clk), .RB(n3668), .Q(
        \CHIPS[0].core/buffer_pconv[319] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[320]  ( .D(
        \CHIPS[0].core/buffer_pconv[302] ), .CK(clk), .RB(n3668), .Q(
        \CHIPS[0].core/buffer_pconv[320] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[321]  ( .D(
        \CHIPS[0].core/buffer_pconv[303] ), .CK(clk), .RB(n3667), .Q(
        \CHIPS[0].core/buffer_pconv[321] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[322]  ( .D(
        \CHIPS[0].core/buffer_pconv[304] ), .CK(clk), .RB(n3667), .Q(
        \CHIPS[0].core/buffer_pconv[322] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[323]  ( .D(
        \CHIPS[0].core/buffer_pconv[305] ), .CK(clk), .RB(n3667), .Q(
        \CHIPS[0].core/buffer_pconv[323] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[324]  ( .D(
        \CHIPS[0].core/buffer_pconv[306] ), .CK(clk), .RB(n3667), .Q(
        \CHIPS[0].core/buffer_pconv[324] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[325]  ( .D(
        \CHIPS[0].core/buffer_pconv[307] ), .CK(clk), .RB(n3667), .Q(
        \CHIPS[0].core/buffer_pconv[325] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[326]  ( .D(
        \CHIPS[0].core/buffer_pconv[308] ), .CK(clk), .RB(n3667), .Q(
        \CHIPS[0].core/buffer_pconv[326] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[327]  ( .D(
        \CHIPS[0].core/buffer_pconv[309] ), .CK(clk), .RB(n3666), .Q(
        \CHIPS[0].core/buffer_pconv[327] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[328]  ( .D(
        \CHIPS[0].core/buffer_pconv[310] ), .CK(clk), .RB(n3666), .Q(
        \CHIPS[0].core/buffer_pconv[328] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[329]  ( .D(
        \CHIPS[0].core/buffer_pconv[311] ), .CK(clk), .RB(n3666), .Q(
        \CHIPS[0].core/buffer_pconv[329] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[330]  ( .D(
        \CHIPS[0].core/buffer_pconv[312] ), .CK(clk), .RB(n3666), .Q(
        \CHIPS[0].core/buffer_pconv[330] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[331]  ( .D(
        \CHIPS[0].core/buffer_pconv[313] ), .CK(clk), .RB(n3666), .Q(
        \CHIPS[0].core/buffer_pconv[331] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[332]  ( .D(
        \CHIPS[0].core/buffer_pconv[314] ), .CK(clk), .RB(n3666), .Q(
        \CHIPS[0].core/buffer_pconv[332] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[333]  ( .D(
        \CHIPS[0].core/buffer_pconv[315] ), .CK(clk), .RB(n3665), .Q(
        \CHIPS[0].core/buffer_pconv[333] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[334]  ( .D(
        \CHIPS[0].core/buffer_pconv[316] ), .CK(clk), .RB(n3665), .Q(
        \CHIPS[0].core/buffer_pconv[334] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[335]  ( .D(
        \CHIPS[0].core/buffer_pconv[317] ), .CK(clk), .RB(n3665), .Q(
        \CHIPS[0].core/buffer_pconv[335] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[336]  ( .D(
        \CHIPS[0].core/buffer_pconv[318] ), .CK(clk), .RB(n3665), .Q(
        \CHIPS[0].core/buffer_pconv[336] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[337]  ( .D(
        \CHIPS[0].core/buffer_pconv[319] ), .CK(clk), .RB(n3665), .Q(
        \CHIPS[0].core/buffer_pconv[337] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[338]  ( .D(
        \CHIPS[0].core/buffer_pconv[320] ), .CK(clk), .RB(n3665), .Q(
        \CHIPS[0].core/buffer_pconv[338] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[339]  ( .D(
        \CHIPS[0].core/buffer_pconv[321] ), .CK(clk), .RB(n3664), .Q(
        \CHIPS[0].core/buffer_pconv[339] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[340]  ( .D(
        \CHIPS[0].core/buffer_pconv[322] ), .CK(clk), .RB(n3664), .Q(
        \CHIPS[0].core/buffer_pconv[340] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[341]  ( .D(
        \CHIPS[0].core/buffer_pconv[323] ), .CK(clk), .RB(n3664), .Q(
        \CHIPS[0].core/buffer_pconv[341] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[342]  ( .D(
        \CHIPS[0].core/buffer_pconv[324] ), .CK(clk), .RB(n3664), .Q(
        \CHIPS[0].core/buffer_pconv[342] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[343]  ( .D(
        \CHIPS[0].core/buffer_pconv[325] ), .CK(clk), .RB(n3664), .Q(
        \CHIPS[0].core/buffer_pconv[343] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[344]  ( .D(
        \CHIPS[0].core/buffer_pconv[326] ), .CK(clk), .RB(n3664), .Q(
        \CHIPS[0].core/buffer_pconv[344] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[345]  ( .D(
        \CHIPS[0].core/buffer_pconv[327] ), .CK(clk), .RB(n3663), .Q(
        \CHIPS[0].core/buffer_pconv[345] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[346]  ( .D(
        \CHIPS[0].core/buffer_pconv[328] ), .CK(clk), .RB(n3663), .Q(
        \CHIPS[0].core/buffer_pconv[346] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[347]  ( .D(
        \CHIPS[0].core/buffer_pconv[329] ), .CK(clk), .RB(n3663), .Q(
        \CHIPS[0].core/buffer_pconv[347] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[348]  ( .D(
        \CHIPS[0].core/buffer_pconv[330] ), .CK(clk), .RB(n3663), .Q(
        \CHIPS[0].core/buffer_pconv[348] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[349]  ( .D(
        \CHIPS[0].core/buffer_pconv[331] ), .CK(clk), .RB(n3663), .Q(
        \CHIPS[0].core/buffer_pconv[349] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[350]  ( .D(
        \CHIPS[0].core/buffer_pconv[332] ), .CK(clk), .RB(n3663), .Q(
        \CHIPS[0].core/buffer_pconv[350] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[351]  ( .D(
        \CHIPS[0].core/buffer_pconv[333] ), .CK(clk), .RB(n3662), .Q(
        \CHIPS[0].core/buffer_pconv[351] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[352]  ( .D(
        \CHIPS[0].core/buffer_pconv[334] ), .CK(clk), .RB(n3662), .Q(
        \CHIPS[0].core/buffer_pconv[352] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[353]  ( .D(
        \CHIPS[0].core/buffer_pconv[335] ), .CK(clk), .RB(n3662), .Q(
        \CHIPS[0].core/buffer_pconv[353] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[354]  ( .D(
        \CHIPS[0].core/buffer_pconv[336] ), .CK(clk), .RB(n3662), .Q(
        \CHIPS[0].core/buffer_pconv[354] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[355]  ( .D(
        \CHIPS[0].core/buffer_pconv[337] ), .CK(clk), .RB(n3662), .Q(
        \CHIPS[0].core/buffer_pconv[355] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[356]  ( .D(
        \CHIPS[0].core/buffer_pconv[338] ), .CK(clk), .RB(n3662), .Q(
        \CHIPS[0].core/buffer_pconv[356] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[357]  ( .D(
        \CHIPS[0].core/buffer_pconv[339] ), .CK(clk), .RB(n3661), .Q(
        \CHIPS[0].core/buffer_pconv[357] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[358]  ( .D(
        \CHIPS[0].core/buffer_pconv[340] ), .CK(clk), .RB(n3661), .Q(
        \CHIPS[0].core/buffer_pconv[358] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[359]  ( .D(
        \CHIPS[0].core/buffer_pconv[341] ), .CK(clk), .RB(n3661), .Q(
        \CHIPS[0].core/buffer_pconv[359] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[360]  ( .D(
        \CHIPS[0].core/buffer_pconv[342] ), .CK(clk), .RB(n3661), .Q(
        \CHIPS[0].core/buffer_pconv[360] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[361]  ( .D(
        \CHIPS[0].core/buffer_pconv[343] ), .CK(clk), .RB(n3661), .Q(
        \CHIPS[0].core/buffer_pconv[361] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[362]  ( .D(
        \CHIPS[0].core/buffer_pconv[344] ), .CK(clk), .RB(n3661), .Q(
        \CHIPS[0].core/buffer_pconv[362] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[363]  ( .D(
        \CHIPS[0].core/buffer_pconv[345] ), .CK(clk), .RB(n3660), .Q(
        \CHIPS[0].core/buffer_pconv[363] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[364]  ( .D(
        \CHIPS[0].core/buffer_pconv[346] ), .CK(clk), .RB(n3660), .Q(
        \CHIPS[0].core/buffer_pconv[364] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[365]  ( .D(
        \CHIPS[0].core/buffer_pconv[347] ), .CK(clk), .RB(n3660), .Q(
        \CHIPS[0].core/buffer_pconv[365] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[366]  ( .D(
        \CHIPS[0].core/buffer_pconv[348] ), .CK(clk), .RB(n3660), .Q(
        \CHIPS[0].core/buffer_pconv[366] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[367]  ( .D(
        \CHIPS[0].core/buffer_pconv[349] ), .CK(clk), .RB(n3660), .Q(
        \CHIPS[0].core/buffer_pconv[367] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[368]  ( .D(
        \CHIPS[0].core/buffer_pconv[350] ), .CK(clk), .RB(n3660), .Q(
        \CHIPS[0].core/buffer_pconv[368] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[369]  ( .D(
        \CHIPS[0].core/buffer_pconv[351] ), .CK(clk), .RB(n3659), .Q(
        \CHIPS[0].core/buffer_pconv[369] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[370]  ( .D(
        \CHIPS[0].core/buffer_pconv[352] ), .CK(clk), .RB(n3659), .Q(
        \CHIPS[0].core/buffer_pconv[370] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[371]  ( .D(
        \CHIPS[0].core/buffer_pconv[353] ), .CK(clk), .RB(n3659), .Q(
        \CHIPS[0].core/buffer_pconv[371] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[372]  ( .D(
        \CHIPS[0].core/buffer_pconv[354] ), .CK(clk), .RB(n3659), .Q(
        \CHIPS[0].core/buffer_pconv[372] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[373]  ( .D(
        \CHIPS[0].core/buffer_pconv[355] ), .CK(clk), .RB(n3659), .Q(
        \CHIPS[0].core/buffer_pconv[373] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[374]  ( .D(
        \CHIPS[0].core/buffer_pconv[356] ), .CK(clk), .RB(n3659), .Q(
        \CHIPS[0].core/buffer_pconv[374] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[375]  ( .D(
        \CHIPS[0].core/buffer_pconv[357] ), .CK(clk), .RB(n3670), .Q(
        \CHIPS[0].core/buffer_pconv[375] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[376]  ( .D(
        \CHIPS[0].core/buffer_pconv[358] ), .CK(clk), .RB(n3681), .Q(
        \CHIPS[0].core/buffer_pconv[376] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[377]  ( .D(
        \CHIPS[0].core/buffer_pconv[359] ), .CK(clk), .RB(n3794), .Q(
        \CHIPS[0].core/buffer_pconv[377] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[378]  ( .D(
        \CHIPS[0].core/buffer_pconv[360] ), .CK(clk), .RB(n3794), .Q(
        \CHIPS[0].core/buffer_pconv[378] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[379]  ( .D(
        \CHIPS[0].core/buffer_pconv[361] ), .CK(clk), .RB(n3794), .Q(
        \CHIPS[0].core/buffer_pconv[379] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[380]  ( .D(
        \CHIPS[0].core/buffer_pconv[362] ), .CK(clk), .RB(n3794), .Q(
        \CHIPS[0].core/buffer_pconv[380] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[381]  ( .D(
        \CHIPS[0].core/buffer_pconv[363] ), .CK(clk), .RB(n3794), .Q(
        \CHIPS[0].core/buffer_pconv[381] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[382]  ( .D(
        \CHIPS[0].core/buffer_pconv[364] ), .CK(clk), .RB(n3794), .Q(
        \CHIPS[0].core/buffer_pconv[382] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[383]  ( .D(
        \CHIPS[0].core/buffer_pconv[365] ), .CK(clk), .RB(n3793), .Q(
        \CHIPS[0].core/buffer_pconv[383] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[384]  ( .D(
        \CHIPS[0].core/buffer_pconv[366] ), .CK(clk), .RB(n3793), .Q(
        \CHIPS[0].core/buffer_pconv[384] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[385]  ( .D(
        \CHIPS[0].core/buffer_pconv[367] ), .CK(clk), .RB(n3793), .Q(
        \CHIPS[0].core/buffer_pconv[385] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[386]  ( .D(
        \CHIPS[0].core/buffer_pconv[368] ), .CK(clk), .RB(n3793), .Q(
        \CHIPS[0].core/buffer_pconv[386] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[387]  ( .D(
        \CHIPS[0].core/buffer_pconv[369] ), .CK(clk), .RB(n3793), .Q(
        \CHIPS[0].core/buffer_pconv[387] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[388]  ( .D(
        \CHIPS[0].core/buffer_pconv[370] ), .CK(clk), .RB(n3793), .Q(
        \CHIPS[0].core/buffer_pconv[388] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[389]  ( .D(
        \CHIPS[0].core/buffer_pconv[371] ), .CK(clk), .RB(n3792), .Q(
        \CHIPS[0].core/buffer_pconv[389] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[390]  ( .D(
        \CHIPS[0].core/buffer_pconv[372] ), .CK(clk), .RB(n3792), .Q(
        \CHIPS[0].core/buffer_pconv[390] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[391]  ( .D(
        \CHIPS[0].core/buffer_pconv[373] ), .CK(clk), .RB(n3792), .Q(
        \CHIPS[0].core/buffer_pconv[391] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[392]  ( .D(
        \CHIPS[0].core/buffer_pconv[374] ), .CK(clk), .RB(n3792), .Q(
        \CHIPS[0].core/buffer_pconv[392] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[393]  ( .D(
        \CHIPS[0].core/buffer_pconv[375] ), .CK(clk), .RB(n3792), .Q(
        \CHIPS[0].core/buffer_pconv[393] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[394]  ( .D(
        \CHIPS[0].core/buffer_pconv[376] ), .CK(clk), .RB(n3792), .Q(
        \CHIPS[0].core/buffer_pconv[394] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[395]  ( .D(
        \CHIPS[0].core/buffer_pconv[377] ), .CK(clk), .RB(n3791), .Q(
        \CHIPS[0].core/buffer_pconv[395] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[396]  ( .D(
        \CHIPS[0].core/buffer_pconv[378] ), .CK(clk), .RB(n3791), .Q(
        \CHIPS[0].core/buffer_pconv[396] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[397]  ( .D(
        \CHIPS[0].core/buffer_pconv[379] ), .CK(clk), .RB(n3791), .Q(
        \CHIPS[0].core/buffer_pconv[397] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[398]  ( .D(
        \CHIPS[0].core/buffer_pconv[380] ), .CK(clk), .RB(n3791), .Q(
        \CHIPS[0].core/buffer_pconv[398] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[399]  ( .D(
        \CHIPS[0].core/buffer_pconv[381] ), .CK(clk), .RB(n3791), .Q(
        \CHIPS[0].core/buffer_pconv[399] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[400]  ( .D(
        \CHIPS[0].core/buffer_pconv[382] ), .CK(clk), .RB(n3791), .Q(
        \CHIPS[0].core/buffer_pconv[400] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[401]  ( .D(
        \CHIPS[0].core/buffer_pconv[383] ), .CK(clk), .RB(n3790), .Q(
        \CHIPS[0].core/buffer_pconv[401] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[402]  ( .D(
        \CHIPS[0].core/buffer_pconv[384] ), .CK(clk), .RB(n3790), .Q(
        \CHIPS[0].core/buffer_pconv[402] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[403]  ( .D(
        \CHIPS[0].core/buffer_pconv[385] ), .CK(clk), .RB(n3790), .Q(
        \CHIPS[0].core/buffer_pconv[403] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[404]  ( .D(
        \CHIPS[0].core/buffer_pconv[386] ), .CK(clk), .RB(n3790), .Q(
        \CHIPS[0].core/buffer_pconv[404] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[405]  ( .D(
        \CHIPS[0].core/buffer_pconv[387] ), .CK(clk), .RB(n3790), .Q(
        \CHIPS[0].core/buffer_pconv[405] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[406]  ( .D(
        \CHIPS[0].core/buffer_pconv[388] ), .CK(clk), .RB(n3790), .Q(
        \CHIPS[0].core/buffer_pconv[406] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[407]  ( .D(
        \CHIPS[0].core/buffer_pconv[389] ), .CK(clk), .RB(n3789), .Q(
        \CHIPS[0].core/buffer_pconv[407] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[408]  ( .D(
        \CHIPS[0].core/buffer_pconv[390] ), .CK(clk), .RB(n3789), .Q(
        \CHIPS[0].core/buffer_pconv[408] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[409]  ( .D(
        \CHIPS[0].core/buffer_pconv[391] ), .CK(clk), .RB(n3789), .Q(
        \CHIPS[0].core/buffer_pconv[409] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[410]  ( .D(
        \CHIPS[0].core/buffer_pconv[392] ), .CK(clk), .RB(n3789), .Q(
        \CHIPS[0].core/buffer_pconv[410] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[411]  ( .D(
        \CHIPS[0].core/buffer_pconv[393] ), .CK(clk), .RB(n3789), .Q(
        \CHIPS[0].core/buffer_pconv[411] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[412]  ( .D(
        \CHIPS[0].core/buffer_pconv[394] ), .CK(clk), .RB(n3789), .Q(
        \CHIPS[0].core/buffer_pconv[412] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[413]  ( .D(
        \CHIPS[0].core/buffer_pconv[395] ), .CK(clk), .RB(n3788), .Q(
        \CHIPS[0].core/buffer_pconv[413] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[414]  ( .D(
        \CHIPS[0].core/buffer_pconv[396] ), .CK(clk), .RB(n3788), .Q(
        \CHIPS[0].core/buffer_pconv[414] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[415]  ( .D(
        \CHIPS[0].core/buffer_pconv[397] ), .CK(clk), .RB(n3788), .Q(
        \CHIPS[0].core/buffer_pconv[415] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[416]  ( .D(
        \CHIPS[0].core/buffer_pconv[398] ), .CK(clk), .RB(n3788), .Q(
        \CHIPS[0].core/buffer_pconv[416] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[417]  ( .D(
        \CHIPS[0].core/buffer_pconv[399] ), .CK(clk), .RB(n3788), .Q(
        \CHIPS[0].core/buffer_pconv[417] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[418]  ( .D(
        \CHIPS[0].core/buffer_pconv[400] ), .CK(clk), .RB(n3788), .Q(
        \CHIPS[0].core/buffer_pconv[418] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[419]  ( .D(
        \CHIPS[0].core/buffer_pconv[401] ), .CK(clk), .RB(n3787), .Q(
        \CHIPS[0].core/buffer_pconv[419] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[420]  ( .D(
        \CHIPS[0].core/buffer_pconv[402] ), .CK(clk), .RB(n3787), .Q(
        \CHIPS[0].core/buffer_pconv[420] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[421]  ( .D(
        \CHIPS[0].core/buffer_pconv[403] ), .CK(clk), .RB(n3787), .Q(
        \CHIPS[0].core/buffer_pconv[421] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[422]  ( .D(
        \CHIPS[0].core/buffer_pconv[404] ), .CK(clk), .RB(n3787), .Q(
        \CHIPS[0].core/buffer_pconv[422] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[423]  ( .D(
        \CHIPS[0].core/buffer_pconv[405] ), .CK(clk), .RB(n3787), .Q(
        \CHIPS[0].core/buffer_pconv[423] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[424]  ( .D(
        \CHIPS[0].core/buffer_pconv[406] ), .CK(clk), .RB(n3787), .Q(
        \CHIPS[0].core/buffer_pconv[424] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[425]  ( .D(
        \CHIPS[0].core/buffer_pconv[407] ), .CK(clk), .RB(n3786), .Q(
        \CHIPS[0].core/buffer_pconv[425] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[426]  ( .D(
        \CHIPS[0].core/buffer_pconv[408] ), .CK(clk), .RB(n3786), .Q(
        \CHIPS[0].core/buffer_pconv[426] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[427]  ( .D(
        \CHIPS[0].core/buffer_pconv[409] ), .CK(clk), .RB(n3786), .Q(
        \CHIPS[0].core/buffer_pconv[427] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[428]  ( .D(
        \CHIPS[0].core/buffer_pconv[410] ), .CK(clk), .RB(n3786), .Q(
        \CHIPS[0].core/buffer_pconv[428] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[429]  ( .D(
        \CHIPS[0].core/buffer_pconv[411] ), .CK(clk), .RB(n3786), .Q(
        \CHIPS[0].core/buffer_pconv[429] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[430]  ( .D(
        \CHIPS[0].core/buffer_pconv[412] ), .CK(clk), .RB(n3786), .Q(
        \CHIPS[0].core/buffer_pconv[430] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[431]  ( .D(
        \CHIPS[0].core/buffer_pconv[413] ), .CK(clk), .RB(n3785), .Q(
        \CHIPS[0].core/buffer_pconv[431] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[432]  ( .D(
        \CHIPS[0].core/buffer_pconv[414] ), .CK(clk), .RB(n3785), .Q(
        \CHIPS[0].core/buffer_pconv[432] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[433]  ( .D(
        \CHIPS[0].core/buffer_pconv[415] ), .CK(clk), .RB(n3785), .Q(
        \CHIPS[0].core/buffer_pconv[433] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[434]  ( .D(
        \CHIPS[0].core/buffer_pconv[416] ), .CK(clk), .RB(n3785), .Q(
        \CHIPS[0].core/buffer_pconv[434] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[435]  ( .D(
        \CHIPS[0].core/buffer_pconv[417] ), .CK(clk), .RB(n3785), .Q(
        \CHIPS[0].core/buffer_pconv[435] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[436]  ( .D(
        \CHIPS[0].core/buffer_pconv[418] ), .CK(clk), .RB(n3785), .Q(
        \CHIPS[0].core/buffer_pconv[436] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[437]  ( .D(
        \CHIPS[0].core/buffer_pconv[419] ), .CK(clk), .RB(n2938), .Q(
        \CHIPS[0].core/buffer_pconv[437] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[438]  ( .D(
        \CHIPS[0].core/buffer_pconv[420] ), .CK(clk), .RB(n2894), .Q(
        \CHIPS[0].core/buffer_pconv[438] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[439]  ( .D(
        \CHIPS[0].core/buffer_pconv[421] ), .CK(clk), .RB(n2902), .Q(
        \CHIPS[0].core/buffer_pconv[439] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[440]  ( .D(
        \CHIPS[0].core/buffer_pconv[422] ), .CK(clk), .RB(n2924), .Q(
        \CHIPS[0].core/buffer_pconv[440] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[441]  ( .D(
        \CHIPS[0].core/buffer_pconv[423] ), .CK(clk), .RB(n3715), .Q(
        \CHIPS[0].core/buffer_pconv[441] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[442]  ( .D(
        \CHIPS[0].core/buffer_pconv[424] ), .CK(clk), .RB(n3712), .Q(
        \CHIPS[0].core/buffer_pconv[442] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[443]  ( .D(
        \CHIPS[0].core/buffer_pconv[425] ), .CK(clk), .RB(n3784), .Q(
        \CHIPS[0].core/buffer_pconv[443] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[444]  ( .D(
        \CHIPS[0].core/buffer_pconv[426] ), .CK(clk), .RB(n3784), .Q(
        \CHIPS[0].core/buffer_pconv[444] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[445]  ( .D(
        \CHIPS[0].core/buffer_pconv[427] ), .CK(clk), .RB(n3784), .Q(
        \CHIPS[0].core/buffer_pconv[445] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[446]  ( .D(
        \CHIPS[0].core/buffer_pconv[428] ), .CK(clk), .RB(n3784), .Q(
        \CHIPS[0].core/buffer_pconv[446] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[447]  ( .D(
        \CHIPS[0].core/buffer_pconv[429] ), .CK(clk), .RB(n3784), .Q(
        \CHIPS[0].core/buffer_pconv[447] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[448]  ( .D(
        \CHIPS[0].core/buffer_pconv[430] ), .CK(clk), .RB(n3783), .Q(
        \CHIPS[0].core/buffer_pconv[448] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[449]  ( .D(
        \CHIPS[0].core/buffer_pconv[431] ), .CK(clk), .RB(n3783), .Q(
        \CHIPS[0].core/buffer_pconv[449] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[450]  ( .D(
        \CHIPS[0].core/buffer_pconv[432] ), .CK(clk), .RB(n3783), .Q(
        \CHIPS[0].core/buffer_pconv[450] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[451]  ( .D(
        \CHIPS[0].core/buffer_pconv[433] ), .CK(clk), .RB(n3783), .Q(
        \CHIPS[0].core/buffer_pconv[451] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[452]  ( .D(
        \CHIPS[0].core/buffer_pconv[434] ), .CK(clk), .RB(n3783), .Q(
        \CHIPS[0].core/buffer_pconv[452] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[453]  ( .D(
        \CHIPS[0].core/buffer_pconv[435] ), .CK(clk), .RB(n3783), .Q(
        \CHIPS[0].core/buffer_pconv[453] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[454]  ( .D(
        \CHIPS[0].core/buffer_pconv[436] ), .CK(clk), .RB(n3782), .Q(
        \CHIPS[0].core/buffer_pconv[454] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[455]  ( .D(
        \CHIPS[0].core/buffer_pconv[437] ), .CK(clk), .RB(n3782), .Q(
        \CHIPS[0].core/buffer_pconv[455] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[456]  ( .D(
        \CHIPS[0].core/buffer_pconv[438] ), .CK(clk), .RB(n3782), .Q(
        \CHIPS[0].core/buffer_pconv[456] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[457]  ( .D(
        \CHIPS[0].core/buffer_pconv[439] ), .CK(clk), .RB(n3782), .Q(
        \CHIPS[0].core/buffer_pconv[457] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[458]  ( .D(
        \CHIPS[0].core/buffer_pconv[440] ), .CK(clk), .RB(n3782), .Q(
        \CHIPS[0].core/buffer_pconv[458] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[459]  ( .D(
        \CHIPS[0].core/buffer_pconv[441] ), .CK(clk), .RB(n3782), .Q(
        \CHIPS[0].core/buffer_pconv[459] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[460]  ( .D(
        \CHIPS[0].core/buffer_pconv[442] ), .CK(clk), .RB(n3781), .Q(
        \CHIPS[0].core/buffer_pconv[460] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[461]  ( .D(
        \CHIPS[0].core/buffer_pconv[443] ), .CK(clk), .RB(n3781), .Q(
        \CHIPS[0].core/buffer_pconv[461] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[462]  ( .D(
        \CHIPS[0].core/buffer_pconv[444] ), .CK(clk), .RB(n3781), .Q(
        \CHIPS[0].core/buffer_pconv[462] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[463]  ( .D(
        \CHIPS[0].core/buffer_pconv[445] ), .CK(clk), .RB(n3781), .Q(
        \CHIPS[0].core/buffer_pconv[463] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[464]  ( .D(
        \CHIPS[0].core/buffer_pconv[446] ), .CK(clk), .RB(n3781), .Q(
        \CHIPS[0].core/buffer_pconv[464] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[465]  ( .D(
        \CHIPS[0].core/buffer_pconv[447] ), .CK(clk), .RB(n3781), .Q(
        \CHIPS[0].core/buffer_pconv[465] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[466]  ( .D(
        \CHIPS[0].core/buffer_pconv[448] ), .CK(clk), .RB(n3780), .Q(
        \CHIPS[0].core/buffer_pconv[466] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[467]  ( .D(
        \CHIPS[0].core/buffer_pconv[449] ), .CK(clk), .RB(n3780), .Q(
        \CHIPS[0].core/buffer_pconv[467] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[468]  ( .D(
        \CHIPS[0].core/buffer_pconv[450] ), .CK(clk), .RB(n3780), .Q(
        \CHIPS[0].core/buffer_pconv[468] ) );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[469]  ( .D(
        \CHIPS[0].core/buffer_pconv[451] ), .CK(clk), .RB(n3780), .Q(
        \CHIPS[0].core/buffer_pconv[469] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[470]  ( .D(
        \CHIPS[0].core/buffer_pconv[452] ), .CK(clk), .RB(n3780), .Q(
        \CHIPS[0].core/buffer_pconv[470] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[471]  ( .D(
        \CHIPS[0].core/buffer_pconv[453] ), .CK(clk), .RB(n3780), .Q(
        \CHIPS[0].core/buffer_pconv[471] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[472]  ( .D(
        \CHIPS[0].core/buffer_pconv[454] ), .CK(clk), .RB(n3779), .Q(
        \CHIPS[0].core/buffer_pconv[472] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[473]  ( .D(
        \CHIPS[0].core/buffer_pconv[455] ), .CK(clk), .RB(n3779), .Q(
        \CHIPS[0].core/buffer_pconv[473] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[474]  ( .D(
        \CHIPS[0].core/buffer_pconv[456] ), .CK(clk), .RB(n3779), .Q(
        \CHIPS[0].core/buffer_pconv[474] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[475]  ( .D(
        \CHIPS[0].core/buffer_pconv[457] ), .CK(clk), .RB(n3779), .Q(
        \CHIPS[0].core/buffer_pconv[475] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[476]  ( .D(
        \CHIPS[0].core/buffer_pconv[458] ), .CK(clk), .RB(n3779), .Q(
        \CHIPS[0].core/buffer_pconv[476] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[477]  ( .D(
        \CHIPS[0].core/buffer_pconv[459] ), .CK(clk), .RB(n3779), .Q(
        \CHIPS[0].core/buffer_pconv[477] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[478]  ( .D(
        \CHIPS[0].core/buffer_pconv[460] ), .CK(clk), .RB(n3778), .Q(
        \CHIPS[0].core/buffer_pconv[478] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[479]  ( .D(
        \CHIPS[0].core/buffer_pconv[461] ), .CK(clk), .RB(n3778), .Q(
        \CHIPS[0].core/buffer_pconv[479] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[480]  ( .D(
        \CHIPS[0].core/buffer_pconv[462] ), .CK(clk), .RB(n3778), .Q(
        \CHIPS[0].core/buffer_pconv[480] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[481]  ( .D(
        \CHIPS[0].core/buffer_pconv[463] ), .CK(clk), .RB(n3778), .Q(
        \CHIPS[0].core/buffer_pconv[481] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[482]  ( .D(
        \CHIPS[0].core/buffer_pconv[464] ), .CK(clk), .RB(n3778), .Q(
        \CHIPS[0].core/buffer_pconv[482] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[483]  ( .D(
        \CHIPS[0].core/buffer_pconv[465] ), .CK(clk), .RB(n3778), .Q(
        \CHIPS[0].core/buffer_pconv[483] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[484]  ( .D(
        \CHIPS[0].core/buffer_pconv[466] ), .CK(clk), .RB(n3777), .Q(
        \CHIPS[0].core/buffer_pconv[484] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[485]  ( .D(
        \CHIPS[0].core/buffer_pconv[467] ), .CK(clk), .RB(n3777), .Q(
        \CHIPS[0].core/buffer_pconv[485] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[486]  ( .D(
        \CHIPS[0].core/buffer_pconv[468] ), .CK(clk), .RB(n3777), .Q(
        \CHIPS[0].core/buffer_pconv[486] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[487]  ( .D(
        \CHIPS[0].core/buffer_pconv[469] ), .CK(clk), .RB(n3777), .Q(
        \CHIPS[0].core/buffer_pconv[487] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[488]  ( .D(
        \CHIPS[0].core/buffer_pconv[470] ), .CK(clk), .RB(n3777), .Q(
        \CHIPS[0].core/buffer_pconv[488] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[489]  ( .D(
        \CHIPS[0].core/buffer_pconv[471] ), .CK(clk), .RB(n3777), .Q(
        \CHIPS[0].core/buffer_pconv[489] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[490]  ( .D(
        \CHIPS[0].core/buffer_pconv[472] ), .CK(clk), .RB(n3776), .Q(
        \CHIPS[0].core/buffer_pconv[490] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[491]  ( .D(
        \CHIPS[0].core/buffer_pconv[473] ), .CK(clk), .RB(n3776), .Q(
        \CHIPS[0].core/buffer_pconv[491] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[492]  ( .D(
        \CHIPS[0].core/buffer_pconv[474] ), .CK(clk), .RB(n3776), .Q(
        \CHIPS[0].core/buffer_pconv[492] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[493]  ( .D(
        \CHIPS[0].core/buffer_pconv[475] ), .CK(clk), .RB(n3776), .Q(
        \CHIPS[0].core/buffer_pconv[493] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[494]  ( .D(
        \CHIPS[0].core/buffer_pconv[476] ), .CK(clk), .RB(n3776), .Q(
        \CHIPS[0].core/buffer_pconv[494] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[495]  ( .D(
        \CHIPS[0].core/buffer_pconv[477] ), .CK(clk), .RB(n3776), .Q(
        \CHIPS[0].core/buffer_pconv[495] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[496]  ( .D(
        \CHIPS[0].core/buffer_pconv[478] ), .CK(clk), .RB(n3775), .Q(
        \CHIPS[0].core/buffer_pconv[496] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[497]  ( .D(
        \CHIPS[0].core/buffer_pconv[479] ), .CK(clk), .RB(n3775), .Q(
        \CHIPS[0].core/buffer_pconv[497] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[498]  ( .D(
        \CHIPS[0].core/buffer_pconv[480] ), .CK(clk), .RB(n3775), .Q(
        \CHIPS[0].core/buffer_pconv[498] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[499]  ( .D(
        \CHIPS[0].core/buffer_pconv[481] ), .CK(clk), .RB(n3775), .Q(
        \CHIPS[0].core/buffer_pconv[499] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[500]  ( .D(
        \CHIPS[0].core/buffer_pconv[482] ), .CK(clk), .RB(n3775), .Q(
        \CHIPS[0].core/buffer_pconv[500] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[501]  ( .D(
        \CHIPS[0].core/buffer_pconv[483] ), .CK(clk), .RB(n3775), .Q(
        \CHIPS[0].core/buffer_pconv[501] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[502]  ( .D(
        \CHIPS[0].core/buffer_pconv[484] ), .CK(clk), .RB(n3774), .Q(
        \CHIPS[0].core/buffer_pconv[502] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[503]  ( .D(
        \CHIPS[0].core/buffer_pconv[485] ), .CK(clk), .RB(n3774), .Q(
        \CHIPS[0].core/buffer_pconv[503] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[504]  ( .D(
        \CHIPS[0].core/buffer_pconv[486] ), .CK(clk), .RB(n3774), .Q(
        \CHIPS[0].core/buffer_pconv[504] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[505]  ( .D(
        \CHIPS[0].core/buffer_pconv[487] ), .CK(clk), .RB(n3774), .Q(
        \CHIPS[0].core/buffer_pconv[505] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[506]  ( .D(
        \CHIPS[0].core/buffer_pconv[488] ), .CK(clk), .RB(n3774), .Q(
        \CHIPS[0].core/buffer_pconv[506] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[507]  ( .D(
        \CHIPS[0].core/buffer_pconv[489] ), .CK(clk), .RB(n3774), .Q(
        \CHIPS[0].core/buffer_pconv[507] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[508]  ( .D(
        \CHIPS[0].core/buffer_pconv[490] ), .CK(clk), .RB(n3773), .Q(
        \CHIPS[0].core/buffer_pconv[508] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[509]  ( .D(
        \CHIPS[0].core/buffer_pconv[491] ), .CK(clk), .RB(n3773), .Q(
        \CHIPS[0].core/buffer_pconv[509] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[510]  ( .D(
        \CHIPS[0].core/buffer_pconv[492] ), .CK(clk), .RB(n3773), .Q(
        \CHIPS[0].core/buffer_pconv[510] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[511]  ( .D(
        \CHIPS[0].core/buffer_pconv[493] ), .CK(clk), .RB(n3773), .Q(
        \CHIPS[0].core/buffer_pconv[511] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[512]  ( .D(
        \CHIPS[0].core/buffer_pconv[494] ), .CK(clk), .RB(n3773), .Q(
        \CHIPS[0].core/buffer_pconv[512] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[513]  ( .D(
        \CHIPS[0].core/buffer_pconv[495] ), .CK(clk), .RB(n3784), .Q(
        \CHIPS[0].core/buffer_pconv[513] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[514]  ( .D(
        \CHIPS[0].core/buffer_pconv[496] ), .CK(clk), .RB(n3816), .Q(
        \CHIPS[0].core/buffer_pconv[514] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[515]  ( .D(
        \CHIPS[0].core/buffer_pconv[497] ), .CK(clk), .RB(n3816), .Q(
        \CHIPS[0].core/buffer_pconv[515] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[516]  ( .D(
        \CHIPS[0].core/buffer_pconv[498] ), .CK(clk), .RB(n3816), .Q(
        \CHIPS[0].core/buffer_pconv[516] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[517]  ( .D(
        \CHIPS[0].core/buffer_pconv[499] ), .CK(clk), .RB(n3816), .Q(
        \CHIPS[0].core/buffer_pconv[517] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[518]  ( .D(
        \CHIPS[0].core/buffer_pconv[500] ), .CK(clk), .RB(n3815), .Q(
        \CHIPS[0].core/buffer_pconv[518] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[519]  ( .D(
        \CHIPS[0].core/buffer_pconv[501] ), .CK(clk), .RB(n3815), .Q(
        \CHIPS[0].core/buffer_pconv[519] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[520]  ( .D(
        \CHIPS[0].core/buffer_pconv[502] ), .CK(clk), .RB(n3815), .Q(
        \CHIPS[0].core/buffer_pconv[520] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[521]  ( .D(
        \CHIPS[0].core/buffer_pconv[503] ), .CK(clk), .RB(n3815), .Q(
        \CHIPS[0].core/buffer_pconv[521] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[522]  ( .D(
        \CHIPS[0].core/buffer_pconv[504] ), .CK(clk), .RB(n3815), .Q(
        \CHIPS[0].core/buffer_pconv[522] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[523]  ( .D(
        \CHIPS[0].core/buffer_pconv[505] ), .CK(clk), .RB(n3815), .Q(
        \CHIPS[0].core/buffer_pconv[523] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[524]  ( .D(
        \CHIPS[0].core/buffer_pconv[506] ), .CK(clk), .RB(n3814), .Q(
        \CHIPS[0].core/buffer_pconv[524] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[525]  ( .D(
        \CHIPS[0].core/buffer_pconv[507] ), .CK(clk), .RB(n3814), .Q(
        \CHIPS[0].core/buffer_pconv[525] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[526]  ( .D(
        \CHIPS[0].core/buffer_pconv[508] ), .CK(clk), .RB(n3814), .Q(
        \CHIPS[0].core/buffer_pconv[526] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[527]  ( .D(
        \CHIPS[0].core/buffer_pconv[509] ), .CK(clk), .RB(n3814), .Q(
        \CHIPS[0].core/buffer_pconv[527] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[528]  ( .D(
        \CHIPS[0].core/buffer_pconv[510] ), .CK(clk), .RB(n3814), .Q(
        \CHIPS[0].core/buffer_pconv[528] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[529]  ( .D(
        \CHIPS[0].core/buffer_pconv[511] ), .CK(clk), .RB(n3814), .Q(
        \CHIPS[0].core/buffer_pconv[529] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[530]  ( .D(
        \CHIPS[0].core/buffer_pconv[512] ), .CK(clk), .RB(n3813), .Q(
        \CHIPS[0].core/buffer_pconv[530] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[531]  ( .D(
        \CHIPS[0].core/buffer_pconv[513] ), .CK(clk), .RB(n3813), .Q(
        \CHIPS[0].core/buffer_pconv[531] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[532]  ( .D(
        \CHIPS[0].core/buffer_pconv[514] ), .CK(clk), .RB(n3813), .Q(
        \CHIPS[0].core/buffer_pconv[532] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[533]  ( .D(
        \CHIPS[0].core/buffer_pconv[515] ), .CK(clk), .RB(n3813), .Q(
        \CHIPS[0].core/buffer_pconv[533] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[534]  ( .D(
        \CHIPS[0].core/buffer_pconv[516] ), .CK(clk), .RB(n3813), .Q(
        \CHIPS[0].core/buffer_pconv[534] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[535]  ( .D(
        \CHIPS[0].core/buffer_pconv[517] ), .CK(clk), .RB(n3813), .Q(
        \CHIPS[0].core/buffer_pconv[535] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[536]  ( .D(
        \CHIPS[0].core/buffer_pconv[518] ), .CK(clk), .RB(n3812), .Q(
        \CHIPS[0].core/buffer_pconv[536] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[537]  ( .D(
        \CHIPS[0].core/buffer_pconv[519] ), .CK(clk), .RB(n3812), .Q(
        \CHIPS[0].core/buffer_pconv[537] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[538]  ( .D(
        \CHIPS[0].core/buffer_pconv[520] ), .CK(clk), .RB(n3812), .Q(
        \CHIPS[0].core/buffer_pconv[538] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[539]  ( .D(
        \CHIPS[0].core/buffer_pconv[521] ), .CK(clk), .RB(n3812), .Q(
        \CHIPS[0].core/buffer_pconv[539] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[540]  ( .D(
        \CHIPS[0].core/buffer_pconv[522] ), .CK(clk), .RB(n3812), .Q(
        \CHIPS[0].core/buffer_pconv[540] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[541]  ( .D(
        \CHIPS[0].core/buffer_pconv[523] ), .CK(clk), .RB(n3812), .Q(
        \CHIPS[0].core/buffer_pconv[541] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[542]  ( .D(
        \CHIPS[0].core/buffer_pconv[524] ), .CK(clk), .RB(n3811), .Q(
        \CHIPS[0].core/buffer_pconv[542] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[543]  ( .D(
        \CHIPS[0].core/buffer_pconv[525] ), .CK(clk), .RB(n3811), .Q(
        \CHIPS[0].core/buffer_pconv[543] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[544]  ( .D(
        \CHIPS[0].core/buffer_pconv[526] ), .CK(clk), .RB(n3811), .Q(
        \CHIPS[0].core/buffer_pconv[544] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[545]  ( .D(
        \CHIPS[0].core/buffer_pconv[527] ), .CK(clk), .RB(n3811), .Q(
        \CHIPS[0].core/buffer_pconv[545] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[546]  ( .D(
        \CHIPS[0].core/buffer_pconv[528] ), .CK(clk), .RB(n3811), .Q(
        \CHIPS[0].core/buffer_pconv[546] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[547]  ( .D(
        \CHIPS[0].core/buffer_pconv[529] ), .CK(clk), .RB(n3811), .Q(
        \CHIPS[0].core/buffer_pconv[547] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[548]  ( .D(
        \CHIPS[0].core/buffer_pconv[530] ), .CK(clk), .RB(n3810), .Q(
        \CHIPS[0].core/buffer_pconv[548] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[549]  ( .D(
        \CHIPS[0].core/buffer_pconv[531] ), .CK(clk), .RB(n3810), .Q(
        \CHIPS[0].core/buffer_pconv[549] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[550]  ( .D(
        \CHIPS[0].core/buffer_pconv[532] ), .CK(clk), .RB(n3810), .Q(
        \CHIPS[0].core/buffer_pconv[550] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[551]  ( .D(
        \CHIPS[0].core/buffer_pconv[533] ), .CK(clk), .RB(n3810), .Q(
        \CHIPS[0].core/buffer_pconv[551] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[552]  ( .D(
        \CHIPS[0].core/buffer_pconv[534] ), .CK(clk), .RB(n3810), .Q(
        \CHIPS[0].core/buffer_pconv[552] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[553]  ( .D(
        \CHIPS[0].core/buffer_pconv[535] ), .CK(clk), .RB(n3810), .Q(
        \CHIPS[0].core/buffer_pconv[553] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[554]  ( .D(
        \CHIPS[0].core/buffer_pconv[536] ), .CK(clk), .RB(n3809), .Q(
        \CHIPS[0].core/buffer_pconv[554] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[555]  ( .D(
        \CHIPS[0].core/buffer_pconv[537] ), .CK(clk), .RB(n3809), .Q(
        \CHIPS[0].core/buffer_pconv[555] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[556]  ( .D(
        \CHIPS[0].core/buffer_pconv[538] ), .CK(clk), .RB(n3809), .Q(
        \CHIPS[0].core/buffer_pconv[556] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[557]  ( .D(
        \CHIPS[0].core/buffer_pconv[539] ), .CK(clk), .RB(n3809), .Q(
        \CHIPS[0].core/buffer_pconv[557] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[558]  ( .D(
        \CHIPS[0].core/buffer_pconv[540] ), .CK(clk), .RB(n3809), .Q(
        \CHIPS[0].core/buffer_pconv[558] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[559]  ( .D(
        \CHIPS[0].core/buffer_pconv[541] ), .CK(clk), .RB(n3809), .Q(
        \CHIPS[0].core/buffer_pconv[559] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[560]  ( .D(
        \CHIPS[0].core/buffer_pconv[542] ), .CK(clk), .RB(n3808), .Q(
        \CHIPS[0].core/buffer_pconv[560] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[561]  ( .D(
        \CHIPS[0].core/buffer_pconv[543] ), .CK(clk), .RB(n3808), .Q(
        \CHIPS[0].core/buffer_pconv[561] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[562]  ( .D(
        \CHIPS[0].core/buffer_pconv[544] ), .CK(clk), .RB(n3808), .Q(
        \CHIPS[0].core/buffer_pconv[562] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[563]  ( .D(
        \CHIPS[0].core/buffer_pconv[545] ), .CK(clk), .RB(n3808), .Q(
        \CHIPS[0].core/buffer_pconv[563] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[564]  ( .D(
        \CHIPS[0].core/buffer_pconv[546] ), .CK(clk), .RB(n3808), .Q(
        \CHIPS[0].core/buffer_pconv[564] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[565]  ( .D(
        \CHIPS[0].core/buffer_pconv[547] ), .CK(clk), .RB(n3808), .Q(
        \CHIPS[0].core/buffer_pconv[565] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[566]  ( .D(
        \CHIPS[0].core/buffer_pconv[548] ), .CK(clk), .RB(n3807), .Q(
        \CHIPS[0].core/buffer_pconv[566] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[567]  ( .D(
        \CHIPS[0].core/buffer_pconv[549] ), .CK(clk), .RB(n3807), .Q(
        \CHIPS[0].core/buffer_pconv[567] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[568]  ( .D(
        \CHIPS[0].core/buffer_pconv[550] ), .CK(clk), .RB(n3807), .Q(
        \CHIPS[0].core/buffer_pconv[568] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[569]  ( .D(
        \CHIPS[0].core/buffer_pconv[551] ), .CK(clk), .RB(n3807), .Q(
        \CHIPS[0].core/buffer_pconv[569] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[570]  ( .D(
        \CHIPS[0].core/buffer_pconv[552] ), .CK(clk), .RB(n3807), .Q(
        \CHIPS[0].core/buffer_pconv[570] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[571]  ( .D(
        \CHIPS[0].core/buffer_pconv[553] ), .CK(clk), .RB(n3807), .Q(
        \CHIPS[0].core/buffer_pconv[571] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[572]  ( .D(
        \CHIPS[0].core/buffer_pconv[554] ), .CK(clk), .RB(n3806), .Q(
        \CHIPS[0].core/buffer_pconv[572] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[573]  ( .D(
        \CHIPS[0].core/buffer_pconv[555] ), .CK(clk), .RB(n3806), .Q(
        \CHIPS[0].core/buffer_pconv[573] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[574]  ( .D(
        \CHIPS[0].core/buffer_pconv[556] ), .CK(clk), .RB(n3806), .Q(
        \CHIPS[0].core/buffer_pconv[574] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[575]  ( .D(
        \CHIPS[0].core/buffer_pconv[557] ), .CK(clk), .RB(n3806), .Q(
        \CHIPS[0].core/buffer_pconv[575] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[576]  ( .D(
        \CHIPS[0].core/buffer_pconv[558] ), .CK(clk), .RB(n3806), .Q(
        \CHIPS[0].core/buffer_pconv[576] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[577]  ( .D(
        \CHIPS[0].core/buffer_pconv[559] ), .CK(clk), .RB(n3806), .Q(
        \CHIPS[0].core/buffer_pconv[577] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[578]  ( .D(
        \CHIPS[0].core/buffer_pconv[560] ), .CK(clk), .RB(n3805), .Q(
        \CHIPS[0].core/buffer_pconv[578] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[579]  ( .D(
        \CHIPS[0].core/buffer_pconv[561] ), .CK(clk), .RB(n3805), .Q(
        \CHIPS[0].core/buffer_pconv[579] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[580]  ( .D(
        \CHIPS[0].core/buffer_pconv[562] ), .CK(clk), .RB(n3805), .Q(
        \CHIPS[0].core/buffer_pconv[580] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[581]  ( .D(
        \CHIPS[0].core/buffer_pconv[563] ), .CK(clk), .RB(n3805), .Q(
        \CHIPS[0].core/buffer_pconv[581] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[582]  ( .D(
        \CHIPS[0].core/buffer_pconv[564] ), .CK(clk), .RB(n3805), .Q(
        \CHIPS[0].core/buffer_pconv[582] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[583]  ( .D(
        \CHIPS[0].core/buffer_pconv[565] ), .CK(clk), .RB(n3804), .Q(
        \CHIPS[0].core/buffer_pconv[583] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[584]  ( .D(
        \CHIPS[0].core/buffer_pconv[566] ), .CK(clk), .RB(n3804), .Q(
        \CHIPS[0].core/buffer_pconv[584] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[585]  ( .D(
        \CHIPS[0].core/buffer_pconv[567] ), .CK(clk), .RB(n3804), .Q(
        \CHIPS[0].core/buffer_pconv[585] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[586]  ( .D(
        \CHIPS[0].core/buffer_pconv[568] ), .CK(clk), .RB(n3804), .Q(
        \CHIPS[0].core/buffer_pconv[586] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[587]  ( .D(
        \CHIPS[0].core/buffer_pconv[569] ), .CK(clk), .RB(n3804), .Q(
        \CHIPS[0].core/buffer_pconv[587] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[588]  ( .D(
        \CHIPS[0].core/buffer_pconv[570] ), .CK(clk), .RB(n3804), .Q(
        \CHIPS[0].core/buffer_pconv[588] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[589]  ( .D(
        \CHIPS[0].core/buffer_pconv[571] ), .CK(clk), .RB(n3704), .Q(
        \CHIPS[0].core/buffer_pconv[589] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[590]  ( .D(
        \CHIPS[0].core/buffer_pconv[572] ), .CK(clk), .RB(n3709), .Q(
        \CHIPS[0].core/buffer_pconv[590] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[591]  ( .D(
        \CHIPS[0].core/buffer_pconv[573] ), .CK(clk), .RB(n3542), .Q(
        \CHIPS[0].core/buffer_pconv[591] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[592]  ( .D(
        \CHIPS[0].core/buffer_pconv[574] ), .CK(clk), .RB(n2908), .Q(
        \CHIPS[0].core/buffer_pconv[592] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[593]  ( .D(
        \CHIPS[0].core/buffer_pconv[575] ), .CK(clk), .RB(n2908), .Q(
        \CHIPS[0].core/buffer_pconv[593] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[594]  ( .D(
        \CHIPS[0].core/buffer_pconv[576] ), .CK(clk), .RB(n2893), .Q(
        \CHIPS[0].core/buffer_pconv[594] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[595]  ( .D(
        \CHIPS[0].core/buffer_pconv[577] ), .CK(clk), .RB(n3803), .Q(
        \CHIPS[0].core/buffer_pconv[595] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[596]  ( .D(
        \CHIPS[0].core/buffer_pconv[578] ), .CK(clk), .RB(n3803), .Q(
        \CHIPS[0].core/buffer_pconv[596] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[597]  ( .D(
        \CHIPS[0].core/buffer_pconv[579] ), .CK(clk), .RB(n3803), .Q(
        \CHIPS[0].core/buffer_pconv[597] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[598]  ( .D(
        \CHIPS[0].core/buffer_pconv[580] ), .CK(clk), .RB(n3803), .Q(
        \CHIPS[0].core/buffer_pconv[598] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[599]  ( .D(
        \CHIPS[0].core/buffer_pconv[581] ), .CK(clk), .RB(n3803), .Q(
        \CHIPS[0].core/buffer_pconv[599] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[600]  ( .D(
        \CHIPS[0].core/buffer_pconv[582] ), .CK(clk), .RB(n3803), .Q(
        \CHIPS[0].core/buffer_pconv[600] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[601]  ( .D(
        \CHIPS[0].core/buffer_pconv[583] ), .CK(clk), .RB(n3802), .Q(
        \CHIPS[0].core/buffer_pconv[601] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[602]  ( .D(
        \CHIPS[0].core/buffer_pconv[584] ), .CK(clk), .RB(n3802), .Q(
        \CHIPS[0].core/buffer_pconv[602] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[603]  ( .D(
        \CHIPS[0].core/buffer_pconv[585] ), .CK(clk), .RB(n3802), .Q(
        \CHIPS[0].core/buffer_pconv[603] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[604]  ( .D(
        \CHIPS[0].core/buffer_pconv[586] ), .CK(clk), .RB(n3802), .Q(
        \CHIPS[0].core/buffer_pconv[604] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[605]  ( .D(
        \CHIPS[0].core/buffer_pconv[587] ), .CK(clk), .RB(n3802), .Q(
        \CHIPS[0].core/buffer_pconv[605] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[606]  ( .D(
        \CHIPS[0].core/buffer_pconv[588] ), .CK(clk), .RB(n3802), .Q(
        \CHIPS[0].core/buffer_pconv[606] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[607]  ( .D(
        \CHIPS[0].core/buffer_pconv[589] ), .CK(clk), .RB(n3801), .Q(
        \CHIPS[0].core/buffer_pconv[607] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[608]  ( .D(
        \CHIPS[0].core/buffer_pconv[590] ), .CK(clk), .RB(n3801), .Q(
        \CHIPS[0].core/buffer_pconv[608] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[609]  ( .D(
        \CHIPS[0].core/buffer_pconv[591] ), .CK(clk), .RB(n3801), .Q(
        \CHIPS[0].core/buffer_pconv[609] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[610]  ( .D(
        \CHIPS[0].core/buffer_pconv[592] ), .CK(clk), .RB(n3801), .Q(
        \CHIPS[0].core/buffer_pconv[610] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[611]  ( .D(
        \CHIPS[0].core/buffer_pconv[593] ), .CK(clk), .RB(n3801), .Q(
        \CHIPS[0].core/buffer_pconv[611] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[612]  ( .D(
        \CHIPS[0].core/buffer_pconv[594] ), .CK(clk), .RB(n3801), .Q(
        \CHIPS[0].core/buffer_pconv[612] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[613]  ( .D(
        \CHIPS[0].core/buffer_pconv[595] ), .CK(clk), .RB(n3800), .Q(
        \CHIPS[0].core/buffer_pconv[613] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[614]  ( .D(
        \CHIPS[0].core/buffer_pconv[596] ), .CK(clk), .RB(n3800), .Q(
        \CHIPS[0].core/buffer_pconv[614] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[615]  ( .D(
        \CHIPS[0].core/buffer_pconv[597] ), .CK(clk), .RB(n3800), .Q(
        \CHIPS[0].core/buffer_pconv[615] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[616]  ( .D(
        \CHIPS[0].core/buffer_pconv[598] ), .CK(clk), .RB(n3800), .Q(
        \CHIPS[0].core/buffer_pconv[616] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[617]  ( .D(
        \CHIPS[0].core/buffer_pconv[599] ), .CK(clk), .RB(n3800), .Q(
        \CHIPS[0].core/buffer_pconv[617] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[618]  ( .D(
        \CHIPS[0].core/buffer_pconv[600] ), .CK(clk), .RB(n3800), .Q(
        \CHIPS[0].core/buffer_pconv[618] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[619]  ( .D(
        \CHIPS[0].core/buffer_pconv[601] ), .CK(clk), .RB(n3799), .Q(
        \CHIPS[0].core/buffer_pconv[619] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[620]  ( .D(
        \CHIPS[0].core/buffer_pconv[602] ), .CK(clk), .RB(n3799), .Q(
        \CHIPS[0].core/buffer_pconv[620] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[621]  ( .D(
        \CHIPS[0].core/buffer_pconv[603] ), .CK(clk), .RB(n3799), .Q(
        \CHIPS[0].core/buffer_pconv[621] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[622]  ( .D(
        \CHIPS[0].core/buffer_pconv[604] ), .CK(clk), .RB(n3799), .Q(
        \CHIPS[0].core/buffer_pconv[622] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[623]  ( .D(
        \CHIPS[0].core/buffer_pconv[605] ), .CK(clk), .RB(n3799), .Q(
        \CHIPS[0].core/buffer_pconv[623] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[624]  ( .D(
        \CHIPS[0].core/buffer_pconv[606] ), .CK(clk), .RB(n3799), .Q(
        \CHIPS[0].core/buffer_pconv[624] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[625]  ( .D(
        \CHIPS[0].core/buffer_pconv[607] ), .CK(clk), .RB(n3798), .Q(
        \CHIPS[0].core/buffer_pconv[625] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[626]  ( .D(
        \CHIPS[0].core/buffer_pconv[608] ), .CK(clk), .RB(n3798), .Q(
        \CHIPS[0].core/buffer_pconv[626] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[627]  ( .D(
        \CHIPS[0].core/buffer_pconv[609] ), .CK(clk), .RB(n3798), .Q(
        \CHIPS[0].core/buffer_pconv[627] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[628]  ( .D(
        \CHIPS[0].core/buffer_pconv[610] ), .CK(clk), .RB(n3798), .Q(
        \CHIPS[0].core/buffer_pconv[628] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[629]  ( .D(
        \CHIPS[0].core/buffer_pconv[611] ), .CK(clk), .RB(n3798), .Q(
        \CHIPS[0].core/buffer_pconv[629] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[630]  ( .D(
        \CHIPS[0].core/buffer_pconv[612] ), .CK(clk), .RB(n3798), .Q(
        \CHIPS[0].core/buffer_pconv[630] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[631]  ( .D(
        \CHIPS[0].core/buffer_pconv[613] ), .CK(clk), .RB(n3797), .Q(
        \CHIPS[0].core/buffer_pconv[631] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[632]  ( .D(
        \CHIPS[0].core/buffer_pconv[614] ), .CK(clk), .RB(n3797), .Q(
        \CHIPS[0].core/buffer_pconv[632] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[633]  ( .D(
        \CHIPS[0].core/buffer_pconv[615] ), .CK(clk), .RB(n3797), .Q(
        \CHIPS[0].core/buffer_pconv[633] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[634]  ( .D(
        \CHIPS[0].core/buffer_pconv[616] ), .CK(clk), .RB(n3797), .Q(
        \CHIPS[0].core/buffer_pconv[634] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[635]  ( .D(
        \CHIPS[0].core/buffer_pconv[617] ), .CK(clk), .RB(n3797), .Q(
        \CHIPS[0].core/buffer_pconv[635] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[636]  ( .D(
        \CHIPS[0].core/buffer_pconv[618] ), .CK(clk), .RB(n3797), .Q(
        \CHIPS[0].core/buffer_pconv[636] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[637]  ( .D(
        \CHIPS[0].core/buffer_pconv[619] ), .CK(clk), .RB(n3796), .Q(
        \CHIPS[0].core/buffer_pconv[637] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[638]  ( .D(
        \CHIPS[0].core/buffer_pconv[620] ), .CK(clk), .RB(n3796), .Q(
        \CHIPS[0].core/buffer_pconv[638] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[639]  ( .D(
        \CHIPS[0].core/buffer_pconv[621] ), .CK(clk), .RB(n3796), .Q(
        \CHIPS[0].core/buffer_pconv[639] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[640]  ( .D(
        \CHIPS[0].core/buffer_pconv[622] ), .CK(clk), .RB(n3796), .Q(
        \CHIPS[0].core/buffer_pconv[640] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[641]  ( .D(
        \CHIPS[0].core/buffer_pconv[623] ), .CK(clk), .RB(n3796), .Q(
        \CHIPS[0].core/buffer_pconv[641] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[642]  ( .D(
        \CHIPS[0].core/buffer_pconv[624] ), .CK(clk), .RB(n3796), .Q(
        \CHIPS[0].core/buffer_pconv[642] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[643]  ( .D(
        \CHIPS[0].core/buffer_pconv[625] ), .CK(clk), .RB(n3795), .Q(
        \CHIPS[0].core/buffer_pconv[643] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[644]  ( .D(
        \CHIPS[0].core/buffer_pconv[626] ), .CK(clk), .RB(n3795), .Q(
        \CHIPS[0].core/buffer_pconv[644] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[645]  ( .D(
        \CHIPS[0].core/buffer_pconv[627] ), .CK(clk), .RB(n3795), .Q(
        \CHIPS[0].core/buffer_pconv[645] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[646]  ( .D(
        \CHIPS[0].core/buffer_pconv[628] ), .CK(clk), .RB(n3795), .Q(
        \CHIPS[0].core/buffer_pconv[646] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[647]  ( .D(
        \CHIPS[0].core/buffer_pconv[629] ), .CK(clk), .RB(n3795), .Q(
        \CHIPS[0].core/buffer_pconv[647] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[648]  ( .D(
        \CHIPS[0].core/buffer_pconv[630] ), .CK(clk), .RB(n3795), .Q(
        \CHIPS[0].core/buffer_pconv[648] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[649]  ( .D(
        \CHIPS[0].core/buffer_pconv[631] ), .CK(clk), .RB(n3805), .Q(
        \CHIPS[0].core/buffer_pconv[649] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[650]  ( .D(
        \CHIPS[0].core/buffer_pconv[632] ), .CK(clk), .RB(n3750), .Q(
        \CHIPS[0].core/buffer_pconv[650] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[651]  ( .D(
        \CHIPS[0].core/buffer_pconv[633] ), .CK(clk), .RB(n3750), .Q(
        \CHIPS[0].core/buffer_pconv[651] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[652]  ( .D(
        \CHIPS[0].core/buffer_pconv[634] ), .CK(clk), .RB(n3749), .Q(
        \CHIPS[0].core/buffer_pconv[652] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[653]  ( .D(
        \CHIPS[0].core/buffer_pconv[635] ), .CK(clk), .RB(n3749), .Q(
        \CHIPS[0].core/buffer_pconv[653] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[654]  ( .D(
        \CHIPS[0].core/buffer_pconv[636] ), .CK(clk), .RB(n3749), .Q(
        \CHIPS[0].core/buffer_pconv[654] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[655]  ( .D(
        \CHIPS[0].core/buffer_pconv[637] ), .CK(clk), .RB(n3749), .Q(
        \CHIPS[0].core/buffer_pconv[655] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[656]  ( .D(
        \CHIPS[0].core/buffer_pconv[638] ), .CK(clk), .RB(n3749), .Q(
        \CHIPS[0].core/buffer_pconv[656] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[657]  ( .D(
        \CHIPS[0].core/buffer_pconv[639] ), .CK(clk), .RB(n3749), .Q(
        \CHIPS[0].core/buffer_pconv[657] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[658]  ( .D(
        \CHIPS[0].core/buffer_pconv[640] ), .CK(clk), .RB(n3748), .Q(
        \CHIPS[0].core/buffer_pconv[658] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[659]  ( .D(
        \CHIPS[0].core/buffer_pconv[641] ), .CK(clk), .RB(n3748), .Q(
        \CHIPS[0].core/buffer_pconv[659] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[660]  ( .D(
        \CHIPS[0].core/buffer_pconv[642] ), .CK(clk), .RB(n3748), .Q(
        \CHIPS[0].core/buffer_pconv[660] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[661]  ( .D(
        \CHIPS[0].core/buffer_pconv[643] ), .CK(clk), .RB(n3748), .Q(
        \CHIPS[0].core/buffer_pconv[661] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[662]  ( .D(
        \CHIPS[0].core/buffer_pconv[644] ), .CK(clk), .RB(n3748), .Q(
        \CHIPS[0].core/buffer_pconv[662] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[663]  ( .D(
        \CHIPS[0].core/buffer_pconv[645] ), .CK(clk), .RB(n3748), .Q(
        \CHIPS[0].core/buffer_pconv[663] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[664]  ( .D(
        \CHIPS[0].core/buffer_pconv[646] ), .CK(clk), .RB(n3747), .Q(
        \CHIPS[0].core/buffer_pconv[664] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[665]  ( .D(
        \CHIPS[0].core/buffer_pconv[647] ), .CK(clk), .RB(n3747), .Q(
        \CHIPS[0].core/buffer_pconv[665] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[666]  ( .D(
        \CHIPS[0].core/buffer_pconv[648] ), .CK(clk), .RB(n3747), .Q(
        \CHIPS[0].core/buffer_pconv[666] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[667]  ( .D(
        \CHIPS[0].core/buffer_pconv[649] ), .CK(clk), .RB(n3747), .Q(
        \CHIPS[0].core/buffer_pconv[667] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[668]  ( .D(
        \CHIPS[0].core/buffer_pconv[650] ), .CK(clk), .RB(n3747), .Q(
        \CHIPS[0].core/buffer_pconv[668] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[669]  ( .D(
        \CHIPS[0].core/buffer_pconv[651] ), .CK(clk), .RB(n3747), .Q(
        \CHIPS[0].core/buffer_pconv[669] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[670]  ( .D(
        \CHIPS[0].core/buffer_pconv[652] ), .CK(clk), .RB(n3746), .Q(
        \CHIPS[0].core/buffer_pconv[670] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[671]  ( .D(
        \CHIPS[0].core/buffer_pconv[653] ), .CK(clk), .RB(n3746), .Q(
        \CHIPS[0].core/buffer_pconv[671] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[672]  ( .D(
        \CHIPS[0].core/buffer_pconv[654] ), .CK(clk), .RB(n3746), .Q(
        \CHIPS[0].core/buffer_pconv[672] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[673]  ( .D(
        \CHIPS[0].core/buffer_pconv[655] ), .CK(clk), .RB(n3746), .Q(
        \CHIPS[0].core/buffer_pconv[673] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[674]  ( .D(
        \CHIPS[0].core/buffer_pconv[656] ), .CK(clk), .RB(n3746), .Q(
        \CHIPS[0].core/buffer_pconv[674] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[675]  ( .D(
        \CHIPS[0].core/buffer_pconv[657] ), .CK(clk), .RB(n3746), .Q(
        \CHIPS[0].core/buffer_pconv[675] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[676]  ( .D(
        \CHIPS[0].core/buffer_pconv[658] ), .CK(clk), .RB(n3745), .Q(
        \CHIPS[0].core/buffer_pconv[676] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[677]  ( .D(
        \CHIPS[0].core/buffer_pconv[659] ), .CK(clk), .RB(n3745), .Q(
        \CHIPS[0].core/buffer_pconv[677] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[678]  ( .D(
        \CHIPS[0].core/buffer_pconv[660] ), .CK(clk), .RB(n3745), .Q(
        \CHIPS[0].core/buffer_pconv[678] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[679]  ( .D(
        \CHIPS[0].core/buffer_pconv[661] ), .CK(clk), .RB(n3745), .Q(
        \CHIPS[0].core/buffer_pconv[679] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[680]  ( .D(
        \CHIPS[0].core/buffer_pconv[662] ), .CK(clk), .RB(n3745), .Q(
        \CHIPS[0].core/buffer_pconv[680] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[681]  ( .D(
        \CHIPS[0].core/buffer_pconv[663] ), .CK(clk), .RB(n3745), .Q(
        \CHIPS[0].core/buffer_pconv[681] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[682]  ( .D(
        \CHIPS[0].core/buffer_pconv[664] ), .CK(clk), .RB(n3744), .Q(
        \CHIPS[0].core/buffer_pconv[682] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[683]  ( .D(
        \CHIPS[0].core/buffer_pconv[665] ), .CK(clk), .RB(n3744), .Q(
        \CHIPS[0].core/buffer_pconv[683] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[684]  ( .D(
        \CHIPS[0].core/buffer_pconv[666] ), .CK(clk), .RB(n3744), .Q(
        \CHIPS[0].core/buffer_pconv[684] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[685]  ( .D(
        \CHIPS[0].core/buffer_pconv[667] ), .CK(clk), .RB(n3744), .Q(
        \CHIPS[0].core/buffer_pconv[685] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[686]  ( .D(
        \CHIPS[0].core/buffer_pconv[668] ), .CK(clk), .RB(n3744), .Q(
        \CHIPS[0].core/buffer_pconv[686] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[687]  ( .D(
        \CHIPS[0].core/buffer_pconv[669] ), .CK(clk), .RB(n3744), .Q(
        \CHIPS[0].core/buffer_pconv[687] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[688]  ( .D(
        \CHIPS[0].core/buffer_pconv[670] ), .CK(clk), .RB(n3743), .Q(
        \CHIPS[0].core/buffer_pconv[688] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[689]  ( .D(
        \CHIPS[0].core/buffer_pconv[671] ), .CK(clk), .RB(n3743), .Q(
        \CHIPS[0].core/buffer_pconv[689] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[690]  ( .D(
        \CHIPS[0].core/buffer_pconv[672] ), .CK(clk), .RB(n3743), .Q(
        \CHIPS[0].core/buffer_pconv[690] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[691]  ( .D(
        \CHIPS[0].core/buffer_pconv[673] ), .CK(clk), .RB(n3743), .Q(
        \CHIPS[0].core/buffer_pconv[691] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[692]  ( .D(
        \CHIPS[0].core/buffer_pconv[674] ), .CK(clk), .RB(n3743), .Q(
        \CHIPS[0].core/buffer_pconv[692] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[693]  ( .D(
        \CHIPS[0].core/buffer_pconv[675] ), .CK(clk), .RB(n3743), .Q(
        \CHIPS[0].core/buffer_pconv[693] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[694]  ( .D(
        \CHIPS[0].core/buffer_pconv[676] ), .CK(clk), .RB(n3742), .Q(
        \CHIPS[0].core/buffer_pconv[694] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[695]  ( .D(
        \CHIPS[0].core/buffer_pconv[677] ), .CK(clk), .RB(n3742), .Q(
        \CHIPS[0].core/buffer_pconv[695] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[696]  ( .D(
        \CHIPS[0].core/buffer_pconv[678] ), .CK(clk), .RB(n3742), .Q(
        \CHIPS[0].core/buffer_pconv[696] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[697]  ( .D(
        \CHIPS[0].core/buffer_pconv[679] ), .CK(clk), .RB(n3742), .Q(
        \CHIPS[0].core/buffer_pconv[697] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[698]  ( .D(
        \CHIPS[0].core/buffer_pconv[680] ), .CK(clk), .RB(n3742), .Q(
        \CHIPS[0].core/buffer_pconv[698] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[699]  ( .D(
        \CHIPS[0].core/buffer_pconv[681] ), .CK(clk), .RB(n3742), .Q(
        \CHIPS[0].core/buffer_pconv[699] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[700]  ( .D(
        \CHIPS[0].core/buffer_pconv[682] ), .CK(clk), .RB(n3741), .Q(
        \CHIPS[0].core/buffer_pconv[700] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[701]  ( .D(
        \CHIPS[0].core/buffer_pconv[683] ), .CK(clk), .RB(n3741), .Q(
        \CHIPS[0].core/buffer_pconv[701] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[702]  ( .D(
        \CHIPS[0].core/buffer_pconv[684] ), .CK(clk), .RB(n3741), .Q(
        \CHIPS[0].core/buffer_pconv[702] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[703]  ( .D(
        \CHIPS[0].core/buffer_pconv[685] ), .CK(clk), .RB(n3741), .Q(
        \CHIPS[0].core/buffer_pconv[703] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[704]  ( .D(
        \CHIPS[0].core/buffer_pconv[686] ), .CK(clk), .RB(n3741), .Q(
        \CHIPS[0].core/buffer_pconv[704] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[705]  ( .D(
        \CHIPS[0].core/buffer_pconv[687] ), .CK(clk), .RB(n3741), .Q(
        \CHIPS[0].core/buffer_pconv[705] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[706]  ( .D(
        \CHIPS[0].core/buffer_pconv[688] ), .CK(clk), .RB(n3740), .Q(
        \CHIPS[0].core/buffer_pconv[706] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[707]  ( .D(
        \CHIPS[0].core/buffer_pconv[689] ), .CK(clk), .RB(n3740), .Q(
        \CHIPS[0].core/buffer_pconv[707] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[708]  ( .D(
        \CHIPS[0].core/buffer_pconv[690] ), .CK(clk), .RB(n3740), .Q(
        \CHIPS[0].core/buffer_pconv[708] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[709]  ( .D(
        \CHIPS[0].core/buffer_pconv[691] ), .CK(clk), .RB(n3740), .Q(
        \CHIPS[0].core/buffer_pconv[709] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[710]  ( .D(
        \CHIPS[0].core/buffer_pconv[692] ), .CK(clk), .RB(n3740), .Q(
        \CHIPS[0].core/buffer_pconv[710] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[711]  ( .D(
        \CHIPS[0].core/buffer_pconv[693] ), .CK(clk), .RB(n3740), .Q(
        \CHIPS[0].core/buffer_pconv[711] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[712]  ( .D(
        \CHIPS[0].core/buffer_pconv[694] ), .CK(clk), .RB(n3739), .Q(
        \CHIPS[0].core/buffer_pconv[712] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[713]  ( .D(
        \CHIPS[0].core/buffer_pconv[695] ), .CK(clk), .RB(n3739), .Q(
        \CHIPS[0].core/buffer_pconv[713] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[714]  ( .D(
        \CHIPS[0].core/buffer_pconv[696] ), .CK(clk), .RB(n3739), .Q(
        \CHIPS[0].core/buffer_pconv[714] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[715]  ( .D(
        \CHIPS[0].core/buffer_pconv[697] ), .CK(clk), .RB(n3739), .Q(
        \CHIPS[0].core/buffer_pconv[715] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[716]  ( .D(
        \CHIPS[0].core/buffer_pconv[698] ), .CK(clk), .RB(n3739), .Q(
        \CHIPS[0].core/buffer_pconv[716] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[717]  ( .D(
        \CHIPS[0].core/buffer_pconv[699] ), .CK(clk), .RB(n3739), .Q(
        \CHIPS[0].core/buffer_pconv[717] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[718]  ( .D(
        \CHIPS[0].core/buffer_pconv[700] ), .CK(clk), .RB(n3738), .Q(
        \CHIPS[0].core/buffer_pconv[718] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[719]  ( .D(
        \CHIPS[0].core/buffer_pconv[701] ), .CK(clk), .RB(n3738), .Q(
        \CHIPS[0].core/buffer_pconv[719] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[720]  ( .D(
        \CHIPS[0].core/buffer_pconv[702] ), .CK(clk), .RB(n3738), .Q(
        \CHIPS[0].core/buffer_pconv[720] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[721]  ( .D(
        \CHIPS[0].core/buffer_pconv[703] ), .CK(clk), .RB(n3738), .Q(
        \CHIPS[0].core/buffer_pconv[721] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[722]  ( .D(
        \CHIPS[0].core/buffer_pconv[704] ), .CK(clk), .RB(n3738), .Q(
        \CHIPS[0].core/buffer_pconv[722] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[723]  ( .D(
        \CHIPS[0].core/buffer_pconv[705] ), .CK(clk), .RB(n3737), .Q(
        \CHIPS[0].core/buffer_pconv[723] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[724]  ( .D(
        \CHIPS[0].core/buffer_pconv[706] ), .CK(clk), .RB(n3737), .Q(
        \CHIPS[0].core/buffer_pconv[724] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[725]  ( .D(
        \CHIPS[0].core/buffer_pconv[707] ), .CK(clk), .RB(n3737), .Q(
        \CHIPS[0].core/buffer_pconv[725] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[726]  ( .D(
        \CHIPS[0].core/buffer_pconv[708] ), .CK(clk), .RB(n3737), .Q(
        \CHIPS[0].core/buffer_pconv[726] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[727]  ( .D(
        \CHIPS[0].core/buffer_pconv[709] ), .CK(clk), .RB(n3737), .Q(
        \CHIPS[0].core/buffer_pconv[727] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[728]  ( .D(
        \CHIPS[0].core/buffer_pconv[710] ), .CK(clk), .RB(n3737), .Q(
        \CHIPS[0].core/buffer_pconv[728] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[729]  ( .D(
        \CHIPS[0].core/buffer_pconv[711] ), .CK(clk), .RB(n3736), .Q(
        \CHIPS[0].core/buffer_pconv[729] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[730]  ( .D(
        \CHIPS[0].core/buffer_pconv[712] ), .CK(clk), .RB(n3736), .Q(
        \CHIPS[0].core/buffer_pconv[730] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[731]  ( .D(
        \CHIPS[0].core/buffer_pconv[713] ), .CK(clk), .RB(n3736), .Q(
        \CHIPS[0].core/buffer_pconv[731] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[732]  ( .D(
        \CHIPS[0].core/buffer_pconv[714] ), .CK(clk), .RB(n3736), .Q(
        \CHIPS[0].core/buffer_pconv[732] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[733]  ( .D(
        \CHIPS[0].core/buffer_pconv[715] ), .CK(clk), .RB(n3736), .Q(
        \CHIPS[0].core/buffer_pconv[733] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[734]  ( .D(
        \CHIPS[0].core/buffer_pconv[716] ), .CK(clk), .RB(n3736), .Q(
        \CHIPS[0].core/buffer_pconv[734] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[735]  ( .D(
        \CHIPS[0].core/buffer_pconv[717] ), .CK(clk), .RB(n3735), .Q(
        \CHIPS[0].core/buffer_pconv[735] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[736]  ( .D(
        \CHIPS[0].core/buffer_pconv[718] ), .CK(clk), .RB(n3735), .Q(
        \CHIPS[0].core/buffer_pconv[736] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[737]  ( .D(
        \CHIPS[0].core/buffer_pconv[719] ), .CK(clk), .RB(n3735), .Q(
        \CHIPS[0].core/buffer_pconv[737] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[738]  ( .D(
        \CHIPS[0].core/buffer_pconv[720] ), .CK(clk), .RB(n3735), .Q(
        \CHIPS[0].core/buffer_pconv[738] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[739]  ( .D(
        \CHIPS[0].core/buffer_pconv[721] ), .CK(clk), .RB(n3735), .Q(
        \CHIPS[0].core/buffer_pconv[739] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[740]  ( .D(
        \CHIPS[0].core/buffer_pconv[722] ), .CK(clk), .RB(n3735), .Q(
        \CHIPS[0].core/buffer_pconv[740] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[741]  ( .D(
        \CHIPS[0].core/buffer_pconv[723] ), .CK(clk), .RB(n3734), .Q(
        \CHIPS[0].core/buffer_pconv[741] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[742]  ( .D(
        \CHIPS[0].core/buffer_pconv[724] ), .CK(clk), .RB(n3734), .Q(
        \CHIPS[0].core/buffer_pconv[742] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[743]  ( .D(
        \CHIPS[0].core/buffer_pconv[725] ), .CK(clk), .RB(n3734), .Q(
        \CHIPS[0].core/buffer_pconv[743] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[744]  ( .D(
        \CHIPS[0].core/buffer_pconv[726] ), .CK(clk), .RB(n3734), .Q(
        \CHIPS[0].core/buffer_pconv[744] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[745]  ( .D(
        \CHIPS[0].core/buffer_pconv[727] ), .CK(clk), .RB(n3734), .Q(
        \CHIPS[0].core/buffer_pconv[745] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[746]  ( .D(
        \CHIPS[0].core/buffer_pconv[728] ), .CK(clk), .RB(n3734), .Q(
        \CHIPS[0].core/buffer_pconv[746] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[747]  ( .D(
        \CHIPS[0].core/buffer_pconv[729] ), .CK(clk), .RB(n3733), .Q(
        \CHIPS[0].core/buffer_pconv[747] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[748]  ( .D(
        \CHIPS[0].core/buffer_pconv[730] ), .CK(clk), .RB(n3733), .Q(
        \CHIPS[0].core/buffer_pconv[748] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[749]  ( .D(
        \CHIPS[0].core/buffer_pconv[731] ), .CK(clk), .RB(n3733), .Q(
        \CHIPS[0].core/buffer_pconv[749] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[750]  ( .D(
        \CHIPS[0].core/buffer_pconv[732] ), .CK(clk), .RB(n3733), .Q(
        \CHIPS[0].core/buffer_pconv[750] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[751]  ( .D(
        \CHIPS[0].core/buffer_pconv[733] ), .CK(clk), .RB(n3733), .Q(
        \CHIPS[0].core/buffer_pconv[751] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[752]  ( .D(
        \CHIPS[0].core/buffer_pconv[734] ), .CK(clk), .RB(n3733), .Q(
        \CHIPS[0].core/buffer_pconv[752] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[753]  ( .D(
        \CHIPS[0].core/buffer_pconv[735] ), .CK(clk), .RB(n3732), .Q(
        \CHIPS[0].core/buffer_pconv[753] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[754]  ( .D(
        \CHIPS[0].core/buffer_pconv[736] ), .CK(clk), .RB(n3732), .Q(
        \CHIPS[0].core/buffer_pconv[754] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[755]  ( .D(
        \CHIPS[0].core/buffer_pconv[737] ), .CK(clk), .RB(n3732), .Q(
        \CHIPS[0].core/buffer_pconv[755] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[756]  ( .D(
        \CHIPS[0].core/buffer_pconv[738] ), .CK(clk), .RB(n3732), .Q(
        \CHIPS[0].core/buffer_pconv[756] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[757]  ( .D(
        \CHIPS[0].core/buffer_pconv[739] ), .CK(clk), .RB(n3732), .Q(
        \CHIPS[0].core/buffer_pconv[757] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[758]  ( .D(
        \CHIPS[0].core/buffer_pconv[740] ), .CK(clk), .RB(n3732), .Q(
        \CHIPS[0].core/buffer_pconv[758] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[759]  ( .D(
        \CHIPS[0].core/buffer_pconv[741] ), .CK(clk), .RB(n3731), .Q(
        \CHIPS[0].core/buffer_pconv[759] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[760]  ( .D(
        \CHIPS[0].core/buffer_pconv[742] ), .CK(clk), .RB(n3731), .Q(
        \CHIPS[0].core/buffer_pconv[760] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[761]  ( .D(
        \CHIPS[0].core/buffer_pconv[743] ), .CK(clk), .RB(n3731), .Q(
        \CHIPS[0].core/buffer_pconv[761] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[762]  ( .D(
        \CHIPS[0].core/buffer_pconv[744] ), .CK(clk), .RB(n3731), .Q(
        \CHIPS[0].core/buffer_pconv[762] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[763]  ( .D(
        \CHIPS[0].core/buffer_pconv[745] ), .CK(clk), .RB(n3731), .Q(
        \CHIPS[0].core/buffer_pconv[763] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[764]  ( .D(
        \CHIPS[0].core/buffer_pconv[746] ), .CK(clk), .RB(n3731), .Q(
        \CHIPS[0].core/buffer_pconv[764] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[765]  ( .D(
        \CHIPS[0].core/buffer_pconv[747] ), .CK(clk), .RB(n3730), .Q(
        \CHIPS[0].core/buffer_pconv[765] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[766]  ( .D(
        \CHIPS[0].core/buffer_pconv[748] ), .CK(clk), .RB(n3730), .Q(
        \CHIPS[0].core/buffer_pconv[766] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[767]  ( .D(
        \CHIPS[0].core/buffer_pconv[749] ), .CK(clk), .RB(n3730), .Q(
        \CHIPS[0].core/buffer_pconv[767] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[768]  ( .D(
        \CHIPS[0].core/buffer_pconv[750] ), .CK(clk), .RB(n3730), .Q(
        \CHIPS[0].core/buffer_pconv[768] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[769]  ( .D(
        \CHIPS[0].core/buffer_pconv[751] ), .CK(clk), .RB(n3730), .Q(
        \CHIPS[0].core/buffer_pconv[769] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[770]  ( .D(
        \CHIPS[0].core/buffer_pconv[752] ), .CK(clk), .RB(n3730), .Q(
        \CHIPS[0].core/buffer_pconv[770] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[771]  ( .D(
        \CHIPS[0].core/buffer_pconv[753] ), .CK(clk), .RB(n3729), .Q(
        \CHIPS[0].core/buffer_pconv[771] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[772]  ( .D(
        \CHIPS[0].core/buffer_pconv[754] ), .CK(clk), .RB(n3729), .Q(
        \CHIPS[0].core/buffer_pconv[772] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[773]  ( .D(
        \CHIPS[0].core/buffer_pconv[755] ), .CK(clk), .RB(n3729), .Q(
        \CHIPS[0].core/buffer_pconv[773] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[774]  ( .D(
        \CHIPS[0].core/buffer_pconv[756] ), .CK(clk), .RB(n3729), .Q(
        \CHIPS[0].core/buffer_pconv[774] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[775]  ( .D(
        \CHIPS[0].core/buffer_pconv[757] ), .CK(clk), .RB(n3729), .Q(
        \CHIPS[0].core/buffer_pconv[775] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[776]  ( .D(
        \CHIPS[0].core/buffer_pconv[758] ), .CK(clk), .RB(n3729), .Q(
        \CHIPS[0].core/buffer_pconv[776] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[777]  ( .D(
        \CHIPS[0].core/buffer_pconv[759] ), .CK(clk), .RB(n3728), .Q(
        \CHIPS[0].core/buffer_pconv[777] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[778]  ( .D(
        \CHIPS[0].core/buffer_pconv[760] ), .CK(clk), .RB(n3728), .Q(
        \CHIPS[0].core/buffer_pconv[778] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[779]  ( .D(
        \CHIPS[0].core/buffer_pconv[761] ), .CK(clk), .RB(n3728), .Q(
        \CHIPS[0].core/buffer_pconv[779] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[780]  ( .D(
        \CHIPS[0].core/buffer_pconv[762] ), .CK(clk), .RB(n3728), .Q(
        \CHIPS[0].core/buffer_pconv[780] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[781]  ( .D(
        \CHIPS[0].core/buffer_pconv[763] ), .CK(clk), .RB(n3728), .Q(
        \CHIPS[0].core/buffer_pconv[781] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[782]  ( .D(
        \CHIPS[0].core/buffer_pconv[764] ), .CK(clk), .RB(n3728), .Q(
        \CHIPS[0].core/buffer_pconv[782] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[783]  ( .D(
        \CHIPS[0].core/buffer_pconv[765] ), .CK(clk), .RB(n3727), .Q(
        \CHIPS[0].core/buffer_pconv[783] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[784]  ( .D(
        \CHIPS[0].core/buffer_pconv[766] ), .CK(clk), .RB(n3727), .Q(
        \CHIPS[0].core/buffer_pconv[784] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[785]  ( .D(
        \CHIPS[0].core/buffer_pconv[767] ), .CK(clk), .RB(n3727), .Q(
        \CHIPS[0].core/buffer_pconv[785] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[786]  ( .D(
        \CHIPS[0].core/buffer_pconv[768] ), .CK(clk), .RB(n3738), .Q(
        \CHIPS[0].core/buffer_pconv[786] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[787]  ( .D(
        \CHIPS[0].core/buffer_pconv[769] ), .CK(clk), .RB(n3772), .Q(
        \CHIPS[0].core/buffer_pconv[787] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[788]  ( .D(
        \CHIPS[0].core/buffer_pconv[770] ), .CK(clk), .RB(n3772), .Q(
        \CHIPS[0].core/buffer_pconv[788] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[789]  ( .D(
        \CHIPS[0].core/buffer_pconv[771] ), .CK(clk), .RB(n3772), .Q(
        \CHIPS[0].core/buffer_pconv[789] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[790]  ( .D(
        \CHIPS[0].core/buffer_pconv[772] ), .CK(clk), .RB(n3772), .Q(
        \CHIPS[0].core/buffer_pconv[790] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[791]  ( .D(
        \CHIPS[0].core/buffer_pconv[773] ), .CK(clk), .RB(n3772), .Q(
        \CHIPS[0].core/buffer_pconv[791] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[792]  ( .D(
        \CHIPS[0].core/buffer_pconv[774] ), .CK(clk), .RB(n3772), .Q(
        \CHIPS[0].core/buffer_pconv[792] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[793]  ( .D(
        \CHIPS[0].core/buffer_pconv[775] ), .CK(clk), .RB(n3771), .Q(
        \CHIPS[0].core/buffer_pconv[793] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[794]  ( .D(
        \CHIPS[0].core/buffer_pconv[776] ), .CK(clk), .RB(n3771), .Q(
        \CHIPS[0].core/buffer_pconv[794] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[795]  ( .D(
        \CHIPS[0].core/buffer_pconv[777] ), .CK(clk), .RB(n3771), .Q(
        \CHIPS[0].core/buffer_pconv[795] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[796]  ( .D(
        \CHIPS[0].core/buffer_pconv[778] ), .CK(clk), .RB(n3771), .Q(
        \CHIPS[0].core/buffer_pconv[796] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[797]  ( .D(
        \CHIPS[0].core/buffer_pconv[779] ), .CK(clk), .RB(n3771), .Q(
        \CHIPS[0].core/buffer_pconv[797] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[798]  ( .D(
        \CHIPS[0].core/buffer_pconv[780] ), .CK(clk), .RB(n3771), .Q(
        \CHIPS[0].core/buffer_pconv[798] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[799]  ( .D(
        \CHIPS[0].core/buffer_pconv[781] ), .CK(clk), .RB(n3770), .Q(
        \CHIPS[0].core/buffer_pconv[799] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[800]  ( .D(
        \CHIPS[0].core/buffer_pconv[782] ), .CK(clk), .RB(n3770), .Q(
        \CHIPS[0].core/buffer_pconv[800] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[801]  ( .D(
        \CHIPS[0].core/buffer_pconv[783] ), .CK(clk), .RB(n3770), .Q(
        \CHIPS[0].core/buffer_pconv[801] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[802]  ( .D(
        \CHIPS[0].core/buffer_pconv[784] ), .CK(clk), .RB(n3770), .Q(
        \CHIPS[0].core/buffer_pconv[802] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[803]  ( .D(
        \CHIPS[0].core/buffer_pconv[785] ), .CK(clk), .RB(n3770), .Q(
        \CHIPS[0].core/buffer_pconv[803] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[804]  ( .D(
        \CHIPS[0].core/buffer_pconv[786] ), .CK(clk), .RB(n3770), .Q(
        \CHIPS[0].core/buffer_pconv[804] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[805]  ( .D(
        \CHIPS[0].core/buffer_pconv[787] ), .CK(clk), .RB(n3769), .Q(
        \CHIPS[0].core/buffer_pconv[805] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[806]  ( .D(
        \CHIPS[0].core/buffer_pconv[788] ), .CK(clk), .RB(n3769), .Q(
        \CHIPS[0].core/buffer_pconv[806] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[807]  ( .D(
        \CHIPS[0].core/buffer_pconv[789] ), .CK(clk), .RB(n3769), .Q(
        \CHIPS[0].core/buffer_pconv[807] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[808]  ( .D(
        \CHIPS[0].core/buffer_pconv[790] ), .CK(clk), .RB(n3769), .Q(
        \CHIPS[0].core/buffer_pconv[808] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[809]  ( .D(
        \CHIPS[0].core/buffer_pconv[791] ), .CK(clk), .RB(n3769), .Q(
        \CHIPS[0].core/buffer_pconv[809] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[810]  ( .D(
        \CHIPS[0].core/buffer_pconv[792] ), .CK(clk), .RB(n3769), .Q(
        \CHIPS[0].core/buffer_pconv[810] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[811]  ( .D(
        \CHIPS[0].core/buffer_pconv[793] ), .CK(clk), .RB(n3768), .Q(
        \CHIPS[0].core/buffer_pconv[811] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[812]  ( .D(
        \CHIPS[0].core/buffer_pconv[794] ), .CK(clk), .RB(n3768), .Q(
        \CHIPS[0].core/buffer_pconv[812] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[813]  ( .D(
        \CHIPS[0].core/buffer_pconv[795] ), .CK(clk), .RB(n3768), .Q(
        \CHIPS[0].core/buffer_pconv[813] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[814]  ( .D(
        \CHIPS[0].core/buffer_pconv[796] ), .CK(clk), .RB(n3768), .Q(
        \CHIPS[0].core/buffer_pconv[814] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[815]  ( .D(
        \CHIPS[0].core/buffer_pconv[797] ), .CK(clk), .RB(n3768), .Q(
        \CHIPS[0].core/buffer_pconv[815] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[816]  ( .D(
        \CHIPS[0].core/buffer_pconv[798] ), .CK(clk), .RB(n3768), .Q(
        \CHIPS[0].core/buffer_pconv[816] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[817]  ( .D(
        \CHIPS[0].core/buffer_pconv[799] ), .CK(clk), .RB(n3767), .Q(
        \CHIPS[0].core/buffer_pconv[817] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[818]  ( .D(
        \CHIPS[0].core/buffer_pconv[800] ), .CK(clk), .RB(n3767), .Q(
        \CHIPS[0].core/buffer_pconv[818] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[819]  ( .D(
        \CHIPS[0].core/buffer_pconv[801] ), .CK(clk), .RB(n3767), .Q(
        \CHIPS[0].core/buffer_pconv[819] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[820]  ( .D(
        \CHIPS[0].core/buffer_pconv[802] ), .CK(clk), .RB(n3767), .Q(
        \CHIPS[0].core/buffer_pconv[820] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[821]  ( .D(
        \CHIPS[0].core/buffer_pconv[803] ), .CK(clk), .RB(n3767), .Q(
        \CHIPS[0].core/buffer_pconv[821] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[822]  ( .D(
        \CHIPS[0].core/buffer_pconv[804] ), .CK(clk), .RB(n3767), .Q(
        \CHIPS[0].core/buffer_pconv[822] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[823]  ( .D(
        \CHIPS[0].core/buffer_pconv[805] ), .CK(clk), .RB(n3766), .Q(
        \CHIPS[0].core/buffer_pconv[823] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[824]  ( .D(
        \CHIPS[0].core/buffer_pconv[806] ), .CK(clk), .RB(n3766), .Q(
        \CHIPS[0].core/buffer_pconv[824] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[825]  ( .D(
        \CHIPS[0].core/buffer_pconv[807] ), .CK(clk), .RB(n3766), .Q(
        \CHIPS[0].core/buffer_pconv[825] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[826]  ( .D(
        \CHIPS[0].core/buffer_pconv[808] ), .CK(clk), .RB(n3766), .Q(
        \CHIPS[0].core/buffer_pconv[826] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[827]  ( .D(
        \CHIPS[0].core/buffer_pconv[809] ), .CK(clk), .RB(n3766), .Q(
        \CHIPS[0].core/buffer_pconv[827] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[828]  ( .D(
        \CHIPS[0].core/buffer_pconv[810] ), .CK(clk), .RB(n3766), .Q(
        \CHIPS[0].core/buffer_pconv[828] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[829]  ( .D(
        \CHIPS[0].core/buffer_pconv[811] ), .CK(clk), .RB(n3765), .Q(
        \CHIPS[0].core/buffer_pconv[829] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[830]  ( .D(
        \CHIPS[0].core/buffer_pconv[812] ), .CK(clk), .RB(n3765), .Q(
        \CHIPS[0].core/buffer_pconv[830] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[831]  ( .D(
        \CHIPS[0].core/buffer_pconv[813] ), .CK(clk), .RB(n3765), .Q(
        \CHIPS[0].core/buffer_pconv[831] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[832]  ( .D(
        \CHIPS[0].core/buffer_pconv[814] ), .CK(clk), .RB(n3765), .Q(
        \CHIPS[0].core/buffer_pconv[832] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[833]  ( .D(
        \CHIPS[0].core/buffer_pconv[815] ), .CK(clk), .RB(n3765), .Q(
        \CHIPS[0].core/buffer_pconv[833] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[834]  ( .D(
        \CHIPS[0].core/buffer_pconv[816] ), .CK(clk), .RB(n3765), .Q(
        \CHIPS[0].core/buffer_pconv[834] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[835]  ( .D(
        \CHIPS[0].core/buffer_pconv[817] ), .CK(clk), .RB(n3764), .Q(
        \CHIPS[0].core/buffer_pconv[835] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[836]  ( .D(
        \CHIPS[0].core/buffer_pconv[818] ), .CK(clk), .RB(n3764), .Q(
        \CHIPS[0].core/buffer_pconv[836] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[837]  ( .D(
        \CHIPS[0].core/buffer_pconv[819] ), .CK(clk), .RB(n3764), .Q(
        \CHIPS[0].core/buffer_pconv[837] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[838]  ( .D(
        \CHIPS[0].core/buffer_pconv[820] ), .CK(clk), .RB(n3764), .Q(
        \CHIPS[0].core/buffer_pconv[838] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[839]  ( .D(
        \CHIPS[0].core/buffer_pconv[821] ), .CK(clk), .RB(n3764), .Q(
        \CHIPS[0].core/buffer_pconv[839] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[840]  ( .D(
        \CHIPS[0].core/buffer_pconv[822] ), .CK(clk), .RB(n3764), .Q(
        \CHIPS[0].core/buffer_pconv[840] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[841]  ( .D(
        \CHIPS[0].core/buffer_pconv[823] ), .CK(clk), .RB(n3763), .Q(
        \CHIPS[0].core/buffer_pconv[841] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[842]  ( .D(
        \CHIPS[0].core/buffer_pconv[824] ), .CK(clk), .RB(n3763), .Q(
        \CHIPS[0].core/buffer_pconv[842] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[843]  ( .D(
        \CHIPS[0].core/buffer_pconv[825] ), .CK(clk), .RB(n3763), .Q(
        \CHIPS[0].core/buffer_pconv[843] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[844]  ( .D(
        \CHIPS[0].core/buffer_pconv[826] ), .CK(clk), .RB(n3763), .Q(
        \CHIPS[0].core/buffer_pconv[844] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[845]  ( .D(
        \CHIPS[0].core/buffer_pconv[827] ), .CK(clk), .RB(n3763), .Q(
        \CHIPS[0].core/buffer_pconv[845] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[846]  ( .D(
        \CHIPS[0].core/buffer_pconv[828] ), .CK(clk), .RB(n3763), .Q(
        \CHIPS[0].core/buffer_pconv[846] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[847]  ( .D(
        \CHIPS[0].core/buffer_pconv[829] ), .CK(clk), .RB(n3762), .Q(
        \CHIPS[0].core/buffer_pconv[847] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[848]  ( .D(
        \CHIPS[0].core/buffer_pconv[830] ), .CK(clk), .RB(n3762), .Q(
        \CHIPS[0].core/buffer_pconv[848] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[849]  ( .D(
        \CHIPS[0].core/buffer_pconv[831] ), .CK(clk), .RB(n3762), .Q(
        \CHIPS[0].core/buffer_pconv[849] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[850]  ( .D(
        \CHIPS[0].core/buffer_pconv[832] ), .CK(clk), .RB(n3762), .Q(
        \CHIPS[0].core/buffer_pconv[850] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[851]  ( .D(
        \CHIPS[0].core/buffer_pconv[833] ), .CK(clk), .RB(n3762), .Q(
        \CHIPS[0].core/buffer_pconv[851] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[852]  ( .D(
        \CHIPS[0].core/buffer_pconv[834] ), .CK(clk), .RB(n3762), .Q(
        \CHIPS[0].core/buffer_pconv[852] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[853]  ( .D(
        \CHIPS[0].core/buffer_pconv[835] ), .CK(clk), .RB(n3761), .Q(
        \CHIPS[0].core/buffer_pconv[853] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[854]  ( .D(
        \CHIPS[0].core/buffer_pconv[836] ), .CK(clk), .RB(n3761), .Q(
        \CHIPS[0].core/buffer_pconv[854] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[855]  ( .D(
        \CHIPS[0].core/buffer_pconv[837] ), .CK(clk), .RB(n3761), .Q(
        \CHIPS[0].core/buffer_pconv[855] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[856]  ( .D(
        \CHIPS[0].core/buffer_pconv[838] ), .CK(clk), .RB(n3761), .Q(
        \CHIPS[0].core/buffer_pconv[856] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[857]  ( .D(
        \CHIPS[0].core/buffer_pconv[839] ), .CK(clk), .RB(n3761), .Q(
        \CHIPS[0].core/buffer_pconv[857] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[858]  ( .D(
        \CHIPS[0].core/buffer_pconv[840] ), .CK(clk), .RB(n3760), .Q(
        \CHIPS[0].core/buffer_pconv[858] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[859]  ( .D(
        \CHIPS[0].core/buffer_pconv[841] ), .CK(clk), .RB(n3760), .Q(
        \CHIPS[0].core/buffer_pconv[859] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[860]  ( .D(
        \CHIPS[0].core/buffer_pconv[842] ), .CK(clk), .RB(n3760), .Q(
        \CHIPS[0].core/buffer_pconv[860] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[861]  ( .D(
        \CHIPS[0].core/buffer_pconv[843] ), .CK(clk), .RB(n3760), .Q(
        \CHIPS[0].core/buffer_pconv[861] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[862]  ( .D(
        \CHIPS[0].core/buffer_pconv[844] ), .CK(clk), .RB(n3760), .Q(
        \CHIPS[0].core/buffer_pconv[862] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[863]  ( .D(
        \CHIPS[0].core/buffer_pconv[845] ), .CK(clk), .RB(n3760), .Q(
        \CHIPS[0].core/buffer_pconv[863] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[864]  ( .D(
        \CHIPS[0].core/buffer_pconv[846] ), .CK(clk), .RB(n3759), .Q(
        \CHIPS[0].core/buffer_pconv[864] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[865]  ( .D(
        \CHIPS[0].core/buffer_pconv[847] ), .CK(clk), .RB(n3759), .Q(
        \CHIPS[0].core/buffer_pconv[865] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[866]  ( .D(
        \CHIPS[0].core/buffer_pconv[848] ), .CK(clk), .RB(n3759), .Q(
        \CHIPS[0].core/buffer_pconv[866] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[867]  ( .D(
        \CHIPS[0].core/buffer_pconv[849] ), .CK(clk), .RB(n3759), .Q(
        \CHIPS[0].core/buffer_pconv[867] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[868]  ( .D(
        \CHIPS[0].core/buffer_pconv[850] ), .CK(clk), .RB(n3759), .Q(
        \CHIPS[0].core/buffer_pconv[868] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[869]  ( .D(
        \CHIPS[0].core/buffer_pconv[851] ), .CK(clk), .RB(n3759), .Q(
        \CHIPS[0].core/buffer_pconv[869] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[870]  ( .D(
        \CHIPS[0].core/buffer_pconv[852] ), .CK(clk), .RB(n3758), .Q(
        \CHIPS[0].core/buffer_pconv[870] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[871]  ( .D(
        \CHIPS[0].core/buffer_pconv[853] ), .CK(clk), .RB(n3758), .Q(
        \CHIPS[0].core/buffer_pconv[871] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[872]  ( .D(
        \CHIPS[0].core/buffer_pconv[854] ), .CK(clk), .RB(n3758), .Q(
        \CHIPS[0].core/buffer_pconv[872] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[873]  ( .D(
        \CHIPS[0].core/buffer_pconv[855] ), .CK(clk), .RB(n3758), .Q(
        \CHIPS[0].core/buffer_pconv[873] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[874]  ( .D(
        \CHIPS[0].core/buffer_pconv[856] ), .CK(clk), .RB(n3758), .Q(
        \CHIPS[0].core/buffer_pconv[874] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[875]  ( .D(
        \CHIPS[0].core/buffer_pconv[857] ), .CK(clk), .RB(n3758), .Q(
        \CHIPS[0].core/buffer_pconv[875] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[876]  ( .D(
        \CHIPS[0].core/buffer_pconv[858] ), .CK(clk), .RB(n3757), .Q(
        \CHIPS[0].core/buffer_pconv[876] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[877]  ( .D(
        \CHIPS[0].core/buffer_pconv[859] ), .CK(clk), .RB(n3757), .Q(
        \CHIPS[0].core/buffer_pconv[877] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[878]  ( .D(
        \CHIPS[0].core/buffer_pconv[860] ), .CK(clk), .RB(n3757), .Q(
        \CHIPS[0].core/buffer_pconv[878] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[879]  ( .D(
        \CHIPS[0].core/buffer_pconv[861] ), .CK(clk), .RB(n3757), .Q(
        \CHIPS[0].core/buffer_pconv[879] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[880]  ( .D(
        \CHIPS[0].core/buffer_pconv[862] ), .CK(clk), .RB(n3757), .Q(
        \CHIPS[0].core/buffer_pconv[880] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[881]  ( .D(
        \CHIPS[0].core/buffer_pconv[863] ), .CK(clk), .RB(n3757), .Q(
        \CHIPS[0].core/buffer_pconv[881] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[882]  ( .D(
        \CHIPS[0].core/buffer_pconv[864] ), .CK(clk), .RB(n3756), .Q(
        \CHIPS[0].core/buffer_pconv[882] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[883]  ( .D(
        \CHIPS[0].core/buffer_pconv[865] ), .CK(clk), .RB(n3756), .Q(
        \CHIPS[0].core/buffer_pconv[883] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[884]  ( .D(
        \CHIPS[0].core/buffer_pconv[866] ), .CK(clk), .RB(n3756), .Q(
        \CHIPS[0].core/buffer_pconv[884] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[885]  ( .D(
        \CHIPS[0].core/buffer_pconv[867] ), .CK(clk), .RB(n3756), .Q(
        \CHIPS[0].core/buffer_pconv[885] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[886]  ( .D(
        \CHIPS[0].core/buffer_pconv[868] ), .CK(clk), .RB(n3756), .Q(
        \CHIPS[0].core/buffer_pconv[886] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[887]  ( .D(
        \CHIPS[0].core/buffer_pconv[869] ), .CK(clk), .RB(n3756), .Q(
        \CHIPS[0].core/buffer_pconv[887] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[888]  ( .D(
        \CHIPS[0].core/buffer_pconv[870] ), .CK(clk), .RB(n3755), .Q(
        \CHIPS[0].core/buffer_pconv[888] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[889]  ( .D(
        \CHIPS[0].core/buffer_pconv[871] ), .CK(clk), .RB(n3755), .Q(
        \CHIPS[0].core/buffer_pconv[889] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[890]  ( .D(
        \CHIPS[0].core/buffer_pconv[872] ), .CK(clk), .RB(n3755), .Q(
        \CHIPS[0].core/buffer_pconv[890] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[891]  ( .D(
        \CHIPS[0].core/buffer_pconv[873] ), .CK(clk), .RB(n3755), .Q(
        \CHIPS[0].core/buffer_pconv[891] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[892]  ( .D(
        \CHIPS[0].core/buffer_pconv[874] ), .CK(clk), .RB(n3755), .Q(
        \CHIPS[0].core/buffer_pconv[892] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[893]  ( .D(
        \CHIPS[0].core/buffer_pconv[875] ), .CK(clk), .RB(n3755), .Q(
        \CHIPS[0].core/buffer_pconv[893] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[894]  ( .D(
        \CHIPS[0].core/buffer_pconv[876] ), .CK(clk), .RB(n3754), .Q(
        \CHIPS[0].core/buffer_pconv[894] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[895]  ( .D(
        \CHIPS[0].core/buffer_pconv[877] ), .CK(clk), .RB(n3754), .Q(
        \CHIPS[0].core/buffer_pconv[895] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[896]  ( .D(
        \CHIPS[0].core/buffer_pconv[878] ), .CK(clk), .RB(n3754), .Q(
        \CHIPS[0].core/buffer_pconv[896] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[897]  ( .D(
        \CHIPS[0].core/buffer_pconv[879] ), .CK(clk), .RB(n3754), .Q(
        \CHIPS[0].core/buffer_pconv[897] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[898]  ( .D(
        \CHIPS[0].core/buffer_pconv[880] ), .CK(clk), .RB(n3754), .Q(
        \CHIPS[0].core/buffer_pconv[898] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[899]  ( .D(
        \CHIPS[0].core/buffer_pconv[881] ), .CK(clk), .RB(n3754), .Q(
        \CHIPS[0].core/buffer_pconv[899] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[900]  ( .D(
        \CHIPS[0].core/buffer_pconv[882] ), .CK(clk), .RB(n3753), .Q(
        \CHIPS[0].core/buffer_pconv[900] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[901]  ( .D(
        \CHIPS[0].core/buffer_pconv[883] ), .CK(clk), .RB(n3753), .Q(
        \CHIPS[0].core/buffer_pconv[901] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[902]  ( .D(
        \CHIPS[0].core/buffer_pconv[884] ), .CK(clk), .RB(n3753), .Q(
        \CHIPS[0].core/buffer_pconv[902] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[903]  ( .D(
        \CHIPS[0].core/buffer_pconv[885] ), .CK(clk), .RB(n3753), .Q(
        \CHIPS[0].core/buffer_pconv[903] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[904]  ( .D(
        \CHIPS[0].core/buffer_pconv[886] ), .CK(clk), .RB(n3753), .Q(
        \CHIPS[0].core/buffer_pconv[904] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[905]  ( .D(
        \CHIPS[0].core/buffer_pconv[887] ), .CK(clk), .RB(n3753), .Q(
        \CHIPS[0].core/buffer_pconv[905] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[906]  ( .D(
        \CHIPS[0].core/buffer_pconv[888] ), .CK(clk), .RB(n3752), .Q(
        \CHIPS[0].core/buffer_pconv[906] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[907]  ( .D(
        \CHIPS[0].core/buffer_pconv[889] ), .CK(clk), .RB(n3752), .Q(
        \CHIPS[0].core/buffer_pconv[907] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[908]  ( .D(
        \CHIPS[0].core/buffer_pconv[890] ), .CK(clk), .RB(n3752), .Q(
        \CHIPS[0].core/buffer_pconv[908] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[909]  ( .D(
        \CHIPS[0].core/buffer_pconv[891] ), .CK(clk), .RB(n3752), .Q(
        \CHIPS[0].core/buffer_pconv[909] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[910]  ( .D(
        \CHIPS[0].core/buffer_pconv[892] ), .CK(clk), .RB(n3752), .Q(
        \CHIPS[0].core/buffer_pconv[910] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[911]  ( .D(
        \CHIPS[0].core/buffer_pconv[893] ), .CK(clk), .RB(n3752), .Q(
        \CHIPS[0].core/buffer_pconv[911] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[912]  ( .D(
        \CHIPS[0].core/buffer_pconv[894] ), .CK(clk), .RB(n3751), .Q(
        \CHIPS[0].core/buffer_pconv[912] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[913]  ( .D(
        \CHIPS[0].core/buffer_pconv[895] ), .CK(clk), .RB(n3751), .Q(
        \CHIPS[0].core/buffer_pconv[913] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[914]  ( .D(
        \CHIPS[0].core/buffer_pconv[896] ), .CK(clk), .RB(n3751), .Q(
        \CHIPS[0].core/buffer_pconv[914] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[915]  ( .D(
        \CHIPS[0].core/buffer_pconv[897] ), .CK(clk), .RB(n3751), .Q(
        \CHIPS[0].core/buffer_pconv[915] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[916]  ( .D(
        \CHIPS[0].core/buffer_pconv[898] ), .CK(clk), .RB(n3751), .Q(
        \CHIPS[0].core/buffer_pconv[916] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[917]  ( .D(
        \CHIPS[0].core/buffer_pconv[899] ), .CK(clk), .RB(n3751), .Q(
        \CHIPS[0].core/buffer_pconv[917] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[918]  ( .D(
        \CHIPS[0].core/buffer_pconv[900] ), .CK(clk), .RB(n3750), .Q(
        \CHIPS[0].core/buffer_pconv[918] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[919]  ( .D(
        \CHIPS[0].core/buffer_pconv[901] ), .CK(clk), .RB(n3750), .Q(
        \CHIPS[0].core/buffer_pconv[919] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[920]  ( .D(
        \CHIPS[0].core/buffer_pconv[902] ), .CK(clk), .RB(n3750), .Q(
        \CHIPS[0].core/buffer_pconv[920] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[921]  ( .D(
        \CHIPS[0].core/buffer_pconv[903] ), .CK(clk), .RB(n3750), .Q(
        \CHIPS[0].core/buffer_pconv[921] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[922]  ( .D(
        \CHIPS[0].core/buffer_pconv[904] ), .CK(clk), .RB(n3761), .Q(
        \CHIPS[0].core/buffer_pconv[922] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[923]  ( .D(
        \CHIPS[0].core/buffer_pconv[905] ), .CK(clk), .RB(n3773), .Q(
        \CHIPS[0].core/buffer_pconv[923] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[924]  ( .D(
        \CHIPS[0].core/buffer_pconv[906] ), .CK(clk), .RB(n3545), .Q(
        \CHIPS[0].core/buffer_pconv[924] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[925]  ( .D(
        \CHIPS[0].core/buffer_pconv[907] ), .CK(clk), .RB(n3522), .Q(
        \CHIPS[0].core/buffer_pconv[925] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[926]  ( .D(
        \CHIPS[0].core/buffer_pconv[908] ), .CK(clk), .RB(n3522), .Q(
        \CHIPS[0].core/buffer_pconv[926] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[927]  ( .D(
        \CHIPS[0].core/buffer_pconv[909] ), .CK(clk), .RB(n3522), .Q(
        \CHIPS[0].core/buffer_pconv[927] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[928]  ( .D(
        \CHIPS[0].core/buffer_pconv[910] ), .CK(clk), .RB(n3522), .Q(
        \CHIPS[0].core/buffer_pconv[928] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[929]  ( .D(
        \CHIPS[0].core/buffer_pconv[911] ), .CK(clk), .RB(n3522), .Q(
        \CHIPS[0].core/buffer_pconv[929] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[930]  ( .D(
        \CHIPS[0].core/buffer_pconv[912] ), .CK(clk), .RB(n3522), .Q(
        \CHIPS[0].core/buffer_pconv[930] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[931]  ( .D(
        \CHIPS[0].core/buffer_pconv[913] ), .CK(clk), .RB(n3521), .Q(
        \CHIPS[0].core/buffer_pconv[931] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[932]  ( .D(
        \CHIPS[0].core/buffer_pconv[914] ), .CK(clk), .RB(n3521), .Q(
        \CHIPS[0].core/buffer_pconv[932] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[933]  ( .D(
        \CHIPS[0].core/buffer_pconv[915] ), .CK(clk), .RB(n3521), .Q(
        \CHIPS[0].core/buffer_pconv[933] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[934]  ( .D(
        \CHIPS[0].core/buffer_pconv[916] ), .CK(clk), .RB(n3521), .Q(
        \CHIPS[0].core/buffer_pconv[934] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[935]  ( .D(
        \CHIPS[0].core/buffer_pconv[917] ), .CK(clk), .RB(n3521), .Q(
        \CHIPS[0].core/buffer_pconv[935] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[936]  ( .D(
        \CHIPS[0].core/buffer_pconv[918] ), .CK(clk), .RB(n3521), .Q(
        \CHIPS[0].core/buffer_pconv[936] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[937]  ( .D(
        \CHIPS[0].core/buffer_pconv[919] ), .CK(clk), .RB(n3520), .Q(
        \CHIPS[0].core/buffer_pconv[937] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[938]  ( .D(
        \CHIPS[0].core/buffer_pconv[920] ), .CK(clk), .RB(n3520), .Q(
        \CHIPS[0].core/buffer_pconv[938] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[939]  ( .D(
        \CHIPS[0].core/buffer_pconv[921] ), .CK(clk), .RB(n3520), .Q(
        \CHIPS[0].core/buffer_pconv[939] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[940]  ( .D(
        \CHIPS[0].core/buffer_pconv[922] ), .CK(clk), .RB(n3520), .Q(
        \CHIPS[0].core/buffer_pconv[940] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[941]  ( .D(
        \CHIPS[0].core/buffer_pconv[923] ), .CK(clk), .RB(n3520), .Q(
        \CHIPS[0].core/buffer_pconv[941] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[942]  ( .D(
        \CHIPS[0].core/buffer_pconv[924] ), .CK(clk), .RB(n3520), .Q(
        \CHIPS[0].core/buffer_pconv[942] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[943]  ( .D(
        \CHIPS[0].core/buffer_pconv[925] ), .CK(clk), .RB(n3519), .Q(
        \CHIPS[0].core/buffer_pconv[943] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[944]  ( .D(
        \CHIPS[0].core/buffer_pconv[926] ), .CK(clk), .RB(n3519), .Q(
        \CHIPS[0].core/buffer_pconv[944] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[945]  ( .D(
        \CHIPS[0].core/buffer_pconv[927] ), .CK(clk), .RB(n3519), .Q(
        \CHIPS[0].core/buffer_pconv[945] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[946]  ( .D(
        \CHIPS[0].core/buffer_pconv[928] ), .CK(clk), .RB(n3519), .Q(
        \CHIPS[0].core/buffer_pconv[946] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[947]  ( .D(
        \CHIPS[0].core/buffer_pconv[929] ), .CK(clk), .RB(n3519), .Q(
        \CHIPS[0].core/buffer_pconv[947] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[948]  ( .D(
        \CHIPS[0].core/buffer_pconv[930] ), .CK(clk), .RB(n3519), .Q(
        \CHIPS[0].core/buffer_pconv[948] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[949]  ( .D(
        \CHIPS[0].core/buffer_pconv[931] ), .CK(clk), .RB(n3518), .Q(
        \CHIPS[0].core/buffer_pconv[949] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[950]  ( .D(
        \CHIPS[0].core/buffer_pconv[932] ), .CK(clk), .RB(n3518), .Q(
        \CHIPS[0].core/buffer_pconv[950] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[951]  ( .D(
        \CHIPS[0].core/buffer_pconv[933] ), .CK(clk), .RB(n3518), .Q(
        \CHIPS[0].core/buffer_pconv[951] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[952]  ( .D(
        \CHIPS[0].core/buffer_pconv[934] ), .CK(clk), .RB(n3518), .Q(
        \CHIPS[0].core/buffer_pconv[952] ) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[953]  ( .D(
        \CHIPS[0].core/buffer_pconv[935] ), .CK(clk), .RB(n3518), .Q(
        \CHIPS[0].core/buffer_pconv[953] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[0]  ( .D(\CHIPS[0].core/temp_conv[0] ), .CK(clk), .RB(n3518), .Q(\CHIPS[0].core/buffer_conv[0] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[1]  ( .D(\CHIPS[0].core/temp_conv[1] ), .CK(clk), .RB(n3517), .Q(\CHIPS[0].core/buffer_conv[1] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[2]  ( .D(\CHIPS[0].core/temp_conv[2] ), .CK(clk), .RB(n3517), .Q(\CHIPS[0].core/buffer_conv[2] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[3]  ( .D(\CHIPS[0].core/temp_conv[3] ), .CK(clk), .RB(n3517), .Q(\CHIPS[0].core/buffer_conv[3] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[4]  ( .D(\CHIPS[0].core/temp_conv[4] ), .CK(clk), .RB(n3517), .Q(\CHIPS[0].core/buffer_conv[4] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[5]  ( .D(\CHIPS[0].core/temp_conv[5] ), .CK(clk), .RB(n3517), .Q(\CHIPS[0].core/buffer_conv[5] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[6]  ( .D(\CHIPS[0].core/temp_conv[6] ), .CK(clk), .RB(n3517), .Q(\CHIPS[0].core/buffer_conv[6] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[7]  ( .D(\CHIPS[0].core/temp_conv[7] ), .CK(clk), .RB(n3516), .Q(\CHIPS[0].core/buffer_conv[7] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[8]  ( .D(\CHIPS[0].core/temp_conv[8] ), .CK(clk), .RB(n3516), .Q(\CHIPS[0].core/buffer_conv[8] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[9]  ( .D(\CHIPS[0].core/temp_conv[9] ), .CK(clk), .RB(n3516), .Q(\CHIPS[0].core/buffer_conv[9] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[10]  ( .D(
        \CHIPS[0].core/temp_conv[10] ), .CK(clk), .RB(n3516), .Q(
        \CHIPS[0].core/buffer_conv[10] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[11]  ( .D(n227), .CK(clk), .RB(n3516), 
        .Q(\CHIPS[0].core/buffer_conv[11] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[12]  ( .D(
        \CHIPS[0].core/temp_conv[12] ), .CK(clk), .RB(n3516), .Q(
        \CHIPS[0].core/buffer_conv[12] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[13]  ( .D(n228), .CK(clk), .RB(n3515), 
        .Q(\CHIPS[0].core/buffer_conv[13] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[14]  ( .D(n224), .CK(clk), .RB(n3515), 
        .Q(\CHIPS[0].core/buffer_conv[14] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[15]  ( .D(
        \CHIPS[0].core/temp_conv[15] ), .CK(clk), .RB(n3515), .Q(
        \CHIPS[0].core/buffer_conv[15] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[16]  ( .D(
        \CHIPS[0].core/temp_conv[16] ), .CK(clk), .RB(n3515), .Q(
        \CHIPS[0].core/buffer_conv[16] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[17]  ( .D(
        \CHIPS[0].core/temp_conv[17] ), .CK(clk), .RB(n3515), .Q(
        \CHIPS[0].core/buffer_conv[17] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[18]  ( .D(
        \CHIPS[0].core/temp_conv[18] ), .CK(clk), .RB(n3515), .Q(
        \CHIPS[0].core/buffer_conv[18] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[21]  ( .D(
        \CHIPS[0].core/buffer_conv[0] ), .CK(clk), .RB(n3514), .Q(
        \CHIPS[0].core/buffer_conv[21] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[22]  ( .D(
        \CHIPS[0].core/buffer_conv[1] ), .CK(clk), .RB(n3514), .Q(
        \CHIPS[0].core/buffer_conv[22] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[23]  ( .D(
        \CHIPS[0].core/buffer_conv[2] ), .CK(clk), .RB(n3514), .Q(
        \CHIPS[0].core/buffer_conv[23] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[25]  ( .D(
        \CHIPS[0].core/buffer_conv[4] ), .CK(clk), .RB(n3514), .Q(
        \CHIPS[0].core/buffer_conv[25] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[26]  ( .D(
        \CHIPS[0].core/buffer_conv[5] ), .CK(clk), .RB(n3514), .Q(
        \CHIPS[0].core/buffer_conv[26] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[27]  ( .D(
        \CHIPS[0].core/buffer_conv[6] ), .CK(clk), .RB(n3513), .Q(
        \CHIPS[0].core/buffer_conv[27] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[28]  ( .D(
        \CHIPS[0].core/buffer_conv[7] ), .CK(clk), .RB(n3513), .Q(
        \CHIPS[0].core/buffer_conv[28] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[30]  ( .D(
        \CHIPS[0].core/buffer_conv[9] ), .CK(clk), .RB(n3513), .Q(
        \CHIPS[0].core/buffer_conv[30] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[31]  ( .D(
        \CHIPS[0].core/buffer_conv[10] ), .CK(clk), .RB(n3513), .Q(
        \CHIPS[0].core/buffer_conv[31] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[32]  ( .D(
        \CHIPS[0].core/buffer_conv[11] ), .CK(clk), .RB(n3513), .Q(
        \CHIPS[0].core/buffer_conv[32] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[33]  ( .D(
        \CHIPS[0].core/buffer_conv[12] ), .CK(clk), .RB(n3512), .Q(
        \CHIPS[0].core/buffer_conv[33] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[34]  ( .D(
        \CHIPS[0].core/buffer_conv[13] ), .CK(clk), .RB(n3512), .Q(
        \CHIPS[0].core/buffer_conv[34] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[35]  ( .D(
        \CHIPS[0].core/buffer_conv[14] ), .CK(clk), .RB(n3512), .Q(
        \CHIPS[0].core/buffer_conv[35] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[36]  ( .D(
        \CHIPS[0].core/buffer_conv[15] ), .CK(clk), .RB(n3512), .Q(
        \CHIPS[0].core/buffer_conv[36] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[37]  ( .D(
        \CHIPS[0].core/buffer_conv[16] ), .CK(clk), .RB(n3512), .Q(
        \CHIPS[0].core/buffer_conv[37] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[38]  ( .D(
        \CHIPS[0].core/buffer_conv[17] ), .CK(clk), .RB(n3512), .Q(
        \CHIPS[0].core/buffer_conv[38] ) );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[39]  ( .D(
        \CHIPS[0].core/buffer_conv[18] ), .CK(clk), .RB(n3826), .Q(
        \CHIPS[0].core/buffer_conv[39] ) );
  QDFFRBN \CHIPS[0].core/buffer_ppool_reg[8]  ( .D(
        \CHIPS[0].core/temp_ppool[8] ), .CK(clk), .RB(n3511), .Q(
        \CHIPS[0].core/buffer_ppool_8 ) );
  QDFFRBN \CHIPS[0].core/buffer_ppool_reg[9]  ( .D(
        \CHIPS[0].core/temp_ppool[9] ), .CK(clk), .RB(n3511), .Q(
        \CHIPS[0].core/buffer_ppool_9 ) );
  QDFFRBN \CHIPS[0].core/buffer_ppool_reg[10]  ( .D(
        \CHIPS[0].core/temp_ppool[10] ), .CK(clk), .RB(n3510), .Q(
        \CHIPS[0].core/buffer_ppool_10 ) );
  QDFFRBN \CHIPS[0].core/buffer_ppool_reg[11]  ( .D(
        \CHIPS[0].core/temp_ppool[11] ), .CK(clk), .RB(n3510), .Q(
        \CHIPS[0].core/buffer_ppool_11 ) );
  QDFFRBN \CHIPS[0].core/buffer_ppool_reg[12]  ( .D(
        \CHIPS[0].core/temp_ppool[12] ), .CK(clk), .RB(n3510), .Q(
        \CHIPS[0].core/buffer_ppool_12 ) );
  QDFFRBN \CHIPS[0].core/buffer_ppool_reg[13]  ( .D(
        \CHIPS[0].core/temp_ppool[13] ), .CK(clk), .RB(n3510), .Q(
        \CHIPS[0].core/buffer_ppool_13 ) );
  QDFFRBN \CHIPS[0].core/buffer_ppool_reg[14]  ( .D(
        \CHIPS[0].core/temp_ppool[14] ), .CK(clk), .RB(n3510), .Q(
        \CHIPS[0].core/buffer_ppool_14 ) );
  QDFFRBN \CHIPS[0].core/buffer_ppool_reg[15]  ( .D(
        \CHIPS[0].core/temp_ppool[15] ), .CK(clk), .RB(n3510), .Q(
        \CHIPS[0].core/buffer_ppool_15 ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[1]  ( .D(
        \CHIPS[1].core/temp_pconv[1] ), .CK(clk), .RB(n3829), .Q(
        \CHIPS[1].core/buffer_pconv[1] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[3]  ( .D(
        \CHIPS[1].core/temp_pconv[3] ), .CK(clk), .RB(n3509), .Q(
        \CHIPS[1].core/buffer_pconv[3] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[20]  ( .D(
        \CHIPS[1].core/buffer_pconv[2] ), .CK(clk), .RB(n3507), .Q(
        \CHIPS[1].core/buffer_pconv[20] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[21]  ( .D(
        \CHIPS[1].core/buffer_pconv[3] ), .CK(clk), .RB(n3507), .Q(
        \CHIPS[1].core/buffer_pconv[21] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[22]  ( .D(
        \CHIPS[1].core/buffer_pconv[4] ), .CK(clk), .RB(n3507), .Q(
        \CHIPS[1].core/buffer_pconv[22] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[23]  ( .D(
        \CHIPS[1].core/buffer_pconv[5] ), .CK(clk), .RB(n3507), .Q(
        \CHIPS[1].core/buffer_pconv[23] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[24]  ( .D(
        \CHIPS[1].core/buffer_pconv[6] ), .CK(clk), .RB(n3506), .Q(
        \CHIPS[1].core/buffer_pconv[24] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[25]  ( .D(
        \CHIPS[1].core/buffer_pconv[7] ), .CK(clk), .RB(n3506), .Q(
        \CHIPS[1].core/buffer_pconv[25] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[26]  ( .D(
        \CHIPS[1].core/buffer_pconv[8] ), .CK(clk), .RB(n3506), .Q(
        \CHIPS[1].core/buffer_pconv[26] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[27]  ( .D(
        \CHIPS[1].core/buffer_pconv[9] ), .CK(clk), .RB(n3506), .Q(
        \CHIPS[1].core/buffer_pconv[27] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[28]  ( .D(
        \CHIPS[1].core/buffer_pconv[10] ), .CK(clk), .RB(n3506), .Q(
        \CHIPS[1].core/buffer_pconv[28] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[29]  ( .D(
        \CHIPS[1].core/buffer_pconv[11] ), .CK(clk), .RB(n3506), .Q(
        \CHIPS[1].core/buffer_pconv[29] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[30]  ( .D(
        \CHIPS[1].core/buffer_pconv[12] ), .CK(clk), .RB(n3505), .Q(
        \CHIPS[1].core/buffer_pconv[30] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[31]  ( .D(
        \CHIPS[1].core/buffer_pconv[13] ), .CK(clk), .RB(n3505), .Q(
        \CHIPS[1].core/buffer_pconv[31] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[32]  ( .D(
        \CHIPS[1].core/buffer_pconv[14] ), .CK(clk), .RB(n3505), .Q(
        \CHIPS[1].core/buffer_pconv[32] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[33]  ( .D(
        \CHIPS[1].core/buffer_pconv[15] ), .CK(clk), .RB(n3505), .Q(
        \CHIPS[1].core/buffer_pconv[33] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[34]  ( .D(n636), .CK(clk), .RB(n3505), .Q(\CHIPS[1].core/buffer_pconv[34] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[36]  ( .D(
        \CHIPS[1].core/buffer_pconv[18] ), .CK(clk), .RB(n3504), .Q(
        \CHIPS[1].core/buffer_pconv[36] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[37]  ( .D(
        \CHIPS[1].core/buffer_pconv[19] ), .CK(clk), .RB(n3504), .Q(
        \CHIPS[1].core/buffer_pconv[37] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[38]  ( .D(
        \CHIPS[1].core/buffer_pconv[20] ), .CK(clk), .RB(n3504), .Q(
        \CHIPS[1].core/buffer_pconv[38] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[39]  ( .D(
        \CHIPS[1].core/buffer_pconv[21] ), .CK(clk), .RB(n3504), .Q(
        \CHIPS[1].core/buffer_pconv[39] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[40]  ( .D(
        \CHIPS[1].core/buffer_pconv[22] ), .CK(clk), .RB(n3504), .Q(
        \CHIPS[1].core/buffer_pconv[40] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[41]  ( .D(
        \CHIPS[1].core/buffer_pconv[23] ), .CK(clk), .RB(n3504), .Q(
        \CHIPS[1].core/buffer_pconv[41] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[42]  ( .D(
        \CHIPS[1].core/buffer_pconv[24] ), .CK(clk), .RB(n3503), .Q(
        \CHIPS[1].core/buffer_pconv[42] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[43]  ( .D(
        \CHIPS[1].core/buffer_pconv[25] ), .CK(clk), .RB(n3503), .Q(
        \CHIPS[1].core/buffer_pconv[43] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[44]  ( .D(
        \CHIPS[1].core/buffer_pconv[26] ), .CK(clk), .RB(n3503), .Q(
        \CHIPS[1].core/buffer_pconv[44] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[45]  ( .D(
        \CHIPS[1].core/buffer_pconv[27] ), .CK(clk), .RB(n3503), .Q(
        \CHIPS[1].core/buffer_pconv[45] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[46]  ( .D(
        \CHIPS[1].core/buffer_pconv[28] ), .CK(clk), .RB(n3503), .Q(
        \CHIPS[1].core/buffer_pconv[46] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[47]  ( .D(
        \CHIPS[1].core/buffer_pconv[29] ), .CK(clk), .RB(n3503), .Q(
        \CHIPS[1].core/buffer_pconv[47] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[48]  ( .D(
        \CHIPS[1].core/buffer_pconv[30] ), .CK(clk), .RB(n3502), .Q(
        \CHIPS[1].core/buffer_pconv[48] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[49]  ( .D(
        \CHIPS[1].core/buffer_pconv[31] ), .CK(clk), .RB(n3502), .Q(
        \CHIPS[1].core/buffer_pconv[49] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[50]  ( .D(
        \CHIPS[1].core/buffer_pconv[32] ), .CK(clk), .RB(n3502), .Q(
        \CHIPS[1].core/buffer_pconv[50] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[51]  ( .D(
        \CHIPS[1].core/buffer_pconv[33] ), .CK(clk), .RB(n3502), .Q(
        \CHIPS[1].core/buffer_pconv[51] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[52]  ( .D(
        \CHIPS[1].core/buffer_pconv[34] ), .CK(clk), .RB(n3502), .Q(
        \CHIPS[1].core/buffer_pconv[52] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[54]  ( .D(
        \CHIPS[1].core/buffer_pconv[36] ), .CK(clk), .RB(n3545), .Q(
        \CHIPS[1].core/buffer_pconv[54] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[55]  ( .D(
        \CHIPS[1].core/buffer_pconv[37] ), .CK(clk), .RB(n3545), .Q(
        \CHIPS[1].core/buffer_pconv[55] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[56]  ( .D(
        \CHIPS[1].core/buffer_pconv[38] ), .CK(clk), .RB(n3545), .Q(
        \CHIPS[1].core/buffer_pconv[56] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[57]  ( .D(
        \CHIPS[1].core/buffer_pconv[39] ), .CK(clk), .RB(n3545), .Q(
        \CHIPS[1].core/buffer_pconv[57] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[58]  ( .D(
        \CHIPS[1].core/buffer_pconv[40] ), .CK(clk), .RB(n3544), .Q(
        \CHIPS[1].core/buffer_pconv[58] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[59]  ( .D(
        \CHIPS[1].core/buffer_pconv[41] ), .CK(clk), .RB(n3544), .Q(
        \CHIPS[1].core/buffer_pconv[59] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[60]  ( .D(
        \CHIPS[1].core/buffer_pconv[42] ), .CK(clk), .RB(n3544), .Q(
        \CHIPS[1].core/buffer_pconv[60] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[61]  ( .D(
        \CHIPS[1].core/buffer_pconv[43] ), .CK(clk), .RB(n3544), .Q(
        \CHIPS[1].core/buffer_pconv[61] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[62]  ( .D(
        \CHIPS[1].core/buffer_pconv[44] ), .CK(clk), .RB(n3544), .Q(
        \CHIPS[1].core/buffer_pconv[62] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[63]  ( .D(
        \CHIPS[1].core/buffer_pconv[45] ), .CK(clk), .RB(n3544), .Q(
        \CHIPS[1].core/buffer_pconv[63] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[64]  ( .D(
        \CHIPS[1].core/buffer_pconv[46] ), .CK(clk), .RB(n3543), .Q(
        \CHIPS[1].core/buffer_pconv[64] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[65]  ( .D(
        \CHIPS[1].core/buffer_pconv[47] ), .CK(clk), .RB(n3543), .Q(
        \CHIPS[1].core/buffer_pconv[65] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[66]  ( .D(
        \CHIPS[1].core/buffer_pconv[48] ), .CK(clk), .RB(n3543), .Q(
        \CHIPS[1].core/buffer_pconv[66] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[67]  ( .D(
        \CHIPS[1].core/buffer_pconv[49] ), .CK(clk), .RB(n3543), .Q(
        \CHIPS[1].core/buffer_pconv[67] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[68]  ( .D(
        \CHIPS[1].core/buffer_pconv[50] ), .CK(clk), .RB(n3543), .Q(
        \CHIPS[1].core/buffer_pconv[68] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[69]  ( .D(
        \CHIPS[1].core/buffer_pconv[51] ), .CK(clk), .RB(n3543), .Q(
        \CHIPS[1].core/buffer_pconv[69] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[70]  ( .D(
        \CHIPS[1].core/buffer_pconv[52] ), .CK(clk), .RB(n3542), .Q(
        \CHIPS[1].core/buffer_pconv[70] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[72]  ( .D(
        \CHIPS[1].core/buffer_pconv[54] ), .CK(clk), .RB(n3542), .Q(
        \CHIPS[1].core/buffer_pconv[72] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[73]  ( .D(
        \CHIPS[1].core/buffer_pconv[55] ), .CK(clk), .RB(n3542), .Q(
        \CHIPS[1].core/buffer_pconv[73] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[74]  ( .D(
        \CHIPS[1].core/buffer_pconv[56] ), .CK(clk), .RB(n3542), .Q(
        \CHIPS[1].core/buffer_pconv[74] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[75]  ( .D(
        \CHIPS[1].core/buffer_pconv[57] ), .CK(clk), .RB(n3542), .Q(
        \CHIPS[1].core/buffer_pconv[75] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[76]  ( .D(
        \CHIPS[1].core/buffer_pconv[58] ), .CK(clk), .RB(n3541), .Q(
        \CHIPS[1].core/buffer_pconv[76] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[77]  ( .D(
        \CHIPS[1].core/buffer_pconv[59] ), .CK(clk), .RB(n3541), .Q(
        \CHIPS[1].core/buffer_pconv[77] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[78]  ( .D(
        \CHIPS[1].core/buffer_pconv[60] ), .CK(clk), .RB(n3541), .Q(
        \CHIPS[1].core/buffer_pconv[78] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[79]  ( .D(
        \CHIPS[1].core/buffer_pconv[61] ), .CK(clk), .RB(n3541), .Q(
        \CHIPS[1].core/buffer_pconv[79] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[80]  ( .D(
        \CHIPS[1].core/buffer_pconv[62] ), .CK(clk), .RB(n3541), .Q(
        \CHIPS[1].core/buffer_pconv[80] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[81]  ( .D(
        \CHIPS[1].core/buffer_pconv[63] ), .CK(clk), .RB(n3541), .Q(
        \CHIPS[1].core/buffer_pconv[81] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[82]  ( .D(
        \CHIPS[1].core/buffer_pconv[64] ), .CK(clk), .RB(n3540), .Q(
        \CHIPS[1].core/buffer_pconv[82] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[83]  ( .D(
        \CHIPS[1].core/buffer_pconv[65] ), .CK(clk), .RB(n3540), .Q(
        \CHIPS[1].core/buffer_pconv[83] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[84]  ( .D(
        \CHIPS[1].core/buffer_pconv[66] ), .CK(clk), .RB(n3540), .Q(
        \CHIPS[1].core/buffer_pconv[84] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[85]  ( .D(
        \CHIPS[1].core/buffer_pconv[67] ), .CK(clk), .RB(n3540), .Q(
        \CHIPS[1].core/buffer_pconv[85] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[86]  ( .D(
        \CHIPS[1].core/buffer_pconv[68] ), .CK(clk), .RB(n3540), .Q(
        \CHIPS[1].core/buffer_pconv[86] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[87]  ( .D(
        \CHIPS[1].core/buffer_pconv[69] ), .CK(clk), .RB(n3540), .Q(
        \CHIPS[1].core/buffer_pconv[87] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[88]  ( .D(
        \CHIPS[1].core/buffer_pconv[70] ), .CK(clk), .RB(n3539), .Q(
        \CHIPS[1].core/buffer_pconv[88] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[89]  ( .D(
        \CHIPS[1].core/buffer_pconv[70] ), .CK(clk), .RB(n3539), .Q(
        \CHIPS[1].core/buffer_pconv[89] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[90]  ( .D(
        \CHIPS[1].core/buffer_pconv[72] ), .CK(clk), .RB(n3539), .Q(
        \CHIPS[1].core/buffer_pconv[90] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[91]  ( .D(
        \CHIPS[1].core/buffer_pconv[73] ), .CK(clk), .RB(n3539), .Q(
        \CHIPS[1].core/buffer_pconv[91] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[92]  ( .D(
        \CHIPS[1].core/buffer_pconv[74] ), .CK(clk), .RB(n3539), .Q(
        \CHIPS[1].core/buffer_pconv[92] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[93]  ( .D(
        \CHIPS[1].core/buffer_pconv[75] ), .CK(clk), .RB(n3539), .Q(
        \CHIPS[1].core/buffer_pconv[93] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[94]  ( .D(
        \CHIPS[1].core/buffer_pconv[76] ), .CK(clk), .RB(n3538), .Q(
        \CHIPS[1].core/buffer_pconv[94] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[95]  ( .D(
        \CHIPS[1].core/buffer_pconv[77] ), .CK(clk), .RB(n3538), .Q(
        \CHIPS[1].core/buffer_pconv[95] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[96]  ( .D(
        \CHIPS[1].core/buffer_pconv[78] ), .CK(clk), .RB(n3538), .Q(
        \CHIPS[1].core/buffer_pconv[96] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[97]  ( .D(
        \CHIPS[1].core/buffer_pconv[79] ), .CK(clk), .RB(n3538), .Q(
        \CHIPS[1].core/buffer_pconv[97] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[98]  ( .D(
        \CHIPS[1].core/buffer_pconv[80] ), .CK(clk), .RB(n3538), .Q(
        \CHIPS[1].core/buffer_pconv[98] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[99]  ( .D(
        \CHIPS[1].core/buffer_pconv[81] ), .CK(clk), .RB(n3538), .Q(
        \CHIPS[1].core/buffer_pconv[99] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[100]  ( .D(
        \CHIPS[1].core/buffer_pconv[82] ), .CK(clk), .RB(n3537), .Q(
        \CHIPS[1].core/buffer_pconv[100] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[101]  ( .D(
        \CHIPS[1].core/buffer_pconv[83] ), .CK(clk), .RB(n3537), .Q(
        \CHIPS[1].core/buffer_pconv[101] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[102]  ( .D(
        \CHIPS[1].core/buffer_pconv[84] ), .CK(clk), .RB(n3537), .Q(
        \CHIPS[1].core/buffer_pconv[102] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[103]  ( .D(
        \CHIPS[1].core/buffer_pconv[85] ), .CK(clk), .RB(n3537), .Q(
        \CHIPS[1].core/buffer_pconv[103] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[104]  ( .D(
        \CHIPS[1].core/buffer_pconv[86] ), .CK(clk), .RB(n3537), .Q(
        \CHIPS[1].core/buffer_pconv[104] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[105]  ( .D(
        \CHIPS[1].core/buffer_pconv[87] ), .CK(clk), .RB(n3537), .Q(
        \CHIPS[1].core/buffer_pconv[105] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[106]  ( .D(
        \CHIPS[1].core/buffer_pconv[88] ), .CK(clk), .RB(n3536), .Q(
        \CHIPS[1].core/buffer_pconv[106] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[107]  ( .D(
        \CHIPS[1].core/buffer_pconv[89] ), .CK(clk), .RB(n3536), .Q(
        \CHIPS[1].core/buffer_pconv[107] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[108]  ( .D(
        \CHIPS[1].core/buffer_pconv[90] ), .CK(clk), .RB(n3536), .Q(
        \CHIPS[1].core/buffer_pconv[108] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[109]  ( .D(
        \CHIPS[1].core/buffer_pconv[91] ), .CK(clk), .RB(n3536), .Q(
        \CHIPS[1].core/buffer_pconv[109] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[110]  ( .D(
        \CHIPS[1].core/buffer_pconv[92] ), .CK(clk), .RB(n3536), .Q(
        \CHIPS[1].core/buffer_pconv[110] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[111]  ( .D(
        \CHIPS[1].core/buffer_pconv[93] ), .CK(clk), .RB(n3536), .Q(
        \CHIPS[1].core/buffer_pconv[111] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[112]  ( .D(
        \CHIPS[1].core/buffer_pconv[94] ), .CK(clk), .RB(n3535), .Q(
        \CHIPS[1].core/buffer_pconv[112] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[113]  ( .D(
        \CHIPS[1].core/buffer_pconv[95] ), .CK(clk), .RB(n3535), .Q(
        \CHIPS[1].core/buffer_pconv[113] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[114]  ( .D(
        \CHIPS[1].core/buffer_pconv[96] ), .CK(clk), .RB(n3535), .Q(
        \CHIPS[1].core/buffer_pconv[114] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[115]  ( .D(
        \CHIPS[1].core/buffer_pconv[97] ), .CK(clk), .RB(n3535), .Q(
        \CHIPS[1].core/buffer_pconv[115] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[116]  ( .D(
        \CHIPS[1].core/buffer_pconv[98] ), .CK(clk), .RB(n3535), .Q(
        \CHIPS[1].core/buffer_pconv[116] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[117]  ( .D(
        \CHIPS[1].core/buffer_pconv[99] ), .CK(clk), .RB(n3535), .Q(
        \CHIPS[1].core/buffer_pconv[117] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[118]  ( .D(
        \CHIPS[1].core/buffer_pconv[100] ), .CK(clk), .RB(n3534), .Q(
        \CHIPS[1].core/buffer_pconv[118] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[119]  ( .D(
        \CHIPS[1].core/buffer_pconv[101] ), .CK(clk), .RB(n3534), .Q(
        \CHIPS[1].core/buffer_pconv[119] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[120]  ( .D(
        \CHIPS[1].core/buffer_pconv[102] ), .CK(clk), .RB(n3534), .Q(
        \CHIPS[1].core/buffer_pconv[120] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[121]  ( .D(
        \CHIPS[1].core/buffer_pconv[103] ), .CK(clk), .RB(n3534), .Q(
        \CHIPS[1].core/buffer_pconv[121] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[122]  ( .D(
        \CHIPS[1].core/buffer_pconv[104] ), .CK(clk), .RB(n3534), .Q(
        \CHIPS[1].core/buffer_pconv[122] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[123]  ( .D(
        \CHIPS[1].core/buffer_pconv[105] ), .CK(clk), .RB(n3533), .Q(
        \CHIPS[1].core/buffer_pconv[123] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[124]  ( .D(
        \CHIPS[1].core/buffer_pconv[106] ), .CK(clk), .RB(n3533), .Q(
        \CHIPS[1].core/buffer_pconv[124] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[125]  ( .D(
        \CHIPS[1].core/buffer_pconv[107] ), .CK(clk), .RB(n3533), .Q(
        \CHIPS[1].core/buffer_pconv[125] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[126]  ( .D(
        \CHIPS[1].core/buffer_pconv[108] ), .CK(clk), .RB(n3533), .Q(
        \CHIPS[1].core/buffer_pconv[126] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[127]  ( .D(
        \CHIPS[1].core/buffer_pconv[109] ), .CK(clk), .RB(n3533), .Q(
        \CHIPS[1].core/buffer_pconv[127] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[128]  ( .D(
        \CHIPS[1].core/buffer_pconv[110] ), .CK(clk), .RB(n3533), .Q(
        \CHIPS[1].core/buffer_pconv[128] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[129]  ( .D(
        \CHIPS[1].core/buffer_pconv[111] ), .CK(clk), .RB(n3532), .Q(
        \CHIPS[1].core/buffer_pconv[129] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[130]  ( .D(
        \CHIPS[1].core/buffer_pconv[112] ), .CK(clk), .RB(n3532), .Q(
        \CHIPS[1].core/buffer_pconv[130] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[131]  ( .D(
        \CHIPS[1].core/buffer_pconv[113] ), .CK(clk), .RB(n3532), .Q(
        \CHIPS[1].core/buffer_pconv[131] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[132]  ( .D(
        \CHIPS[1].core/buffer_pconv[114] ), .CK(clk), .RB(n3532), .Q(
        \CHIPS[1].core/buffer_pconv[132] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[133]  ( .D(
        \CHIPS[1].core/buffer_pconv[115] ), .CK(clk), .RB(n3532), .Q(
        \CHIPS[1].core/buffer_pconv[133] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[134]  ( .D(
        \CHIPS[1].core/buffer_pconv[116] ), .CK(clk), .RB(n3532), .Q(
        \CHIPS[1].core/buffer_pconv[134] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[135]  ( .D(
        \CHIPS[1].core/buffer_pconv[117] ), .CK(clk), .RB(n3531), .Q(
        \CHIPS[1].core/buffer_pconv[135] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[136]  ( .D(
        \CHIPS[1].core/buffer_pconv[118] ), .CK(clk), .RB(n3531), .Q(
        \CHIPS[1].core/buffer_pconv[136] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[137]  ( .D(
        \CHIPS[1].core/buffer_pconv[119] ), .CK(clk), .RB(n3531), .Q(
        \CHIPS[1].core/buffer_pconv[137] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[138]  ( .D(
        \CHIPS[1].core/buffer_pconv[120] ), .CK(clk), .RB(n3531), .Q(
        \CHIPS[1].core/buffer_pconv[138] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[139]  ( .D(
        \CHIPS[1].core/buffer_pconv[121] ), .CK(clk), .RB(n3531), .Q(
        \CHIPS[1].core/buffer_pconv[139] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[140]  ( .D(
        \CHIPS[1].core/buffer_pconv[122] ), .CK(clk), .RB(n3531), .Q(
        \CHIPS[1].core/buffer_pconv[140] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[141]  ( .D(
        \CHIPS[1].core/buffer_pconv[123] ), .CK(clk), .RB(n3530), .Q(
        \CHIPS[1].core/buffer_pconv[141] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[142]  ( .D(
        \CHIPS[1].core/buffer_pconv[124] ), .CK(clk), .RB(n3530), .Q(
        \CHIPS[1].core/buffer_pconv[142] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[143]  ( .D(
        \CHIPS[1].core/buffer_pconv[125] ), .CK(clk), .RB(n3530), .Q(
        \CHIPS[1].core/buffer_pconv[143] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[144]  ( .D(
        \CHIPS[1].core/buffer_pconv[126] ), .CK(clk), .RB(n3530), .Q(
        \CHIPS[1].core/buffer_pconv[144] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[145]  ( .D(
        \CHIPS[1].core/buffer_pconv[127] ), .CK(clk), .RB(n3530), .Q(
        \CHIPS[1].core/buffer_pconv[145] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[146]  ( .D(
        \CHIPS[1].core/buffer_pconv[128] ), .CK(clk), .RB(n3530), .Q(
        \CHIPS[1].core/buffer_pconv[146] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[147]  ( .D(
        \CHIPS[1].core/buffer_pconv[129] ), .CK(clk), .RB(n3529), .Q(
        \CHIPS[1].core/buffer_pconv[147] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[148]  ( .D(
        \CHIPS[1].core/buffer_pconv[130] ), .CK(clk), .RB(n3529), .Q(
        \CHIPS[1].core/buffer_pconv[148] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[149]  ( .D(
        \CHIPS[1].core/buffer_pconv[131] ), .CK(clk), .RB(n3529), .Q(
        \CHIPS[1].core/buffer_pconv[149] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[150]  ( .D(
        \CHIPS[1].core/buffer_pconv[132] ), .CK(clk), .RB(n3529), .Q(
        \CHIPS[1].core/buffer_pconv[150] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[151]  ( .D(
        \CHIPS[1].core/buffer_pconv[133] ), .CK(clk), .RB(n3529), .Q(
        \CHIPS[1].core/buffer_pconv[151] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[152]  ( .D(
        \CHIPS[1].core/buffer_pconv[134] ), .CK(clk), .RB(n3529), .Q(
        \CHIPS[1].core/buffer_pconv[152] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[153]  ( .D(
        \CHIPS[1].core/buffer_pconv[135] ), .CK(clk), .RB(n3528), .Q(
        \CHIPS[1].core/buffer_pconv[153] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[154]  ( .D(
        \CHIPS[1].core/buffer_pconv[136] ), .CK(clk), .RB(n3528), .Q(
        \CHIPS[1].core/buffer_pconv[154] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[155]  ( .D(
        \CHIPS[1].core/buffer_pconv[137] ), .CK(clk), .RB(n3528), .Q(
        \CHIPS[1].core/buffer_pconv[155] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[156]  ( .D(
        \CHIPS[1].core/buffer_pconv[138] ), .CK(clk), .RB(n3528), .Q(
        \CHIPS[1].core/buffer_pconv[156] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[157]  ( .D(
        \CHIPS[1].core/buffer_pconv[139] ), .CK(clk), .RB(n3528), .Q(
        \CHIPS[1].core/buffer_pconv[157] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[158]  ( .D(
        \CHIPS[1].core/buffer_pconv[140] ), .CK(clk), .RB(n3528), .Q(
        \CHIPS[1].core/buffer_pconv[158] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[159]  ( .D(
        \CHIPS[1].core/buffer_pconv[141] ), .CK(clk), .RB(n3527), .Q(
        \CHIPS[1].core/buffer_pconv[159] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[160]  ( .D(
        \CHIPS[1].core/buffer_pconv[142] ), .CK(clk), .RB(n3527), .Q(
        \CHIPS[1].core/buffer_pconv[160] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[161]  ( .D(
        \CHIPS[1].core/buffer_pconv[143] ), .CK(clk), .RB(n3527), .Q(
        \CHIPS[1].core/buffer_pconv[161] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[162]  ( .D(
        \CHIPS[1].core/buffer_pconv[144] ), .CK(clk), .RB(n3527), .Q(
        \CHIPS[1].core/buffer_pconv[162] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[163]  ( .D(
        \CHIPS[1].core/buffer_pconv[145] ), .CK(clk), .RB(n3527), .Q(
        \CHIPS[1].core/buffer_pconv[163] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[164]  ( .D(
        \CHIPS[1].core/buffer_pconv[146] ), .CK(clk), .RB(n3527), .Q(
        \CHIPS[1].core/buffer_pconv[164] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[165]  ( .D(
        \CHIPS[1].core/buffer_pconv[147] ), .CK(clk), .RB(n3526), .Q(
        \CHIPS[1].core/buffer_pconv[165] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[166]  ( .D(
        \CHIPS[1].core/buffer_pconv[148] ), .CK(clk), .RB(n3526), .Q(
        \CHIPS[1].core/buffer_pconv[166] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[167]  ( .D(
        \CHIPS[1].core/buffer_pconv[149] ), .CK(clk), .RB(n3526), .Q(
        \CHIPS[1].core/buffer_pconv[167] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[168]  ( .D(
        \CHIPS[1].core/buffer_pconv[150] ), .CK(clk), .RB(n3526), .Q(
        \CHIPS[1].core/buffer_pconv[168] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[169]  ( .D(
        \CHIPS[1].core/buffer_pconv[151] ), .CK(clk), .RB(n3526), .Q(
        \CHIPS[1].core/buffer_pconv[169] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[170]  ( .D(
        \CHIPS[1].core/buffer_pconv[152] ), .CK(clk), .RB(n3526), .Q(
        \CHIPS[1].core/buffer_pconv[170] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[171]  ( .D(
        \CHIPS[1].core/buffer_pconv[153] ), .CK(clk), .RB(n3525), .Q(
        \CHIPS[1].core/buffer_pconv[171] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[172]  ( .D(
        \CHIPS[1].core/buffer_pconv[154] ), .CK(clk), .RB(n3525), .Q(
        \CHIPS[1].core/buffer_pconv[172] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[173]  ( .D(
        \CHIPS[1].core/buffer_pconv[155] ), .CK(clk), .RB(n3525), .Q(
        \CHIPS[1].core/buffer_pconv[173] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[174]  ( .D(
        \CHIPS[1].core/buffer_pconv[156] ), .CK(clk), .RB(n3525), .Q(
        \CHIPS[1].core/buffer_pconv[174] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[175]  ( .D(
        \CHIPS[1].core/buffer_pconv[157] ), .CK(clk), .RB(n3525), .Q(
        \CHIPS[1].core/buffer_pconv[175] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[176]  ( .D(
        \CHIPS[1].core/buffer_pconv[158] ), .CK(clk), .RB(n3525), .Q(
        \CHIPS[1].core/buffer_pconv[176] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[177]  ( .D(
        \CHIPS[1].core/buffer_pconv[159] ), .CK(clk), .RB(n3524), .Q(
        \CHIPS[1].core/buffer_pconv[177] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[178]  ( .D(
        \CHIPS[1].core/buffer_pconv[160] ), .CK(clk), .RB(n3524), .Q(
        \CHIPS[1].core/buffer_pconv[178] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[179]  ( .D(
        \CHIPS[1].core/buffer_pconv[161] ), .CK(clk), .RB(n3524), .Q(
        \CHIPS[1].core/buffer_pconv[179] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[180]  ( .D(
        \CHIPS[1].core/buffer_pconv[162] ), .CK(clk), .RB(n3524), .Q(
        \CHIPS[1].core/buffer_pconv[180] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[181]  ( .D(
        \CHIPS[1].core/buffer_pconv[163] ), .CK(clk), .RB(n3524), .Q(
        \CHIPS[1].core/buffer_pconv[181] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[182]  ( .D(
        \CHIPS[1].core/buffer_pconv[164] ), .CK(clk), .RB(n3524), .Q(
        \CHIPS[1].core/buffer_pconv[182] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[183]  ( .D(
        \CHIPS[1].core/buffer_pconv[165] ), .CK(clk), .RB(n3523), .Q(
        \CHIPS[1].core/buffer_pconv[183] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[184]  ( .D(
        \CHIPS[1].core/buffer_pconv[166] ), .CK(clk), .RB(n3523), .Q(
        \CHIPS[1].core/buffer_pconv[184] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[185]  ( .D(
        \CHIPS[1].core/buffer_pconv[167] ), .CK(clk), .RB(n3523), .Q(
        \CHIPS[1].core/buffer_pconv[185] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[186]  ( .D(
        \CHIPS[1].core/buffer_pconv[168] ), .CK(clk), .RB(n3523), .Q(
        \CHIPS[1].core/buffer_pconv[186] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[187]  ( .D(
        \CHIPS[1].core/buffer_pconv[169] ), .CK(clk), .RB(n3523), .Q(
        \CHIPS[1].core/buffer_pconv[187] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[188]  ( .D(
        \CHIPS[1].core/buffer_pconv[170] ), .CK(clk), .RB(n3523), .Q(
        \CHIPS[1].core/buffer_pconv[188] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[189]  ( .D(
        \CHIPS[1].core/buffer_pconv[171] ), .CK(clk), .RB(n3534), .Q(
        \CHIPS[1].core/buffer_pconv[189] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[190]  ( .D(
        \CHIPS[1].core/buffer_pconv[172] ), .CK(clk), .RB(n3480), .Q(
        \CHIPS[1].core/buffer_pconv[190] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[191]  ( .D(
        \CHIPS[1].core/buffer_pconv[173] ), .CK(clk), .RB(n3480), .Q(
        \CHIPS[1].core/buffer_pconv[191] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[192]  ( .D(
        \CHIPS[1].core/buffer_pconv[174] ), .CK(clk), .RB(n3479), .Q(
        \CHIPS[1].core/buffer_pconv[192] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[193]  ( .D(
        \CHIPS[1].core/buffer_pconv[175] ), .CK(clk), .RB(n3479), .Q(
        \CHIPS[1].core/buffer_pconv[193] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[194]  ( .D(
        \CHIPS[1].core/buffer_pconv[176] ), .CK(clk), .RB(n3479), .Q(
        \CHIPS[1].core/buffer_pconv[194] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[195]  ( .D(
        \CHIPS[1].core/buffer_pconv[177] ), .CK(clk), .RB(n3479), .Q(
        \CHIPS[1].core/buffer_pconv[195] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[196]  ( .D(
        \CHIPS[1].core/buffer_pconv[178] ), .CK(clk), .RB(n3479), .Q(
        \CHIPS[1].core/buffer_pconv[196] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[197]  ( .D(
        \CHIPS[1].core/buffer_pconv[179] ), .CK(clk), .RB(n3479), .Q(
        \CHIPS[1].core/buffer_pconv[197] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[198]  ( .D(
        \CHIPS[1].core/buffer_pconv[180] ), .CK(clk), .RB(n3478), .Q(
        \CHIPS[1].core/buffer_pconv[198] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[199]  ( .D(
        \CHIPS[1].core/buffer_pconv[181] ), .CK(clk), .RB(n3478), .Q(
        \CHIPS[1].core/buffer_pconv[199] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[200]  ( .D(
        \CHIPS[1].core/buffer_pconv[182] ), .CK(clk), .RB(n3478), .Q(
        \CHIPS[1].core/buffer_pconv[200] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[201]  ( .D(
        \CHIPS[1].core/buffer_pconv[183] ), .CK(clk), .RB(n3478), .Q(
        \CHIPS[1].core/buffer_pconv[201] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[202]  ( .D(
        \CHIPS[1].core/buffer_pconv[184] ), .CK(clk), .RB(n3478), .Q(
        \CHIPS[1].core/buffer_pconv[202] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[203]  ( .D(
        \CHIPS[1].core/buffer_pconv[185] ), .CK(clk), .RB(n3478), .Q(
        \CHIPS[1].core/buffer_pconv[203] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[204]  ( .D(
        \CHIPS[1].core/buffer_pconv[186] ), .CK(clk), .RB(n3477), .Q(
        \CHIPS[1].core/buffer_pconv[204] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[205]  ( .D(
        \CHIPS[1].core/buffer_pconv[187] ), .CK(clk), .RB(n3477), .Q(
        \CHIPS[1].core/buffer_pconv[205] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[206]  ( .D(
        \CHIPS[1].core/buffer_pconv[188] ), .CK(clk), .RB(n3477), .Q(
        \CHIPS[1].core/buffer_pconv[206] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[207]  ( .D(
        \CHIPS[1].core/buffer_pconv[189] ), .CK(clk), .RB(n3477), .Q(
        \CHIPS[1].core/buffer_pconv[207] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[208]  ( .D(
        \CHIPS[1].core/buffer_pconv[190] ), .CK(clk), .RB(n3477), .Q(
        \CHIPS[1].core/buffer_pconv[208] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[209]  ( .D(
        \CHIPS[1].core/buffer_pconv[191] ), .CK(clk), .RB(n3477), .Q(
        \CHIPS[1].core/buffer_pconv[209] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[210]  ( .D(
        \CHIPS[1].core/buffer_pconv[192] ), .CK(clk), .RB(n3476), .Q(
        \CHIPS[1].core/buffer_pconv[210] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[211]  ( .D(
        \CHIPS[1].core/buffer_pconv[193] ), .CK(clk), .RB(n3476), .Q(
        \CHIPS[1].core/buffer_pconv[211] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[212]  ( .D(
        \CHIPS[1].core/buffer_pconv[194] ), .CK(clk), .RB(n3476), .Q(
        \CHIPS[1].core/buffer_pconv[212] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[213]  ( .D(
        \CHIPS[1].core/buffer_pconv[195] ), .CK(clk), .RB(n3476), .Q(
        \CHIPS[1].core/buffer_pconv[213] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[214]  ( .D(
        \CHIPS[1].core/buffer_pconv[196] ), .CK(clk), .RB(n3476), .Q(
        \CHIPS[1].core/buffer_pconv[214] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[215]  ( .D(
        \CHIPS[1].core/buffer_pconv[197] ), .CK(clk), .RB(n3476), .Q(
        \CHIPS[1].core/buffer_pconv[215] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[216]  ( .D(
        \CHIPS[1].core/buffer_pconv[198] ), .CK(clk), .RB(n3475), .Q(
        \CHIPS[1].core/buffer_pconv[216] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[217]  ( .D(
        \CHIPS[1].core/buffer_pconv[199] ), .CK(clk), .RB(n3475), .Q(
        \CHIPS[1].core/buffer_pconv[217] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[218]  ( .D(
        \CHIPS[1].core/buffer_pconv[200] ), .CK(clk), .RB(n3475), .Q(
        \CHIPS[1].core/buffer_pconv[218] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[219]  ( .D(
        \CHIPS[1].core/buffer_pconv[201] ), .CK(clk), .RB(n3475), .Q(
        \CHIPS[1].core/buffer_pconv[219] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[220]  ( .D(
        \CHIPS[1].core/buffer_pconv[202] ), .CK(clk), .RB(n3475), .Q(
        \CHIPS[1].core/buffer_pconv[220] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[221]  ( .D(
        \CHIPS[1].core/buffer_pconv[203] ), .CK(clk), .RB(n3475), .Q(
        \CHIPS[1].core/buffer_pconv[221] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[222]  ( .D(
        \CHIPS[1].core/buffer_pconv[204] ), .CK(clk), .RB(n3474), .Q(
        \CHIPS[1].core/buffer_pconv[222] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[224]  ( .D(
        \CHIPS[1].core/buffer_pconv[206] ), .CK(clk), .RB(n3474), .Q(
        \CHIPS[1].core/buffer_pconv[224] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[225]  ( .D(
        \CHIPS[1].core/buffer_pconv[207] ), .CK(clk), .RB(n3474), .Q(
        \CHIPS[1].core/buffer_pconv[225] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[227]  ( .D(
        \CHIPS[1].core/buffer_pconv[209] ), .CK(clk), .RB(n3474), .Q(
        \CHIPS[1].core/buffer_pconv[227] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[228]  ( .D(
        \CHIPS[1].core/buffer_pconv[210] ), .CK(clk), .RB(n3473), .Q(
        \CHIPS[1].core/buffer_pconv[228] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[229]  ( .D(
        \CHIPS[1].core/buffer_pconv[211] ), .CK(clk), .RB(n3473), .Q(
        \CHIPS[1].core/buffer_pconv[229] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[230]  ( .D(
        \CHIPS[1].core/buffer_pconv[212] ), .CK(clk), .RB(n3473), .Q(
        \CHIPS[1].core/buffer_pconv[230] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[231]  ( .D(
        \CHIPS[1].core/buffer_pconv[213] ), .CK(clk), .RB(n3473), .Q(
        \CHIPS[1].core/buffer_pconv[231] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[232]  ( .D(
        \CHIPS[1].core/buffer_pconv[214] ), .CK(clk), .RB(n3473), .Q(
        \CHIPS[1].core/buffer_pconv[232] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[233]  ( .D(
        \CHIPS[1].core/buffer_pconv[215] ), .CK(clk), .RB(n3473), .Q(
        \CHIPS[1].core/buffer_pconv[233] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[234]  ( .D(
        \CHIPS[1].core/buffer_pconv[216] ), .CK(clk), .RB(n3472), .Q(
        \CHIPS[1].core/buffer_pconv[234] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[235]  ( .D(
        \CHIPS[1].core/buffer_pconv[217] ), .CK(clk), .RB(n3472), .Q(
        \CHIPS[1].core/buffer_pconv[235] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[236]  ( .D(
        \CHIPS[1].core/buffer_pconv[218] ), .CK(clk), .RB(n3472), .Q(
        \CHIPS[1].core/buffer_pconv[236] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[237]  ( .D(
        \CHIPS[1].core/buffer_pconv[219] ), .CK(clk), .RB(n3472), .Q(
        \CHIPS[1].core/buffer_pconv[237] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[238]  ( .D(
        \CHIPS[1].core/buffer_pconv[220] ), .CK(clk), .RB(n3472), .Q(
        \CHIPS[1].core/buffer_pconv[238] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[239]  ( .D(
        \CHIPS[1].core/buffer_pconv[221] ), .CK(clk), .RB(n3472), .Q(
        \CHIPS[1].core/buffer_pconv[239] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[240]  ( .D(
        \CHIPS[1].core/buffer_pconv[222] ), .CK(clk), .RB(n3471), .Q(
        \CHIPS[1].core/buffer_pconv[240] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[241]  ( .D(
        \CHIPS[1].core/buffer_pconv[223] ), .CK(clk), .RB(n3471), .Q(
        \CHIPS[1].core/buffer_pconv[241] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[242]  ( .D(
        \CHIPS[1].core/buffer_pconv[224] ), .CK(clk), .RB(n3471), .Q(
        \CHIPS[1].core/buffer_pconv[242] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[243]  ( .D(
        \CHIPS[1].core/buffer_pconv[225] ), .CK(clk), .RB(n3471), .Q(
        \CHIPS[1].core/buffer_pconv[243] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[244]  ( .D(
        \CHIPS[1].core/buffer_pconv[226] ), .CK(clk), .RB(n3471), .Q(
        \CHIPS[1].core/buffer_pconv[244] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[245]  ( .D(
        \CHIPS[1].core/buffer_pconv[227] ), .CK(clk), .RB(n3471), .Q(
        \CHIPS[1].core/buffer_pconv[245] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[246]  ( .D(
        \CHIPS[1].core/buffer_pconv[228] ), .CK(clk), .RB(n3470), .Q(
        \CHIPS[1].core/buffer_pconv[246] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[247]  ( .D(
        \CHIPS[1].core/buffer_pconv[229] ), .CK(clk), .RB(n3470), .Q(
        \CHIPS[1].core/buffer_pconv[247] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[248]  ( .D(
        \CHIPS[1].core/buffer_pconv[230] ), .CK(clk), .RB(n3470), .Q(
        \CHIPS[1].core/buffer_pconv[248] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[249]  ( .D(
        \CHIPS[1].core/buffer_pconv[231] ), .CK(clk), .RB(n3470), .Q(
        \CHIPS[1].core/buffer_pconv[249] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[250]  ( .D(
        \CHIPS[1].core/buffer_pconv[232] ), .CK(clk), .RB(n3470), .Q(
        \CHIPS[1].core/buffer_pconv[250] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[251]  ( .D(
        \CHIPS[1].core/buffer_pconv[233] ), .CK(clk), .RB(n3470), .Q(
        \CHIPS[1].core/buffer_pconv[251] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[252]  ( .D(
        \CHIPS[1].core/buffer_pconv[234] ), .CK(clk), .RB(n3469), .Q(
        \CHIPS[1].core/buffer_pconv[252] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[253]  ( .D(
        \CHIPS[1].core/buffer_pconv[235] ), .CK(clk), .RB(n3469), .Q(
        \CHIPS[1].core/buffer_pconv[253] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[254]  ( .D(
        \CHIPS[1].core/buffer_pconv[236] ), .CK(clk), .RB(n3469), .Q(
        \CHIPS[1].core/buffer_pconv[254] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[255]  ( .D(
        \CHIPS[1].core/buffer_pconv[237] ), .CK(clk), .RB(n3469), .Q(
        \CHIPS[1].core/buffer_pconv[255] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[256]  ( .D(
        \CHIPS[1].core/buffer_pconv[238] ), .CK(clk), .RB(n3469), .Q(
        \CHIPS[1].core/buffer_pconv[256] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[257]  ( .D(
        \CHIPS[1].core/buffer_pconv[239] ), .CK(clk), .RB(n3469), .Q(
        \CHIPS[1].core/buffer_pconv[257] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[258]  ( .D(
        \CHIPS[1].core/buffer_pconv[240] ), .CK(clk), .RB(n3468), .Q(
        \CHIPS[1].core/buffer_pconv[258] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[259]  ( .D(
        \CHIPS[1].core/buffer_pconv[241] ), .CK(clk), .RB(n3468), .Q(
        \CHIPS[1].core/buffer_pconv[259] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[260]  ( .D(
        \CHIPS[1].core/buffer_pconv[242] ), .CK(clk), .RB(n3468), .Q(
        \CHIPS[1].core/buffer_pconv[260] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[261]  ( .D(
        \CHIPS[1].core/buffer_pconv[243] ), .CK(clk), .RB(n3468), .Q(
        \CHIPS[1].core/buffer_pconv[261] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[262]  ( .D(
        \CHIPS[1].core/buffer_pconv[244] ), .CK(clk), .RB(n3468), .Q(
        \CHIPS[1].core/buffer_pconv[262] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[263]  ( .D(
        \CHIPS[1].core/buffer_pconv[245] ), .CK(clk), .RB(n3467), .Q(
        \CHIPS[1].core/buffer_pconv[263] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[264]  ( .D(
        \CHIPS[1].core/buffer_pconv[246] ), .CK(clk), .RB(n3467), .Q(
        \CHIPS[1].core/buffer_pconv[264] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[265]  ( .D(
        \CHIPS[1].core/buffer_pconv[247] ), .CK(clk), .RB(n3467), .Q(
        \CHIPS[1].core/buffer_pconv[265] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[266]  ( .D(
        \CHIPS[1].core/buffer_pconv[248] ), .CK(clk), .RB(n3467), .Q(
        \CHIPS[1].core/buffer_pconv[266] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[267]  ( .D(
        \CHIPS[1].core/buffer_pconv[249] ), .CK(clk), .RB(n3467), .Q(
        \CHIPS[1].core/buffer_pconv[267] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[268]  ( .D(
        \CHIPS[1].core/buffer_pconv[250] ), .CK(clk), .RB(n3467), .Q(
        \CHIPS[1].core/buffer_pconv[268] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[269]  ( .D(
        \CHIPS[1].core/buffer_pconv[251] ), .CK(clk), .RB(n3466), .Q(
        \CHIPS[1].core/buffer_pconv[269] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[270]  ( .D(
        \CHIPS[1].core/buffer_pconv[252] ), .CK(clk), .RB(n3466), .Q(
        \CHIPS[1].core/buffer_pconv[270] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[271]  ( .D(
        \CHIPS[1].core/buffer_pconv[253] ), .CK(clk), .RB(n3466), .Q(
        \CHIPS[1].core/buffer_pconv[271] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[272]  ( .D(
        \CHIPS[1].core/buffer_pconv[254] ), .CK(clk), .RB(n3466), .Q(
        \CHIPS[1].core/buffer_pconv[272] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[273]  ( .D(
        \CHIPS[1].core/buffer_pconv[255] ), .CK(clk), .RB(n3466), .Q(
        \CHIPS[1].core/buffer_pconv[273] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[274]  ( .D(
        \CHIPS[1].core/buffer_pconv[256] ), .CK(clk), .RB(n3466), .Q(
        \CHIPS[1].core/buffer_pconv[274] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[275]  ( .D(
        \CHIPS[1].core/buffer_pconv[257] ), .CK(clk), .RB(n3465), .Q(
        \CHIPS[1].core/buffer_pconv[275] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[276]  ( .D(
        \CHIPS[1].core/buffer_pconv[258] ), .CK(clk), .RB(n3465), .Q(
        \CHIPS[1].core/buffer_pconv[276] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[277]  ( .D(
        \CHIPS[1].core/buffer_pconv[259] ), .CK(clk), .RB(n3465), .Q(
        \CHIPS[1].core/buffer_pconv[277] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[278]  ( .D(
        \CHIPS[1].core/buffer_pconv[260] ), .CK(clk), .RB(n3465), .Q(
        \CHIPS[1].core/buffer_pconv[278] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[279]  ( .D(
        \CHIPS[1].core/buffer_pconv[261] ), .CK(clk), .RB(n3465), .Q(
        \CHIPS[1].core/buffer_pconv[279] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[280]  ( .D(
        \CHIPS[1].core/buffer_pconv[262] ), .CK(clk), .RB(n3465), .Q(
        \CHIPS[1].core/buffer_pconv[280] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[281]  ( .D(
        \CHIPS[1].core/buffer_pconv[263] ), .CK(clk), .RB(n3464), .Q(
        \CHIPS[1].core/buffer_pconv[281] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[282]  ( .D(
        \CHIPS[1].core/buffer_pconv[264] ), .CK(clk), .RB(n3464), .Q(
        \CHIPS[1].core/buffer_pconv[282] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[283]  ( .D(
        \CHIPS[1].core/buffer_pconv[265] ), .CK(clk), .RB(n3464), .Q(
        \CHIPS[1].core/buffer_pconv[283] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[284]  ( .D(
        \CHIPS[1].core/buffer_pconv[266] ), .CK(clk), .RB(n3464), .Q(
        \CHIPS[1].core/buffer_pconv[284] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[285]  ( .D(
        \CHIPS[1].core/buffer_pconv[267] ), .CK(clk), .RB(n3464), .Q(
        \CHIPS[1].core/buffer_pconv[285] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[286]  ( .D(
        \CHIPS[1].core/buffer_pconv[268] ), .CK(clk), .RB(n3464), .Q(
        \CHIPS[1].core/buffer_pconv[286] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[287]  ( .D(
        \CHIPS[1].core/buffer_pconv[269] ), .CK(clk), .RB(n3463), .Q(
        \CHIPS[1].core/buffer_pconv[287] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[288]  ( .D(
        \CHIPS[1].core/buffer_pconv[270] ), .CK(clk), .RB(n3463), .Q(
        \CHIPS[1].core/buffer_pconv[288] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[289]  ( .D(
        \CHIPS[1].core/buffer_pconv[271] ), .CK(clk), .RB(n3463), .Q(
        \CHIPS[1].core/buffer_pconv[289] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[290]  ( .D(
        \CHIPS[1].core/buffer_pconv[272] ), .CK(clk), .RB(n3463), .Q(
        \CHIPS[1].core/buffer_pconv[290] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[291]  ( .D(
        \CHIPS[1].core/buffer_pconv[273] ), .CK(clk), .RB(n3463), .Q(
        \CHIPS[1].core/buffer_pconv[291] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[292]  ( .D(
        \CHIPS[1].core/buffer_pconv[274] ), .CK(clk), .RB(n3463), .Q(
        \CHIPS[1].core/buffer_pconv[292] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[293]  ( .D(
        \CHIPS[1].core/buffer_pconv[275] ), .CK(clk), .RB(n3462), .Q(
        \CHIPS[1].core/buffer_pconv[293] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[294]  ( .D(
        \CHIPS[1].core/buffer_pconv[276] ), .CK(clk), .RB(n3462), .Q(
        \CHIPS[1].core/buffer_pconv[294] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[295]  ( .D(
        \CHIPS[1].core/buffer_pconv[277] ), .CK(clk), .RB(n3462), .Q(
        \CHIPS[1].core/buffer_pconv[295] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[296]  ( .D(
        \CHIPS[1].core/buffer_pconv[278] ), .CK(clk), .RB(n3462), .Q(
        \CHIPS[1].core/buffer_pconv[296] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[297]  ( .D(
        \CHIPS[1].core/buffer_pconv[279] ), .CK(clk), .RB(n3462), .Q(
        \CHIPS[1].core/buffer_pconv[297] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[298]  ( .D(
        \CHIPS[1].core/buffer_pconv[280] ), .CK(clk), .RB(n3462), .Q(
        \CHIPS[1].core/buffer_pconv[298] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[299]  ( .D(
        \CHIPS[1].core/buffer_pconv[281] ), .CK(clk), .RB(n3461), .Q(
        \CHIPS[1].core/buffer_pconv[299] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[300]  ( .D(
        \CHIPS[1].core/buffer_pconv[282] ), .CK(clk), .RB(n3461), .Q(
        \CHIPS[1].core/buffer_pconv[300] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[301]  ( .D(
        \CHIPS[1].core/buffer_pconv[283] ), .CK(clk), .RB(n3461), .Q(
        \CHIPS[1].core/buffer_pconv[301] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[302]  ( .D(
        \CHIPS[1].core/buffer_pconv[284] ), .CK(clk), .RB(n3461), .Q(
        \CHIPS[1].core/buffer_pconv[302] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[303]  ( .D(
        \CHIPS[1].core/buffer_pconv[285] ), .CK(clk), .RB(n3461), .Q(
        \CHIPS[1].core/buffer_pconv[303] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[304]  ( .D(
        \CHIPS[1].core/buffer_pconv[286] ), .CK(clk), .RB(n3461), .Q(
        \CHIPS[1].core/buffer_pconv[304] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[305]  ( .D(
        \CHIPS[1].core/buffer_pconv[287] ), .CK(clk), .RB(n3460), .Q(
        \CHIPS[1].core/buffer_pconv[305] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[306]  ( .D(
        \CHIPS[1].core/buffer_pconv[288] ), .CK(clk), .RB(n3460), .Q(
        \CHIPS[1].core/buffer_pconv[306] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[307]  ( .D(
        \CHIPS[1].core/buffer_pconv[289] ), .CK(clk), .RB(n3460), .Q(
        \CHIPS[1].core/buffer_pconv[307] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[308]  ( .D(
        \CHIPS[1].core/buffer_pconv[290] ), .CK(clk), .RB(n3460), .Q(
        \CHIPS[1].core/buffer_pconv[308] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[309]  ( .D(
        \CHIPS[1].core/buffer_pconv[291] ), .CK(clk), .RB(n3460), .Q(
        \CHIPS[1].core/buffer_pconv[309] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[310]  ( .D(
        \CHIPS[1].core/buffer_pconv[292] ), .CK(clk), .RB(n3460), .Q(
        \CHIPS[1].core/buffer_pconv[310] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[311]  ( .D(
        \CHIPS[1].core/buffer_pconv[293] ), .CK(clk), .RB(n3823), .Q(
        \CHIPS[1].core/buffer_pconv[311] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[312]  ( .D(
        \CHIPS[1].core/buffer_pconv[294] ), .CK(clk), .RB(n3822), .Q(
        \CHIPS[1].core/buffer_pconv[312] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[313]  ( .D(
        \CHIPS[1].core/buffer_pconv[295] ), .CK(clk), .RB(n3824), .Q(
        \CHIPS[1].core/buffer_pconv[313] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[314]  ( .D(
        \CHIPS[1].core/buffer_pconv[296] ), .CK(clk), .RB(n3825), .Q(
        \CHIPS[1].core/buffer_pconv[314] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[315]  ( .D(
        \CHIPS[1].core/buffer_pconv[297] ), .CK(clk), .RB(n3821), .Q(
        \CHIPS[1].core/buffer_pconv[315] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[316]  ( .D(
        \CHIPS[1].core/buffer_pconv[298] ), .CK(clk), .RB(n3820), .Q(
        \CHIPS[1].core/buffer_pconv[316] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[317]  ( .D(
        \CHIPS[1].core/buffer_pconv[299] ), .CK(clk), .RB(n3459), .Q(
        \CHIPS[1].core/buffer_pconv[317] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[318]  ( .D(
        \CHIPS[1].core/buffer_pconv[300] ), .CK(clk), .RB(n3459), .Q(
        \CHIPS[1].core/buffer_pconv[318] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[319]  ( .D(
        \CHIPS[1].core/buffer_pconv[301] ), .CK(clk), .RB(n3459), .Q(
        \CHIPS[1].core/buffer_pconv[319] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[320]  ( .D(
        \CHIPS[1].core/buffer_pconv[302] ), .CK(clk), .RB(n3459), .Q(
        \CHIPS[1].core/buffer_pconv[320] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[321]  ( .D(
        \CHIPS[1].core/buffer_pconv[303] ), .CK(clk), .RB(n3459), .Q(
        \CHIPS[1].core/buffer_pconv[321] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[322]  ( .D(
        \CHIPS[1].core/buffer_pconv[304] ), .CK(clk), .RB(n3459), .Q(
        \CHIPS[1].core/buffer_pconv[322] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[323]  ( .D(
        \CHIPS[1].core/buffer_pconv[305] ), .CK(clk), .RB(n3458), .Q(
        \CHIPS[1].core/buffer_pconv[323] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[324]  ( .D(
        \CHIPS[1].core/buffer_pconv[306] ), .CK(clk), .RB(n3458), .Q(
        \CHIPS[1].core/buffer_pconv[324] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[325]  ( .D(
        \CHIPS[1].core/buffer_pconv[307] ), .CK(clk), .RB(n3468), .Q(
        \CHIPS[1].core/buffer_pconv[325] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[326]  ( .D(
        \CHIPS[1].core/buffer_pconv[308] ), .CK(clk), .RB(n3501), .Q(
        \CHIPS[1].core/buffer_pconv[326] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[327]  ( .D(
        \CHIPS[1].core/buffer_pconv[309] ), .CK(clk), .RB(n3501), .Q(
        \CHIPS[1].core/buffer_pconv[327] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[328]  ( .D(
        \CHIPS[1].core/buffer_pconv[310] ), .CK(clk), .RB(n3501), .Q(
        \CHIPS[1].core/buffer_pconv[328] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[329]  ( .D(
        \CHIPS[1].core/buffer_pconv[311] ), .CK(clk), .RB(n3501), .Q(
        \CHIPS[1].core/buffer_pconv[329] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[330]  ( .D(
        \CHIPS[1].core/buffer_pconv[312] ), .CK(clk), .RB(n3501), .Q(
        \CHIPS[1].core/buffer_pconv[330] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[331]  ( .D(
        \CHIPS[1].core/buffer_pconv[313] ), .CK(clk), .RB(n3501), .Q(
        \CHIPS[1].core/buffer_pconv[331] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[332]  ( .D(
        \CHIPS[1].core/buffer_pconv[314] ), .CK(clk), .RB(n3500), .Q(
        \CHIPS[1].core/buffer_pconv[332] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[333]  ( .D(
        \CHIPS[1].core/buffer_pconv[315] ), .CK(clk), .RB(n3500), .Q(
        \CHIPS[1].core/buffer_pconv[333] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[334]  ( .D(
        \CHIPS[1].core/buffer_pconv[316] ), .CK(clk), .RB(n3500), .Q(
        \CHIPS[1].core/buffer_pconv[334] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[335]  ( .D(
        \CHIPS[1].core/buffer_pconv[317] ), .CK(clk), .RB(n3500), .Q(
        \CHIPS[1].core/buffer_pconv[335] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[336]  ( .D(
        \CHIPS[1].core/buffer_pconv[318] ), .CK(clk), .RB(n3500), .Q(
        \CHIPS[1].core/buffer_pconv[336] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[337]  ( .D(
        \CHIPS[1].core/buffer_pconv[319] ), .CK(clk), .RB(n3500), .Q(
        \CHIPS[1].core/buffer_pconv[337] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[338]  ( .D(
        \CHIPS[1].core/buffer_pconv[320] ), .CK(clk), .RB(n3499), .Q(
        \CHIPS[1].core/buffer_pconv[338] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[339]  ( .D(
        \CHIPS[1].core/buffer_pconv[321] ), .CK(clk), .RB(n3499), .Q(
        \CHIPS[1].core/buffer_pconv[339] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[340]  ( .D(
        \CHIPS[1].core/buffer_pconv[322] ), .CK(clk), .RB(n3499), .Q(
        \CHIPS[1].core/buffer_pconv[340] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[341]  ( .D(
        \CHIPS[1].core/buffer_pconv[323] ), .CK(clk), .RB(n3499), .Q(
        \CHIPS[1].core/buffer_pconv[341] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[342]  ( .D(
        \CHIPS[1].core/buffer_pconv[324] ), .CK(clk), .RB(n3499), .Q(
        \CHIPS[1].core/buffer_pconv[342] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[343]  ( .D(
        \CHIPS[1].core/buffer_pconv[325] ), .CK(clk), .RB(n3499), .Q(
        \CHIPS[1].core/buffer_pconv[343] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[344]  ( .D(
        \CHIPS[1].core/buffer_pconv[326] ), .CK(clk), .RB(n3498), .Q(
        \CHIPS[1].core/buffer_pconv[344] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[345]  ( .D(
        \CHIPS[1].core/buffer_pconv[327] ), .CK(clk), .RB(n3498), .Q(
        \CHIPS[1].core/buffer_pconv[345] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[346]  ( .D(
        \CHIPS[1].core/buffer_pconv[328] ), .CK(clk), .RB(n3498), .Q(
        \CHIPS[1].core/buffer_pconv[346] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[347]  ( .D(
        \CHIPS[1].core/buffer_pconv[329] ), .CK(clk), .RB(n3498), .Q(
        \CHIPS[1].core/buffer_pconv[347] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[348]  ( .D(
        \CHIPS[1].core/buffer_pconv[330] ), .CK(clk), .RB(n3498), .Q(
        \CHIPS[1].core/buffer_pconv[348] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[349]  ( .D(
        \CHIPS[1].core/buffer_pconv[331] ), .CK(clk), .RB(n3498), .Q(
        \CHIPS[1].core/buffer_pconv[349] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[350]  ( .D(
        \CHIPS[1].core/buffer_pconv[332] ), .CK(clk), .RB(n2950), .Q(
        \CHIPS[1].core/buffer_pconv[350] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[351]  ( .D(
        \CHIPS[1].core/buffer_pconv[333] ), .CK(clk), .RB(n2951), .Q(
        \CHIPS[1].core/buffer_pconv[351] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[352]  ( .D(
        \CHIPS[1].core/buffer_pconv[334] ), .CK(clk), .RB(n2950), .Q(
        \CHIPS[1].core/buffer_pconv[352] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[353]  ( .D(
        \CHIPS[1].core/buffer_pconv[335] ), .CK(clk), .RB(n2909), .Q(
        \CHIPS[1].core/buffer_pconv[353] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[354]  ( .D(
        \CHIPS[1].core/buffer_pconv[336] ), .CK(clk), .RB(n3816), .Q(
        \CHIPS[1].core/buffer_pconv[354] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[355]  ( .D(
        \CHIPS[1].core/buffer_pconv[337] ), .CK(clk), .RB(n2948), .Q(
        \CHIPS[1].core/buffer_pconv[355] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[356]  ( .D(
        \CHIPS[1].core/buffer_pconv[338] ), .CK(clk), .RB(n3497), .Q(
        \CHIPS[1].core/buffer_pconv[356] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[357]  ( .D(
        \CHIPS[1].core/buffer_pconv[339] ), .CK(clk), .RB(n3497), .Q(
        \CHIPS[1].core/buffer_pconv[357] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[358]  ( .D(
        \CHIPS[1].core/buffer_pconv[340] ), .CK(clk), .RB(n3497), .Q(
        \CHIPS[1].core/buffer_pconv[358] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[359]  ( .D(
        \CHIPS[1].core/buffer_pconv[341] ), .CK(clk), .RB(n3497), .Q(
        \CHIPS[1].core/buffer_pconv[359] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[360]  ( .D(
        \CHIPS[1].core/buffer_pconv[342] ), .CK(clk), .RB(n3497), .Q(
        \CHIPS[1].core/buffer_pconv[360] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[361]  ( .D(
        \CHIPS[1].core/buffer_pconv[343] ), .CK(clk), .RB(n3497), .Q(
        \CHIPS[1].core/buffer_pconv[361] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[362]  ( .D(
        \CHIPS[1].core/buffer_pconv[344] ), .CK(clk), .RB(n3496), .Q(
        \CHIPS[1].core/buffer_pconv[362] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[363]  ( .D(
        \CHIPS[1].core/buffer_pconv[345] ), .CK(clk), .RB(n3496), .Q(
        \CHIPS[1].core/buffer_pconv[363] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[364]  ( .D(
        \CHIPS[1].core/buffer_pconv[346] ), .CK(clk), .RB(n3496), .Q(
        \CHIPS[1].core/buffer_pconv[364] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[365]  ( .D(
        \CHIPS[1].core/buffer_pconv[347] ), .CK(clk), .RB(n3496), .Q(
        \CHIPS[1].core/buffer_pconv[365] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[366]  ( .D(
        \CHIPS[1].core/buffer_pconv[348] ), .CK(clk), .RB(n3496), .Q(
        \CHIPS[1].core/buffer_pconv[366] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[367]  ( .D(
        \CHIPS[1].core/buffer_pconv[349] ), .CK(clk), .RB(n3496), .Q(
        \CHIPS[1].core/buffer_pconv[367] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[368]  ( .D(
        \CHIPS[1].core/buffer_pconv[350] ), .CK(clk), .RB(n3495), .Q(
        \CHIPS[1].core/buffer_pconv[368] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[369]  ( .D(
        \CHIPS[1].core/buffer_pconv[351] ), .CK(clk), .RB(n3495), .Q(
        \CHIPS[1].core/buffer_pconv[369] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[370]  ( .D(
        \CHIPS[1].core/buffer_pconv[352] ), .CK(clk), .RB(n3495), .Q(
        \CHIPS[1].core/buffer_pconv[370] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[371]  ( .D(
        \CHIPS[1].core/buffer_pconv[353] ), .CK(clk), .RB(n3495), .Q(
        \CHIPS[1].core/buffer_pconv[371] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[372]  ( .D(
        \CHIPS[1].core/buffer_pconv[354] ), .CK(clk), .RB(n3495), .Q(
        \CHIPS[1].core/buffer_pconv[372] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[373]  ( .D(
        \CHIPS[1].core/buffer_pconv[355] ), .CK(clk), .RB(n3495), .Q(
        \CHIPS[1].core/buffer_pconv[373] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[374]  ( .D(
        \CHIPS[1].core/buffer_pconv[356] ), .CK(clk), .RB(n3494), .Q(
        \CHIPS[1].core/buffer_pconv[374] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[375]  ( .D(
        \CHIPS[1].core/buffer_pconv[357] ), .CK(clk), .RB(n3494), .Q(
        \CHIPS[1].core/buffer_pconv[375] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[376]  ( .D(
        \CHIPS[1].core/buffer_pconv[358] ), .CK(clk), .RB(n3494), .Q(
        \CHIPS[1].core/buffer_pconv[376] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[377]  ( .D(
        \CHIPS[1].core/buffer_pconv[359] ), .CK(clk), .RB(n3494), .Q(
        \CHIPS[1].core/buffer_pconv[377] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[378]  ( .D(
        \CHIPS[1].core/buffer_pconv[360] ), .CK(clk), .RB(n3494), .Q(
        \CHIPS[1].core/buffer_pconv[378] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[379]  ( .D(
        \CHIPS[1].core/buffer_pconv[361] ), .CK(clk), .RB(n3494), .Q(
        \CHIPS[1].core/buffer_pconv[379] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[380]  ( .D(
        \CHIPS[1].core/buffer_pconv[362] ), .CK(clk), .RB(n3493), .Q(
        \CHIPS[1].core/buffer_pconv[380] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[381]  ( .D(
        \CHIPS[1].core/buffer_pconv[363] ), .CK(clk), .RB(n3493), .Q(
        \CHIPS[1].core/buffer_pconv[381] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[382]  ( .D(
        \CHIPS[1].core/buffer_pconv[364] ), .CK(clk), .RB(n3493), .Q(
        \CHIPS[1].core/buffer_pconv[382] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[383]  ( .D(
        \CHIPS[1].core/buffer_pconv[365] ), .CK(clk), .RB(n3493), .Q(
        \CHIPS[1].core/buffer_pconv[383] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[384]  ( .D(
        \CHIPS[1].core/buffer_pconv[366] ), .CK(clk), .RB(n3493), .Q(
        \CHIPS[1].core/buffer_pconv[384] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[385]  ( .D(
        \CHIPS[1].core/buffer_pconv[367] ), .CK(clk), .RB(n3493), .Q(
        \CHIPS[1].core/buffer_pconv[385] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[386]  ( .D(
        \CHIPS[1].core/buffer_pconv[368] ), .CK(clk), .RB(n3492), .Q(
        \CHIPS[1].core/buffer_pconv[386] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[387]  ( .D(
        \CHIPS[1].core/buffer_pconv[369] ), .CK(clk), .RB(n3492), .Q(
        \CHIPS[1].core/buffer_pconv[387] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[388]  ( .D(
        \CHIPS[1].core/buffer_pconv[370] ), .CK(clk), .RB(n3492), .Q(
        \CHIPS[1].core/buffer_pconv[388] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[389]  ( .D(
        \CHIPS[1].core/buffer_pconv[371] ), .CK(clk), .RB(n3492), .Q(
        \CHIPS[1].core/buffer_pconv[389] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[390]  ( .D(
        \CHIPS[1].core/buffer_pconv[372] ), .CK(clk), .RB(n3492), .Q(
        \CHIPS[1].core/buffer_pconv[390] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[391]  ( .D(
        \CHIPS[1].core/buffer_pconv[373] ), .CK(clk), .RB(n3492), .Q(
        \CHIPS[1].core/buffer_pconv[391] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[392]  ( .D(
        \CHIPS[1].core/buffer_pconv[374] ), .CK(clk), .RB(n3491), .Q(
        \CHIPS[1].core/buffer_pconv[392] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[393]  ( .D(
        \CHIPS[1].core/buffer_pconv[375] ), .CK(clk), .RB(n3491), .Q(
        \CHIPS[1].core/buffer_pconv[393] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[394]  ( .D(
        \CHIPS[1].core/buffer_pconv[376] ), .CK(clk), .RB(n3491), .Q(
        \CHIPS[1].core/buffer_pconv[394] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[395]  ( .D(
        \CHIPS[1].core/buffer_pconv[377] ), .CK(clk), .RB(n3491), .Q(
        \CHIPS[1].core/buffer_pconv[395] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[396]  ( .D(
        \CHIPS[1].core/buffer_pconv[378] ), .CK(clk), .RB(n3491), .Q(
        \CHIPS[1].core/buffer_pconv[396] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[397]  ( .D(
        \CHIPS[1].core/buffer_pconv[379] ), .CK(clk), .RB(n3490), .Q(
        \CHIPS[1].core/buffer_pconv[397] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[398]  ( .D(
        \CHIPS[1].core/buffer_pconv[380] ), .CK(clk), .RB(n3490), .Q(
        \CHIPS[1].core/buffer_pconv[398] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[399]  ( .D(
        \CHIPS[1].core/buffer_pconv[381] ), .CK(clk), .RB(n3490), .Q(
        \CHIPS[1].core/buffer_pconv[399] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[400]  ( .D(
        \CHIPS[1].core/buffer_pconv[382] ), .CK(clk), .RB(n3490), .Q(
        \CHIPS[1].core/buffer_pconv[400] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[401]  ( .D(
        \CHIPS[1].core/buffer_pconv[383] ), .CK(clk), .RB(n3490), .Q(
        \CHIPS[1].core/buffer_pconv[401] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[402]  ( .D(
        \CHIPS[1].core/buffer_pconv[384] ), .CK(clk), .RB(n3490), .Q(
        \CHIPS[1].core/buffer_pconv[402] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[403]  ( .D(
        \CHIPS[1].core/buffer_pconv[385] ), .CK(clk), .RB(n3489), .Q(
        \CHIPS[1].core/buffer_pconv[403] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[404]  ( .D(
        \CHIPS[1].core/buffer_pconv[386] ), .CK(clk), .RB(n3489), .Q(
        \CHIPS[1].core/buffer_pconv[404] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[405]  ( .D(
        \CHIPS[1].core/buffer_pconv[387] ), .CK(clk), .RB(n3489), .Q(
        \CHIPS[1].core/buffer_pconv[405] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[406]  ( .D(
        \CHIPS[1].core/buffer_pconv[388] ), .CK(clk), .RB(n3489), .Q(
        \CHIPS[1].core/buffer_pconv[406] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[407]  ( .D(
        \CHIPS[1].core/buffer_pconv[389] ), .CK(clk), .RB(n3489), .Q(
        \CHIPS[1].core/buffer_pconv[407] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[408]  ( .D(
        \CHIPS[1].core/buffer_pconv[390] ), .CK(clk), .RB(n3489), .Q(
        \CHIPS[1].core/buffer_pconv[408] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[409]  ( .D(
        \CHIPS[1].core/buffer_pconv[391] ), .CK(clk), .RB(n3488), .Q(
        \CHIPS[1].core/buffer_pconv[409] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[410]  ( .D(
        \CHIPS[1].core/buffer_pconv[392] ), .CK(clk), .RB(n3488), .Q(
        \CHIPS[1].core/buffer_pconv[410] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[411]  ( .D(
        \CHIPS[1].core/buffer_pconv[393] ), .CK(clk), .RB(n3488), .Q(
        \CHIPS[1].core/buffer_pconv[411] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[412]  ( .D(
        \CHIPS[1].core/buffer_pconv[394] ), .CK(clk), .RB(n3488), .Q(
        \CHIPS[1].core/buffer_pconv[412] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[413]  ( .D(
        \CHIPS[1].core/buffer_pconv[395] ), .CK(clk), .RB(n3488), .Q(
        \CHIPS[1].core/buffer_pconv[413] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[414]  ( .D(
        \CHIPS[1].core/buffer_pconv[396] ), .CK(clk), .RB(n3488), .Q(
        \CHIPS[1].core/buffer_pconv[414] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[415]  ( .D(
        \CHIPS[1].core/buffer_pconv[397] ), .CK(clk), .RB(n3487), .Q(
        \CHIPS[1].core/buffer_pconv[415] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[416]  ( .D(
        \CHIPS[1].core/buffer_pconv[398] ), .CK(clk), .RB(n3487), .Q(
        \CHIPS[1].core/buffer_pconv[416] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[417]  ( .D(
        \CHIPS[1].core/buffer_pconv[399] ), .CK(clk), .RB(n3487), .Q(
        \CHIPS[1].core/buffer_pconv[417] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[418]  ( .D(
        \CHIPS[1].core/buffer_pconv[400] ), .CK(clk), .RB(n3487), .Q(
        \CHIPS[1].core/buffer_pconv[418] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[419]  ( .D(
        \CHIPS[1].core/buffer_pconv[401] ), .CK(clk), .RB(n3487), .Q(
        \CHIPS[1].core/buffer_pconv[419] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[420]  ( .D(
        \CHIPS[1].core/buffer_pconv[402] ), .CK(clk), .RB(n3487), .Q(
        \CHIPS[1].core/buffer_pconv[420] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[421]  ( .D(
        \CHIPS[1].core/buffer_pconv[403] ), .CK(clk), .RB(n3486), .Q(
        \CHIPS[1].core/buffer_pconv[421] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[422]  ( .D(
        \CHIPS[1].core/buffer_pconv[404] ), .CK(clk), .RB(n3486), .Q(
        \CHIPS[1].core/buffer_pconv[422] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[423]  ( .D(
        \CHIPS[1].core/buffer_pconv[405] ), .CK(clk), .RB(n3486), .Q(
        \CHIPS[1].core/buffer_pconv[423] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[424]  ( .D(
        \CHIPS[1].core/buffer_pconv[406] ), .CK(clk), .RB(n3486), .Q(
        \CHIPS[1].core/buffer_pconv[424] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[425]  ( .D(
        \CHIPS[1].core/buffer_pconv[407] ), .CK(clk), .RB(n3486), .Q(
        \CHIPS[1].core/buffer_pconv[425] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[426]  ( .D(
        \CHIPS[1].core/buffer_pconv[408] ), .CK(clk), .RB(n3486), .Q(
        \CHIPS[1].core/buffer_pconv[426] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[427]  ( .D(
        \CHIPS[1].core/buffer_pconv[409] ), .CK(clk), .RB(n3485), .Q(
        \CHIPS[1].core/buffer_pconv[427] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[428]  ( .D(
        \CHIPS[1].core/buffer_pconv[410] ), .CK(clk), .RB(n3485), .Q(
        \CHIPS[1].core/buffer_pconv[428] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[429]  ( .D(
        \CHIPS[1].core/buffer_pconv[411] ), .CK(clk), .RB(n3485), .Q(
        \CHIPS[1].core/buffer_pconv[429] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[430]  ( .D(
        \CHIPS[1].core/buffer_pconv[412] ), .CK(clk), .RB(n3485), .Q(
        \CHIPS[1].core/buffer_pconv[430] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[431]  ( .D(
        \CHIPS[1].core/buffer_pconv[413] ), .CK(clk), .RB(n3485), .Q(
        \CHIPS[1].core/buffer_pconv[431] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[432]  ( .D(
        \CHIPS[1].core/buffer_pconv[414] ), .CK(clk), .RB(n3485), .Q(
        \CHIPS[1].core/buffer_pconv[432] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[433]  ( .D(
        \CHIPS[1].core/buffer_pconv[415] ), .CK(clk), .RB(n3484), .Q(
        \CHIPS[1].core/buffer_pconv[433] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[434]  ( .D(
        \CHIPS[1].core/buffer_pconv[416] ), .CK(clk), .RB(n3484), .Q(
        \CHIPS[1].core/buffer_pconv[434] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[435]  ( .D(
        \CHIPS[1].core/buffer_pconv[417] ), .CK(clk), .RB(n3484), .Q(
        \CHIPS[1].core/buffer_pconv[435] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[436]  ( .D(
        \CHIPS[1].core/buffer_pconv[418] ), .CK(clk), .RB(n3484), .Q(
        \CHIPS[1].core/buffer_pconv[436] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[437]  ( .D(
        \CHIPS[1].core/buffer_pconv[419] ), .CK(clk), .RB(n3484), .Q(
        \CHIPS[1].core/buffer_pconv[437] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[438]  ( .D(
        \CHIPS[1].core/buffer_pconv[420] ), .CK(clk), .RB(n3484), .Q(
        \CHIPS[1].core/buffer_pconv[438] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[439]  ( .D(
        \CHIPS[1].core/buffer_pconv[421] ), .CK(clk), .RB(n3483), .Q(
        \CHIPS[1].core/buffer_pconv[439] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[440]  ( .D(
        \CHIPS[1].core/buffer_pconv[422] ), .CK(clk), .RB(n3483), .Q(
        \CHIPS[1].core/buffer_pconv[440] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[441]  ( .D(
        \CHIPS[1].core/buffer_pconv[423] ), .CK(clk), .RB(n3483), .Q(
        \CHIPS[1].core/buffer_pconv[441] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[442]  ( .D(
        \CHIPS[1].core/buffer_pconv[424] ), .CK(clk), .RB(n3483), .Q(
        \CHIPS[1].core/buffer_pconv[442] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[443]  ( .D(
        \CHIPS[1].core/buffer_pconv[425] ), .CK(clk), .RB(n3483), .Q(
        \CHIPS[1].core/buffer_pconv[443] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[444]  ( .D(
        \CHIPS[1].core/buffer_pconv[426] ), .CK(clk), .RB(n3483), .Q(
        \CHIPS[1].core/buffer_pconv[444] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[445]  ( .D(
        \CHIPS[1].core/buffer_pconv[427] ), .CK(clk), .RB(n3482), .Q(
        \CHIPS[1].core/buffer_pconv[445] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[446]  ( .D(
        \CHIPS[1].core/buffer_pconv[428] ), .CK(clk), .RB(n3482), .Q(
        \CHIPS[1].core/buffer_pconv[446] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[447]  ( .D(
        \CHIPS[1].core/buffer_pconv[429] ), .CK(clk), .RB(n3482), .Q(
        \CHIPS[1].core/buffer_pconv[447] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[448]  ( .D(
        \CHIPS[1].core/buffer_pconv[430] ), .CK(clk), .RB(n3482), .Q(
        \CHIPS[1].core/buffer_pconv[448] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[449]  ( .D(
        \CHIPS[1].core/buffer_pconv[431] ), .CK(clk), .RB(n3482), .Q(
        \CHIPS[1].core/buffer_pconv[449] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[450]  ( .D(
        \CHIPS[1].core/buffer_pconv[432] ), .CK(clk), .RB(n3482), .Q(
        \CHIPS[1].core/buffer_pconv[450] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[451]  ( .D(
        \CHIPS[1].core/buffer_pconv[433] ), .CK(clk), .RB(n3481), .Q(
        \CHIPS[1].core/buffer_pconv[451] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[452]  ( .D(
        \CHIPS[1].core/buffer_pconv[434] ), .CK(clk), .RB(n3481), .Q(
        \CHIPS[1].core/buffer_pconv[452] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[453]  ( .D(
        \CHIPS[1].core/buffer_pconv[435] ), .CK(clk), .RB(n3481), .Q(
        \CHIPS[1].core/buffer_pconv[453] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[454]  ( .D(
        \CHIPS[1].core/buffer_pconv[436] ), .CK(clk), .RB(n3481), .Q(
        \CHIPS[1].core/buffer_pconv[454] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[455]  ( .D(
        \CHIPS[1].core/buffer_pconv[437] ), .CK(clk), .RB(n3481), .Q(
        \CHIPS[1].core/buffer_pconv[455] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[456]  ( .D(
        \CHIPS[1].core/buffer_pconv[438] ), .CK(clk), .RB(n3481), .Q(
        \CHIPS[1].core/buffer_pconv[456] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[457]  ( .D(
        \CHIPS[1].core/buffer_pconv[439] ), .CK(clk), .RB(n3480), .Q(
        \CHIPS[1].core/buffer_pconv[457] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[458]  ( .D(
        \CHIPS[1].core/buffer_pconv[440] ), .CK(clk), .RB(n3480), .Q(
        \CHIPS[1].core/buffer_pconv[458] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[459]  ( .D(
        \CHIPS[1].core/buffer_pconv[441] ), .CK(clk), .RB(n3480), .Q(
        \CHIPS[1].core/buffer_pconv[459] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[460]  ( .D(
        \CHIPS[1].core/buffer_pconv[442] ), .CK(clk), .RB(n3480), .Q(
        \CHIPS[1].core/buffer_pconv[460] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[461]  ( .D(
        \CHIPS[1].core/buffer_pconv[443] ), .CK(clk), .RB(n3491), .Q(
        \CHIPS[1].core/buffer_pconv[461] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[462]  ( .D(
        \CHIPS[1].core/buffer_pconv[444] ), .CK(clk), .RB(n3502), .Q(
        \CHIPS[1].core/buffer_pconv[462] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[463]  ( .D(
        \CHIPS[1].core/buffer_pconv[445] ), .CK(clk), .RB(n3614), .Q(
        \CHIPS[1].core/buffer_pconv[463] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[464]  ( .D(
        \CHIPS[1].core/buffer_pconv[446] ), .CK(clk), .RB(n3614), .Q(
        \CHIPS[1].core/buffer_pconv[464] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[465]  ( .D(
        \CHIPS[1].core/buffer_pconv[447] ), .CK(clk), .RB(n3613), .Q(
        \CHIPS[1].core/buffer_pconv[465] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[466]  ( .D(
        \CHIPS[1].core/buffer_pconv[448] ), .CK(clk), .RB(n3613), .Q(
        \CHIPS[1].core/buffer_pconv[466] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[467]  ( .D(
        \CHIPS[1].core/buffer_pconv[449] ), .CK(clk), .RB(n3613), .Q(
        \CHIPS[1].core/buffer_pconv[467] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[468]  ( .D(
        \CHIPS[1].core/buffer_pconv[450] ), .CK(clk), .RB(n3613), .Q(
        \CHIPS[1].core/buffer_pconv[468] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[469]  ( .D(
        \CHIPS[1].core/buffer_pconv[451] ), .CK(clk), .RB(n3613), .Q(
        \CHIPS[1].core/buffer_pconv[469] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[470]  ( .D(
        \CHIPS[1].core/buffer_pconv[452] ), .CK(clk), .RB(n3613), .Q(
        \CHIPS[1].core/buffer_pconv[470] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[471]  ( .D(
        \CHIPS[1].core/buffer_pconv[453] ), .CK(clk), .RB(n3612), .Q(
        \CHIPS[1].core/buffer_pconv[471] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[472]  ( .D(
        \CHIPS[1].core/buffer_pconv[454] ), .CK(clk), .RB(n3612), .Q(
        \CHIPS[1].core/buffer_pconv[472] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[473]  ( .D(
        \CHIPS[1].core/buffer_pconv[455] ), .CK(clk), .RB(n3612), .Q(
        \CHIPS[1].core/buffer_pconv[473] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[474]  ( .D(
        \CHIPS[1].core/buffer_pconv[456] ), .CK(clk), .RB(n3612), .Q(
        \CHIPS[1].core/buffer_pconv[474] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[475]  ( .D(
        \CHIPS[1].core/buffer_pconv[457] ), .CK(clk), .RB(n3612), .Q(
        \CHIPS[1].core/buffer_pconv[475] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[476]  ( .D(
        \CHIPS[1].core/buffer_pconv[458] ), .CK(clk), .RB(n3612), .Q(
        \CHIPS[1].core/buffer_pconv[476] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[477]  ( .D(
        \CHIPS[1].core/buffer_pconv[459] ), .CK(clk), .RB(n3611), .Q(
        \CHIPS[1].core/buffer_pconv[477] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[478]  ( .D(
        \CHIPS[1].core/buffer_pconv[460] ), .CK(clk), .RB(n3611), .Q(
        \CHIPS[1].core/buffer_pconv[478] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[479]  ( .D(
        \CHIPS[1].core/buffer_pconv[461] ), .CK(clk), .RB(n3611), .Q(
        \CHIPS[1].core/buffer_pconv[479] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[480]  ( .D(
        \CHIPS[1].core/buffer_pconv[462] ), .CK(clk), .RB(n3611), .Q(
        \CHIPS[1].core/buffer_pconv[480] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[481]  ( .D(
        \CHIPS[1].core/buffer_pconv[463] ), .CK(clk), .RB(n3611), .Q(
        \CHIPS[1].core/buffer_pconv[481] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[482]  ( .D(
        \CHIPS[1].core/buffer_pconv[464] ), .CK(clk), .RB(n3611), .Q(
        \CHIPS[1].core/buffer_pconv[482] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[483]  ( .D(
        \CHIPS[1].core/buffer_pconv[465] ), .CK(clk), .RB(n3610), .Q(
        \CHIPS[1].core/buffer_pconv[483] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[484]  ( .D(
        \CHIPS[1].core/buffer_pconv[466] ), .CK(clk), .RB(n3610), .Q(
        \CHIPS[1].core/buffer_pconv[484] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[485]  ( .D(
        \CHIPS[1].core/buffer_pconv[467] ), .CK(clk), .RB(n3610), .Q(
        \CHIPS[1].core/buffer_pconv[485] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[486]  ( .D(
        \CHIPS[1].core/buffer_pconv[468] ), .CK(clk), .RB(n3610), .Q(
        \CHIPS[1].core/buffer_pconv[486] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[488]  ( .D(
        \CHIPS[1].core/buffer_pconv[470] ), .CK(clk), .RB(n3610), .Q(
        \CHIPS[1].core/buffer_pconv[488] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[489]  ( .D(
        \CHIPS[1].core/buffer_pconv[471] ), .CK(clk), .RB(n3609), .Q(
        \CHIPS[1].core/buffer_pconv[489] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[490]  ( .D(
        \CHIPS[1].core/buffer_pconv[472] ), .CK(clk), .RB(n3609), .Q(
        \CHIPS[1].core/buffer_pconv[490] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[491]  ( .D(
        \CHIPS[1].core/buffer_pconv[473] ), .CK(clk), .RB(n3609), .Q(
        \CHIPS[1].core/buffer_pconv[491] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[492]  ( .D(
        \CHIPS[1].core/buffer_pconv[474] ), .CK(clk), .RB(n3609), .Q(
        \CHIPS[1].core/buffer_pconv[492] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[493]  ( .D(
        \CHIPS[1].core/buffer_pconv[475] ), .CK(clk), .RB(n3609), .Q(
        \CHIPS[1].core/buffer_pconv[493] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[494]  ( .D(
        \CHIPS[1].core/buffer_pconv[476] ), .CK(clk), .RB(n3609), .Q(
        \CHIPS[1].core/buffer_pconv[494] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[495]  ( .D(
        \CHIPS[1].core/buffer_pconv[477] ), .CK(clk), .RB(n3608), .Q(
        \CHIPS[1].core/buffer_pconv[495] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[496]  ( .D(
        \CHIPS[1].core/buffer_pconv[478] ), .CK(clk), .RB(n3608), .Q(
        \CHIPS[1].core/buffer_pconv[496] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[497]  ( .D(
        \CHIPS[1].core/buffer_pconv[479] ), .CK(clk), .RB(n3608), .Q(
        \CHIPS[1].core/buffer_pconv[497] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[498]  ( .D(
        \CHIPS[1].core/buffer_pconv[480] ), .CK(clk), .RB(n3608), .Q(
        \CHIPS[1].core/buffer_pconv[498] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[499]  ( .D(
        \CHIPS[1].core/buffer_pconv[481] ), .CK(clk), .RB(n3608), .Q(
        \CHIPS[1].core/buffer_pconv[499] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[500]  ( .D(
        \CHIPS[1].core/buffer_pconv[482] ), .CK(clk), .RB(n3608), .Q(
        \CHIPS[1].core/buffer_pconv[500] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[501]  ( .D(
        \CHIPS[1].core/buffer_pconv[483] ), .CK(clk), .RB(n3607), .Q(
        \CHIPS[1].core/buffer_pconv[501] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[502]  ( .D(
        \CHIPS[1].core/buffer_pconv[484] ), .CK(clk), .RB(n3607), .Q(
        \CHIPS[1].core/buffer_pconv[502] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[503]  ( .D(
        \CHIPS[1].core/buffer_pconv[485] ), .CK(clk), .RB(n3607), .Q(
        \CHIPS[1].core/buffer_pconv[503] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[504]  ( .D(
        \CHIPS[1].core/buffer_pconv[486] ), .CK(clk), .RB(n3607), .Q(
        \CHIPS[1].core/buffer_pconv[504] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[505]  ( .D(
        \CHIPS[1].core/buffer_pconv[487] ), .CK(clk), .RB(n3607), .Q(
        \CHIPS[1].core/buffer_pconv[505] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[506]  ( .D(
        \CHIPS[1].core/buffer_pconv[488] ), .CK(clk), .RB(n3607), .Q(
        \CHIPS[1].core/buffer_pconv[506] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[507]  ( .D(
        \CHIPS[1].core/buffer_pconv[489] ), .CK(clk), .RB(n3606), .Q(
        \CHIPS[1].core/buffer_pconv[507] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[508]  ( .D(
        \CHIPS[1].core/buffer_pconv[490] ), .CK(clk), .RB(n3606), .Q(
        \CHIPS[1].core/buffer_pconv[508] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[509]  ( .D(
        \CHIPS[1].core/buffer_pconv[491] ), .CK(clk), .RB(n3606), .Q(
        \CHIPS[1].core/buffer_pconv[509] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[510]  ( .D(
        \CHIPS[1].core/buffer_pconv[492] ), .CK(clk), .RB(n3606), .Q(
        \CHIPS[1].core/buffer_pconv[510] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[511]  ( .D(
        \CHIPS[1].core/buffer_pconv[493] ), .CK(clk), .RB(n3606), .Q(
        \CHIPS[1].core/buffer_pconv[511] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[512]  ( .D(
        \CHIPS[1].core/buffer_pconv[494] ), .CK(clk), .RB(n3606), .Q(
        \CHIPS[1].core/buffer_pconv[512] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[513]  ( .D(
        \CHIPS[1].core/buffer_pconv[495] ), .CK(clk), .RB(n3605), .Q(
        \CHIPS[1].core/buffer_pconv[513] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[514]  ( .D(
        \CHIPS[1].core/buffer_pconv[496] ), .CK(clk), .RB(n3605), .Q(
        \CHIPS[1].core/buffer_pconv[514] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[515]  ( .D(
        \CHIPS[1].core/buffer_pconv[497] ), .CK(clk), .RB(n3605), .Q(
        \CHIPS[1].core/buffer_pconv[515] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[516]  ( .D(
        \CHIPS[1].core/buffer_pconv[498] ), .CK(clk), .RB(n3605), .Q(
        \CHIPS[1].core/buffer_pconv[516] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[517]  ( .D(
        \CHIPS[1].core/buffer_pconv[499] ), .CK(clk), .RB(n3605), .Q(
        \CHIPS[1].core/buffer_pconv[517] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[518]  ( .D(
        \CHIPS[1].core/buffer_pconv[500] ), .CK(clk), .RB(n3605), .Q(
        \CHIPS[1].core/buffer_pconv[518] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[519]  ( .D(
        \CHIPS[1].core/buffer_pconv[501] ), .CK(clk), .RB(n3604), .Q(
        \CHIPS[1].core/buffer_pconv[519] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[520]  ( .D(
        \CHIPS[1].core/buffer_pconv[502] ), .CK(clk), .RB(n3604), .Q(
        \CHIPS[1].core/buffer_pconv[520] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[521]  ( .D(
        \CHIPS[1].core/buffer_pconv[503] ), .CK(clk), .RB(n3604), .Q(
        \CHIPS[1].core/buffer_pconv[521] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[522]  ( .D(
        \CHIPS[1].core/buffer_pconv[504] ), .CK(clk), .RB(n3604), .Q(
        \CHIPS[1].core/buffer_pconv[522] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[523]  ( .D(
        \CHIPS[1].core/buffer_pconv[505] ), .CK(clk), .RB(n3604), .Q(
        \CHIPS[1].core/buffer_pconv[523] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[524]  ( .D(
        \CHIPS[1].core/buffer_pconv[506] ), .CK(clk), .RB(n3604), .Q(
        \CHIPS[1].core/buffer_pconv[524] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[525]  ( .D(
        \CHIPS[1].core/buffer_pconv[507] ), .CK(clk), .RB(n3603), .Q(
        \CHIPS[1].core/buffer_pconv[525] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[526]  ( .D(
        \CHIPS[1].core/buffer_pconv[508] ), .CK(clk), .RB(n3603), .Q(
        \CHIPS[1].core/buffer_pconv[526] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[527]  ( .D(
        \CHIPS[1].core/buffer_pconv[509] ), .CK(clk), .RB(n3603), .Q(
        \CHIPS[1].core/buffer_pconv[527] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[528]  ( .D(
        \CHIPS[1].core/buffer_pconv[510] ), .CK(clk), .RB(n3603), .Q(
        \CHIPS[1].core/buffer_pconv[528] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[529]  ( .D(
        \CHIPS[1].core/buffer_pconv[511] ), .CK(clk), .RB(n3603), .Q(
        \CHIPS[1].core/buffer_pconv[529] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[530]  ( .D(
        \CHIPS[1].core/buffer_pconv[512] ), .CK(clk), .RB(n3603), .Q(
        \CHIPS[1].core/buffer_pconv[530] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[531]  ( .D(
        \CHIPS[1].core/buffer_pconv[513] ), .CK(clk), .RB(n3602), .Q(
        \CHIPS[1].core/buffer_pconv[531] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[532]  ( .D(
        \CHIPS[1].core/buffer_pconv[514] ), .CK(clk), .RB(n3602), .Q(
        \CHIPS[1].core/buffer_pconv[532] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[533]  ( .D(
        \CHIPS[1].core/buffer_pconv[515] ), .CK(clk), .RB(n3602), .Q(
        \CHIPS[1].core/buffer_pconv[533] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[534]  ( .D(
        \CHIPS[1].core/buffer_pconv[516] ), .CK(clk), .RB(n3602), .Q(
        \CHIPS[1].core/buffer_pconv[534] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[535]  ( .D(
        \CHIPS[1].core/buffer_pconv[517] ), .CK(clk), .RB(n3602), .Q(
        \CHIPS[1].core/buffer_pconv[535] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[536]  ( .D(
        \CHIPS[1].core/buffer_pconv[518] ), .CK(clk), .RB(n3601), .Q(
        \CHIPS[1].core/buffer_pconv[536] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[537]  ( .D(
        \CHIPS[1].core/buffer_pconv[519] ), .CK(clk), .RB(n3601), .Q(
        \CHIPS[1].core/buffer_pconv[537] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[538]  ( .D(
        \CHIPS[1].core/buffer_pconv[520] ), .CK(clk), .RB(n3601), .Q(
        \CHIPS[1].core/buffer_pconv[538] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[539]  ( .D(
        \CHIPS[1].core/buffer_pconv[521] ), .CK(clk), .RB(n3601), .Q(
        \CHIPS[1].core/buffer_pconv[539] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[540]  ( .D(
        \CHIPS[1].core/buffer_pconv[522] ), .CK(clk), .RB(n3601), .Q(
        \CHIPS[1].core/buffer_pconv[540] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[541]  ( .D(
        \CHIPS[1].core/buffer_pconv[523] ), .CK(clk), .RB(n3601), .Q(
        \CHIPS[1].core/buffer_pconv[541] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[542]  ( .D(
        \CHIPS[1].core/buffer_pconv[524] ), .CK(clk), .RB(n3600), .Q(
        \CHIPS[1].core/buffer_pconv[542] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[543]  ( .D(
        \CHIPS[1].core/buffer_pconv[525] ), .CK(clk), .RB(n3600), .Q(
        \CHIPS[1].core/buffer_pconv[543] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[544]  ( .D(
        \CHIPS[1].core/buffer_pconv[526] ), .CK(clk), .RB(n3600), .Q(
        \CHIPS[1].core/buffer_pconv[544] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[545]  ( .D(
        \CHIPS[1].core/buffer_pconv[527] ), .CK(clk), .RB(n3600), .Q(
        \CHIPS[1].core/buffer_pconv[545] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[546]  ( .D(
        \CHIPS[1].core/buffer_pconv[528] ), .CK(clk), .RB(n3600), .Q(
        \CHIPS[1].core/buffer_pconv[546] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[547]  ( .D(
        \CHIPS[1].core/buffer_pconv[529] ), .CK(clk), .RB(n3600), .Q(
        \CHIPS[1].core/buffer_pconv[547] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[548]  ( .D(
        \CHIPS[1].core/buffer_pconv[530] ), .CK(clk), .RB(n3599), .Q(
        \CHIPS[1].core/buffer_pconv[548] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[549]  ( .D(
        \CHIPS[1].core/buffer_pconv[531] ), .CK(clk), .RB(n3599), .Q(
        \CHIPS[1].core/buffer_pconv[549] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[550]  ( .D(
        \CHIPS[1].core/buffer_pconv[532] ), .CK(clk), .RB(n3599), .Q(
        \CHIPS[1].core/buffer_pconv[550] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[551]  ( .D(
        \CHIPS[1].core/buffer_pconv[533] ), .CK(clk), .RB(n3599), .Q(
        \CHIPS[1].core/buffer_pconv[551] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[552]  ( .D(
        \CHIPS[1].core/buffer_pconv[534] ), .CK(clk), .RB(n3599), .Q(
        \CHIPS[1].core/buffer_pconv[552] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[553]  ( .D(
        \CHIPS[1].core/buffer_pconv[535] ), .CK(clk), .RB(n3599), .Q(
        \CHIPS[1].core/buffer_pconv[553] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[554]  ( .D(
        \CHIPS[1].core/buffer_pconv[536] ), .CK(clk), .RB(n3598), .Q(
        \CHIPS[1].core/buffer_pconv[554] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[555]  ( .D(
        \CHIPS[1].core/buffer_pconv[537] ), .CK(clk), .RB(n3598), .Q(
        \CHIPS[1].core/buffer_pconv[555] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[556]  ( .D(
        \CHIPS[1].core/buffer_pconv[538] ), .CK(clk), .RB(n3598), .Q(
        \CHIPS[1].core/buffer_pconv[556] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[557]  ( .D(
        \CHIPS[1].core/buffer_pconv[539] ), .CK(clk), .RB(n3598), .Q(
        \CHIPS[1].core/buffer_pconv[557] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[558]  ( .D(
        \CHIPS[1].core/buffer_pconv[540] ), .CK(clk), .RB(n3598), .Q(
        \CHIPS[1].core/buffer_pconv[558] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[559]  ( .D(
        \CHIPS[1].core/buffer_pconv[541] ), .CK(clk), .RB(n3598), .Q(
        \CHIPS[1].core/buffer_pconv[559] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[560]  ( .D(
        \CHIPS[1].core/buffer_pconv[542] ), .CK(clk), .RB(n3597), .Q(
        \CHIPS[1].core/buffer_pconv[560] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[561]  ( .D(
        \CHIPS[1].core/buffer_pconv[543] ), .CK(clk), .RB(n3597), .Q(
        \CHIPS[1].core/buffer_pconv[561] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[562]  ( .D(
        \CHIPS[1].core/buffer_pconv[544] ), .CK(clk), .RB(n3597), .Q(
        \CHIPS[1].core/buffer_pconv[562] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[563]  ( .D(
        \CHIPS[1].core/buffer_pconv[545] ), .CK(clk), .RB(n3597), .Q(
        \CHIPS[1].core/buffer_pconv[563] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[564]  ( .D(
        \CHIPS[1].core/buffer_pconv[546] ), .CK(clk), .RB(n3597), .Q(
        \CHIPS[1].core/buffer_pconv[564] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[565]  ( .D(
        \CHIPS[1].core/buffer_pconv[547] ), .CK(clk), .RB(n3597), .Q(
        \CHIPS[1].core/buffer_pconv[565] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[566]  ( .D(
        \CHIPS[1].core/buffer_pconv[548] ), .CK(clk), .RB(n3596), .Q(
        \CHIPS[1].core/buffer_pconv[566] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[567]  ( .D(
        \CHIPS[1].core/buffer_pconv[549] ), .CK(clk), .RB(n3596), .Q(
        \CHIPS[1].core/buffer_pconv[567] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[568]  ( .D(
        \CHIPS[1].core/buffer_pconv[550] ), .CK(clk), .RB(n3596), .Q(
        \CHIPS[1].core/buffer_pconv[568] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[569]  ( .D(
        \CHIPS[1].core/buffer_pconv[551] ), .CK(clk), .RB(n3596), .Q(
        \CHIPS[1].core/buffer_pconv[569] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[570]  ( .D(
        \CHIPS[1].core/buffer_pconv[552] ), .CK(clk), .RB(n3596), .Q(
        \CHIPS[1].core/buffer_pconv[570] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[571]  ( .D(
        \CHIPS[1].core/buffer_pconv[553] ), .CK(clk), .RB(n3596), .Q(
        \CHIPS[1].core/buffer_pconv[571] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[572]  ( .D(
        \CHIPS[1].core/buffer_pconv[554] ), .CK(clk), .RB(n3595), .Q(
        \CHIPS[1].core/buffer_pconv[572] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[573]  ( .D(
        \CHIPS[1].core/buffer_pconv[555] ), .CK(clk), .RB(n3595), .Q(
        \CHIPS[1].core/buffer_pconv[573] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[574]  ( .D(
        \CHIPS[1].core/buffer_pconv[556] ), .CK(clk), .RB(n3595), .Q(
        \CHIPS[1].core/buffer_pconv[574] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[575]  ( .D(
        \CHIPS[1].core/buffer_pconv[557] ), .CK(clk), .RB(n3595), .Q(
        \CHIPS[1].core/buffer_pconv[575] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[576]  ( .D(
        \CHIPS[1].core/buffer_pconv[558] ), .CK(clk), .RB(n3595), .Q(
        \CHIPS[1].core/buffer_pconv[576] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[577]  ( .D(
        \CHIPS[1].core/buffer_pconv[559] ), .CK(clk), .RB(n3595), .Q(
        \CHIPS[1].core/buffer_pconv[577] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[578]  ( .D(
        \CHIPS[1].core/buffer_pconv[560] ), .CK(clk), .RB(n3594), .Q(
        \CHIPS[1].core/buffer_pconv[578] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[579]  ( .D(
        \CHIPS[1].core/buffer_pconv[561] ), .CK(clk), .RB(n3594), .Q(
        \CHIPS[1].core/buffer_pconv[579] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[580]  ( .D(
        \CHIPS[1].core/buffer_pconv[562] ), .CK(clk), .RB(n3594), .Q(
        \CHIPS[1].core/buffer_pconv[580] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[581]  ( .D(
        \CHIPS[1].core/buffer_pconv[563] ), .CK(clk), .RB(n3594), .Q(
        \CHIPS[1].core/buffer_pconv[581] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[582]  ( .D(
        \CHIPS[1].core/buffer_pconv[564] ), .CK(clk), .RB(n3594), .Q(
        \CHIPS[1].core/buffer_pconv[582] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[583]  ( .D(
        \CHIPS[1].core/buffer_pconv[565] ), .CK(clk), .RB(n3594), .Q(
        \CHIPS[1].core/buffer_pconv[583] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[584]  ( .D(
        \CHIPS[1].core/buffer_pconv[566] ), .CK(clk), .RB(n3593), .Q(
        \CHIPS[1].core/buffer_pconv[584] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[585]  ( .D(
        \CHIPS[1].core/buffer_pconv[567] ), .CK(clk), .RB(n3593), .Q(
        \CHIPS[1].core/buffer_pconv[585] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[586]  ( .D(
        \CHIPS[1].core/buffer_pconv[568] ), .CK(clk), .RB(n3593), .Q(
        \CHIPS[1].core/buffer_pconv[586] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[587]  ( .D(
        \CHIPS[1].core/buffer_pconv[569] ), .CK(clk), .RB(n3593), .Q(
        \CHIPS[1].core/buffer_pconv[587] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[588]  ( .D(
        \CHIPS[1].core/buffer_pconv[570] ), .CK(clk), .RB(n3593), .Q(
        \CHIPS[1].core/buffer_pconv[588] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[589]  ( .D(
        \CHIPS[1].core/buffer_pconv[571] ), .CK(clk), .RB(n3593), .Q(
        \CHIPS[1].core/buffer_pconv[589] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[590]  ( .D(
        \CHIPS[1].core/buffer_pconv[572] ), .CK(clk), .RB(n3592), .Q(
        \CHIPS[1].core/buffer_pconv[590] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[591]  ( .D(
        \CHIPS[1].core/buffer_pconv[573] ), .CK(clk), .RB(n3592), .Q(
        \CHIPS[1].core/buffer_pconv[591] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[592]  ( .D(
        \CHIPS[1].core/buffer_pconv[574] ), .CK(clk), .RB(n3592), .Q(
        \CHIPS[1].core/buffer_pconv[592] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[593]  ( .D(
        \CHIPS[1].core/buffer_pconv[575] ), .CK(clk), .RB(n3592), .Q(
        \CHIPS[1].core/buffer_pconv[593] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[594]  ( .D(
        \CHIPS[1].core/buffer_pconv[576] ), .CK(clk), .RB(n3592), .Q(
        \CHIPS[1].core/buffer_pconv[594] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[595]  ( .D(
        \CHIPS[1].core/buffer_pconv[577] ), .CK(clk), .RB(n3592), .Q(
        \CHIPS[1].core/buffer_pconv[595] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[596]  ( .D(
        \CHIPS[1].core/buffer_pconv[578] ), .CK(clk), .RB(n3591), .Q(
        \CHIPS[1].core/buffer_pconv[596] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[597]  ( .D(
        \CHIPS[1].core/buffer_pconv[579] ), .CK(clk), .RB(n3591), .Q(
        \CHIPS[1].core/buffer_pconv[597] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[598]  ( .D(
        \CHIPS[1].core/buffer_pconv[580] ), .CK(clk), .RB(n3591), .Q(
        \CHIPS[1].core/buffer_pconv[598] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[599]  ( .D(
        \CHIPS[1].core/buffer_pconv[581] ), .CK(clk), .RB(n3602), .Q(
        \CHIPS[1].core/buffer_pconv[599] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[600]  ( .D(
        \CHIPS[1].core/buffer_pconv[582] ), .CK(clk), .RB(n3636), .Q(
        \CHIPS[1].core/buffer_pconv[600] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[601]  ( .D(
        \CHIPS[1].core/buffer_pconv[583] ), .CK(clk), .RB(n3636), .Q(
        \CHIPS[1].core/buffer_pconv[601] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[602]  ( .D(
        \CHIPS[1].core/buffer_pconv[584] ), .CK(clk), .RB(n3636), .Q(
        \CHIPS[1].core/buffer_pconv[602] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[603]  ( .D(
        \CHIPS[1].core/buffer_pconv[585] ), .CK(clk), .RB(n3636), .Q(
        \CHIPS[1].core/buffer_pconv[603] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[604]  ( .D(
        \CHIPS[1].core/buffer_pconv[586] ), .CK(clk), .RB(n3636), .Q(
        \CHIPS[1].core/buffer_pconv[604] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[605]  ( .D(
        \CHIPS[1].core/buffer_pconv[587] ), .CK(clk), .RB(n3636), .Q(
        \CHIPS[1].core/buffer_pconv[605] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[606]  ( .D(
        \CHIPS[1].core/buffer_pconv[588] ), .CK(clk), .RB(n3635), .Q(
        \CHIPS[1].core/buffer_pconv[606] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[607]  ( .D(
        \CHIPS[1].core/buffer_pconv[589] ), .CK(clk), .RB(n3635), .Q(
        \CHIPS[1].core/buffer_pconv[607] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[608]  ( .D(
        \CHIPS[1].core/buffer_pconv[590] ), .CK(clk), .RB(n3635), .Q(
        \CHIPS[1].core/buffer_pconv[608] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[609]  ( .D(
        \CHIPS[1].core/buffer_pconv[591] ), .CK(clk), .RB(n3635), .Q(
        \CHIPS[1].core/buffer_pconv[609] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[610]  ( .D(
        \CHIPS[1].core/buffer_pconv[592] ), .CK(clk), .RB(n3635), .Q(
        \CHIPS[1].core/buffer_pconv[610] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[611]  ( .D(
        \CHIPS[1].core/buffer_pconv[593] ), .CK(clk), .RB(n3635), .Q(
        \CHIPS[1].core/buffer_pconv[611] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[612]  ( .D(
        \CHIPS[1].core/buffer_pconv[594] ), .CK(clk), .RB(n3634), .Q(
        \CHIPS[1].core/buffer_pconv[612] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[613]  ( .D(
        \CHIPS[1].core/buffer_pconv[595] ), .CK(clk), .RB(n3634), .Q(
        \CHIPS[1].core/buffer_pconv[613] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[614]  ( .D(
        \CHIPS[1].core/buffer_pconv[596] ), .CK(clk), .RB(n3634), .Q(
        \CHIPS[1].core/buffer_pconv[614] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[615]  ( .D(
        \CHIPS[1].core/buffer_pconv[597] ), .CK(clk), .RB(n3634), .Q(
        \CHIPS[1].core/buffer_pconv[615] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[616]  ( .D(
        \CHIPS[1].core/buffer_pconv[598] ), .CK(clk), .RB(n3634), .Q(
        \CHIPS[1].core/buffer_pconv[616] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[617]  ( .D(
        \CHIPS[1].core/buffer_pconv[599] ), .CK(clk), .RB(n3634), .Q(
        \CHIPS[1].core/buffer_pconv[617] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[618]  ( .D(
        \CHIPS[1].core/buffer_pconv[600] ), .CK(clk), .RB(n3633), .Q(
        \CHIPS[1].core/buffer_pconv[618] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[619]  ( .D(
        \CHIPS[1].core/buffer_pconv[601] ), .CK(clk), .RB(n3633), .Q(
        \CHIPS[1].core/buffer_pconv[619] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[620]  ( .D(
        \CHIPS[1].core/buffer_pconv[602] ), .CK(clk), .RB(n3633), .Q(
        \CHIPS[1].core/buffer_pconv[620] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[621]  ( .D(
        \CHIPS[1].core/buffer_pconv[603] ), .CK(clk), .RB(n3633), .Q(
        \CHIPS[1].core/buffer_pconv[621] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[622]  ( .D(
        \CHIPS[1].core/buffer_pconv[604] ), .CK(clk), .RB(n3633), .Q(
        \CHIPS[1].core/buffer_pconv[622] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[623]  ( .D(
        \CHIPS[1].core/buffer_pconv[605] ), .CK(clk), .RB(n3633), .Q(
        \CHIPS[1].core/buffer_pconv[623] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[624]  ( .D(
        \CHIPS[1].core/buffer_pconv[606] ), .CK(clk), .RB(n3632), .Q(
        \CHIPS[1].core/buffer_pconv[624] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[625]  ( .D(
        \CHIPS[1].core/buffer_pconv[607] ), .CK(clk), .RB(n3632), .Q(
        \CHIPS[1].core/buffer_pconv[625] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[626]  ( .D(
        \CHIPS[1].core/buffer_pconv[608] ), .CK(clk), .RB(n3632), .Q(
        \CHIPS[1].core/buffer_pconv[626] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[627]  ( .D(
        \CHIPS[1].core/buffer_pconv[609] ), .CK(clk), .RB(n3632), .Q(
        \CHIPS[1].core/buffer_pconv[627] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[628]  ( .D(
        \CHIPS[1].core/buffer_pconv[610] ), .CK(clk), .RB(n3632), .Q(
        \CHIPS[1].core/buffer_pconv[628] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[629]  ( .D(
        \CHIPS[1].core/buffer_pconv[611] ), .CK(clk), .RB(n3632), .Q(
        \CHIPS[1].core/buffer_pconv[629] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[630]  ( .D(
        \CHIPS[1].core/buffer_pconv[612] ), .CK(clk), .RB(n3631), .Q(
        \CHIPS[1].core/buffer_pconv[630] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[631]  ( .D(
        \CHIPS[1].core/buffer_pconv[613] ), .CK(clk), .RB(n3631), .Q(
        \CHIPS[1].core/buffer_pconv[631] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[632]  ( .D(
        \CHIPS[1].core/buffer_pconv[614] ), .CK(clk), .RB(n3631), .Q(
        \CHIPS[1].core/buffer_pconv[632] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[633]  ( .D(
        \CHIPS[1].core/buffer_pconv[615] ), .CK(clk), .RB(n3631), .Q(
        \CHIPS[1].core/buffer_pconv[633] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[634]  ( .D(
        \CHIPS[1].core/buffer_pconv[616] ), .CK(clk), .RB(n3631), .Q(
        \CHIPS[1].core/buffer_pconv[634] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[635]  ( .D(
        \CHIPS[1].core/buffer_pconv[617] ), .CK(clk), .RB(n3631), .Q(
        \CHIPS[1].core/buffer_pconv[635] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[636]  ( .D(
        \CHIPS[1].core/buffer_pconv[618] ), .CK(clk), .RB(n3630), .Q(
        \CHIPS[1].core/buffer_pconv[636] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[637]  ( .D(
        \CHIPS[1].core/buffer_pconv[619] ), .CK(clk), .RB(n3630), .Q(
        \CHIPS[1].core/buffer_pconv[637] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[638]  ( .D(
        \CHIPS[1].core/buffer_pconv[620] ), .CK(clk), .RB(n3630), .Q(
        \CHIPS[1].core/buffer_pconv[638] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[639]  ( .D(
        \CHIPS[1].core/buffer_pconv[621] ), .CK(clk), .RB(n3630), .Q(
        \CHIPS[1].core/buffer_pconv[639] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[640]  ( .D(
        \CHIPS[1].core/buffer_pconv[622] ), .CK(clk), .RB(n3630), .Q(
        \CHIPS[1].core/buffer_pconv[640] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[641]  ( .D(
        \CHIPS[1].core/buffer_pconv[623] ), .CK(clk), .RB(n3630), .Q(
        \CHIPS[1].core/buffer_pconv[641] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[642]  ( .D(
        \CHIPS[1].core/buffer_pconv[624] ), .CK(clk), .RB(n3629), .Q(
        \CHIPS[1].core/buffer_pconv[642] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[643]  ( .D(
        \CHIPS[1].core/buffer_pconv[625] ), .CK(clk), .RB(n3629), .Q(
        \CHIPS[1].core/buffer_pconv[643] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[644]  ( .D(
        \CHIPS[1].core/buffer_pconv[626] ), .CK(clk), .RB(n3629), .Q(
        \CHIPS[1].core/buffer_pconv[644] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[645]  ( .D(
        \CHIPS[1].core/buffer_pconv[627] ), .CK(clk), .RB(n3629), .Q(
        \CHIPS[1].core/buffer_pconv[645] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[646]  ( .D(
        \CHIPS[1].core/buffer_pconv[628] ), .CK(clk), .RB(n3629), .Q(
        \CHIPS[1].core/buffer_pconv[646] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[647]  ( .D(
        \CHIPS[1].core/buffer_pconv[629] ), .CK(clk), .RB(n3629), .Q(
        \CHIPS[1].core/buffer_pconv[647] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[648]  ( .D(
        \CHIPS[1].core/buffer_pconv[630] ), .CK(clk), .RB(n3628), .Q(
        \CHIPS[1].core/buffer_pconv[648] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[649]  ( .D(
        \CHIPS[1].core/buffer_pconv[631] ), .CK(clk), .RB(n3628), .Q(
        \CHIPS[1].core/buffer_pconv[649] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[650]  ( .D(
        \CHIPS[1].core/buffer_pconv[632] ), .CK(clk), .RB(n3628), .Q(
        \CHIPS[1].core/buffer_pconv[650] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[651]  ( .D(
        \CHIPS[1].core/buffer_pconv[633] ), .CK(clk), .RB(n3628), .Q(
        \CHIPS[1].core/buffer_pconv[651] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[652]  ( .D(
        \CHIPS[1].core/buffer_pconv[634] ), .CK(clk), .RB(n3628), .Q(
        \CHIPS[1].core/buffer_pconv[652] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[653]  ( .D(
        \CHIPS[1].core/buffer_pconv[635] ), .CK(clk), .RB(n3628), .Q(
        \CHIPS[1].core/buffer_pconv[653] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[654]  ( .D(
        \CHIPS[1].core/buffer_pconv[636] ), .CK(clk), .RB(n3627), .Q(
        \CHIPS[1].core/buffer_pconv[654] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[655]  ( .D(
        \CHIPS[1].core/buffer_pconv[637] ), .CK(clk), .RB(n3627), .Q(
        \CHIPS[1].core/buffer_pconv[655] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[656]  ( .D(
        \CHIPS[1].core/buffer_pconv[638] ), .CK(clk), .RB(n3627), .Q(
        \CHIPS[1].core/buffer_pconv[656] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[657]  ( .D(
        \CHIPS[1].core/buffer_pconv[639] ), .CK(clk), .RB(n3627), .Q(
        \CHIPS[1].core/buffer_pconv[657] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[658]  ( .D(
        \CHIPS[1].core/buffer_pconv[640] ), .CK(clk), .RB(n3627), .Q(
        \CHIPS[1].core/buffer_pconv[658] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[659]  ( .D(
        \CHIPS[1].core/buffer_pconv[641] ), .CK(clk), .RB(n3627), .Q(
        \CHIPS[1].core/buffer_pconv[659] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[660]  ( .D(
        \CHIPS[1].core/buffer_pconv[642] ), .CK(clk), .RB(n3626), .Q(
        \CHIPS[1].core/buffer_pconv[660] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[661]  ( .D(
        \CHIPS[1].core/buffer_pconv[643] ), .CK(clk), .RB(n3626), .Q(
        \CHIPS[1].core/buffer_pconv[661] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[662]  ( .D(
        \CHIPS[1].core/buffer_pconv[644] ), .CK(clk), .RB(n3626), .Q(
        \CHIPS[1].core/buffer_pconv[662] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[663]  ( .D(
        \CHIPS[1].core/buffer_pconv[645] ), .CK(clk), .RB(n3626), .Q(
        \CHIPS[1].core/buffer_pconv[663] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[664]  ( .D(
        \CHIPS[1].core/buffer_pconv[646] ), .CK(clk), .RB(n3626), .Q(
        \CHIPS[1].core/buffer_pconv[664] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[665]  ( .D(
        \CHIPS[1].core/buffer_pconv[647] ), .CK(clk), .RB(n3626), .Q(
        \CHIPS[1].core/buffer_pconv[665] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[666]  ( .D(
        \CHIPS[1].core/buffer_pconv[648] ), .CK(clk), .RB(n3625), .Q(
        \CHIPS[1].core/buffer_pconv[666] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[667]  ( .D(
        \CHIPS[1].core/buffer_pconv[649] ), .CK(clk), .RB(n3625), .Q(
        \CHIPS[1].core/buffer_pconv[667] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[668]  ( .D(
        \CHIPS[1].core/buffer_pconv[650] ), .CK(clk), .RB(n3625), .Q(
        \CHIPS[1].core/buffer_pconv[668] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[669]  ( .D(
        \CHIPS[1].core/buffer_pconv[651] ), .CK(clk), .RB(n3625), .Q(
        \CHIPS[1].core/buffer_pconv[669] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[670]  ( .D(
        \CHIPS[1].core/buffer_pconv[652] ), .CK(clk), .RB(n3625), .Q(
        \CHIPS[1].core/buffer_pconv[670] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[671]  ( .D(
        \CHIPS[1].core/buffer_pconv[653] ), .CK(clk), .RB(n3624), .Q(
        \CHIPS[1].core/buffer_pconv[671] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[672]  ( .D(
        \CHIPS[1].core/buffer_pconv[654] ), .CK(clk), .RB(n3624), .Q(
        \CHIPS[1].core/buffer_pconv[672] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[673]  ( .D(
        \CHIPS[1].core/buffer_pconv[655] ), .CK(clk), .RB(n3624), .Q(
        \CHIPS[1].core/buffer_pconv[673] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[674]  ( .D(
        \CHIPS[1].core/buffer_pconv[656] ), .CK(clk), .RB(n3624), .Q(
        \CHIPS[1].core/buffer_pconv[674] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[675]  ( .D(
        \CHIPS[1].core/buffer_pconv[657] ), .CK(clk), .RB(n3624), .Q(
        \CHIPS[1].core/buffer_pconv[675] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[676]  ( .D(
        \CHIPS[1].core/buffer_pconv[658] ), .CK(clk), .RB(n3624), .Q(
        \CHIPS[1].core/buffer_pconv[676] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[677]  ( .D(
        \CHIPS[1].core/buffer_pconv[659] ), .CK(clk), .RB(n3623), .Q(
        \CHIPS[1].core/buffer_pconv[677] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[678]  ( .D(
        \CHIPS[1].core/buffer_pconv[660] ), .CK(clk), .RB(n3623), .Q(
        \CHIPS[1].core/buffer_pconv[678] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[679]  ( .D(
        \CHIPS[1].core/buffer_pconv[661] ), .CK(clk), .RB(n3623), .Q(
        \CHIPS[1].core/buffer_pconv[679] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[680]  ( .D(
        \CHIPS[1].core/buffer_pconv[662] ), .CK(clk), .RB(n3623), .Q(
        \CHIPS[1].core/buffer_pconv[680] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[681]  ( .D(
        \CHIPS[1].core/buffer_pconv[663] ), .CK(clk), .RB(n3623), .Q(
        \CHIPS[1].core/buffer_pconv[681] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[682]  ( .D(
        \CHIPS[1].core/buffer_pconv[664] ), .CK(clk), .RB(n3623), .Q(
        \CHIPS[1].core/buffer_pconv[682] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[683]  ( .D(
        \CHIPS[1].core/buffer_pconv[665] ), .CK(clk), .RB(n3622), .Q(
        \CHIPS[1].core/buffer_pconv[683] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[684]  ( .D(
        \CHIPS[1].core/buffer_pconv[666] ), .CK(clk), .RB(n3622), .Q(
        \CHIPS[1].core/buffer_pconv[684] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[685]  ( .D(
        \CHIPS[1].core/buffer_pconv[667] ), .CK(clk), .RB(n3622), .Q(
        \CHIPS[1].core/buffer_pconv[685] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[686]  ( .D(
        \CHIPS[1].core/buffer_pconv[668] ), .CK(clk), .RB(n3622), .Q(
        \CHIPS[1].core/buffer_pconv[686] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[687]  ( .D(
        \CHIPS[1].core/buffer_pconv[669] ), .CK(clk), .RB(n3622), .Q(
        \CHIPS[1].core/buffer_pconv[687] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[688]  ( .D(
        \CHIPS[1].core/buffer_pconv[670] ), .CK(clk), .RB(n3622), .Q(
        \CHIPS[1].core/buffer_pconv[688] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[689]  ( .D(
        \CHIPS[1].core/buffer_pconv[671] ), .CK(clk), .RB(n3621), .Q(
        \CHIPS[1].core/buffer_pconv[689] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[690]  ( .D(
        \CHIPS[1].core/buffer_pconv[672] ), .CK(clk), .RB(n3621), .Q(
        \CHIPS[1].core/buffer_pconv[690] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[691]  ( .D(
        \CHIPS[1].core/buffer_pconv[673] ), .CK(clk), .RB(n3621), .Q(
        \CHIPS[1].core/buffer_pconv[691] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[692]  ( .D(
        \CHIPS[1].core/buffer_pconv[674] ), .CK(clk), .RB(n3621), .Q(
        \CHIPS[1].core/buffer_pconv[692] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[693]  ( .D(
        \CHIPS[1].core/buffer_pconv[675] ), .CK(clk), .RB(n3621), .Q(
        \CHIPS[1].core/buffer_pconv[693] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[694]  ( .D(
        \CHIPS[1].core/buffer_pconv[676] ), .CK(clk), .RB(n3621), .Q(
        \CHIPS[1].core/buffer_pconv[694] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[695]  ( .D(
        \CHIPS[1].core/buffer_pconv[677] ), .CK(clk), .RB(n3620), .Q(
        \CHIPS[1].core/buffer_pconv[695] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[696]  ( .D(
        \CHIPS[1].core/buffer_pconv[678] ), .CK(clk), .RB(n3620), .Q(
        \CHIPS[1].core/buffer_pconv[696] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[697]  ( .D(
        \CHIPS[1].core/buffer_pconv[679] ), .CK(clk), .RB(n3620), .Q(
        \CHIPS[1].core/buffer_pconv[697] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[698]  ( .D(
        \CHIPS[1].core/buffer_pconv[680] ), .CK(clk), .RB(n3620), .Q(
        \CHIPS[1].core/buffer_pconv[698] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[699]  ( .D(
        \CHIPS[1].core/buffer_pconv[681] ), .CK(clk), .RB(n3620), .Q(
        \CHIPS[1].core/buffer_pconv[699] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[700]  ( .D(
        \CHIPS[1].core/buffer_pconv[682] ), .CK(clk), .RB(n3620), .Q(
        \CHIPS[1].core/buffer_pconv[700] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[701]  ( .D(
        \CHIPS[1].core/buffer_pconv[683] ), .CK(clk), .RB(n3619), .Q(
        \CHIPS[1].core/buffer_pconv[701] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[702]  ( .D(
        \CHIPS[1].core/buffer_pconv[684] ), .CK(clk), .RB(n3619), .Q(
        \CHIPS[1].core/buffer_pconv[702] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[703]  ( .D(
        \CHIPS[1].core/buffer_pconv[685] ), .CK(clk), .RB(n3619), .Q(
        \CHIPS[1].core/buffer_pconv[703] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[704]  ( .D(
        \CHIPS[1].core/buffer_pconv[686] ), .CK(clk), .RB(n3619), .Q(
        \CHIPS[1].core/buffer_pconv[704] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[705]  ( .D(
        \CHIPS[1].core/buffer_pconv[687] ), .CK(clk), .RB(n3619), .Q(
        \CHIPS[1].core/buffer_pconv[705] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[706]  ( .D(
        \CHIPS[1].core/buffer_pconv[688] ), .CK(clk), .RB(n3619), .Q(
        \CHIPS[1].core/buffer_pconv[706] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[707]  ( .D(
        \CHIPS[1].core/buffer_pconv[689] ), .CK(clk), .RB(n3618), .Q(
        \CHIPS[1].core/buffer_pconv[707] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[708]  ( .D(
        \CHIPS[1].core/buffer_pconv[690] ), .CK(clk), .RB(n3618), .Q(
        \CHIPS[1].core/buffer_pconv[708] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[709]  ( .D(
        \CHIPS[1].core/buffer_pconv[691] ), .CK(clk), .RB(n3618), .Q(
        \CHIPS[1].core/buffer_pconv[709] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[710]  ( .D(
        \CHIPS[1].core/buffer_pconv[692] ), .CK(clk), .RB(n3618), .Q(
        \CHIPS[1].core/buffer_pconv[710] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[711]  ( .D(
        \CHIPS[1].core/buffer_pconv[693] ), .CK(clk), .RB(n3618), .Q(
        \CHIPS[1].core/buffer_pconv[711] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[712]  ( .D(
        \CHIPS[1].core/buffer_pconv[694] ), .CK(clk), .RB(n3618), .Q(
        \CHIPS[1].core/buffer_pconv[712] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[713]  ( .D(
        \CHIPS[1].core/buffer_pconv[695] ), .CK(clk), .RB(n3617), .Q(
        \CHIPS[1].core/buffer_pconv[713] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[714]  ( .D(
        \CHIPS[1].core/buffer_pconv[696] ), .CK(clk), .RB(n3617), .Q(
        \CHIPS[1].core/buffer_pconv[714] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[715]  ( .D(
        \CHIPS[1].core/buffer_pconv[697] ), .CK(clk), .RB(n3617), .Q(
        \CHIPS[1].core/buffer_pconv[715] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[716]  ( .D(
        \CHIPS[1].core/buffer_pconv[698] ), .CK(clk), .RB(n3617), .Q(
        \CHIPS[1].core/buffer_pconv[716] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[717]  ( .D(
        \CHIPS[1].core/buffer_pconv[699] ), .CK(clk), .RB(n3617), .Q(
        \CHIPS[1].core/buffer_pconv[717] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[718]  ( .D(
        \CHIPS[1].core/buffer_pconv[700] ), .CK(clk), .RB(n3617), .Q(
        \CHIPS[1].core/buffer_pconv[718] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[719]  ( .D(
        \CHIPS[1].core/buffer_pconv[701] ), .CK(clk), .RB(n3616), .Q(
        \CHIPS[1].core/buffer_pconv[719] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[720]  ( .D(
        \CHIPS[1].core/buffer_pconv[702] ), .CK(clk), .RB(n3616), .Q(
        \CHIPS[1].core/buffer_pconv[720] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[721]  ( .D(
        \CHIPS[1].core/buffer_pconv[703] ), .CK(clk), .RB(n3616), .Q(
        \CHIPS[1].core/buffer_pconv[721] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[722]  ( .D(
        \CHIPS[1].core/buffer_pconv[704] ), .CK(clk), .RB(n3616), .Q(
        \CHIPS[1].core/buffer_pconv[722] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[723]  ( .D(
        \CHIPS[1].core/buffer_pconv[705] ), .CK(clk), .RB(n3616), .Q(
        \CHIPS[1].core/buffer_pconv[723] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[724]  ( .D(
        \CHIPS[1].core/buffer_pconv[706] ), .CK(clk), .RB(n3616), .Q(
        \CHIPS[1].core/buffer_pconv[724] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[725]  ( .D(
        \CHIPS[1].core/buffer_pconv[707] ), .CK(clk), .RB(n3615), .Q(
        \CHIPS[1].core/buffer_pconv[725] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[726]  ( .D(
        \CHIPS[1].core/buffer_pconv[708] ), .CK(clk), .RB(n3615), .Q(
        \CHIPS[1].core/buffer_pconv[726] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[727]  ( .D(
        \CHIPS[1].core/buffer_pconv[709] ), .CK(clk), .RB(n3615), .Q(
        \CHIPS[1].core/buffer_pconv[727] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[728]  ( .D(
        \CHIPS[1].core/buffer_pconv[710] ), .CK(clk), .RB(n3615), .Q(
        \CHIPS[1].core/buffer_pconv[728] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[729]  ( .D(
        \CHIPS[1].core/buffer_pconv[711] ), .CK(clk), .RB(n3615), .Q(
        \CHIPS[1].core/buffer_pconv[729] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[730]  ( .D(
        \CHIPS[1].core/buffer_pconv[712] ), .CK(clk), .RB(n3615), .Q(
        \CHIPS[1].core/buffer_pconv[730] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[731]  ( .D(
        \CHIPS[1].core/buffer_pconv[713] ), .CK(clk), .RB(n3614), .Q(
        \CHIPS[1].core/buffer_pconv[731] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[732]  ( .D(
        \CHIPS[1].core/buffer_pconv[714] ), .CK(clk), .RB(n3614), .Q(
        \CHIPS[1].core/buffer_pconv[732] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[733]  ( .D(
        \CHIPS[1].core/buffer_pconv[715] ), .CK(clk), .RB(n3614), .Q(
        \CHIPS[1].core/buffer_pconv[733] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[734]  ( .D(
        \CHIPS[1].core/buffer_pconv[716] ), .CK(clk), .RB(n3614), .Q(
        \CHIPS[1].core/buffer_pconv[734] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[735]  ( .D(
        \CHIPS[1].core/buffer_pconv[717] ), .CK(clk), .RB(n3625), .Q(
        \CHIPS[1].core/buffer_pconv[735] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[736]  ( .D(
        \CHIPS[1].core/buffer_pconv[718] ), .CK(clk), .RB(n3568), .Q(
        \CHIPS[1].core/buffer_pconv[736] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[737]  ( .D(
        \CHIPS[1].core/buffer_pconv[719] ), .CK(clk), .RB(n3568), .Q(
        \CHIPS[1].core/buffer_pconv[737] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[738]  ( .D(
        \CHIPS[1].core/buffer_pconv[720] ), .CK(clk), .RB(n3568), .Q(
        \CHIPS[1].core/buffer_pconv[738] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[739]  ( .D(
        \CHIPS[1].core/buffer_pconv[721] ), .CK(clk), .RB(n3568), .Q(
        \CHIPS[1].core/buffer_pconv[739] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[740]  ( .D(
        \CHIPS[1].core/buffer_pconv[722] ), .CK(clk), .RB(n3567), .Q(
        \CHIPS[1].core/buffer_pconv[740] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[741]  ( .D(
        \CHIPS[1].core/buffer_pconv[723] ), .CK(clk), .RB(n3567), .Q(
        \CHIPS[1].core/buffer_pconv[741] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[742]  ( .D(
        \CHIPS[1].core/buffer_pconv[724] ), .CK(clk), .RB(n3567), .Q(
        \CHIPS[1].core/buffer_pconv[742] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[743]  ( .D(
        \CHIPS[1].core/buffer_pconv[725] ), .CK(clk), .RB(n3567), .Q(
        \CHIPS[1].core/buffer_pconv[743] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[744]  ( .D(
        \CHIPS[1].core/buffer_pconv[726] ), .CK(clk), .RB(n3567), .Q(
        \CHIPS[1].core/buffer_pconv[744] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[745]  ( .D(
        \CHIPS[1].core/buffer_pconv[727] ), .CK(clk), .RB(n3567), .Q(
        \CHIPS[1].core/buffer_pconv[745] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[746]  ( .D(
        \CHIPS[1].core/buffer_pconv[728] ), .CK(clk), .RB(n3566), .Q(
        \CHIPS[1].core/buffer_pconv[746] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[747]  ( .D(
        \CHIPS[1].core/buffer_pconv[729] ), .CK(clk), .RB(n3566), .Q(
        \CHIPS[1].core/buffer_pconv[747] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[748]  ( .D(
        \CHIPS[1].core/buffer_pconv[730] ), .CK(clk), .RB(n3566), .Q(
        \CHIPS[1].core/buffer_pconv[748] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[749]  ( .D(
        \CHIPS[1].core/buffer_pconv[731] ), .CK(clk), .RB(n3566), .Q(
        \CHIPS[1].core/buffer_pconv[749] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[750]  ( .D(
        \CHIPS[1].core/buffer_pconv[732] ), .CK(clk), .RB(n3566), .Q(
        \CHIPS[1].core/buffer_pconv[750] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[751]  ( .D(
        \CHIPS[1].core/buffer_pconv[733] ), .CK(clk), .RB(n3566), .Q(
        \CHIPS[1].core/buffer_pconv[751] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[752]  ( .D(
        \CHIPS[1].core/buffer_pconv[734] ), .CK(clk), .RB(n3565), .Q(
        \CHIPS[1].core/buffer_pconv[752] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[753]  ( .D(
        \CHIPS[1].core/buffer_pconv[735] ), .CK(clk), .RB(n3565), .Q(
        \CHIPS[1].core/buffer_pconv[753] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[754]  ( .D(
        \CHIPS[1].core/buffer_pconv[736] ), .CK(clk), .RB(n3565), .Q(
        \CHIPS[1].core/buffer_pconv[754] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[755]  ( .D(
        \CHIPS[1].core/buffer_pconv[737] ), .CK(clk), .RB(n3565), .Q(
        \CHIPS[1].core/buffer_pconv[755] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[756]  ( .D(
        \CHIPS[1].core/buffer_pconv[738] ), .CK(clk), .RB(n3565), .Q(
        \CHIPS[1].core/buffer_pconv[756] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[757]  ( .D(
        \CHIPS[1].core/buffer_pconv[739] ), .CK(clk), .RB(n3565), .Q(
        \CHIPS[1].core/buffer_pconv[757] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[758]  ( .D(
        \CHIPS[1].core/buffer_pconv[740] ), .CK(clk), .RB(n3564), .Q(
        \CHIPS[1].core/buffer_pconv[758] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[759]  ( .D(
        \CHIPS[1].core/buffer_pconv[741] ), .CK(clk), .RB(n3564), .Q(
        \CHIPS[1].core/buffer_pconv[759] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[760]  ( .D(
        \CHIPS[1].core/buffer_pconv[742] ), .CK(clk), .RB(n3564), .Q(
        \CHIPS[1].core/buffer_pconv[760] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[761]  ( .D(
        \CHIPS[1].core/buffer_pconv[743] ), .CK(clk), .RB(n3564), .Q(
        \CHIPS[1].core/buffer_pconv[761] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[762]  ( .D(
        \CHIPS[1].core/buffer_pconv[744] ), .CK(clk), .RB(n3564), .Q(
        \CHIPS[1].core/buffer_pconv[762] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[763]  ( .D(
        \CHIPS[1].core/buffer_pconv[745] ), .CK(clk), .RB(n3564), .Q(
        \CHIPS[1].core/buffer_pconv[763] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[764]  ( .D(
        \CHIPS[1].core/buffer_pconv[746] ), .CK(clk), .RB(n3563), .Q(
        \CHIPS[1].core/buffer_pconv[764] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[765]  ( .D(
        \CHIPS[1].core/buffer_pconv[747] ), .CK(clk), .RB(n3563), .Q(
        \CHIPS[1].core/buffer_pconv[765] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[766]  ( .D(
        \CHIPS[1].core/buffer_pconv[748] ), .CK(clk), .RB(n3563), .Q(
        \CHIPS[1].core/buffer_pconv[766] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[767]  ( .D(
        \CHIPS[1].core/buffer_pconv[749] ), .CK(clk), .RB(n3563), .Q(
        \CHIPS[1].core/buffer_pconv[767] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[768]  ( .D(
        \CHIPS[1].core/buffer_pconv[750] ), .CK(clk), .RB(n3563), .Q(
        \CHIPS[1].core/buffer_pconv[768] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[769]  ( .D(
        \CHIPS[1].core/buffer_pconv[751] ), .CK(clk), .RB(n3563), .Q(
        \CHIPS[1].core/buffer_pconv[769] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[770]  ( .D(
        \CHIPS[1].core/buffer_pconv[752] ), .CK(clk), .RB(n3562), .Q(
        \CHIPS[1].core/buffer_pconv[770] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[771]  ( .D(
        \CHIPS[1].core/buffer_pconv[753] ), .CK(clk), .RB(n3562), .Q(
        \CHIPS[1].core/buffer_pconv[771] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[772]  ( .D(
        \CHIPS[1].core/buffer_pconv[754] ), .CK(clk), .RB(n3562), .Q(
        \CHIPS[1].core/buffer_pconv[772] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[773]  ( .D(
        \CHIPS[1].core/buffer_pconv[755] ), .CK(clk), .RB(n3562), .Q(
        \CHIPS[1].core/buffer_pconv[773] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[774]  ( .D(
        \CHIPS[1].core/buffer_pconv[756] ), .CK(clk), .RB(n3562), .Q(
        \CHIPS[1].core/buffer_pconv[774] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[775]  ( .D(
        \CHIPS[1].core/buffer_pconv[757] ), .CK(clk), .RB(n3562), .Q(
        \CHIPS[1].core/buffer_pconv[775] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[776]  ( .D(
        \CHIPS[1].core/buffer_pconv[758] ), .CK(clk), .RB(n3561), .Q(
        \CHIPS[1].core/buffer_pconv[776] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[777]  ( .D(
        \CHIPS[1].core/buffer_pconv[759] ), .CK(clk), .RB(n3561), .Q(
        \CHIPS[1].core/buffer_pconv[777] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[778]  ( .D(
        \CHIPS[1].core/buffer_pconv[760] ), .CK(clk), .RB(n3561), .Q(
        \CHIPS[1].core/buffer_pconv[778] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[779]  ( .D(
        \CHIPS[1].core/buffer_pconv[761] ), .CK(clk), .RB(n3561), .Q(
        \CHIPS[1].core/buffer_pconv[779] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[780]  ( .D(
        \CHIPS[1].core/buffer_pconv[762] ), .CK(clk), .RB(n3561), .Q(
        \CHIPS[1].core/buffer_pconv[780] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[781]  ( .D(
        \CHIPS[1].core/buffer_pconv[763] ), .CK(clk), .RB(n3561), .Q(
        \CHIPS[1].core/buffer_pconv[781] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[782]  ( .D(
        \CHIPS[1].core/buffer_pconv[764] ), .CK(clk), .RB(n3560), .Q(
        \CHIPS[1].core/buffer_pconv[782] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[783]  ( .D(
        \CHIPS[1].core/buffer_pconv[765] ), .CK(clk), .RB(n3560), .Q(
        \CHIPS[1].core/buffer_pconv[783] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[784]  ( .D(
        \CHIPS[1].core/buffer_pconv[766] ), .CK(clk), .RB(n3560), .Q(
        \CHIPS[1].core/buffer_pconv[784] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[785]  ( .D(
        \CHIPS[1].core/buffer_pconv[767] ), .CK(clk), .RB(n3560), .Q(
        \CHIPS[1].core/buffer_pconv[785] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[786]  ( .D(
        \CHIPS[1].core/buffer_pconv[768] ), .CK(clk), .RB(n3560), .Q(
        \CHIPS[1].core/buffer_pconv[786] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[787]  ( .D(
        \CHIPS[1].core/buffer_pconv[769] ), .CK(clk), .RB(n3560), .Q(
        \CHIPS[1].core/buffer_pconv[787] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[788]  ( .D(
        \CHIPS[1].core/buffer_pconv[770] ), .CK(clk), .RB(n3559), .Q(
        \CHIPS[1].core/buffer_pconv[788] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[789]  ( .D(
        \CHIPS[1].core/buffer_pconv[771] ), .CK(clk), .RB(n3559), .Q(
        \CHIPS[1].core/buffer_pconv[789] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[790]  ( .D(
        \CHIPS[1].core/buffer_pconv[772] ), .CK(clk), .RB(n3559), .Q(
        \CHIPS[1].core/buffer_pconv[790] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[791]  ( .D(
        \CHIPS[1].core/buffer_pconv[773] ), .CK(clk), .RB(n3559), .Q(
        \CHIPS[1].core/buffer_pconv[791] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[792]  ( .D(
        \CHIPS[1].core/buffer_pconv[774] ), .CK(clk), .RB(n3559), .Q(
        \CHIPS[1].core/buffer_pconv[792] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[793]  ( .D(
        \CHIPS[1].core/buffer_pconv[775] ), .CK(clk), .RB(n3559), .Q(
        \CHIPS[1].core/buffer_pconv[793] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[794]  ( .D(
        \CHIPS[1].core/buffer_pconv[776] ), .CK(clk), .RB(n3558), .Q(
        \CHIPS[1].core/buffer_pconv[794] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[795]  ( .D(
        \CHIPS[1].core/buffer_pconv[777] ), .CK(clk), .RB(n3558), .Q(
        \CHIPS[1].core/buffer_pconv[795] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[796]  ( .D(
        \CHIPS[1].core/buffer_pconv[778] ), .CK(clk), .RB(n3558), .Q(
        \CHIPS[1].core/buffer_pconv[796] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[797]  ( .D(
        \CHIPS[1].core/buffer_pconv[779] ), .CK(clk), .RB(n3558), .Q(
        \CHIPS[1].core/buffer_pconv[797] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[798]  ( .D(
        \CHIPS[1].core/buffer_pconv[780] ), .CK(clk), .RB(n3558), .Q(
        \CHIPS[1].core/buffer_pconv[798] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[799]  ( .D(
        \CHIPS[1].core/buffer_pconv[781] ), .CK(clk), .RB(n3558), .Q(
        \CHIPS[1].core/buffer_pconv[799] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[800]  ( .D(
        \CHIPS[1].core/buffer_pconv[782] ), .CK(clk), .RB(n3557), .Q(
        \CHIPS[1].core/buffer_pconv[800] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[801]  ( .D(
        \CHIPS[1].core/buffer_pconv[783] ), .CK(clk), .RB(n3557), .Q(
        \CHIPS[1].core/buffer_pconv[801] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[802]  ( .D(
        \CHIPS[1].core/buffer_pconv[784] ), .CK(clk), .RB(n3557), .Q(
        \CHIPS[1].core/buffer_pconv[802] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[803]  ( .D(
        \CHIPS[1].core/buffer_pconv[785] ), .CK(clk), .RB(n3557), .Q(
        \CHIPS[1].core/buffer_pconv[803] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[804]  ( .D(
        \CHIPS[1].core/buffer_pconv[786] ), .CK(clk), .RB(n3557), .Q(
        \CHIPS[1].core/buffer_pconv[804] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[805]  ( .D(
        \CHIPS[1].core/buffer_pconv[787] ), .CK(clk), .RB(n3556), .Q(
        \CHIPS[1].core/buffer_pconv[805] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[806]  ( .D(
        \CHIPS[1].core/buffer_pconv[788] ), .CK(clk), .RB(n3556), .Q(
        \CHIPS[1].core/buffer_pconv[806] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[807]  ( .D(
        \CHIPS[1].core/buffer_pconv[789] ), .CK(clk), .RB(n3556), .Q(
        \CHIPS[1].core/buffer_pconv[807] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[808]  ( .D(
        \CHIPS[1].core/buffer_pconv[790] ), .CK(clk), .RB(n3556), .Q(
        \CHIPS[1].core/buffer_pconv[808] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[809]  ( .D(
        \CHIPS[1].core/buffer_pconv[791] ), .CK(clk), .RB(n3556), .Q(
        \CHIPS[1].core/buffer_pconv[809] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[810]  ( .D(
        \CHIPS[1].core/buffer_pconv[792] ), .CK(clk), .RB(n3556), .Q(
        \CHIPS[1].core/buffer_pconv[810] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[811]  ( .D(
        \CHIPS[1].core/buffer_pconv[793] ), .CK(clk), .RB(n3555), .Q(
        \CHIPS[1].core/buffer_pconv[811] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[812]  ( .D(
        \CHIPS[1].core/buffer_pconv[794] ), .CK(clk), .RB(n3555), .Q(
        \CHIPS[1].core/buffer_pconv[812] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[813]  ( .D(
        \CHIPS[1].core/buffer_pconv[795] ), .CK(clk), .RB(n3555), .Q(
        \CHIPS[1].core/buffer_pconv[813] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[814]  ( .D(
        \CHIPS[1].core/buffer_pconv[796] ), .CK(clk), .RB(n3555), .Q(
        \CHIPS[1].core/buffer_pconv[814] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[815]  ( .D(
        \CHIPS[1].core/buffer_pconv[797] ), .CK(clk), .RB(n3555), .Q(
        \CHIPS[1].core/buffer_pconv[815] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[816]  ( .D(
        \CHIPS[1].core/buffer_pconv[798] ), .CK(clk), .RB(n3555), .Q(
        \CHIPS[1].core/buffer_pconv[816] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[817]  ( .D(
        \CHIPS[1].core/buffer_pconv[799] ), .CK(clk), .RB(n3554), .Q(
        \CHIPS[1].core/buffer_pconv[817] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[818]  ( .D(
        \CHIPS[1].core/buffer_pconv[800] ), .CK(clk), .RB(n3554), .Q(
        \CHIPS[1].core/buffer_pconv[818] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[819]  ( .D(
        \CHIPS[1].core/buffer_pconv[801] ), .CK(clk), .RB(n3554), .Q(
        \CHIPS[1].core/buffer_pconv[819] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[820]  ( .D(
        \CHIPS[1].core/buffer_pconv[802] ), .CK(clk), .RB(n3554), .Q(
        \CHIPS[1].core/buffer_pconv[820] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[821]  ( .D(
        \CHIPS[1].core/buffer_pconv[803] ), .CK(clk), .RB(n3554), .Q(
        \CHIPS[1].core/buffer_pconv[821] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[822]  ( .D(
        \CHIPS[1].core/buffer_pconv[804] ), .CK(clk), .RB(n3554), .Q(
        \CHIPS[1].core/buffer_pconv[822] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[823]  ( .D(
        \CHIPS[1].core/buffer_pconv[805] ), .CK(clk), .RB(n3553), .Q(
        \CHIPS[1].core/buffer_pconv[823] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[824]  ( .D(
        \CHIPS[1].core/buffer_pconv[806] ), .CK(clk), .RB(n3553), .Q(
        \CHIPS[1].core/buffer_pconv[824] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[825]  ( .D(
        \CHIPS[1].core/buffer_pconv[807] ), .CK(clk), .RB(n3553), .Q(
        \CHIPS[1].core/buffer_pconv[825] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[826]  ( .D(
        \CHIPS[1].core/buffer_pconv[808] ), .CK(clk), .RB(n3553), .Q(
        \CHIPS[1].core/buffer_pconv[826] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[827]  ( .D(
        \CHIPS[1].core/buffer_pconv[809] ), .CK(clk), .RB(n3553), .Q(
        \CHIPS[1].core/buffer_pconv[827] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[828]  ( .D(
        \CHIPS[1].core/buffer_pconv[810] ), .CK(clk), .RB(n3553), .Q(
        \CHIPS[1].core/buffer_pconv[828] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[829]  ( .D(
        \CHIPS[1].core/buffer_pconv[811] ), .CK(clk), .RB(n3552), .Q(
        \CHIPS[1].core/buffer_pconv[829] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[830]  ( .D(
        \CHIPS[1].core/buffer_pconv[812] ), .CK(clk), .RB(n3552), .Q(
        \CHIPS[1].core/buffer_pconv[830] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[831]  ( .D(
        \CHIPS[1].core/buffer_pconv[813] ), .CK(clk), .RB(n3552), .Q(
        \CHIPS[1].core/buffer_pconv[831] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[832]  ( .D(
        \CHIPS[1].core/buffer_pconv[814] ), .CK(clk), .RB(n3552), .Q(
        \CHIPS[1].core/buffer_pconv[832] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[833]  ( .D(
        \CHIPS[1].core/buffer_pconv[815] ), .CK(clk), .RB(n3552), .Q(
        \CHIPS[1].core/buffer_pconv[833] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[834]  ( .D(
        \CHIPS[1].core/buffer_pconv[816] ), .CK(clk), .RB(n3552), .Q(
        \CHIPS[1].core/buffer_pconv[834] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[835]  ( .D(
        \CHIPS[1].core/buffer_pconv[817] ), .CK(clk), .RB(n3551), .Q(
        \CHIPS[1].core/buffer_pconv[835] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[836]  ( .D(
        \CHIPS[1].core/buffer_pconv[818] ), .CK(clk), .RB(n3551), .Q(
        \CHIPS[1].core/buffer_pconv[836] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[837]  ( .D(
        \CHIPS[1].core/buffer_pconv[819] ), .CK(clk), .RB(n3551), .Q(
        \CHIPS[1].core/buffer_pconv[837] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[838]  ( .D(
        \CHIPS[1].core/buffer_pconv[820] ), .CK(clk), .RB(n3551), .Q(
        \CHIPS[1].core/buffer_pconv[838] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[839]  ( .D(
        \CHIPS[1].core/buffer_pconv[821] ), .CK(clk), .RB(n3551), .Q(
        \CHIPS[1].core/buffer_pconv[839] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[840]  ( .D(
        \CHIPS[1].core/buffer_pconv[822] ), .CK(clk), .RB(n3551), .Q(
        \CHIPS[1].core/buffer_pconv[840] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[841]  ( .D(
        \CHIPS[1].core/buffer_pconv[823] ), .CK(clk), .RB(n3550), .Q(
        \CHIPS[1].core/buffer_pconv[841] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[842]  ( .D(
        \CHIPS[1].core/buffer_pconv[824] ), .CK(clk), .RB(n3550), .Q(
        \CHIPS[1].core/buffer_pconv[842] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[843]  ( .D(
        \CHIPS[1].core/buffer_pconv[825] ), .CK(clk), .RB(n3550), .Q(
        \CHIPS[1].core/buffer_pconv[843] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[844]  ( .D(
        \CHIPS[1].core/buffer_pconv[826] ), .CK(clk), .RB(n3550), .Q(
        \CHIPS[1].core/buffer_pconv[844] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[845]  ( .D(
        \CHIPS[1].core/buffer_pconv[827] ), .CK(clk), .RB(n3550), .Q(
        \CHIPS[1].core/buffer_pconv[845] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[846]  ( .D(
        \CHIPS[1].core/buffer_pconv[828] ), .CK(clk), .RB(n3550), .Q(
        \CHIPS[1].core/buffer_pconv[846] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[847]  ( .D(
        \CHIPS[1].core/buffer_pconv[829] ), .CK(clk), .RB(n3549), .Q(
        \CHIPS[1].core/buffer_pconv[847] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[848]  ( .D(
        \CHIPS[1].core/buffer_pconv[830] ), .CK(clk), .RB(n3549), .Q(
        \CHIPS[1].core/buffer_pconv[848] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[849]  ( .D(
        \CHIPS[1].core/buffer_pconv[831] ), .CK(clk), .RB(n3549), .Q(
        \CHIPS[1].core/buffer_pconv[849] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[850]  ( .D(
        \CHIPS[1].core/buffer_pconv[832] ), .CK(clk), .RB(n3549), .Q(
        \CHIPS[1].core/buffer_pconv[850] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[851]  ( .D(
        \CHIPS[1].core/buffer_pconv[833] ), .CK(clk), .RB(n3549), .Q(
        \CHIPS[1].core/buffer_pconv[851] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[852]  ( .D(
        \CHIPS[1].core/buffer_pconv[834] ), .CK(clk), .RB(n3549), .Q(
        \CHIPS[1].core/buffer_pconv[852] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[853]  ( .D(
        \CHIPS[1].core/buffer_pconv[835] ), .CK(clk), .RB(n3548), .Q(
        \CHIPS[1].core/buffer_pconv[853] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[854]  ( .D(
        \CHIPS[1].core/buffer_pconv[836] ), .CK(clk), .RB(n3548), .Q(
        \CHIPS[1].core/buffer_pconv[854] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[855]  ( .D(
        \CHIPS[1].core/buffer_pconv[837] ), .CK(clk), .RB(n3548), .Q(
        \CHIPS[1].core/buffer_pconv[855] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[856]  ( .D(
        \CHIPS[1].core/buffer_pconv[838] ), .CK(clk), .RB(n3548), .Q(
        \CHIPS[1].core/buffer_pconv[856] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[857]  ( .D(
        \CHIPS[1].core/buffer_pconv[839] ), .CK(clk), .RB(n3548), .Q(
        \CHIPS[1].core/buffer_pconv[857] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[858]  ( .D(
        \CHIPS[1].core/buffer_pconv[840] ), .CK(clk), .RB(n3548), .Q(
        \CHIPS[1].core/buffer_pconv[858] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[859]  ( .D(
        \CHIPS[1].core/buffer_pconv[841] ), .CK(clk), .RB(n3547), .Q(
        \CHIPS[1].core/buffer_pconv[859] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[860]  ( .D(
        \CHIPS[1].core/buffer_pconv[842] ), .CK(clk), .RB(n3547), .Q(
        \CHIPS[1].core/buffer_pconv[860] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[861]  ( .D(
        \CHIPS[1].core/buffer_pconv[843] ), .CK(clk), .RB(n3547), .Q(
        \CHIPS[1].core/buffer_pconv[861] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[862]  ( .D(
        \CHIPS[1].core/buffer_pconv[844] ), .CK(clk), .RB(n3547), .Q(
        \CHIPS[1].core/buffer_pconv[862] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[863]  ( .D(
        \CHIPS[1].core/buffer_pconv[845] ), .CK(clk), .RB(n3547), .Q(
        \CHIPS[1].core/buffer_pconv[863] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[864]  ( .D(
        \CHIPS[1].core/buffer_pconv[846] ), .CK(clk), .RB(n3547), .Q(
        \CHIPS[1].core/buffer_pconv[864] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[865]  ( .D(
        \CHIPS[1].core/buffer_pconv[847] ), .CK(clk), .RB(n3546), .Q(
        \CHIPS[1].core/buffer_pconv[865] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[866]  ( .D(
        \CHIPS[1].core/buffer_pconv[848] ), .CK(clk), .RB(n3546), .Q(
        \CHIPS[1].core/buffer_pconv[866] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[867]  ( .D(
        \CHIPS[1].core/buffer_pconv[849] ), .CK(clk), .RB(n3546), .Q(
        \CHIPS[1].core/buffer_pconv[867] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[868]  ( .D(
        \CHIPS[1].core/buffer_pconv[850] ), .CK(clk), .RB(n3546), .Q(
        \CHIPS[1].core/buffer_pconv[868] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[869]  ( .D(
        \CHIPS[1].core/buffer_pconv[851] ), .CK(clk), .RB(n3546), .Q(
        \CHIPS[1].core/buffer_pconv[869] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[870]  ( .D(
        \CHIPS[1].core/buffer_pconv[852] ), .CK(clk), .RB(n3546), .Q(
        \CHIPS[1].core/buffer_pconv[870] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[871]  ( .D(
        \CHIPS[1].core/buffer_pconv[853] ), .CK(clk), .RB(n3545), .Q(
        \CHIPS[1].core/buffer_pconv[871] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[872]  ( .D(
        \CHIPS[1].core/buffer_pconv[854] ), .CK(clk), .RB(n3557), .Q(
        \CHIPS[1].core/buffer_pconv[872] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[873]  ( .D(
        \CHIPS[1].core/buffer_pconv[855] ), .CK(clk), .RB(n3591), .Q(
        \CHIPS[1].core/buffer_pconv[873] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[874]  ( .D(
        \CHIPS[1].core/buffer_pconv[856] ), .CK(clk), .RB(n3591), .Q(
        \CHIPS[1].core/buffer_pconv[874] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[875]  ( .D(
        \CHIPS[1].core/buffer_pconv[857] ), .CK(clk), .RB(n3590), .Q(
        \CHIPS[1].core/buffer_pconv[875] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[876]  ( .D(
        \CHIPS[1].core/buffer_pconv[858] ), .CK(clk), .RB(n3590), .Q(
        \CHIPS[1].core/buffer_pconv[876] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[877]  ( .D(
        \CHIPS[1].core/buffer_pconv[859] ), .CK(clk), .RB(n3590), .Q(
        \CHIPS[1].core/buffer_pconv[877] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[878]  ( .D(
        \CHIPS[1].core/buffer_pconv[860] ), .CK(clk), .RB(n3590), .Q(
        \CHIPS[1].core/buffer_pconv[878] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[879]  ( .D(
        \CHIPS[1].core/buffer_pconv[861] ), .CK(clk), .RB(n3590), .Q(
        \CHIPS[1].core/buffer_pconv[879] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[880]  ( .D(
        \CHIPS[1].core/buffer_pconv[862] ), .CK(clk), .RB(n3590), .Q(
        \CHIPS[1].core/buffer_pconv[880] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[881]  ( .D(
        \CHIPS[1].core/buffer_pconv[863] ), .CK(clk), .RB(n3589), .Q(
        \CHIPS[1].core/buffer_pconv[881] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[882]  ( .D(
        \CHIPS[1].core/buffer_pconv[864] ), .CK(clk), .RB(n3589), .Q(
        \CHIPS[1].core/buffer_pconv[882] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[883]  ( .D(
        \CHIPS[1].core/buffer_pconv[865] ), .CK(clk), .RB(n3589), .Q(
        \CHIPS[1].core/buffer_pconv[883] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[884]  ( .D(
        \CHIPS[1].core/buffer_pconv[866] ), .CK(clk), .RB(n3589), .Q(
        \CHIPS[1].core/buffer_pconv[884] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[885]  ( .D(
        \CHIPS[1].core/buffer_pconv[867] ), .CK(clk), .RB(n3589), .Q(
        \CHIPS[1].core/buffer_pconv[885] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[886]  ( .D(
        \CHIPS[1].core/buffer_pconv[868] ), .CK(clk), .RB(n3589), .Q(
        \CHIPS[1].core/buffer_pconv[886] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[887]  ( .D(
        \CHIPS[1].core/buffer_pconv[869] ), .CK(clk), .RB(n3588), .Q(
        \CHIPS[1].core/buffer_pconv[887] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[888]  ( .D(
        \CHIPS[1].core/buffer_pconv[870] ), .CK(clk), .RB(n3588), .Q(
        \CHIPS[1].core/buffer_pconv[888] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[889]  ( .D(
        \CHIPS[1].core/buffer_pconv[871] ), .CK(clk), .RB(n3588), .Q(
        \CHIPS[1].core/buffer_pconv[889] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[890]  ( .D(
        \CHIPS[1].core/buffer_pconv[872] ), .CK(clk), .RB(n3588), .Q(
        \CHIPS[1].core/buffer_pconv[890] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[891]  ( .D(
        \CHIPS[1].core/buffer_pconv[873] ), .CK(clk), .RB(n3588), .Q(
        \CHIPS[1].core/buffer_pconv[891] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[892]  ( .D(
        \CHIPS[1].core/buffer_pconv[874] ), .CK(clk), .RB(n3588), .Q(
        \CHIPS[1].core/buffer_pconv[892] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[893]  ( .D(
        \CHIPS[1].core/buffer_pconv[875] ), .CK(clk), .RB(n3587), .Q(
        \CHIPS[1].core/buffer_pconv[893] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[894]  ( .D(
        \CHIPS[1].core/buffer_pconv[876] ), .CK(clk), .RB(n3587), .Q(
        \CHIPS[1].core/buffer_pconv[894] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[895]  ( .D(
        \CHIPS[1].core/buffer_pconv[877] ), .CK(clk), .RB(n3587), .Q(
        \CHIPS[1].core/buffer_pconv[895] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[896]  ( .D(
        \CHIPS[1].core/buffer_pconv[878] ), .CK(clk), .RB(n3587), .Q(
        \CHIPS[1].core/buffer_pconv[896] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[897]  ( .D(
        \CHIPS[1].core/buffer_pconv[879] ), .CK(clk), .RB(n3587), .Q(
        \CHIPS[1].core/buffer_pconv[897] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[898]  ( .D(
        \CHIPS[1].core/buffer_pconv[880] ), .CK(clk), .RB(n3587), .Q(
        \CHIPS[1].core/buffer_pconv[898] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[899]  ( .D(
        \CHIPS[1].core/buffer_pconv[881] ), .CK(clk), .RB(n3586), .Q(
        \CHIPS[1].core/buffer_pconv[899] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[900]  ( .D(
        \CHIPS[1].core/buffer_pconv[882] ), .CK(clk), .RB(n3586), .Q(
        \CHIPS[1].core/buffer_pconv[900] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[901]  ( .D(
        \CHIPS[1].core/buffer_pconv[883] ), .CK(clk), .RB(n3586), .Q(
        \CHIPS[1].core/buffer_pconv[901] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[902]  ( .D(
        \CHIPS[1].core/buffer_pconv[884] ), .CK(clk), .RB(n3586), .Q(
        \CHIPS[1].core/buffer_pconv[902] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[903]  ( .D(
        \CHIPS[1].core/buffer_pconv[885] ), .CK(clk), .RB(n3586), .Q(
        \CHIPS[1].core/buffer_pconv[903] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[904]  ( .D(
        \CHIPS[1].core/buffer_pconv[886] ), .CK(clk), .RB(n3586), .Q(
        \CHIPS[1].core/buffer_pconv[904] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[905]  ( .D(
        \CHIPS[1].core/buffer_pconv[887] ), .CK(clk), .RB(n3585), .Q(
        \CHIPS[1].core/buffer_pconv[905] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[906]  ( .D(
        \CHIPS[1].core/buffer_pconv[888] ), .CK(clk), .RB(n3585), .Q(
        \CHIPS[1].core/buffer_pconv[906] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[907]  ( .D(
        \CHIPS[1].core/buffer_pconv[889] ), .CK(clk), .RB(n3585), .Q(
        \CHIPS[1].core/buffer_pconv[907] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[908]  ( .D(
        \CHIPS[1].core/buffer_pconv[890] ), .CK(clk), .RB(n3585), .Q(
        \CHIPS[1].core/buffer_pconv[908] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[909]  ( .D(
        \CHIPS[1].core/buffer_pconv[891] ), .CK(clk), .RB(n3585), .Q(
        \CHIPS[1].core/buffer_pconv[909] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[910]  ( .D(
        \CHIPS[1].core/buffer_pconv[892] ), .CK(clk), .RB(n3585), .Q(
        \CHIPS[1].core/buffer_pconv[910] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[911]  ( .D(
        \CHIPS[1].core/buffer_pconv[893] ), .CK(clk), .RB(n3584), .Q(
        \CHIPS[1].core/buffer_pconv[911] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[912]  ( .D(
        \CHIPS[1].core/buffer_pconv[894] ), .CK(clk), .RB(n3584), .Q(
        \CHIPS[1].core/buffer_pconv[912] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[913]  ( .D(
        \CHIPS[1].core/buffer_pconv[895] ), .CK(clk), .RB(n3584), .Q(
        \CHIPS[1].core/buffer_pconv[913] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[914]  ( .D(
        \CHIPS[1].core/buffer_pconv[896] ), .CK(clk), .RB(n3584), .Q(
        \CHIPS[1].core/buffer_pconv[914] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[915]  ( .D(
        \CHIPS[1].core/buffer_pconv[897] ), .CK(clk), .RB(n3584), .Q(
        \CHIPS[1].core/buffer_pconv[915] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[916]  ( .D(
        \CHIPS[1].core/buffer_pconv[898] ), .CK(clk), .RB(n3584), .Q(
        \CHIPS[1].core/buffer_pconv[916] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[917]  ( .D(
        \CHIPS[1].core/buffer_pconv[899] ), .CK(clk), .RB(n3583), .Q(
        \CHIPS[1].core/buffer_pconv[917] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[918]  ( .D(
        \CHIPS[1].core/buffer_pconv[900] ), .CK(clk), .RB(n3583), .Q(
        \CHIPS[1].core/buffer_pconv[918] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[919]  ( .D(
        \CHIPS[1].core/buffer_pconv[901] ), .CK(clk), .RB(n3583), .Q(
        \CHIPS[1].core/buffer_pconv[919] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[920]  ( .D(
        \CHIPS[1].core/buffer_pconv[902] ), .CK(clk), .RB(n3583), .Q(
        \CHIPS[1].core/buffer_pconv[920] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[921]  ( .D(
        \CHIPS[1].core/buffer_pconv[903] ), .CK(clk), .RB(n3583), .Q(
        \CHIPS[1].core/buffer_pconv[921] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[922]  ( .D(
        \CHIPS[1].core/buffer_pconv[904] ), .CK(clk), .RB(n3583), .Q(
        \CHIPS[1].core/buffer_pconv[922] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[923]  ( .D(
        \CHIPS[1].core/buffer_pconv[905] ), .CK(clk), .RB(n3582), .Q(
        \CHIPS[1].core/buffer_pconv[923] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[924]  ( .D(
        \CHIPS[1].core/buffer_pconv[906] ), .CK(clk), .RB(n3582), .Q(
        \CHIPS[1].core/buffer_pconv[924] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[925]  ( .D(
        \CHIPS[1].core/buffer_pconv[907] ), .CK(clk), .RB(n3582), .Q(
        \CHIPS[1].core/buffer_pconv[925] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[926]  ( .D(
        \CHIPS[1].core/buffer_pconv[908] ), .CK(clk), .RB(n3582), .Q(
        \CHIPS[1].core/buffer_pconv[926] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[927]  ( .D(
        \CHIPS[1].core/buffer_pconv[909] ), .CK(clk), .RB(n3582), .Q(
        \CHIPS[1].core/buffer_pconv[927] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[928]  ( .D(
        \CHIPS[1].core/buffer_pconv[910] ), .CK(clk), .RB(n3582), .Q(
        \CHIPS[1].core/buffer_pconv[928] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[929]  ( .D(
        \CHIPS[1].core/buffer_pconv[911] ), .CK(clk), .RB(n3581), .Q(
        \CHIPS[1].core/buffer_pconv[929] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[930]  ( .D(
        \CHIPS[1].core/buffer_pconv[912] ), .CK(clk), .RB(n3581), .Q(
        \CHIPS[1].core/buffer_pconv[930] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[931]  ( .D(
        \CHIPS[1].core/buffer_pconv[913] ), .CK(clk), .RB(n3581), .Q(
        \CHIPS[1].core/buffer_pconv[931] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[932]  ( .D(
        \CHIPS[1].core/buffer_pconv[914] ), .CK(clk), .RB(n3581), .Q(
        \CHIPS[1].core/buffer_pconv[932] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[933]  ( .D(
        \CHIPS[1].core/buffer_pconv[915] ), .CK(clk), .RB(n3581), .Q(
        \CHIPS[1].core/buffer_pconv[933] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[934]  ( .D(
        \CHIPS[1].core/buffer_pconv[916] ), .CK(clk), .RB(n3581), .Q(
        \CHIPS[1].core/buffer_pconv[934] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[935]  ( .D(
        \CHIPS[1].core/buffer_pconv[917] ), .CK(clk), .RB(n3580), .Q(
        \CHIPS[1].core/buffer_pconv[935] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[936]  ( .D(
        \CHIPS[1].core/buffer_pconv[918] ), .CK(clk), .RB(n3580), .Q(
        \CHIPS[1].core/buffer_pconv[936] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[937]  ( .D(
        \CHIPS[1].core/buffer_pconv[919] ), .CK(clk), .RB(n3580), .Q(
        \CHIPS[1].core/buffer_pconv[937] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[938]  ( .D(
        \CHIPS[1].core/buffer_pconv[920] ), .CK(clk), .RB(n3580), .Q(
        \CHIPS[1].core/buffer_pconv[938] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[939]  ( .D(
        \CHIPS[1].core/buffer_pconv[921] ), .CK(clk), .RB(n3580), .Q(
        \CHIPS[1].core/buffer_pconv[939] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[940]  ( .D(
        \CHIPS[1].core/buffer_pconv[922] ), .CK(clk), .RB(n3580), .Q(
        \CHIPS[1].core/buffer_pconv[940] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[941]  ( .D(
        \CHIPS[1].core/buffer_pconv[923] ), .CK(clk), .RB(n3579), .Q(
        \CHIPS[1].core/buffer_pconv[941] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[942]  ( .D(
        \CHIPS[1].core/buffer_pconv[924] ), .CK(clk), .RB(n3579), .Q(
        \CHIPS[1].core/buffer_pconv[942] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[943]  ( .D(
        \CHIPS[1].core/buffer_pconv[925] ), .CK(clk), .RB(n3579), .Q(
        \CHIPS[1].core/buffer_pconv[943] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[944]  ( .D(
        \CHIPS[1].core/buffer_pconv[926] ), .CK(clk), .RB(n3579), .Q(
        \CHIPS[1].core/buffer_pconv[944] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[945]  ( .D(
        \CHIPS[1].core/buffer_pconv[927] ), .CK(clk), .RB(n3579), .Q(
        \CHIPS[1].core/buffer_pconv[945] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[946]  ( .D(
        \CHIPS[1].core/buffer_pconv[928] ), .CK(clk), .RB(n3578), .Q(
        \CHIPS[1].core/buffer_pconv[946] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[947]  ( .D(
        \CHIPS[1].core/buffer_pconv[929] ), .CK(clk), .RB(n3578), .Q(
        \CHIPS[1].core/buffer_pconv[947] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[948]  ( .D(
        \CHIPS[1].core/buffer_pconv[930] ), .CK(clk), .RB(n3578), .Q(
        \CHIPS[1].core/buffer_pconv[948] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[949]  ( .D(
        \CHIPS[1].core/buffer_pconv[931] ), .CK(clk), .RB(n3578), .Q(
        \CHIPS[1].core/buffer_pconv[949] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[950]  ( .D(
        \CHIPS[1].core/buffer_pconv[932] ), .CK(clk), .RB(n3578), .Q(
        \CHIPS[1].core/buffer_pconv[950] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[951]  ( .D(
        \CHIPS[1].core/buffer_pconv[933] ), .CK(clk), .RB(n3578), .Q(
        \CHIPS[1].core/buffer_pconv[951] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[952]  ( .D(
        \CHIPS[1].core/buffer_pconv[934] ), .CK(clk), .RB(n3577), .Q(
        \CHIPS[1].core/buffer_pconv[952] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[953]  ( .D(
        \CHIPS[1].core/buffer_pconv[935] ), .CK(clk), .RB(n3577), .Q(
        \CHIPS[1].core/buffer_pconv[953] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[0]  ( .D(\CHIPS[1].core/temp_conv[0] ), .CK(clk), .RB(n3577), .Q(\CHIPS[1].core/buffer_conv[0] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[1]  ( .D(\CHIPS[1].core/temp_conv[1] ), .CK(clk), .RB(n3577), .Q(\CHIPS[1].core/buffer_conv[1] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[2]  ( .D(\CHIPS[1].core/temp_conv[2] ), .CK(clk), .RB(n3577), .Q(\CHIPS[1].core/buffer_conv[2] ) );
  QDFFRBP \CHIPS[1].core/buffer_conv_reg[3]  ( .D(\CHIPS[1].core/temp_conv[3] ), .CK(clk), .RB(n3577), .Q(\CHIPS[1].core/buffer_conv[3] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[4]  ( .D(\CHIPS[1].core/temp_conv[4] ), .CK(clk), .RB(n3576), .Q(\CHIPS[1].core/buffer_conv[4] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[5]  ( .D(\CHIPS[1].core/temp_conv[5] ), .CK(clk), .RB(n3576), .Q(\CHIPS[1].core/buffer_conv[5] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[6]  ( .D(n229), .CK(clk), .RB(n3576), 
        .Q(\CHIPS[1].core/buffer_conv[6] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[7]  ( .D(n223), .CK(clk), .RB(n3576), 
        .Q(\CHIPS[1].core/buffer_conv[7] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[8]  ( .D(n222), .CK(clk), .RB(n3576), 
        .Q(\CHIPS[1].core/buffer_conv[8] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[9]  ( .D(\CHIPS[1].core/temp_conv[9] ), .CK(clk), .RB(n3576), .Q(\CHIPS[1].core/buffer_conv[9] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[10]  ( .D(
        \CHIPS[1].core/temp_conv[10] ), .CK(clk), .RB(n3575), .Q(
        \CHIPS[1].core/buffer_conv[10] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[11]  ( .D(n226), .CK(clk), .RB(n3575), 
        .Q(\CHIPS[1].core/buffer_conv[11] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[12]  ( .D(
        \CHIPS[1].core/temp_conv[12] ), .CK(clk), .RB(n3575), .Q(
        \CHIPS[1].core/buffer_conv[12] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[14]  ( .D(
        \CHIPS[1].core/temp_conv[14] ), .CK(clk), .RB(n3575), .Q(
        \CHIPS[1].core/buffer_conv[14] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[15]  ( .D(
        \CHIPS[1].core/temp_conv[15] ), .CK(clk), .RB(n3575), .Q(
        \CHIPS[1].core/buffer_conv[15] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[16]  ( .D(
        \CHIPS[1].core/temp_conv[16] ), .CK(clk), .RB(n3574), .Q(
        \CHIPS[1].core/buffer_conv[16] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[17]  ( .D(
        \CHIPS[1].core/temp_conv[17] ), .CK(clk), .RB(n3574), .Q(
        \CHIPS[1].core/buffer_conv[17] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[18]  ( .D(
        \CHIPS[1].core/temp_conv[18] ), .CK(clk), .RB(n3574), .Q(
        \CHIPS[1].core/buffer_conv[18] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[21]  ( .D(
        \CHIPS[1].core/buffer_conv[0] ), .CK(clk), .RB(n3574), .Q(
        \CHIPS[1].core/buffer_conv[21] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[22]  ( .D(
        \CHIPS[1].core/buffer_conv[1] ), .CK(clk), .RB(n3574), .Q(
        \CHIPS[1].core/buffer_conv[22] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[23]  ( .D(
        \CHIPS[1].core/buffer_conv[2] ), .CK(clk), .RB(n3574), .Q(
        \CHIPS[1].core/buffer_conv[23] ) );
  QDFFRBP \CHIPS[1].core/buffer_conv_reg[24]  ( .D(
        \CHIPS[1].core/buffer_conv[3] ), .CK(clk), .RB(n3573), .Q(
        \CHIPS[1].core/buffer_conv[24] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[25]  ( .D(
        \CHIPS[1].core/buffer_conv[4] ), .CK(clk), .RB(n3573), .Q(
        \CHIPS[1].core/buffer_conv[25] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[26]  ( .D(
        \CHIPS[1].core/buffer_conv[5] ), .CK(clk), .RB(n3573), .Q(
        \CHIPS[1].core/buffer_conv[26] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[27]  ( .D(
        \CHIPS[1].core/buffer_conv[6] ), .CK(clk), .RB(n3573), .Q(
        \CHIPS[1].core/buffer_conv[27] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[28]  ( .D(
        \CHIPS[1].core/buffer_conv[7] ), .CK(clk), .RB(n3573), .Q(
        \CHIPS[1].core/buffer_conv[28] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[29]  ( .D(
        \CHIPS[1].core/buffer_conv[8] ), .CK(clk), .RB(n3573), .Q(
        \CHIPS[1].core/buffer_conv[29] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[30]  ( .D(
        \CHIPS[1].core/buffer_conv[9] ), .CK(clk), .RB(n3572), .Q(
        \CHIPS[1].core/buffer_conv[30] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[31]  ( .D(
        \CHIPS[1].core/buffer_conv[10] ), .CK(clk), .RB(n3572), .Q(
        \CHIPS[1].core/buffer_conv[31] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[32]  ( .D(
        \CHIPS[1].core/buffer_conv[11] ), .CK(clk), .RB(n3572), .Q(
        \CHIPS[1].core/buffer_conv[32] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[33]  ( .D(
        \CHIPS[1].core/buffer_conv[12] ), .CK(clk), .RB(n3572), .Q(
        \CHIPS[1].core/buffer_conv[33] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[34]  ( .D(
        \CHIPS[1].core/buffer_conv[13] ), .CK(clk), .RB(n3572), .Q(
        \CHIPS[1].core/buffer_conv[34] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[35]  ( .D(
        \CHIPS[1].core/buffer_conv[14] ), .CK(clk), .RB(n3572), .Q(
        \CHIPS[1].core/buffer_conv[35] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[36]  ( .D(
        \CHIPS[1].core/buffer_conv[15] ), .CK(clk), .RB(n3571), .Q(
        \CHIPS[1].core/buffer_conv[36] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[37]  ( .D(
        \CHIPS[1].core/buffer_conv[16] ), .CK(clk), .RB(n3571), .Q(
        \CHIPS[1].core/buffer_conv[37] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[38]  ( .D(
        \CHIPS[1].core/buffer_conv[17] ), .CK(clk), .RB(n3571), .Q(
        \CHIPS[1].core/buffer_conv[38] ) );
  QDFFRBN \CHIPS[1].core/buffer_conv_reg[39]  ( .D(
        \CHIPS[1].core/buffer_conv[18] ), .CK(clk), .RB(n3571), .Q(
        \CHIPS[1].core/buffer_conv[39] ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[0]  ( .D(
        \CHIPS[1].core/temp_ppool[0] ), .CK(clk), .RB(n3571), .Q(
        \CHIPS[1].core/buffer_ppool_0 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[1]  ( .D(
        \CHIPS[1].core/temp_ppool[1] ), .CK(clk), .RB(n3571), .Q(
        \CHIPS[1].core/buffer_ppool_1 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[2]  ( .D(
        \CHIPS[1].core/temp_ppool[2] ), .CK(clk), .RB(n3570), .Q(
        \CHIPS[1].core/buffer_ppool_2 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[3]  ( .D(
        \CHIPS[1].core/temp_ppool[3] ), .CK(clk), .RB(n3570), .Q(
        \CHIPS[1].core/buffer_ppool_3 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[4]  ( .D(
        \CHIPS[1].core/temp_ppool[4] ), .CK(clk), .RB(n3570), .Q(
        \CHIPS[1].core/buffer_ppool_4 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[5]  ( .D(
        \CHIPS[1].core/temp_ppool[5] ), .CK(clk), .RB(n3570), .Q(
        \CHIPS[1].core/buffer_ppool_5 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[6]  ( .D(
        \CHIPS[1].core/temp_ppool[6] ), .CK(clk), .RB(n3570), .Q(
        \CHIPS[1].core/buffer_ppool_6 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[7]  ( .D(
        \CHIPS[1].core/temp_ppool[7] ), .CK(clk), .RB(n3570), .Q(
        \CHIPS[1].core/buffer_ppool_7 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[8]  ( .D(
        \CHIPS[1].core/temp_ppool[8] ), .CK(clk), .RB(n3569), .Q(
        \CHIPS[1].core/buffer_ppool_8 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[9]  ( .D(
        \CHIPS[1].core/temp_ppool[9] ), .CK(clk), .RB(n3569), .Q(
        \CHIPS[1].core/buffer_ppool_9 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[10]  ( .D(
        \CHIPS[1].core/temp_ppool[10] ), .CK(clk), .RB(n3569), .Q(
        \CHIPS[1].core/buffer_ppool_10 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[11]  ( .D(
        \CHIPS[1].core/temp_ppool[11] ), .CK(clk), .RB(n3569), .Q(
        \CHIPS[1].core/buffer_ppool_11 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[12]  ( .D(
        \CHIPS[1].core/temp_ppool[12] ), .CK(clk), .RB(n3569), .Q(
        \CHIPS[1].core/buffer_ppool_12 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[13]  ( .D(
        \CHIPS[1].core/temp_ppool[13] ), .CK(clk), .RB(n3569), .Q(
        \CHIPS[1].core/buffer_ppool_13 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[14]  ( .D(
        \CHIPS[1].core/temp_ppool[14] ), .CK(clk), .RB(n3568), .Q(
        \CHIPS[1].core/buffer_ppool_14 ) );
  QDFFRBN \CHIPS[1].core/buffer_ppool_reg[15]  ( .D(
        \CHIPS[1].core/temp_ppool[15] ), .CK(clk), .RB(n3568), .Q(
        \CHIPS[1].core/buffer_ppool_15 ) );
  QDFFRBN \weights_reg[63]  ( .D(N253), .CK(clk), .RB(n3698), .Q(weights[63])
         );
  QDFFRBT \buffer_data_reg[11]  ( .D(n70), .CK(clk), .RB(n3701), .Q(
        buffer_data[11]) );
  QDFFRBT \buffer_data_reg[15]  ( .D(n82), .CK(clk), .RB(n3702), .Q(
        buffer_data[15]) );
  QDFFRBT \buffer_data_reg[13]  ( .D(n76), .CK(clk), .RB(n3701), .Q(
        buffer_data[13]) );
  QDFFRBT \buffer_data_reg[9]  ( .D(n64), .CK(clk), .RB(n3700), .Q(
        buffer_data[9]) );
  QDFFRBN \weights_reg[62]  ( .D(N252), .CK(clk), .RB(n3695), .Q(weights[62])
         );
  QDFFRBP \buffer_data_reg[3]  ( .D(n71), .CK(clk), .RB(n3457), .Q(
        buffer_data[3]) );
  QDFFRBP \weights_reg[50]  ( .D(N240), .CK(clk), .RB(n3684), .Q(weights[50])
         );
  QDFFRBT \buffer_data_reg[17]  ( .D(n63), .CK(clk), .RB(n3700), .Q(
        buffer_data[17]) );
  QDFFRBP \weights_reg[61]  ( .D(N251), .CK(clk), .RB(n3692), .Q(weights[61])
         );
  QDFFRBP \weights_reg[56]  ( .D(N246), .CK(clk), .RB(n3722), .Q(weights[56])
         );
  QDFFRBP \weights_reg[132]  ( .D(N322), .CK(clk), .RB(n3689), .Q(weights[132]) );
  QDFFRBT \weights_reg[125]  ( .D(N315), .CK(clk), .RB(n3692), .Q(weights[125]) );
  QDFFRBT \weights_reg[127]  ( .D(N317), .CK(clk), .RB(n3699), .Q(weights[127]) );
  QDFFRBN \CHIPS[0].core/buffer_pconv_reg[79]  ( .D(
        \CHIPS[0].core/buffer_pconv[61] ), .CK(clk), .RB(n3708), .Q(
        \CHIPS[0].core/buffer_pconv[79] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[223]  ( .D(
        \CHIPS[1].core/buffer_pconv[205] ), .CK(clk), .RB(n3474), .Q(
        \CHIPS[1].core/buffer_pconv[223] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[226]  ( .D(
        \CHIPS[1].core/buffer_pconv[208] ), .CK(clk), .RB(n3474), .Q(
        \CHIPS[1].core/buffer_pconv[226] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[487]  ( .D(
        \CHIPS[1].core/buffer_pconv[469] ), .CK(clk), .RB(n3610), .Q(
        \CHIPS[1].core/buffer_pconv[487] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[2]  ( .D(
        \CHIPS[1].core/temp_pconv[2] ), .CK(clk), .RB(n3827), .Q(
        \CHIPS[1].core/buffer_pconv[2] ) );
  QDFFRBT \weights_reg[141]  ( .D(N331), .CK(clk), .RB(n3691), .Q(weights[141]) );
  QDFFRBT \buffer_data_reg[2]  ( .D(n68), .CK(clk), .RB(n3701), .Q(
        buffer_data[2]) );
  QDFFRBT \buffer_data_reg[12]  ( .D(n73), .CK(clk), .RB(n3701), .Q(
        buffer_data[12]) );
  QDFFRBT \buffer_data_reg[0]  ( .D(n62), .CK(clk), .RB(n3700), .Q(
        buffer_data[0]) );
  QDFFRBT \buffer_data_reg[5]  ( .D(n77), .CK(clk), .RB(n3702), .Q(
        buffer_data[5]) );
  QDFFRBP \weights_reg[142]  ( .D(N332), .CK(clk), .RB(n3694), .Q(weights[142]) );
  QDFFRBT \buffer_data_reg[6]  ( .D(n80), .CK(clk), .RB(n3702), .Q(
        buffer_data[6]) );
  QDFFRBT \buffer_data_reg[16]  ( .D(n60), .CK(clk), .RB(n3700), .Q(
        buffer_data[16]) );
  QDFFRBP \CHIPS[0].core/buffer_conv_reg[29]  ( .D(
        \CHIPS[0].core/buffer_conv[8] ), .CK(clk), .RB(n3513), .Q(
        \CHIPS[0].core/buffer_conv[29] ) );
  DFFRBP \CHIPS[1].core/buffer_conv_reg[13]  ( .D(n225), .CK(clk), .RB(n3575), 
        .Q(\CHIPS[1].core/buffer_conv[13] ) );
  DFFRBP \counter_next_reg[4]  ( .D(n94), .CK(clk), .RB(n3458), .QB(n3832) );
  DFFRBP \weights_reg[41]  ( .D(N231), .CK(clk), .RB(n3725), .Q(weights[41]), 
        .QB(n3842) );
  DFFRBP \weights_reg[17]  ( .D(N207), .CK(clk), .RB(n3725), .Q(weights[17]), 
        .QB(n3841) );
  DFFRBP \weights_reg[119]  ( .D(N309), .CK(clk), .RB(n3697), .Q(weights[119]), 
        .QB(n3860) );
  DFFRBP \weights_reg[79]  ( .D(N269), .CK(clk), .RB(n3699), .Q(weights[79]), 
        .QB(n3863) );
  DFFRBP \weights_reg[23]  ( .D(N213), .CK(clk), .RB(n3697), .Q(weights[23]), 
        .QB(n3861) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[4]  ( .D(
        \CHIPS[1].core/temp_pconv[4] ), .CK(clk), .RB(n3509), .Q(
        \CHIPS[1].core/buffer_pconv[4] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[5]  ( .D(
        \CHIPS[1].core/temp_pconv[5] ), .CK(clk), .RB(n3509), .Q(
        \CHIPS[1].core/buffer_pconv[5] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[4]  ( .D(
        \CHIPS[0].core/temp_pconv[4] ), .CK(clk), .RB(n3720), .Q(
        \CHIPS[0].core/buffer_pconv[4] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[5]  ( .D(
        \CHIPS[0].core/temp_pconv[5] ), .CK(clk), .RB(n3720), .Q(
        \CHIPS[0].core/buffer_pconv[5] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[6]  ( .D(
        \CHIPS[1].core/temp_pconv[6] ), .CK(clk), .RB(n3509), .Q(
        \CHIPS[1].core/buffer_pconv[6] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[6]  ( .D(
        \CHIPS[0].core/temp_pconv[6] ), .CK(clk), .RB(n3720), .Q(
        \CHIPS[0].core/buffer_pconv[6] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[7]  ( .D(
        \CHIPS[1].core/temp_pconv[7] ), .CK(clk), .RB(n3509), .Q(
        \CHIPS[1].core/buffer_pconv[7] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[7]  ( .D(
        \CHIPS[0].core/temp_pconv[7] ), .CK(clk), .RB(n3720), .Q(
        \CHIPS[0].core/buffer_pconv[7] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[8]  ( .D(
        \CHIPS[1].core/temp_pconv[8] ), .CK(clk), .RB(n3509), .Q(
        \CHIPS[1].core/buffer_pconv[8] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[8]  ( .D(
        \CHIPS[0].core/temp_pconv[8] ), .CK(clk), .RB(n3719), .Q(
        \CHIPS[0].core/buffer_pconv[8] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[9]  ( .D(
        \CHIPS[1].core/temp_pconv[9] ), .CK(clk), .RB(n3508), .Q(
        \CHIPS[1].core/buffer_pconv[9] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[9]  ( .D(
        \CHIPS[0].core/temp_pconv[9] ), .CK(clk), .RB(n3719), .Q(
        \CHIPS[0].core/buffer_pconv[9] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[10]  ( .D(
        \CHIPS[1].core/temp_pconv[10] ), .CK(clk), .RB(n3508), .Q(
        \CHIPS[1].core/buffer_pconv[10] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[11]  ( .D(
        \CHIPS[1].core/temp_pconv[11] ), .CK(clk), .RB(n3508), .Q(
        \CHIPS[1].core/buffer_pconv[11] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[10]  ( .D(
        \CHIPS[0].core/temp_pconv[10] ), .CK(clk), .RB(n3719), .Q(
        \CHIPS[0].core/buffer_pconv[10] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[12]  ( .D(
        \CHIPS[1].core/temp_pconv[12] ), .CK(clk), .RB(n3508), .Q(
        \CHIPS[1].core/buffer_pconv[12] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[11]  ( .D(
        \CHIPS[0].core/temp_pconv[11] ), .CK(clk), .RB(n3719), .Q(
        \CHIPS[0].core/buffer_pconv[11] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[16]  ( .D(
        \CHIPS[1].core/temp_pconv[16] ), .CK(clk), .RB(n3508), .Q(
        \CHIPS[1].core/buffer_pconv[16] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[12]  ( .D(
        \CHIPS[0].core/temp_pconv[12] ), .CK(clk), .RB(n3719), .Q(
        \CHIPS[0].core/buffer_pconv[12] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[14]  ( .D(
        \CHIPS[1].core/temp_pconv[14] ), .CK(clk), .RB(n3458), .Q(
        \CHIPS[1].core/buffer_pconv[14] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[15]  ( .D(
        \CHIPS[1].core/temp_pconv[15] ), .CK(clk), .RB(n3458), .Q(
        \CHIPS[1].core/buffer_pconv[15] ) );
  DFFRBP \CHIPS[1].core/buffer_pconv_reg[13]  ( .D(
        \CHIPS[1].core/temp_pconv[13] ), .CK(clk), .RB(n3508), .Q(
        \CHIPS[1].core/buffer_pconv[13] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[13]  ( .D(
        \CHIPS[0].core/temp_pconv[13] ), .CK(clk), .RB(n3719), .Q(
        \CHIPS[0].core/buffer_pconv[13] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[14]  ( .D(
        \CHIPS[0].core/temp_pconv[14] ), .CK(clk), .RB(n3457), .Q(
        \CHIPS[0].core/buffer_pconv[14] ) );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[15]  ( .D(
        \CHIPS[0].core/temp_pconv[15] ), .CK(clk), .RB(n3458), .Q(
        \CHIPS[0].core/buffer_pconv[15] ) );
  QDFFRBP \weights_reg[131]  ( .D(N321), .CK(clk), .RB(n3686), .Q(weights[131]) );
  QDFFRBT \weights_reg[53]  ( .D(N243), .CK(clk), .RB(n3693), .Q(weights[53])
         );
  QDFFRBP \weights_reg[124]  ( .D(N314), .CK(clk), .RB(n3689), .Q(weights[124]) );
  QDFFRBP \buffer_data_reg[1]  ( .D(n65), .CK(clk), .RB(n3457), .Q(
        buffer_data[1]) );
  QDFFRBP \weights_reg[54]  ( .D(N244), .CK(clk), .RB(n3696), .Q(weights[54])
         );
  QDFFRBP \weights_reg[138]  ( .D(N328), .CK(clk), .RB(n3682), .Q(weights[138]) );
  QDFFRBP \weights_reg[137]  ( .D(N327), .CK(clk), .RB(n3725), .Q(weights[137]) );
  QDFFRBP \weights_reg[135]  ( .D(N325), .CK(clk), .RB(n3698), .Q(weights[135]) );
  QDFFRBP \weights_reg[140]  ( .D(N330), .CK(clk), .RB(n3688), .Q(weights[140]) );
  QDFFRBT \weights_reg[64]  ( .D(N254), .CK(clk), .RB(n3721), .Q(weights[64])
         );
  QDFFRBP \weights_reg[126]  ( .D(N316), .CK(clk), .RB(n3696), .Q(weights[126]) );
  QDFFRBT \weights_reg[65]  ( .D(N255), .CK(clk), .RB(n3724), .Q(weights[65])
         );
  QDFFRBP \weights_reg[134]  ( .D(N324), .CK(clk), .RB(n3695), .Q(weights[134]) );
  QDFFRBT \buffer_data_reg[22]  ( .D(n78), .CK(clk), .RB(n3702), .Q(
        buffer_data[22]) );
  QDFFRBP \weights_reg[128]  ( .D(N318), .CK(clk), .RB(n3723), .Q(weights[128]) );
  QDFFRBT \weights_reg[57]  ( .D(N247), .CK(clk), .RB(n3725), .Q(weights[57])
         );
  QDFFRBT \weights_reg[121]  ( .D(N311), .CK(clk), .RB(n3726), .Q(weights[121]) );
  QDFFRBP \weights_reg[70]  ( .D(N260), .CK(clk), .RB(n3694), .Q(weights[70])
         );
  QDFFRBT \buffer_data_reg[4]  ( .D(n74), .CK(clk), .RB(n3701), .Q(
        buffer_data[4]) );
  QDFFRBT \buffer_data_reg[7]  ( .D(n83), .CK(clk), .RB(n3703), .Q(
        buffer_data[7]) );
  QDFFRBT \weights_reg[139]  ( .D(N329), .CK(clk), .RB(n3685), .Q(weights[139]) );
  QDFFRBT \buffer_data_reg[10]  ( .D(n67), .CK(clk), .RB(n3700), .Q(
        buffer_data[10]) );
  QDFFRBT \weights_reg[133]  ( .D(N323), .CK(clk), .RB(n3692), .Q(weights[133]) );
  QDFFRBP \weights_reg[48]  ( .D(N238), .CK(clk), .RB(n3724), .Q(weights[48])
         );
  QDFFRBT \buffer_data_reg[21]  ( .D(n75), .CK(clk), .RB(n3457), .Q(
        buffer_data[21]) );
  QDFFRBP \weights_reg[136]  ( .D(N326), .CK(clk), .RB(n3722), .Q(weights[136]) );
  QDFFRBT \weights_reg[59]  ( .D(N249), .CK(clk), .RB(n3686), .Q(weights[59])
         );
  QDFFRBT \weights_reg[51]  ( .D(N241), .CK(clk), .RB(n3687), .Q(weights[51])
         );
  QDFFRBP \CHIPS[0].core/buffer_pconv_reg[0]  ( .D(
        \CHIPS[0].core/temp_pconv[0] ), .CK(clk), .RB(n3721), .Q(
        \CHIPS[0].core/buffer_pconv[0] ) );
  QDFFRBP \CHIPS[1].core/buffer_pconv_reg[0]  ( .D(
        \CHIPS[1].core/temp_pconv[0] ), .CK(clk), .RB(n3828), .Q(
        \CHIPS[1].core/buffer_pconv[0] ) );
  QDFFRBP \weights_reg[66]  ( .D(N256), .CK(clk), .RB(n3682), .Q(weights[66])
         );
  QDFFRBN \CHIPS[0].core/buffer_conv_reg[24]  ( .D(
        \CHIPS[0].core/buffer_conv[3] ), .CK(clk), .RB(n3514), .Q(
        \CHIPS[0].core/buffer_conv[24] ) );
  DFFRBS \weights_reg[36]  ( .D(N226), .CK(clk), .RB(n3689), .Q(weights[36]), 
        .QB(n3850) );
  QDFFRBT \buffer_data_reg[18]  ( .D(n66), .CK(clk), .RB(n3457), .Q(
        buffer_data[18]) );
  QDFFRBT \weights_reg[58]  ( .D(N248), .CK(clk), .RB(n3683), .Q(weights[58])
         );
  QDFFRBP \weights_reg[71]  ( .D(N261), .CK(clk), .RB(n3697), .Q(weights[71])
         );
  QDFFRBP \weights_reg[49]  ( .D(N239), .CK(clk), .RB(n3727), .Q(weights[49])
         );
  QDFFRBT \weights_reg[60]  ( .D(N250), .CK(clk), .RB(n3689), .Q(weights[60])
         );
  QDFFRBT \weights_reg[68]  ( .D(N258), .CK(clk), .RB(n3688), .Q(weights[68])
         );
  DFFRBT \buffer_data_reg[23]  ( .D(n81), .CK(clk), .RB(n3702), .Q(n130), .QB(
        n129) );
  DFFRBP \buffer_data_reg[19]  ( .D(n69), .CK(clk), .RB(n3457), .Q(n495), .QB(
        n494) );
  DFFRBP \buffer_data_reg[14]  ( .D(n79), .CK(clk), .RB(n3702), .Q(n115), .QB(
        n116) );
  QDFFRBT \weights_reg[130]  ( .D(N320), .CK(clk), .RB(n3683), .Q(weights[130]) );
  QDFFRBP \weights_reg[55]  ( .D(N245), .CK(clk), .RB(n3699), .Q(weights[55])
         );
  QDFFRBT \weights_reg[67]  ( .D(N257), .CK(clk), .RB(n3685), .Q(weights[67])
         );
  QDFFRBT \weights_reg[123]  ( .D(N313), .CK(clk), .RB(n3686), .Q(weights[123]) );
  QDFFRBP \weights_reg[52]  ( .D(N242), .CK(clk), .RB(n3690), .Q(weights[52])
         );
  DFFRBP \CHIPS[0].core/buffer_pconv_reg[16]  ( .D(
        \CHIPS[0].core/temp_pconv[16] ), .CK(clk), .RB(n3718), .Q(
        \CHIPS[0].core/buffer_pconv[16] ) );
  QDFFRBT \buffer_data_reg[8]  ( .D(n61), .CK(clk), .RB(n3700), .Q(
        buffer_data[8]) );
  QDFFRBP \weights_reg[122]  ( .D(N312), .CK(clk), .RB(n3683), .Q(weights[122]) );
  QDFFRBP \buffer_data_reg[20]  ( .D(n72), .CK(clk), .RB(n3701), .Q(
        buffer_data[20]) );
  QDFFRBP \weights_reg[143]  ( .D(N333), .CK(clk), .RB(n3697), .Q(weights[143]) );
  QDFFRBP \weights_reg[120]  ( .D(N310), .CK(clk), .RB(n3723), .Q(weights[120]) );
  QDFFRBP \weights_reg[69]  ( .D(N259), .CK(clk), .RB(n3691), .Q(weights[69])
         );
  DFFRBN \counter_next_reg[2]  ( .D(n92), .CK(clk), .RB(n3704), .Q(
        counter_next[2]), .QB(n3831) );
  DFFRBS \weights_reg[47]  ( .D(N237), .CK(clk), .RB(n3697), .Q(weights[47]), 
        .QB(n3862) );
  DFFRBN \weights_reg[25]  ( .D(N215), .CK(clk), .RB(n3727), .Q(weights[25]), 
        .QB(n3846) );
  DFFRBN \weights_reg[27]  ( .D(N217), .CK(clk), .RB(n3687), .Q(weights[27]), 
        .QB(n3834) );
  DFFRBN \weights_reg[3]  ( .D(N193), .CK(clk), .RB(n3687), .Q(weights[3]), 
        .QB(n3833) );
  DFFRBN \weights_reg[97]  ( .D(N287), .CK(clk), .RB(n3726), .Q(weights[97]), 
        .QB(n3844) );
  DFFRBN \weights_reg[94]  ( .D(N284), .CK(clk), .RB(n3694), .Q(weights[94]), 
        .QB(n3859) );
  DFFRBN \weights_reg[108]  ( .D(N298), .CK(clk), .RB(n3688), .Q(weights[108]), 
        .QB(n3848) );
  DFFRBN \weights_reg[8]  ( .D(N198), .CK(clk), .RB(n3723), .Q(weights[8]), 
        .QB(n3837) );
  DFFRBN \weights_reg[32]  ( .D(N222), .CK(clk), .RB(n3723), .Q(weights[32]), 
        .QB(n3838) );
  DFFRBN \weights_reg[1]  ( .D(N191), .CK(clk), .RB(n3693), .Q(weights[1]), 
        .QB(n3845) );
  DFFRBN \weights_reg[110]  ( .D(N300), .CK(clk), .RB(n3695), .Q(weights[110]), 
        .QB(n3856) );
  DFFRBN \weights_reg[101]  ( .D(N291), .CK(clk), .RB(n3693), .Q(weights[101]), 
        .QB(n3852) );
  DFFRBN \weights_reg[38]  ( .D(N228), .CK(clk), .RB(n3695), .Q(weights[38]), 
        .QB(n3858) );
  DFFRBN \weights_reg[29]  ( .D(N219), .CK(clk), .RB(n3693), .Q(weights[29]), 
        .QB(n3854) );
  DFFRBN \weights_reg[14]  ( .D(N204), .CK(clk), .RB(n3695), .Q(weights[14]), 
        .QB(n3857) );
  DFFRBN \weights_reg[5]  ( .D(N195), .CK(clk), .RB(n3693), .Q(weights[5]), 
        .QB(n3853) );
  DFFRBN \weights_reg[12]  ( .D(N202), .CK(clk), .RB(n3689), .Q(weights[12]), 
        .QB(n3849) );
  DFFRBN \weights_reg[92]  ( .D(N282), .CK(clk), .RB(n3688), .Q(weights[92]), 
        .QB(n3851) );
  DFFRBN \weights_reg[88]  ( .D(N278), .CK(clk), .RB(n3721), .Q(weights[88]), 
        .QB(n3839) );
  DFFRBN \weights_reg[73]  ( .D(N263), .CK(clk), .RB(n3726), .Q(weights[73]), 
        .QB(n3843) );
  DFFRBN \weights_reg[112]  ( .D(N302), .CK(clk), .RB(n3721), .Q(weights[112]), 
        .QB(n3840) );
  DFFRBN \weights_reg[84]  ( .D(N274), .CK(clk), .RB(n3689), .Q(weights[84]), 
        .QB(n3847) );
  DFFRBN \weights_reg[104]  ( .D(N294), .CK(clk), .RB(n3722), .Q(weights[104]), 
        .QB(n3836) );
  DFFRBN \weights_reg[80]  ( .D(N270), .CK(clk), .RB(n3722), .Q(weights[80]), 
        .QB(n3835) );
  DFFRBN \weights_reg[86]  ( .D(N276), .CK(clk), .RB(n3695), .Q(weights[86]), 
        .QB(n3855) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[19]  ( .D(n635), .CK(clk), .RB(n3507), .Q(\CHIPS[1].core/buffer_pconv[19] ) );
  QDFFRBN \CHIPS[1].core/buffer_pconv_reg[18]  ( .D(
        \CHIPS[1].core/buffer_pconv[0] ), .CK(clk), .RB(n3507), .Q(
        \CHIPS[1].core/buffer_pconv[18] ) );
  XOR2HS U268 ( .I1(n2812), .I2(n2811), .O(\CHIPS[0].core/temp_pconv[13] ) );
  BUF1 U269 ( .I(n3443), .O(n3441) );
  BUF1 U270 ( .I(n3443), .O(n3451) );
  BUF2 U271 ( .I(n3415), .O(n3365) );
  INV1S U272 ( .I(n876), .O(n3447) );
  BUF4CK U273 ( .I(n3177), .O(n3188) );
  BUF4CK U274 ( .I(n3177), .O(n3176) );
  NR2P U275 ( .I1(n769), .I2(n766), .O(n251) );
  BUF3 U276 ( .I(n3312), .O(n3282) );
  BUF3 U277 ( .I(n3259), .O(n3258) );
  BUF3 U278 ( .I(n3259), .O(n3267) );
  ND2 U279 ( .I1(n2809), .I2(n2808), .O(n2812) );
  BUF3 U280 ( .I(n3415), .O(n3095) );
  BUF2 U281 ( .I(n3415), .O(n3434) );
  BUF2 U282 ( .I(n3415), .O(n3381) );
  BUF1 U283 ( .I(n3339), .O(n3338) );
  BUF1 U284 ( .I(n3233), .O(n3202) );
  BUF1 U285 ( .I(n3233), .O(n3246) );
  BUF1 U286 ( .I(n3339), .O(n3352) );
  ND2S U287 ( .I1(n260), .I2(n2760), .O(n2761) );
  INV1S U288 ( .I(n3255), .O(n3383) );
  INV1S U289 ( .I(n2882), .O(n2884) );
  BUF2 U290 ( .I(n3389), .O(n3122) );
  BUF2 U291 ( .I(n3325), .O(n3313) );
  INV1S U292 ( .I(n759), .O(n605) );
  INV1S U293 ( .I(n2757), .O(n2760) );
  INV2 U294 ( .I(n678), .O(n2866) );
  OA12P U295 ( .B1(n2869), .B2(n2883), .A1(n2870), .O(n215) );
  INV1S U296 ( .I(n831), .O(n2815) );
  INV1S U297 ( .I(n3396), .O(n3423) );
  INV1S U298 ( .I(n3396), .O(n3417) );
  BUF1 U299 ( .I(n2751), .O(n671) );
  BUF1 U300 ( .I(n2814), .O(n502) );
  INV1S U301 ( .I(n3255), .O(n3431) );
  INV1S U302 ( .I(n3255), .O(n3386) );
  INV1S U303 ( .I(n3255), .O(n3252) );
  INV1S U304 ( .I(n3453), .O(n3113) );
  INV1S U305 ( .I(n3255), .O(n3427) );
  INV1S U306 ( .I(n3453), .O(n3393) );
  INV1S U307 ( .I(n3186), .O(n3199) );
  INV1S U308 ( .I(n3186), .O(n3181) );
  INV1S U309 ( .I(n3330), .O(n3344) );
  INV1S U310 ( .I(n3330), .O(n3141) );
  INV1S U311 ( .I(n3330), .O(n3318) );
  INV1S U312 ( .I(n3330), .O(n3154) );
  INV1S U313 ( .I(n3186), .O(n3169) );
  INV1S U314 ( .I(n3330), .O(n3127) );
  BUF2 U315 ( .I(n3268), .O(n3415) );
  INV1S U316 ( .I(n3346), .O(n3304) );
  INV1S U317 ( .I(n3346), .O(n3289) );
  INV1S U318 ( .I(n3346), .O(n3273) );
  BUF2 U319 ( .I(n3389), .O(n3137) );
  INV1S U320 ( .I(n220), .O(n3198) );
  NR2P U321 ( .I1(n2882), .I2(n1312), .O(n2874) );
  INV2 U322 ( .I(n962), .O(n2832) );
  BUF2 U323 ( .I(n3325), .O(n3108) );
  NR2P U324 ( .I1(n600), .I2(n768), .O(n766) );
  BUF2 U325 ( .I(n3378), .O(n3366) );
  INV1S U326 ( .I(n3230), .O(n3227) );
  INV1S U327 ( .I(n3230), .O(n3214) );
  INV1S U328 ( .I(n706), .O(n258) );
  BUF1 U329 ( .I(n2806), .O(n2807) );
  BUF1 U330 ( .I(n2826), .O(n962) );
  BUF1 U331 ( .I(n2880), .O(n860) );
  BUF1 U332 ( .I(n2747), .O(n850) );
  BUF2 U333 ( .I(n2864), .O(n678) );
  BUF4CK U334 ( .I(n3268), .O(n3143) );
  INV2 U335 ( .I(n1312), .O(n604) );
  BUF3 U336 ( .I(n3140), .O(n3378) );
  BUF2 U337 ( .I(n2865), .O(n706) );
  ND2 U338 ( .I1(n1224), .I2(n2707), .O(n2870) );
  NR2P U339 ( .I1(n3073), .I2(n3346), .O(n3077) );
  NR2T U340 ( .I1(n2707), .I2(n1224), .O(n2869) );
  ND2T U341 ( .I1(n759), .I2(n2759), .O(n1058) );
  BUF2 U342 ( .I(n3263), .O(n3443) );
  INV2 U343 ( .I(n582), .O(n2707) );
  INV3 U344 ( .I(n1121), .O(n489) );
  ND2T U345 ( .I1(n1464), .I2(n1463), .O(n2105) );
  ND2P U346 ( .I1(n805), .I2(n2080), .O(n2755) );
  ND2 U347 ( .I1(n2102), .I2(n1424), .O(n1463) );
  INV2 U348 ( .I(n1462), .O(n879) );
  INV1S U349 ( .I(n588), .O(n589) );
  ND3P U350 ( .I1(n910), .I2(n998), .I3(n1005), .O(n582) );
  ND2P U351 ( .I1(n2072), .I2(n2071), .O(n2767) );
  INV2 U352 ( .I(n2834), .O(n1254) );
  INV4 U353 ( .I(n2831), .O(n2827) );
  BUF2 U354 ( .I(n3263), .O(n3396) );
  INV4CK U355 ( .I(n177), .O(n1439) );
  INV1S U356 ( .I(n1095), .O(n588) );
  ND2 U357 ( .I1(n2736), .I2(n2735), .O(n1187) );
  INV2 U358 ( .I(n720), .O(n955) );
  INV1S U359 ( .I(n3090), .O(n3065) );
  XOR2HP U360 ( .I1(n2450), .I2(n1267), .O(n1148) );
  XNR2H U361 ( .I1(n1785), .I2(n1163), .O(n2103) );
  INV1S U362 ( .I(n2657), .O(n126) );
  ND2P U363 ( .I1(n1800), .I2(n1799), .O(n348) );
  INV2 U364 ( .I(n1006), .O(n1004) );
  ND3P U365 ( .I1(n367), .I2(n1963), .I3(n1964), .O(n853) );
  INV1S U366 ( .I(n2074), .O(n744) );
  NR2P U367 ( .I1(n1379), .I2(n1000), .O(n999) );
  NR2T U368 ( .I1(n1293), .I2(n1292), .O(n269) );
  INV1S U369 ( .I(counter_initial_next[4]), .O(n3069) );
  INV2 U370 ( .I(n2702), .O(n1139) );
  ND2 U371 ( .I1(n1813), .I2(n1847), .O(n351) );
  ND2 U372 ( .I1(n1830), .I2(n1885), .O(n353) );
  ND2 U373 ( .I1(n830), .I2(n493), .O(n1090) );
  XOR2H U374 ( .I1(n501), .I2(n517), .O(n2081) );
  XNR2HP U375 ( .I1(n213), .I2(n695), .O(n324) );
  INV1S U376 ( .I(n782), .O(n602) );
  NR2P U377 ( .I1(n824), .I2(n1866), .O(n349) );
  OAI112HP U378 ( .C1(n599), .C2(n1887), .A1(n714), .B1(n1885), .O(n1962) );
  INV2 U379 ( .I(n1449), .O(n172) );
  ND3S U380 ( .I1(n2953), .I2(counter_next[2]), .I3(n3063), .O(n3064) );
  INV1S U381 ( .I(n1937), .O(n1455) );
  INV1S U382 ( .I(n2420), .O(n940) );
  ND2T U383 ( .I1(n1019), .I2(n1884), .O(n714) );
  INV1S U384 ( .I(n1000), .O(n2604) );
  BUF2 U385 ( .I(n2091), .O(n274) );
  BUF1 U386 ( .I(n1402), .O(n1025) );
  INV1S U387 ( .I(counter_next[3]), .O(n3061) );
  INV2 U388 ( .I(n1832), .O(n1887) );
  ND2P U389 ( .I1(n118), .I2(n2092), .O(n849) );
  INV2 U390 ( .I(n1830), .O(n599) );
  INV1S U391 ( .I(n1296), .O(n956) );
  NR2P U392 ( .I1(n784), .I2(n2725), .O(n1261) );
  ND2P U393 ( .I1(n2406), .I2(n2405), .O(n2846) );
  INV1S U394 ( .I(n2085), .O(n1089) );
  AN2 U395 ( .I1(n851), .I2(n2722), .O(n113) );
  XNR2HS U396 ( .I1(n1926), .I2(n1925), .O(n1931) );
  AN2 U397 ( .I1(n2518), .I2(n2481), .O(n202) );
  XNR2HS U398 ( .I1(n2622), .I2(n2621), .O(n2629) );
  AN2 U399 ( .I1(n2534), .I2(n2465), .O(n515) );
  ND3P U400 ( .I1(n501), .I2(n1883), .I3(n1831), .O(n1298) );
  INV1 U401 ( .I(n2421), .O(n941) );
  XNR2HS U402 ( .I1(n846), .I2(n2067), .O(n746) );
  ND2P U403 ( .I1(n1026), .I2(n1402), .O(n1251) );
  INV1 U404 ( .I(n2711), .O(n1293) );
  INV1 U405 ( .I(n1985), .O(n2096) );
  BUF1 U406 ( .I(n2083), .O(n830) );
  INV1S U407 ( .I(n1969), .O(n1979) );
  INV2 U408 ( .I(n1403), .O(n1026) );
  INV1S U409 ( .I(n2641), .O(n244) );
  ND2P U410 ( .I1(n2034), .I2(n2033), .O(n2782) );
  NR2 U411 ( .I1(n1210), .I2(n2558), .O(n2497) );
  INV1S U412 ( .I(n2519), .O(n2482) );
  INV3CK U413 ( .I(n1867), .O(n1072) );
  BUF3 U414 ( .I(n2710), .O(n416) );
  INV2 U415 ( .I(n2091), .O(n336) );
  INV1S U416 ( .I(n1864), .O(n1101) );
  INV2 U417 ( .I(n1863), .O(n1798) );
  INV4 U418 ( .I(n1932), .O(n1334) );
  XNR2HS U419 ( .I1(n2053), .I2(n2052), .O(n2056) );
  NR2P U420 ( .I1(n2066), .I2(n594), .O(n2067) );
  XNR2HS U421 ( .I1(n1922), .I2(n1921), .O(n1926) );
  XNR2HS U422 ( .I1(n2617), .I2(n2616), .O(n2622) );
  ND2P U423 ( .I1(n2483), .I2(n2519), .O(n1034) );
  INV3 U424 ( .I(n2733), .O(n2520) );
  INV1 U425 ( .I(n2850), .O(n357) );
  NR2P U426 ( .I1(n2642), .I2(n2643), .O(n1418) );
  ND2 U427 ( .I1(n825), .I2(n2433), .O(n2438) );
  INV4CK U428 ( .I(n1935), .O(n1335) );
  XNR2HS U429 ( .I1(n700), .I2(n358), .O(n2405) );
  INV2 U430 ( .I(n797), .O(n1219) );
  INV2 U431 ( .I(n1971), .O(n399) );
  ND2S U432 ( .I1(n1983), .I2(n397), .O(n1984) );
  INV2 U433 ( .I(n1848), .O(n1296) );
  INV3 U434 ( .I(n1886), .O(n1830) );
  XNR2H U435 ( .I1(n2343), .I2(n1150), .O(n1402) );
  INV2 U436 ( .I(n1934), .O(n1866) );
  INV3 U437 ( .I(n2698), .O(n2700) );
  INV1S U438 ( .I(n2193), .O(n779) );
  INV1 U439 ( .I(n2059), .O(n1459) );
  INV1S U440 ( .I(n2291), .O(n2436) );
  NR2P U441 ( .I1(n2401), .I2(n2402), .O(n2854) );
  INV2 U442 ( .I(n1975), .O(n2086) );
  INV3 U443 ( .I(n417), .O(n2699) );
  INV1S U444 ( .I(n1195), .O(n1194) );
  INV3 U445 ( .I(n2533), .O(n2467) );
  INV2 U446 ( .I(n2093), .O(n1100) );
  INV4 U447 ( .I(n2099), .O(n782) );
  INV2 U448 ( .I(n784), .O(n2724) );
  BUF1 U449 ( .I(n2065), .O(n594) );
  ND2T U450 ( .I1(n1970), .I2(n1322), .O(n2089) );
  INV2 U451 ( .I(n2094), .O(n1099) );
  INV2 U452 ( .I(n1460), .O(n1980) );
  INV2 U453 ( .I(n1982), .O(n397) );
  INV1 U454 ( .I(n2732), .O(n1341) );
  ND2 U455 ( .I1(n2498), .I2(n183), .O(n2295) );
  INV1 U456 ( .I(n2556), .O(n2558) );
  INV4 U457 ( .I(n1814), .O(n1364) );
  NR2T U458 ( .I1(n749), .I2(n2652), .O(n2723) );
  OAI12HS U459 ( .B1(n1633), .B2(n1011), .A1(n391), .O(n1173) );
  INV2 U460 ( .I(n1046), .O(n518) );
  MOAI1H U461 ( .A1(n692), .A2(n693), .B1(n2381), .B2(n2382), .O(n2407) );
  OAI12HS U462 ( .B1(n1370), .B2(n1369), .A1(n1368), .O(n1954) );
  ND2 U463 ( .I1(n2423), .I2(n2424), .O(n2425) );
  OAI12HP U464 ( .B1(n674), .B2(n2343), .A1(n1037), .O(n1218) );
  INV1S U465 ( .I(n901), .O(n900) );
  INV3 U466 ( .I(n1845), .O(n1814) );
  INV2 U467 ( .I(n2553), .O(n1250) );
  INV1 U468 ( .I(n1257), .O(n2429) );
  INV1S U469 ( .I(n2422), .O(n2424) );
  INV2 U470 ( .I(n2311), .O(n2343) );
  OAI12HS U471 ( .B1(n901), .B2(n1874), .A1(n1873), .O(n898) );
  OAI12HS U472 ( .B1(n1836), .B2(n691), .A1(n1835), .O(n688) );
  ND2T U473 ( .I1(n1285), .I2(n1283), .O(n2099) );
  BUF1CK U474 ( .I(n2668), .O(n135) );
  INV3 U475 ( .I(n2555), .O(n1210) );
  INV1S U476 ( .I(n1836), .O(n689) );
  INV2 U477 ( .I(n2380), .O(n693) );
  INV2 U478 ( .I(n2097), .O(n1103) );
  NR2T U479 ( .I1(n1982), .I2(n1971), .O(n980) );
  NR2P U480 ( .I1(n318), .I2(n1384), .O(n317) );
  XNR2HS U481 ( .I1(n1957), .I2(n1956), .O(n1080) );
  BUF1 U482 ( .I(n2341), .O(n674) );
  INV1CK U483 ( .I(n2695), .O(n718) );
  INV2 U484 ( .I(n1989), .O(n1991) );
  INV4 U485 ( .I(n2653), .O(n294) );
  INV1S U486 ( .I(n691), .O(n690) );
  XOR2HS U487 ( .I1(n2003), .I2(n2002), .O(n2011) );
  NR2P U488 ( .I1(n2697), .I2(n2696), .O(n719) );
  XNR2HS U489 ( .I1(n1904), .I2(n865), .O(n488) );
  INV2 U490 ( .I(n1952), .O(n1370) );
  INV1S U491 ( .I(n1874), .O(n899) );
  OAI12H U492 ( .B1(n2640), .B2(n2639), .A1(n2638), .O(n2654) );
  XNR2H U493 ( .I1(n881), .I2(n2411), .O(n2421) );
  OAI12HS U494 ( .B1(n1665), .B2(n1664), .A1(n1663), .O(n334) );
  BUF1CK U495 ( .I(n2410), .O(n881) );
  OA12 U496 ( .B1(n2019), .B2(n2018), .A1(n2017), .O(n2028) );
  INV1S U497 ( .I(n1664), .O(n1666) );
  FA1 U498 ( .A(n2636), .B(n155), .CI(n2625), .CO(n2621), .S(n2642) );
  ND2P U499 ( .I1(n2165), .I2(n2166), .O(n2309) );
  INV1S U500 ( .I(n2647), .O(n2639) );
  INV1S U501 ( .I(n2646), .O(n2640) );
  NR2T U502 ( .I1(n2325), .I2(n2326), .O(n2517) );
  NR2 U503 ( .I1(n1904), .I2(n865), .O(n864) );
  INV3 U504 ( .I(n1877), .O(n1367) );
  ND2T U505 ( .I1(n121), .I2(n1010), .O(n120) );
  INV1 U506 ( .I(n1678), .O(n1159) );
  ND2P U507 ( .I1(n1782), .I2(n1781), .O(n1983) );
  ND2 U508 ( .I1(n2409), .I2(n2408), .O(n2411) );
  INV3 U509 ( .I(n2554), .O(n936) );
  OAI12HS U510 ( .B1(n2646), .B2(n2647), .A1(n2648), .O(n2638) );
  XNR2HS U511 ( .I1(n1996), .I2(n308), .O(n855) );
  INV1 U512 ( .I(n1677), .O(n1158) );
  INV2 U513 ( .I(n2344), .O(n231) );
  INV1S U514 ( .I(n1665), .O(n1667) );
  OAI12HS U515 ( .B1(n2615), .B2(n2605), .A1(n2614), .O(n2606) );
  XNR2H U516 ( .I1(n2585), .I2(n890), .O(n2514) );
  XNR2HS U517 ( .I1(n2693), .I2(n265), .O(n592) );
  XNR2H U518 ( .I1(n234), .I2(n1453), .O(n1452) );
  MAO222 U519 ( .A1(n1672), .B1(n509), .C1(n1673), .O(n1674) );
  INV1S U520 ( .I(n2352), .O(n1167) );
  INV1S U521 ( .I(n2580), .O(n319) );
  INV1S U522 ( .I(n1078), .O(n491) );
  INV1S U523 ( .I(n1386), .O(n320) );
  NR2T U524 ( .I1(n1719), .I2(n1720), .O(n1694) );
  BUF1 U525 ( .I(n1371), .O(n972) );
  FA1 U526 ( .A(n1897), .B(n845), .CI(n1895), .CO(n1898), .S(n1904) );
  INV2 U527 ( .I(n1748), .O(n1284) );
  INV2 U528 ( .I(n2063), .O(n1010) );
  INV1S U529 ( .I(n822), .O(n125) );
  INV1S U530 ( .I(n1786), .O(n1417) );
  INV1 U531 ( .I(n1061), .O(n976) );
  OAI12H U532 ( .B1(n1061), .B2(n2506), .A1(n2505), .O(n975) );
  NR2P U533 ( .I1(n1750), .I2(n1749), .O(n1382) );
  XNR2HS U534 ( .I1(n2694), .I2(n2692), .O(n265) );
  INV1 U535 ( .I(n2506), .O(n1060) );
  ND2T U536 ( .I1(n1201), .I2(n1200), .O(n1568) );
  INV2 U537 ( .I(n2049), .O(n1196) );
  INV2 U538 ( .I(n2658), .O(n734) );
  ND2P U539 ( .I1(n1453), .I2(n234), .O(n1007) );
  INV2 U540 ( .I(n2004), .O(n2006) );
  OR2 U541 ( .I1(n728), .I2(n946), .O(n1375) );
  INV2 U542 ( .I(n100), .O(n1394) );
  XNR2HS U543 ( .I1(n2360), .I2(n2359), .O(n2382) );
  XOR2HS U544 ( .I1(n322), .I2(n2566), .O(n315) );
  BUF4CK U545 ( .I(n1856), .O(n672) );
  OAI12HP U546 ( .B1(n1195), .B2(n2422), .A1(n2423), .O(n2311) );
  INV2 U547 ( .I(n2602), .O(n988) );
  INV1S U548 ( .I(n2523), .O(n827) );
  FA1 U549 ( .A(n1949), .B(n1879), .CI(n1878), .CO(n1952), .S(n1874) );
  XNR2H U550 ( .I1(n934), .I2(n1953), .O(n1947) );
  XNR2H U551 ( .I1(n2298), .I2(n453), .O(n823) );
  XNR2H U552 ( .I1(n1836), .I2(n691), .O(n687) );
  INV2 U553 ( .I(n841), .O(n1995) );
  INV1S U554 ( .I(n2391), .O(n2392) );
  INV1S U555 ( .I(n2390), .O(n2393) );
  INV3 U556 ( .I(n1618), .O(n1008) );
  INV3 U557 ( .I(n2427), .O(n1447) );
  BUF1 U558 ( .I(n2539), .O(n250) );
  INV2 U559 ( .I(n2042), .O(n1544) );
  INV1 U560 ( .I(n1732), .O(n1717) );
  INV1S U561 ( .I(n2312), .O(n2315) );
  XOR2HS U562 ( .I1(n2670), .I2(n632), .O(n2675) );
  INV3 U563 ( .I(n1819), .O(n313) );
  XOR2HS U564 ( .I1(n1747), .I2(n1746), .O(n548) );
  OR2 U565 ( .I1(n557), .I2(n1387), .O(n1386) );
  INV2 U566 ( .I(n435), .O(n1356) );
  NR2T U567 ( .I1(n795), .I2(n2361), .O(n2362) );
  INV2 U568 ( .I(n1616), .O(n1093) );
  ND2S U569 ( .I1(n2357), .I2(n2358), .O(n2359) );
  ND2P U570 ( .I1(n1772), .I2(n1773), .O(n2047) );
  BUF2 U571 ( .I(n2633), .O(n708) );
  NR2P U572 ( .I1(n1011), .I2(n1633), .O(n1993) );
  OAI12H U573 ( .B1(n219), .B2(n704), .A1(n471), .O(n2599) );
  MOAI1HP U574 ( .A1(n1275), .A2(n1274), .B1(n1273), .B2(n2328), .O(n2339) );
  INV1S U575 ( .I(n2299), .O(n1128) );
  NR2 U576 ( .I1(n751), .I2(n1634), .O(n750) );
  BUF1 U577 ( .I(n1900), .O(n946) );
  ND2P U578 ( .I1(n2153), .I2(n2152), .O(n2423) );
  XNR2H U579 ( .I1(n1728), .I2(n451), .O(n1748) );
  XNR2HS U580 ( .I1(n2582), .I2(n1406), .O(n2586) );
  OAI12H U581 ( .B1(n534), .B2(n1822), .A1(n1821), .O(n1366) );
  XNR2H U582 ( .I1(n557), .I2(n2591), .O(n705) );
  XNR2H U583 ( .I1(n2471), .I2(n790), .O(n1225) );
  XOR2H U584 ( .I1(n925), .I2(n1668), .O(n679) );
  BUF2 U585 ( .I(n2313), .O(n862) );
  INV2 U586 ( .I(n1021), .O(n751) );
  INV3 U587 ( .I(n729), .O(n1274) );
  ND2T U588 ( .I1(n2225), .I2(n2224), .O(n2426) );
  INV1S U589 ( .I(n619), .O(n154) );
  OAI12HS U590 ( .B1(n2591), .B2(n557), .A1(n2590), .O(n471) );
  ND2P U591 ( .I1(n1535), .I2(n1534), .O(n1990) );
  INV2 U592 ( .I(n2000), .O(n1987) );
  INV1 U593 ( .I(n2591), .O(n704) );
  INV1S U594 ( .I(n908), .O(n907) );
  INV1S U595 ( .I(n2367), .O(n1229) );
  OAI12HS U596 ( .B1(n1245), .B2(n2371), .A1(n2370), .O(n1244) );
  OR2P U597 ( .I1(n264), .I2(n2605), .O(n2614) );
  OR2 U598 ( .I1(n963), .I2(n2672), .O(n2676) );
  INV1 U599 ( .I(n1228), .O(n1227) );
  INV1S U600 ( .I(n2206), .O(n837) );
  AOI12HP U601 ( .B1(n448), .B2(n1996), .A1(n841), .O(n1223) );
  INV1S U602 ( .I(n1160), .O(n1584) );
  BUF4CK U603 ( .I(n2454), .O(n971) );
  INV2 U604 ( .I(n447), .O(n620) );
  OAI22S U605 ( .A1(n2524), .A2(n153), .B1(n963), .B2(n2661), .O(n2665) );
  OAI22S U606 ( .A1(n2661), .A2(n153), .B1(n963), .B2(n2677), .O(n2680) );
  NR2 U607 ( .I1(n1803), .I2(n193), .O(n1842) );
  INV1S U608 ( .I(n632), .O(n906) );
  BUF6CK U609 ( .I(n934), .O(n534) );
  OR2 U610 ( .I1(n1056), .I2(n1563), .O(n1202) );
  INV3 U611 ( .I(n557), .O(n219) );
  NR2P U612 ( .I1(n1389), .I2(n1652), .O(n1669) );
  INV1S U613 ( .I(n871), .O(n870) );
  XNR2H U614 ( .I1(n1302), .I2(n926), .O(n756) );
  XOR2HS U615 ( .I1(n838), .I2(n2206), .O(n835) );
  MOAI1H U616 ( .A1(n812), .A2(n893), .B1(n1611), .B2(n1612), .O(n1617) );
  OR2 U617 ( .I1(n540), .I2(n1432), .O(n1431) );
  NR2 U618 ( .I1(n2292), .I2(n848), .O(n1347) );
  XOR2H U619 ( .I1(n927), .I2(n455), .O(n2299) );
  INV2 U620 ( .I(n2364), .O(n852) );
  XNR2HP U621 ( .I1(n176), .I2(n1313), .O(n1616) );
  XOR2HS U622 ( .I1(n2579), .I2(n645), .O(n311) );
  INV1S U623 ( .I(n1630), .O(n1632) );
  BUF2 U624 ( .I(n1572), .O(n963) );
  XNR2HS U625 ( .I1(n1949), .I2(n1654), .O(n685) );
  ND2P U626 ( .I1(n2140), .I2(n210), .O(n2352) );
  INV3 U627 ( .I(n1651), .O(n1652) );
  NR2P U628 ( .I1(n1612), .I2(n1611), .O(n893) );
  INV1S U629 ( .I(weights[68]), .O(n3271) );
  INV1S U630 ( .I(weights[67]), .O(n3151) );
  INV1S U631 ( .I(n2551), .O(n481) );
  XNR2HS U632 ( .I1(weights[70]), .I2(n447), .O(n2677) );
  INV2 U633 ( .I(n598), .O(n1722) );
  INV3 U634 ( .I(n880), .O(n2361) );
  OR2P U635 ( .I1(n2637), .I2(n2631), .O(n475) );
  MOAI1 U636 ( .A1(n2337), .A2(n1741), .B1(n459), .B2(n1740), .O(n1747) );
  INV1 U637 ( .I(n2157), .O(n1445) );
  NR2 U638 ( .I1(n238), .I2(n3115), .O(n1593) );
  INV2 U639 ( .I(n3425), .O(n558) );
  INV8 U640 ( .I(n1597), .O(n934) );
  INV2 U641 ( .I(n2223), .O(n1246) );
  INV1S U642 ( .I(n1775), .O(n384) );
  XNR2H U643 ( .I1(n1743), .I2(n1742), .O(n926) );
  BUF1 U644 ( .I(n1415), .O(n249) );
  INV1 U645 ( .I(n1745), .O(n1242) );
  INV2 U646 ( .I(n2207), .O(n838) );
  BUF2 U647 ( .I(n2576), .O(n747) );
  BUF3 U648 ( .I(n1301), .O(n728) );
  XNR2H U649 ( .I1(n206), .I2(n1047), .O(n2314) );
  XNR2HS U650 ( .I1(n292), .I2(n290), .O(n2486) );
  XNR2HP U651 ( .I1(n1020), .I2(n788), .O(n1313) );
  INV1S U652 ( .I(n2156), .O(n1040) );
  BUF2 U653 ( .I(n607), .O(n729) );
  INV1S U654 ( .I(n299), .O(n298) );
  XNR2HS U655 ( .I1(n871), .I2(n2480), .O(n867) );
  INV1S U656 ( .I(n386), .O(n385) );
  ND2P U657 ( .I1(n1756), .I2(n1757), .O(n393) );
  XNR2HS U658 ( .I1(n166), .I2(n1889), .O(n1840) );
  XNR2H U659 ( .I1(n1634), .I2(n1021), .O(n176) );
  AO22 U660 ( .A1(n612), .A2(n207), .B1(n157), .B2(n485), .O(n2156) );
  BUF3 U661 ( .I(n1919), .O(n858) );
  BUF2 U662 ( .I(n1896), .O(n845) );
  OR2B1 U663 ( .I1(n3435), .B1(weights[120]), .O(n598) );
  INV2 U664 ( .I(n1527), .O(n1082) );
  INV1S U665 ( .I(n1131), .O(n278) );
  INV2 U666 ( .I(n2226), .O(n2223) );
  OAI22S U667 ( .A1(n1764), .A2(n419), .B1(n188), .B2(n1763), .O(n424) );
  INV3 U668 ( .I(n2546), .O(n590) );
  INV4CK U669 ( .I(n480), .O(n155) );
  INV1S U670 ( .I(n1645), .O(n1588) );
  INV3 U671 ( .I(n2351), .O(n1030) );
  XOR2HS U672 ( .I1(n643), .I2(n2587), .O(n1407) );
  OR2 U673 ( .I1(n928), .I2(n780), .O(n682) );
  INV2 U674 ( .I(n1825), .O(n1590) );
  INV2 U675 ( .I(n1641), .O(n1243) );
  INV1S U676 ( .I(n741), .O(n1363) );
  XNR2H U677 ( .I1(n1050), .I2(n2319), .O(n1047) );
  NR2 U678 ( .I1(n238), .I2(n3235), .O(n2462) );
  NR2P U679 ( .I1(n2284), .I2(n1413), .O(n742) );
  BUF1 U680 ( .I(n165), .O(n707) );
  BUF1 U681 ( .I(n1608), .O(n261) );
  AN2 U682 ( .I1(n953), .I2(n565), .O(n203) );
  INV3 U683 ( .I(n1106), .O(n377) );
  NR2P U684 ( .I1(n1134), .I2(n1133), .O(n1132) );
  INV1 U685 ( .I(n2187), .O(n2191) );
  INV1 U686 ( .I(n540), .O(n344) );
  ND3P U687 ( .I1(n1687), .I2(n303), .I3(n2541), .O(n310) );
  INV6 U688 ( .I(n2592), .O(n557) );
  ND2P U689 ( .I1(n446), .I2(n444), .O(n443) );
  OAI22H U690 ( .A1(n1489), .A2(n1892), .B1(n1891), .B2(n1482), .O(n1556) );
  ND2P U691 ( .I1(n498), .I2(n235), .O(n499) );
  ND2 U692 ( .I1(n1294), .I2(n394), .O(n1757) );
  NR2P U693 ( .I1(n545), .I2(n2303), .O(n2216) );
  OAI12H U694 ( .B1(n549), .B2(n2189), .A1(n2188), .O(n2176) );
  XNR2H U695 ( .I1(n2252), .I2(n1307), .O(n1306) );
  AN2B1P U696 ( .I1(n653), .B1(n2116), .O(n1513) );
  INV1S U697 ( .I(n2194), .O(n2196) );
  INV1S U698 ( .I(n2123), .O(n485) );
  BUF6 U699 ( .I(n2664), .O(n657) );
  INV4 U700 ( .I(n2637), .O(n480) );
  BUF1 U701 ( .I(weights[54]), .O(n537) );
  BUF4CK U702 ( .I(n1411), .O(n185) );
  ND3P U703 ( .I1(n188), .I2(n1737), .I3(n343), .O(n1723) );
  INV1S U704 ( .I(n1603), .O(n1604) );
  ND3 U705 ( .I1(n1711), .I2(n2619), .I3(n2541), .O(n1692) );
  INV2 U706 ( .I(n1542), .O(n1470) );
  XNR2HS U707 ( .I1(weights[64]), .I2(n929), .O(n2189) );
  BUF2 U708 ( .I(n2619), .O(n264) );
  ND2T U709 ( .I1(n1690), .I2(n1683), .O(n540) );
  INV4CK U710 ( .I(n1586), .O(n2454) );
  NR2T U711 ( .I1(n1327), .I2(n409), .O(n1425) );
  INV2 U712 ( .I(n331), .O(n593) );
  NR2 U713 ( .I1(n2633), .I2(n2495), .O(n291) );
  INV3 U714 ( .I(n1637), .O(n498) );
  INV1S U715 ( .I(weights[137]), .O(n3242) );
  NR2P U716 ( .I1(n457), .I2(n153), .O(n1133) );
  BUF3CK U717 ( .I(n2526), .O(n877) );
  INV1S U718 ( .I(n1697), .O(n1685) );
  AN2B1S U719 ( .I1(n655), .B1(n193), .O(n1502) );
  INV2 U720 ( .I(n1636), .O(n235) );
  NR2 U721 ( .I1(n1478), .I2(n192), .O(n1484) );
  NR2P U722 ( .I1(n3442), .I2(n538), .O(n1601) );
  ND2P U723 ( .I1(n2235), .I2(n1154), .O(n2368) );
  ND2T U724 ( .I1(n953), .I2(n2334), .O(n330) );
  INV1S U725 ( .I(n2219), .O(n2213) );
  INV2 U726 ( .I(n2257), .O(n333) );
  XOR2HS U727 ( .I1(n1450), .I2(n536), .O(n1704) );
  INV2 U728 ( .I(n1528), .O(n1220) );
  INV1 U729 ( .I(n3107), .O(n521) );
  XNR2HS U730 ( .I1(n2571), .I2(n3437), .O(n2476) );
  ND3 U731 ( .I1(n953), .I2(n1450), .I3(n3211), .O(n1294) );
  XNR2HS U732 ( .I1(n160), .I2(n139), .O(n1708) );
  INV1S U733 ( .I(n1145), .O(n1144) );
  MOAI1HP U734 ( .A1(n549), .A2(n2179), .B1(n242), .B2(n2178), .O(n1446) );
  INV1S U735 ( .I(n810), .O(n809) );
  BUF1 U736 ( .I(weights[142]), .O(n141) );
  OAI12H U737 ( .B1(n2277), .B2(n1068), .A1(n2276), .O(n2284) );
  XNR2H U738 ( .I1(n166), .I2(n525), .O(n2473) );
  NR2 U739 ( .I1(n556), .I2(n572), .O(n2234) );
  ND2S U740 ( .I1(n237), .I2(n937), .O(n1702) );
  BUF3 U741 ( .I(n2115), .O(n2568) );
  INV1S U742 ( .I(n2267), .O(n2266) );
  INV1S U743 ( .I(n1404), .O(n2265) );
  BUF6CK U744 ( .I(n2337), .O(n684) );
  INV1S U745 ( .I(n2229), .O(n2222) );
  INV1S U746 ( .I(n1488), .O(n484) );
  BUF2 U747 ( .I(n1600), .O(n3442) );
  XNR2HS U748 ( .I1(n1022), .I2(weights[70]), .O(n2195) );
  AN2P U749 ( .I1(n2134), .I2(n1033), .O(n210) );
  ND3 U750 ( .I1(n328), .I2(n552), .I3(n496), .O(n810) );
  BUF1 U751 ( .I(n2338), .O(n218) );
  BUF6 U752 ( .I(n2575), .O(n611) );
  XOR2HS U753 ( .I1(weights[70]), .I2(n280), .O(n2525) );
  INV2 U754 ( .I(n1760), .O(n1762) );
  ND2P U755 ( .I1(n575), .I2(n1572), .O(n132) );
  AN2B1S U756 ( .I1(n650), .B1(n192), .O(n2324) );
  BUF3 U757 ( .I(n3450), .O(n568) );
  NR2P U758 ( .I1(n633), .I2(n1147), .O(n2330) );
  INV1CK U759 ( .I(n1614), .O(n387) );
  NR2P U760 ( .I1(n303), .I2(n2487), .O(n293) );
  NR2T U761 ( .I1(n237), .I2(n937), .O(n1703) );
  NR2P U762 ( .I1(n543), .I2(n3248), .O(n2495) );
  INV2 U763 ( .I(n355), .O(n421) );
  XNR2HS U764 ( .I1(weights[62]), .I2(n165), .O(n2574) );
  OAI22HP U765 ( .A1(n408), .A2(n2119), .B1(n641), .B2(n2164), .O(n2160) );
  INV2 U766 ( .I(n1763), .O(n1304) );
  INV2 U767 ( .I(n2663), .O(n287) );
  MOAI1HP U768 ( .A1(n189), .A2(n2244), .B1(n1289), .B2(n331), .O(n1362) );
  INV3 U769 ( .I(n3335), .O(n146) );
  XNR2H U770 ( .I1(n166), .I2(n522), .O(n1479) );
  INV3 U771 ( .I(n129), .O(n131) );
  INV2 U772 ( .I(n2544), .O(n459) );
  INV3 U773 ( .I(n1041), .O(n165) );
  BUF6CK U774 ( .I(n2664), .O(n658) );
  INV3 U775 ( .I(n2619), .O(n633) );
  INV2 U776 ( .I(n2029), .O(n553) );
  INV6 U777 ( .I(n236), .O(n507) );
  INV6 U778 ( .I(n612), .O(n614) );
  BUF2 U779 ( .I(weights[128]), .O(n655) );
  BUF6CK U780 ( .I(n996), .O(n891) );
  BUF2 U781 ( .I(buffer_data[2]), .O(n937) );
  INV3 U782 ( .I(n431), .O(n427) );
  INV1 U783 ( .I(n2254), .O(n530) );
  INV2 U784 ( .I(n1620), .O(n1621) );
  INV1 U785 ( .I(n2243), .O(n1289) );
  XNR2HS U786 ( .I1(weights[133]), .I2(n151), .O(n1508) );
  BUF4CK U787 ( .I(n1572), .O(n928) );
  INV2 U788 ( .I(n1305), .O(n739) );
  NR2P U789 ( .I1(n554), .I2(n150), .O(n2273) );
  INV4 U790 ( .I(n190), .O(n193) );
  BUF1 U791 ( .I(weights[120]), .O(n565) );
  XNR2HP U792 ( .I1(n2571), .I2(n873), .O(n2164) );
  BUF6 U793 ( .I(n566), .O(n847) );
  INV2 U794 ( .I(n2384), .O(n429) );
  INV2 U795 ( .I(n2029), .O(n240) );
  XNR2HS U796 ( .I1(n1336), .I2(n536), .O(n1734) );
  INV3 U797 ( .I(n551), .O(n239) );
  INV4 U798 ( .I(n3293), .O(n139) );
  XNR2H U799 ( .I1(n112), .I2(n622), .O(n1521) );
  INV4 U800 ( .I(n1541), .O(n148) );
  NR2P U801 ( .I1(n2490), .I2(n2488), .O(n722) );
  XOR2HS U802 ( .I1(n2169), .I2(weights[139]), .O(n1606) );
  BUF6 U803 ( .I(n2475), .O(n408) );
  BUF6 U804 ( .I(buffer_data[21]), .O(n280) );
  BUF6CK U805 ( .I(n2113), .O(n2161) );
  BUF3 U806 ( .I(weights[62]), .O(n3348) );
  INV4 U807 ( .I(n434), .O(n189) );
  INV1 U808 ( .I(n3190), .O(n544) );
  BUF3 U809 ( .I(n2114), .O(n1475) );
  INV1S U810 ( .I(weights[138]), .O(n519) );
  NR2P U811 ( .I1(n2169), .I2(n516), .O(n2182) );
  BUF3 U812 ( .I(buffer_data[15]), .O(n1042) );
  OR2 U813 ( .I1(n2261), .I2(n188), .O(n201) );
  INV1S U814 ( .I(n418), .O(n359) );
  INV2 U815 ( .I(n3204), .O(n554) );
  INV4 U816 ( .I(n872), .O(n641) );
  INV4 U817 ( .I(n552), .O(n538) );
  XNR2HS U818 ( .I1(weights[59]), .I2(n151), .O(n2118) );
  INV2 U819 ( .I(n973), .O(n640) );
  BUF6 U820 ( .I(n2544), .O(n187) );
  INV2 U821 ( .I(n1493), .O(n2029) );
  INV4 U822 ( .I(n1478), .O(n112) );
  BUF2 U823 ( .I(weights[69]), .O(n539) );
  NR2T U824 ( .I1(n2268), .I2(n2269), .O(n431) );
  XNR2HP U825 ( .I1(n665), .I2(n2169), .O(n2526) );
  NR2T U826 ( .I1(n1345), .I2(n1344), .O(n2383) );
  INV4 U827 ( .I(n3129), .O(n524) );
  INV2 U828 ( .I(n3254), .O(n106) );
  INV4 U829 ( .I(n3173), .O(n108) );
  INV3 U830 ( .I(n2543), .O(n571) );
  NR2P U831 ( .I1(n555), .I2(n188), .O(n1345) );
  INV2 U832 ( .I(weights[66]), .O(n3107) );
  BUF1 U833 ( .I(weights[71]), .O(n142) );
  ND2T U834 ( .I1(n1686), .I2(buffer_data[0]), .O(n1710) );
  NR2T U835 ( .I1(n840), .I2(n419), .O(n2268) );
  NR2P U836 ( .I1(n200), .I2(n656), .O(n2269) );
  ND2T U837 ( .I1(n583), .I2(n584), .O(n2134) );
  INV4CK U838 ( .I(weights[122]), .O(n3129) );
  NR2P U839 ( .I1(n2270), .I2(n1709), .O(n2390) );
  BUF4CK U840 ( .I(n2113), .O(n1530) );
  INV4 U841 ( .I(n2609), .O(n2546) );
  BUF3 U842 ( .I(weights[63]), .O(n2565) );
  BUF4CK U843 ( .I(weights[55]), .O(n110) );
  MOAI1HP U844 ( .A1(n1388), .A2(n2272), .B1(n740), .B2(n2262), .O(n2267) );
  INV2 U845 ( .I(n3235), .O(n107) );
  NR2P U846 ( .I1(buffer_data[20]), .I2(n1600), .O(n1581) );
  INV4CK U847 ( .I(n3285), .O(n104) );
  BUF2 U848 ( .I(n2114), .O(n616) );
  INV2 U849 ( .I(weights[123]), .O(n3173) );
  INV2 U850 ( .I(weights[121]), .O(n3254) );
  INV2 U851 ( .I(n1359), .O(n2272) );
  INV6CK U852 ( .I(n1805), .O(n612) );
  BUF2 U853 ( .I(weights[56]), .O(n652) );
  INV4 U854 ( .I(n434), .O(n188) );
  INV6 U855 ( .I(n953), .O(n656) );
  XNR2HS U856 ( .I1(n466), .I2(n526), .O(n2261) );
  INV4 U857 ( .I(buffer_data[16]), .O(n3452) );
  BUF1 U858 ( .I(weights[56]), .O(n651) );
  INV2 U859 ( .I(weights[65]), .O(n3235) );
  INV6CK U860 ( .I(weights[52]), .O(n3285) );
  INV3 U861 ( .I(n3204), .O(n555) );
  OR2P U862 ( .I1(n2129), .I2(n147), .O(n583) );
  INV4 U863 ( .I(n3195), .O(n551) );
  INV3 U864 ( .I(n434), .O(n437) );
  INV3 U865 ( .I(n608), .O(n609) );
  BUF6 U866 ( .I(n1736), .O(n840) );
  INV4 U867 ( .I(buffer_data[18]), .O(n516) );
  INV2 U868 ( .I(n2507), .O(n525) );
  XNR2HS U869 ( .I1(weights[57]), .I2(n2320), .O(n2139) );
  BUF3 U870 ( .I(weights[71]), .O(n143) );
  INV4 U871 ( .I(weights[59]), .O(n2507) );
  BUF1 U872 ( .I(weights[56]), .O(n650) );
  INV4 U873 ( .I(n1351), .O(n608) );
  INV3 U874 ( .I(buffer_data[12]), .O(n180) );
  INV6CK U875 ( .I(weights[49]), .O(n3248) );
  XOR2HP U876 ( .I1(n2523), .I2(n828), .O(n829) );
  OAI12HP U877 ( .B1(n1967), .B2(n489), .A1(n786), .O(n1183) );
  BUF12CK U878 ( .I(n2488), .O(n801) );
  ND2F U879 ( .I1(n2360), .I2(n2358), .O(n888) );
  INV4CK U880 ( .I(n1131), .O(n105) );
  XOR2H U881 ( .I1(n2477), .I2(n2478), .O(n2318) );
  OAI12HT U882 ( .B1(n2877), .B2(n2880), .A1(n2878), .O(n1286) );
  XOR2HS U883 ( .I1(n2881), .I2(n251), .O(\CHIPS[1].core/temp_pconv[13] ) );
  XNR2HP U884 ( .I1(n2332), .I2(n833), .O(n2328) );
  XOR2H U885 ( .I1(n2754), .I2(n2753), .O(\CHIPS[0].core/temp_pconv[10] ) );
  BUF6CK U886 ( .I(n2258), .O(n882) );
  ND2T U887 ( .I1(n706), .I2(n2866), .O(n2868) );
  XOR2H U888 ( .I1(n2868), .I2(n2867), .O(\CHIPS[1].core/temp_pconv[10] ) );
  ND2T U889 ( .I1(n2440), .I2(n2439), .O(n2838) );
  ND2 U890 ( .I1(n1355), .I2(n2291), .O(n114) );
  ND2T U891 ( .I1(n1355), .I2(n2291), .O(n458) );
  ND2P U892 ( .I1(n1991), .I2(n1990), .O(n1992) );
  OAI12H U893 ( .B1(n850), .B2(n2753), .A1(n671), .O(n2749) );
  NR2P U894 ( .I1(n1519), .I2(n2138), .O(n1085) );
  ND2P U895 ( .I1(n128), .I2(n518), .O(n1151) );
  INV4 U896 ( .I(n2353), .O(n2413) );
  ND2P U897 ( .I1(n2752), .I2(n671), .O(n2754) );
  INV2 U898 ( .I(n850), .O(n2752) );
  INV2 U899 ( .I(n1619), .O(n1009) );
  XNR2HP U900 ( .I1(n2081), .I2(n514), .O(n805) );
  OAI22HP U901 ( .A1(n1529), .A2(n1530), .B1(n1511), .B2(n553), .O(n1542) );
  INV3 U902 ( .I(n1281), .O(n569) );
  AOI12HT U903 ( .B1(n2161), .B2(n1475), .A1(n802), .O(n576) );
  INV2 U904 ( .I(n2198), .O(n815) );
  BUF8CK U905 ( .I(buffer_data[13]), .O(n3437) );
  INV4 U906 ( .I(n2488), .O(n303) );
  ND2P U907 ( .I1(n97), .I2(n96), .O(n2469) );
  ND2P U908 ( .I1(n267), .I2(n2467), .O(n96) );
  ND2P U909 ( .I1(n1311), .I2(n2467), .O(n97) );
  ND3HT U910 ( .I1(n910), .I2(n1005), .I3(n998), .O(n1152) );
  BUF4CK U911 ( .I(n161), .O(n876) );
  XOR2HP U912 ( .I1(n181), .I2(n98), .O(n2738) );
  OAI22HT U913 ( .A1(n1287), .A2(n1153), .B1(n1219), .B2(n1235), .O(n98) );
  INV4CK U914 ( .I(n1397), .O(n639) );
  ND3HT U915 ( .I1(n587), .I2(n2468), .I3(n2193), .O(n2297) );
  OR2T U916 ( .I1(n1543), .I2(n1052), .O(n2043) );
  BUF12CK U917 ( .I(buffer_data[11]), .O(n151) );
  INV3CK U918 ( .I(n2569), .O(n793) );
  ND3HT U919 ( .I1(n99), .I2(n1334), .I3(n1973), .O(n686) );
  NR2F U920 ( .I1(n1335), .I2(n1120), .O(n99) );
  ND2F U921 ( .I1(n2738), .I2(n324), .O(n1271) );
  INV12 U922 ( .I(n2543), .O(n570) );
  BUF1CK U923 ( .I(n2537), .O(n100) );
  OAI12HP U924 ( .B1(n2619), .B2(n1147), .A1(n268), .O(n1329) );
  INV8 U925 ( .I(n2649), .O(n1265) );
  ND2F U926 ( .I1(n505), .I2(n581), .O(n664) );
  INV3CK U927 ( .I(buffer_data[21]), .O(n1600) );
  INV4 U928 ( .I(n367), .O(n1018) );
  INV3CK U929 ( .I(n2065), .O(n121) );
  INV6CK U930 ( .I(n1188), .O(n2177) );
  OAI12HT U931 ( .B1(n874), .B2(n1331), .A1(n102), .O(n1949) );
  INV8CK U932 ( .I(n1579), .O(n2218) );
  INV6CK U933 ( .I(n1576), .O(n2169) );
  ND3HT U934 ( .I1(n2089), .I2(n2090), .I3(n1392), .O(n1087) );
  NR2F U935 ( .I1(n1643), .I2(n874), .O(n1644) );
  ND3HT U936 ( .I1(n664), .I2(n2089), .I3(n1392), .O(n501) );
  XNR2HS U937 ( .I1(n1155), .I2(n101), .O(n2199) );
  XNR2HS U938 ( .I1(n2180), .I2(n375), .O(n101) );
  OR2P U939 ( .I1(n1647), .I2(n162), .O(n603) );
  INV3CK U940 ( .I(n811), .O(n102) );
  XNR2HP U941 ( .I1(n2738), .I2(n184), .O(n354) );
  ND2T U942 ( .I1(n783), .I2(n1599), .O(n878) );
  XNR2HP U943 ( .I1(n103), .I2(n1676), .O(n275) );
  XNR2H U944 ( .I1(n1677), .I2(n1678), .O(n103) );
  INV2 U945 ( .I(n2090), .O(n335) );
  XOR2HS U946 ( .I1(n2799), .I2(n2798), .O(\CHIPS[0].core/temp_pconv[15] ) );
  INV6 U947 ( .I(n1571), .O(n418) );
  NR2F U948 ( .I1(n2536), .I2(n2535), .O(n1237) );
  NR2F U949 ( .I1(n2463), .I2(n2464), .O(n2536) );
  INV6CK U950 ( .I(n2685), .O(n1131) );
  INV1S U951 ( .I(n3151), .O(n109) );
  BUF2 U952 ( .I(weights[55]), .O(n111) );
  INV8CK U953 ( .I(weights[130]), .O(n1478) );
  OAI12HP U954 ( .B1(n996), .B2(n2171), .A1(n2170), .O(n1059) );
  NR2 U955 ( .I1(n2528), .I2(n2685), .O(n420) );
  XNR2H U956 ( .I1(n697), .I2(n696), .O(n1733) );
  XNR2HP U957 ( .I1(n113), .I2(n1259), .O(n1342) );
  XOR2H U958 ( .I1(n1776), .I2(n1777), .O(n755) );
  INV8CK U959 ( .I(n326), .O(n328) );
  NR2P U960 ( .I1(n504), .I2(n2301), .O(n503) );
  OAI22H U961 ( .A1(n1482), .A2(n1892), .B1(n1479), .B2(n1891), .O(n1483) );
  XOR2H U962 ( .I1(n299), .I2(n1629), .O(n295) );
  INV12 U963 ( .I(n3384), .O(n3435) );
  AN2B1 U964 ( .I1(n114), .B1(n1266), .O(n2501) );
  INV6 U965 ( .I(n2248), .O(n762) );
  XNR2HP U966 ( .I1(n2295), .I2(n1216), .O(n2348) );
  MOAI1HT U967 ( .A1(n1035), .A2(n791), .B1(n2471), .B2(n790), .O(n2516) );
  INV3 U968 ( .I(n2470), .O(n1035) );
  OAI22H U969 ( .A1(n2137), .A2(n147), .B1(n2118), .B2(n2474), .O(n2145) );
  INV3 U970 ( .I(n1207), .O(n1206) );
  ND2T U971 ( .I1(n458), .I2(n2500), .O(n1017) );
  OR2T U972 ( .I1(n1276), .I2(n607), .O(n1273) );
  BUF6 U973 ( .I(n2116), .O(n563) );
  OAI12HP U974 ( .B1(n2781), .B2(n2785), .A1(n2782), .O(n2780) );
  XOR2HT U975 ( .I1(n117), .I2(n362), .O(n2101) );
  AN2T U976 ( .I1(n1088), .I2(n2088), .O(n117) );
  NR2T U977 ( .I1(n2344), .I2(n2327), .O(n2500) );
  BUF2 U978 ( .I(n505), .O(n118) );
  ND2F U979 ( .I1(n660), .I2(n882), .O(n2498) );
  XNR2HP U980 ( .I1(n1306), .I2(n932), .O(n803) );
  INV2 U981 ( .I(n2466), .O(n778) );
  MOAI1HP U982 ( .A1(n392), .A2(n1302), .B1(n1742), .B2(n1743), .O(n1746) );
  NR2P U983 ( .I1(n1743), .I2(n1742), .O(n392) );
  INV2 U984 ( .I(n1316), .O(n119) );
  ND2T U985 ( .I1(n1290), .I2(n1551), .O(n1467) );
  AOI12HT U986 ( .B1(n2844), .B2(n1437), .A1(n1256), .O(n2841) );
  OAI12HT U987 ( .B1(n2845), .B2(n2849), .A1(n2846), .O(n2844) );
  BUF2 U988 ( .I(n2251), .O(n932) );
  OAI12HT U989 ( .B1(n849), .B2(n274), .A1(n1086), .O(n362) );
  XNR2HP U990 ( .I1(n368), .I2(n179), .O(n407) );
  ND3P U991 ( .I1(n1696), .I2(n2619), .I3(n2541), .O(n302) );
  MAO222P U992 ( .A1(n1721), .B1(n1919), .C1(n1722), .O(n697) );
  XOR2HT U993 ( .I1(n1720), .I2(n547), .O(n2094) );
  BUF6CK U994 ( .I(n1576), .O(n1247) );
  OR2T U995 ( .I1(n1552), .I2(n1468), .O(n122) );
  OAI12HT U996 ( .B1(n984), .B2(n1438), .A1(n983), .O(n1552) );
  OAI12HT U997 ( .B1(n1639), .B2(n235), .A1(n1638), .O(n1092) );
  INV4 U998 ( .I(n3437), .O(n1541) );
  XOR2HP U999 ( .I1(n1514), .I2(n123), .O(n1290) );
  XOR2HP U1000 ( .I1(n1516), .I2(n1515), .O(n123) );
  XNR2HP U1001 ( .I1(n2150), .I2(n2151), .O(n675) );
  XNR2HP U1002 ( .I1(n1565), .I2(n1566), .O(n1465) );
  NR2P U1003 ( .I1(n418), .I2(n1614), .O(n301) );
  BUF3 U1004 ( .I(n2480), .O(n820) );
  XOR2HP U1005 ( .I1(n1819), .I2(n1189), .O(n935) );
  BUF2 U1006 ( .I(n1710), .O(n124) );
  XOR2HP U1007 ( .I1(weights[127]), .I2(n282), .O(n1686) );
  OR2 U1008 ( .I1(n660), .I2(n2258), .O(n183) );
  OR2T U1009 ( .I1(n2491), .I2(n189), .O(n1248) );
  XNR2H U1010 ( .I1(n466), .I2(n110), .O(n2491) );
  BUF8CK U1011 ( .I(n2127), .O(n1532) );
  MOAI1HP U1012 ( .A1(n2138), .A2(n1533), .B1(n916), .B2(n198), .O(n1215) );
  XOR2HP U1013 ( .I1(n1215), .I2(n1214), .O(n1535) );
  ND2F U1014 ( .I1(n980), .I2(n1985), .O(n1784) );
  INV8 U1015 ( .I(n1919), .O(n822) );
  OAI12H U1016 ( .B1(n590), .B2(n2608), .A1(n2607), .O(n2636) );
  INV3 U1017 ( .I(n3444), .O(n186) );
  XNR2HP U1018 ( .I1(n126), .I2(n856), .O(n2718) );
  XNR2HP U1019 ( .I1(n415), .I2(n127), .O(n2741) );
  XNR2HP U1020 ( .I1(n1152), .I2(n2718), .O(n127) );
  BUF1CK U1021 ( .I(n587), .O(n128) );
  INV3 U1022 ( .I(n449), .O(n1458) );
  ND2 U1023 ( .I1(n542), .I2(n1606), .O(n1122) );
  BUF3 U1024 ( .I(n1542), .O(n577) );
  MOAI1HT U1025 ( .A1(n408), .A2(n1494), .B1(n1231), .B2(n916), .O(n1071) );
  INV4 U1026 ( .I(n1495), .O(n1231) );
  NR2P U1027 ( .I1(n1057), .I2(n1559), .O(n1053) );
  INV6CK U1028 ( .I(n612), .O(n613) );
  NR2P U1029 ( .I1(n543), .I2(n3165), .O(n2627) );
  XNR2H U1030 ( .I1(n1889), .I2(n161), .O(n1510) );
  NR2P U1031 ( .I1(n1998), .I2(n233), .O(n309) );
  NR2T U1032 ( .I1(n1998), .I2(n1999), .O(n247) );
  ND2T U1033 ( .I1(n575), .I2(n1572), .O(n1574) );
  XOR2H U1034 ( .I1(n133), .I2(n896), .O(n2502) );
  OR2 U1035 ( .I1(n2497), .I2(n2554), .O(n133) );
  MXL2H U1036 ( .A(n2709), .B(n416), .S(n2703), .OB(n2701) );
  XNR2HP U1037 ( .I1(n2695), .I2(n717), .O(n417) );
  ND2T U1038 ( .I1(n2738), .I2(n1067), .O(n1272) );
  XNR2H U1039 ( .I1(n524), .I2(n566), .O(n1117) );
  XOR2H U1040 ( .I1(n159), .I2(n108), .O(n1687) );
  XNR2HP U1041 ( .I1(n3226), .I2(n876), .O(n2131) );
  OAI22HP U1042 ( .A1(n617), .A2(n2131), .B1(n652), .B2(n1523), .O(n2372) );
  OAI12HP U1043 ( .B1(n2374), .B2(n2364), .A1(n2365), .O(n2360) );
  OAI12HP U1044 ( .B1(n979), .B2(n1745), .A1(n1744), .O(n1240) );
  OAI12HT U1045 ( .B1(n1223), .B2(n1989), .A1(n1990), .O(n2044) );
  BUF6 U1046 ( .I(n130), .O(n550) );
  OR2P U1047 ( .I1(n238), .I2(n132), .O(n194) );
  INV8 U1048 ( .I(buffer_data[15]), .O(n1041) );
  XNR2HP U1049 ( .I1(n1398), .I2(n577), .O(n1545) );
  XOR2HP U1050 ( .I1(n1513), .I2(n1071), .O(n579) );
  XNR2HP U1051 ( .I1(n414), .I2(n2648), .O(n2652) );
  NR2T U1052 ( .I1(n2307), .I2(n2306), .O(n2533) );
  ND2T U1053 ( .I1(n2306), .I2(n2307), .O(n2535) );
  ND2F U1054 ( .I1(n2248), .I2(buffer_data[0]), .O(n2249) );
  OAI12HP U1055 ( .B1(n762), .B2(n1353), .A1(n2249), .O(n2633) );
  XNR2HT U1056 ( .I1(n134), .I2(n659), .O(n1443) );
  XNR2H U1057 ( .I1(n1325), .I2(n1118), .O(n134) );
  XOR2HS U1058 ( .I1(n1994), .I2(n1173), .O(n2040) );
  XOR2H U1059 ( .I1(n2484), .I2(n859), .O(n2340) );
  XNR2HP U1060 ( .I1(n2691), .I2(n2690), .O(n2703) );
  XNR2HP U1061 ( .I1(n2683), .I2(n2682), .O(n2691) );
  INV2 U1062 ( .I(n2879), .O(n771) );
  NR2P U1063 ( .I1(n2354), .I2(n2413), .O(n792) );
  OAI22HP U1064 ( .A1(n709), .A2(n1604), .B1(n947), .B2(n3452), .O(n1634) );
  XOR2H U1065 ( .I1(n958), .I2(n799), .O(n2451) );
  OAI12HP U1066 ( .B1(n442), .B2(n958), .A1(n443), .O(n828) );
  FA1P U1067 ( .A(n632), .B(n2689), .CI(n2687), .CO(n2682), .S(n2696) );
  XNR2HP U1068 ( .I1(n1818), .I2(n935), .O(n783) );
  OAI12HT U1069 ( .B1(n2448), .B2(n2826), .A1(n2447), .O(n2824) );
  MOAI1HP U1070 ( .A1(n572), .A2(n1613), .B1(n1603), .B2(buffer_data[16]), .O(
        n1608) );
  XOR2H U1071 ( .I1(n115), .I2(buffer_data[15]), .O(n1476) );
  OAI22HT U1072 ( .A1(n1496), .A2(n1892), .B1(n563), .B2(n1489), .O(n1501) );
  XNR2HS U1073 ( .I1(n954), .I2(n2674), .O(n2679) );
  BUF6 U1074 ( .I(buffer_data[17]), .O(n1172) );
  ND2T U1075 ( .I1(n1046), .I2(n2193), .O(n1126) );
  ND2T U1076 ( .I1(n1119), .I2(n997), .O(n1118) );
  OAI12HT U1077 ( .B1(n754), .B2(n2722), .A1(n2719), .O(n1156) );
  BUF8CK U1078 ( .I(n572), .O(n709) );
  OAI22H U1079 ( .A1(n572), .A2(n2196), .B1(n2195), .B2(n3452), .O(n2207) );
  OAI12H U1080 ( .B1(n538), .B2(n3448), .A1(n572), .O(n2019) );
  INV3 U1081 ( .I(n1571), .O(n572) );
  MOAI1HP U1082 ( .A1(n681), .A2(n680), .B1(n527), .B2(n1668), .O(n1594) );
  BUF3CK U1083 ( .I(n1286), .O(n1193) );
  XOR2HT U1084 ( .I1(n110), .I2(n282), .O(n2248) );
  BUF8CK U1085 ( .I(n282), .O(n1349) );
  INV2 U1086 ( .I(buffer_data[17]), .O(n1570) );
  AOI12HP U1087 ( .B1(n2092), .B2(n1980), .A1(n1322), .O(n1321) );
  XNR2H U1088 ( .I1(n3450), .I2(n239), .O(n1646) );
  BUF8CK U1089 ( .I(n550), .O(n929) );
  INV6 U1090 ( .I(n550), .O(n3450) );
  INV6CK U1091 ( .I(n1586), .O(n549) );
  BUF12CK U1092 ( .I(n3450), .O(n238) );
  ND2P U1093 ( .I1(n194), .I2(n1642), .O(n1656) );
  ND3HT U1094 ( .I1(n772), .I2(n2705), .I3(n2721), .O(n997) );
  NR2F U1095 ( .I1(n2536), .I2(n2533), .O(n2721) );
  XOR2HP U1096 ( .I1(n1320), .I2(n1321), .O(n1319) );
  INV6CK U1097 ( .I(n1586), .O(n153) );
  AOI12HS U1098 ( .B1(n1422), .B2(n1421), .A1(n1420), .O(n136) );
  ND3S U1099 ( .I1(n242), .I2(n131), .I3(n239), .O(n1642) );
  ND3S U1100 ( .I1(n242), .I2(n131), .I3(n3190), .O(n2175) );
  XNR2HS U1101 ( .I1(n130), .I2(n539), .O(n2661) );
  XNR2HS U1102 ( .I1(weights[140]), .I2(n2671), .O(n1589) );
  XNR2HS U1103 ( .I1(weights[139]), .I2(n550), .O(n780) );
  XNR2HS U1104 ( .I1(weights[66]), .I2(n2671), .O(n2300) );
  XOR2HT U1105 ( .I1(buffer_data[22]), .I2(n2671), .O(n575) );
  XNR2HP U1106 ( .I1(n1663), .I2(n1330), .O(n1024) );
  XOR2H U1107 ( .I1(n550), .I2(weights[137]), .O(n1645) );
  INV1S U1108 ( .I(n3271), .O(n137) );
  INV3 U1109 ( .I(n2573), .O(n138) );
  INV4 U1110 ( .I(weights[60]), .O(n2573) );
  INV8CK U1111 ( .I(weights[124]), .O(n3293) );
  INV12 U1112 ( .I(n3248), .O(n140) );
  BUF1S U1113 ( .I(weights[71]), .O(n144) );
  INV12 U1114 ( .I(n2472), .O(n145) );
  INV8CK U1115 ( .I(weights[58]), .O(n2472) );
  INV12CK U1116 ( .I(weights[125]), .O(n3335) );
  ND2T U1117 ( .I1(n2127), .I2(n1477), .O(n147) );
  ND2T U1118 ( .I1(n2127), .I2(n1477), .O(n2475) );
  INV3CK U1119 ( .I(n2544), .O(n149) );
  INV3 U1120 ( .I(n149), .O(n150) );
  INV3 U1121 ( .I(n1450), .O(n152) );
  INV12CK U1122 ( .I(n1736), .O(n1450) );
  INV12CK U1123 ( .I(n466), .O(n1736) );
  BUF12CK U1124 ( .I(n130), .O(n2671) );
  BUF6CK U1125 ( .I(n550), .O(n447) );
  INV2 U1126 ( .I(n801), .O(n619) );
  INV8CK U1127 ( .I(n1354), .O(n237) );
  BUF12CK U1128 ( .I(n2475), .O(n2138) );
  INV12 U1129 ( .I(n2488), .O(n2619) );
  OAI12HP U1130 ( .B1(n762), .B2(n1353), .A1(n2249), .O(n156) );
  INV4 U1131 ( .I(n2569), .O(n157) );
  INV3 U1132 ( .I(n2569), .O(n158) );
  BUF6CK U1133 ( .I(buffer_data[7]), .O(n159) );
  BUF8CK U1134 ( .I(buffer_data[7]), .O(n566) );
  INV4 U1135 ( .I(n2543), .O(n160) );
  INV8CK U1136 ( .I(n1277), .O(n161) );
  INV3 U1137 ( .I(n266), .O(n162) );
  INV4 U1138 ( .I(n266), .O(n163) );
  INV3 U1139 ( .I(n266), .O(n1232) );
  INV4 U1140 ( .I(n1041), .O(n164) );
  INV3 U1141 ( .I(n1041), .O(n166) );
  ND3HT U1142 ( .I1(n1017), .I2(n2499), .I3(n2498), .O(n167) );
  ND3P U1143 ( .I1(n1017), .I2(n2499), .I3(n2498), .O(n1016) );
  ND3P U1144 ( .I1(n996), .I2(n1640), .I3(n236), .O(n271) );
  AOI12HP U1145 ( .B1(n486), .B2(n1883), .A1(n1884), .O(n1680) );
  XNR2H U1146 ( .I1(n618), .I2(weights[140]), .O(n1649) );
  XOR2H U1147 ( .I1(n1928), .I2(n1927), .O(n168) );
  XOR2H U1148 ( .I1(n1929), .I2(n168), .O(n1862) );
  ND2 U1149 ( .I1(n1929), .I2(n1928), .O(n169) );
  ND2 U1150 ( .I1(n1929), .I2(n1927), .O(n170) );
  ND2 U1151 ( .I1(n1928), .I2(n1927), .O(n171) );
  ND3 U1152 ( .I1(n169), .I2(n170), .I3(n171), .O(n1930) );
  ND2P U1153 ( .I1(n1427), .I2(n1429), .O(n1927) );
  XNR2H U1154 ( .I1(n1931), .I2(n1930), .O(n1938) );
  ND2T U1155 ( .I1(n1725), .I2(n760), .O(n1745) );
  ND2T U1156 ( .I1(n601), .I2(n758), .O(n760) );
  ND2P U1157 ( .I1(n1038), .I2(n2154), .O(n2342) );
  XNR2HP U1158 ( .I1(n460), .I2(n2658), .O(n2532) );
  MOAI1HP U1159 ( .A1(n1132), .A2(n420), .B1(n2528), .B2(n278), .O(n2667) );
  XNR2HP U1160 ( .I1(n522), .I2(n161), .O(n1529) );
  XOR2HT U1161 ( .I1(n172), .I2(n842), .O(n1967) );
  XNR2HP U1162 ( .I1(n2504), .I2(n173), .O(n2560) );
  XNR2HP U1163 ( .I1(n2502), .I2(n2503), .O(n173) );
  XOR2HS U1164 ( .I1(weights[120]), .I2(n1736), .O(n1751) );
  XNR2HS U1165 ( .I1(n2565), .I2(n3437), .O(n2570) );
  INV1 U1166 ( .I(n672), .O(n1066) );
  INV1S U1167 ( .I(n1065), .O(n1064) );
  XOR2HT U1168 ( .I1(buffer_data[18]), .I2(n1022), .O(n542) );
  INV6 U1169 ( .I(n1709), .O(n591) );
  ND2 U1170 ( .I1(n2434), .I2(n2435), .O(n825) );
  NR2 U1171 ( .I1(n2393), .I2(n2392), .O(n2396) );
  XOR2HS U1172 ( .I1(n492), .I2(n174), .O(\CHIPS[1].core/temp_pconv[12] ) );
  AN2 U1173 ( .I1(n860), .I2(n771), .O(n174) );
  OAI12HP U1174 ( .B1(n507), .B2(n2459), .A1(n2458), .O(n285) );
  XNR2H U1175 ( .I1(n2074), .I2(n2073), .O(n248) );
  BUF1CK U1176 ( .I(n2192), .O(n175) );
  XOR2HP U1177 ( .I1(n1323), .I2(n1079), .O(n177) );
  OAI22HP U1178 ( .A1(n2117), .A2(n617), .B1(n2135), .B2(n1530), .O(n2146) );
  XOR2HP U1179 ( .I1(n2571), .I2(n1269), .O(n2117) );
  INV3 U1180 ( .I(n2205), .O(n2173) );
  XOR2H U1181 ( .I1(n2158), .I2(n178), .O(n2155) );
  XOR2H U1182 ( .I1(n2159), .I2(n2160), .O(n178) );
  BUF6 U1183 ( .I(buffer_data[11]), .O(n2320) );
  XNR2HS U1184 ( .I1(n1052), .I2(n1543), .O(n2045) );
  XNR2HT U1185 ( .I1(n1833), .I2(n1462), .O(n347) );
  XNR2HP U1186 ( .I1(n1233), .I2(n834), .O(n179) );
  INV2 U1187 ( .I(n1851), .O(n1816) );
  XOR2HP U1188 ( .I1(buffer_data[11]), .I2(n180), .O(n2115) );
  OAI12HS U1189 ( .B1(n746), .B2(n2074), .A1(n2073), .O(n743) );
  INV3CK U1190 ( .I(n2552), .O(n1249) );
  NR2F U1191 ( .I1(n1828), .I2(n1829), .O(n1886) );
  XNR2HP U1192 ( .I1(n1873), .I2(n411), .O(n1829) );
  ND2T U1193 ( .I1(n413), .I2(n1818), .O(n412) );
  INV1S U1194 ( .I(buffer_data[15]), .O(n3449) );
  MOAI1HP U1195 ( .A1(n914), .A2(n913), .B1(n819), .B2(n1548), .O(n1551) );
  NR2F U1196 ( .I1(n1863), .I2(n1865), .O(n1936) );
  AOI12HS U1197 ( .B1(n260), .B2(n216), .A1(n2757), .O(n2758) );
  BUF6 U1198 ( .I(n1022), .O(n341) );
  INV3 U1199 ( .I(n1172), .O(n3448) );
  XNR2H U1200 ( .I1(n1172), .I2(weights[140]), .O(n1613) );
  BUF2 U1201 ( .I(n2813), .O(n831) );
  AOI12HT U1202 ( .B1(n2161), .B2(n1475), .A1(n802), .O(n1896) );
  XNR2HS U1203 ( .I1(weights[129]), .I2(n161), .O(n1522) );
  OAI12H U1204 ( .B1(n2102), .B2(n1424), .A1(n2103), .O(n1464) );
  NR2P U1205 ( .I1(n1481), .I2(n193), .O(n1557) );
  OAI22HP U1206 ( .A1(n418), .A2(n2211), .B1(n2210), .B2(n3452), .O(n2215) );
  INV3 U1207 ( .I(n2217), .O(n2211) );
  XNR2HP U1208 ( .I1(n2431), .I2(n2432), .O(n2442) );
  OAI12HT U1209 ( .B1(n1204), .B2(n120), .A1(n1203), .O(n581) );
  INV4 U1210 ( .I(n2066), .O(n1203) );
  XNR2HP U1211 ( .I1(n681), .I2(n679), .O(n1678) );
  AN2 U1212 ( .I1(n2720), .I2(n2719), .O(n181) );
  NR2P U1213 ( .I1(n2261), .I2(n434), .O(n2242) );
  OR2T U1214 ( .I1(n2108), .I2(n2107), .O(n182) );
  XNR2HT U1215 ( .I1(buffer_data[21]), .I2(buffer_data[22]), .O(n1572) );
  XOR2HT U1216 ( .I1(n1719), .I2(n1718), .O(n547) );
  ND2P U1217 ( .I1(n1027), .I2(n1028), .O(n2088) );
  XOR2H U1218 ( .I1(n1276), .I2(n2329), .O(n497) );
  XNR2HP U1219 ( .I1(n1067), .I2(n324), .O(n184) );
  MOAI1H U1220 ( .A1(n889), .A2(n801), .B1(n801), .B2(n1687), .O(n1415) );
  ND3P U1221 ( .I1(n801), .I2(n847), .I3(n3211), .O(n1725) );
  XNR2HS U1222 ( .I1(n1411), .I2(n2324), .O(n1405) );
  XNR2HS U1223 ( .I1(n1411), .I2(n2567), .O(n322) );
  INV8 U1224 ( .I(n1281), .O(n2544) );
  INV4 U1225 ( .I(n1281), .O(n1068) );
  INV3 U1226 ( .I(n151), .O(n3444) );
  XNR2H U1227 ( .I1(weights[132]), .I2(n567), .O(n1505) );
  XNR2H U1228 ( .I1(n3348), .I2(n3437), .O(n2509) );
  XNR2H U1229 ( .I1(n138), .I2(n148), .O(n2322) );
  BUF4 U1230 ( .I(buffer_data[13]), .O(n567) );
  BUF8CK U1231 ( .I(buffer_data[7]), .O(n3384) );
  XOR2HS U1232 ( .I1(n156), .I2(n2495), .O(n290) );
  OAI12HP U1233 ( .B1(n187), .B2(n2494), .A1(n2493), .O(n2551) );
  BUF12CK U1234 ( .I(n151), .O(n873) );
  OAI22H U1235 ( .A1(n1589), .A2(n2454), .B1(n928), .B2(n1820), .O(n1826) );
  INV8 U1236 ( .I(n157), .O(n400) );
  INV4 U1237 ( .I(n793), .O(n482) );
  INV12CK U1238 ( .I(n3435), .O(n601) );
  INV8CK U1239 ( .I(n1041), .O(n190) );
  INV2 U1240 ( .I(n190), .O(n191) );
  INV3 U1241 ( .I(n190), .O(n192) );
  INV1S U1242 ( .I(n575), .O(n1940) );
  INV1S U1243 ( .I(n1432), .O(n1426) );
  INV2 U1244 ( .I(n2456), .O(n446) );
  INV2 U1245 ( .I(n3165), .O(n523) );
  XNR2HS U1246 ( .I1(n1839), .I2(n707), .O(n405) );
  INV2 U1247 ( .I(n2529), .O(n286) );
  INV3 U1248 ( .I(n1675), .O(n234) );
  INV2 U1249 ( .I(n1731), .O(n1096) );
  INV2 U1250 ( .I(n1718), .O(n1695) );
  INV2 U1251 ( .I(n1778), .O(n456) );
  AOI22S U1252 ( .A1(n865), .A2(n1904), .B1(n863), .B2(n1903), .O(n401) );
  INV1S U1253 ( .I(n1972), .O(n2098) );
  ND2P U1254 ( .I1(n1812), .I2(n1811), .O(n1847) );
  BUF1 U1255 ( .I(n980), .O(n903) );
  ND2P U1256 ( .I1(n2515), .I2(n2516), .O(n2518) );
  ND2P U1257 ( .I1(n991), .I2(n992), .O(n2365) );
  BUF1CK U1258 ( .I(n2759), .O(n260) );
  INV1S U1259 ( .I(n3230), .O(n3243) );
  INV1S U1260 ( .I(n3330), .O(n3350) );
  INV2 U1261 ( .I(n544), .O(n545) );
  INV4 U1262 ( .I(weights[132]), .O(n1803) );
  OA12 U1263 ( .B1(n2859), .B2(n2400), .A1(n2860), .O(n2858) );
  INV2 U1264 ( .I(n3453), .O(n3382) );
  INV1S U1265 ( .I(weights[57]), .O(n3232) );
  INV1S U1266 ( .I(weights[139]), .O(n3158) );
  BUF6CK U1267 ( .I(n3339), .O(n3312) );
  BUF2 U1268 ( .I(n3415), .O(n3414) );
  INV2 U1269 ( .I(weights[127]), .O(n3425) );
  BUF1 U1270 ( .I(\CHIPS[1].core/buffer_pconv[1] ), .O(n635) );
  OR2 U1271 ( .I1(counter_initial_next[4]), .I2(n3079), .O(n88) );
  OR2T U1272 ( .I1(n1963), .I2(n1960), .O(n195) );
  OR2T U1273 ( .I1(n506), .I2(n1172), .O(n196) );
  BUF1CK U1274 ( .I(n3263), .O(n3346) );
  BUF1CK U1275 ( .I(n3186), .O(n3230) );
  BUF1CK U1276 ( .I(n3186), .O(n3255) );
  BUF1CK U1277 ( .I(n3186), .O(n3453) );
  INV1S U1278 ( .I(n2415), .O(n232) );
  XOR2HS U1279 ( .I1(n2565), .I2(n2320), .O(n197) );
  XOR2HS U1280 ( .I1(n112), .I2(n151), .O(n198) );
  XOR2HS U1281 ( .I1(n651), .I2(n3437), .O(n199) );
  OR2T U1282 ( .I1(n559), .I2(n840), .O(n200) );
  INV2 U1283 ( .I(n2517), .O(n2483) );
  OR2 U1284 ( .I1(n193), .I2(n655), .O(n204) );
  OR2 U1285 ( .I1(n191), .I2(n650), .O(n205) );
  AN2T U1286 ( .I1(n1279), .I2(n978), .O(n206) );
  XOR2HS U1287 ( .I1(n525), .I2(n567), .O(n207) );
  XNR2H U1288 ( .I1(n1611), .I2(n1612), .O(n208) );
  INV2 U1289 ( .I(n2953), .O(n647) );
  INV3 U1290 ( .I(n1571), .O(n874) );
  AN2 U1291 ( .I1(weights[127]), .I2(buffer_data[2]), .O(n209) );
  INV3 U1292 ( .I(weights[126]), .O(n535) );
  BUF3 U1293 ( .I(weights[128]), .O(n653) );
  INV2 U1294 ( .I(n872), .O(n533) );
  INV2 U1295 ( .I(n1532), .O(n916) );
  INV3 U1296 ( .I(n1532), .O(n1327) );
  OR2P U1297 ( .I1(n609), .I2(n1753), .O(n211) );
  NR2F U1298 ( .I1(n2254), .I2(n560), .O(n331) );
  NR2F U1299 ( .I1(n2271), .I2(n1346), .O(n2391) );
  AN2 U1300 ( .I1(n1759), .I2(n1758), .O(n212) );
  XNR2H U1301 ( .I1(n2629), .I2(n2628), .O(n2657) );
  OR2 U1302 ( .I1(n2723), .I2(n294), .O(n213) );
  OA12P U1303 ( .B1(n481), .B2(n480), .A1(n477), .O(n214) );
  AO12 U1304 ( .B1(n2765), .B2(n2763), .A1(n1423), .O(n216) );
  AN2 U1305 ( .I1(n2095), .I2(n342), .O(n217) );
  INV3 U1306 ( .I(n723), .O(n342) );
  OAI22HT U1307 ( .A1(n564), .A2(n2131), .B1(n2130), .B2(n616), .O(n991) );
  ND2F U1308 ( .I1(n2795), .I2(n2801), .O(n2796) );
  INV2 U1309 ( .I(n2256), .O(n332) );
  XOR2HT U1310 ( .I1(n1069), .I2(n289), .O(n659) );
  NR2T U1311 ( .I1(n1712), .I2(n1713), .O(n1728) );
  MAO222 U1312 ( .A1(n2251), .B1(n1307), .C1(n2252), .O(n607) );
  ND3P U1313 ( .I1(n1936), .I2(n1935), .I3(n1937), .O(n1433) );
  ND3HT U1314 ( .I1(n996), .I2(n1243), .I3(n236), .O(n995) );
  INV2 U1315 ( .I(n1938), .O(n1457) );
  BUF8CK U1316 ( .I(n3406), .O(n3416) );
  BUF8CK U1317 ( .I(n3392), .O(n3179) );
  BUF8CK U1318 ( .I(n3238), .O(n3249) );
  BUF8CK U1319 ( .I(n3392), .O(n3191) );
  XOR2HS U1320 ( .I1(n402), .I2(n401), .O(n1909) );
  BUF6 U1321 ( .I(n3389), .O(n3392) );
  BUF6CK U1322 ( .I(n3415), .O(n3403) );
  BUF6 U1323 ( .I(n3389), .O(n3406) );
  BUF6 U1324 ( .I(n3389), .O(n3238) );
  XNR2H U1325 ( .I1(n1383), .I2(n2580), .O(n2601) );
  INV2 U1326 ( .I(n820), .O(n869) );
  NR2P U1327 ( .I1(n1385), .I2(n219), .O(n1384) );
  INV2 U1328 ( .I(n1516), .O(n1438) );
  INV12 U1329 ( .I(n3396), .O(n3367) );
  INV3 U1330 ( .I(n609), .O(n740) );
  INV6CK U1331 ( .I(n551), .O(n552) );
  ND2S U1332 ( .I1(n537), .I2(n847), .O(n2610) );
  INV2 U1333 ( .I(n535), .O(n536) );
  INV8 U1334 ( .I(n1803), .O(n522) );
  INV2 U1335 ( .I(n565), .O(n529) );
  BUF3 U1336 ( .I(\CHIPS[1].core/buffer_pconv[16] ), .O(n636) );
  BUF2 U1337 ( .I(\CHIPS[1].core/buffer_pconv[1] ), .O(n634) );
  INV2 U1338 ( .I(weights[69]), .O(n3315) );
  BUF2 U1339 ( .I(\CHIPS[0].core/buffer_pconv[16] ), .O(n637) );
  BUF4CK U1340 ( .I(weights[57]), .O(n3226) );
  ND2 U1341 ( .I1(n2815), .I2(n502), .O(n2816) );
  ND2S U1342 ( .I1(n3003), .I2(n3002), .O(n3864) );
  ND2S U1343 ( .I1(n2987), .I2(n2986), .O(n3866) );
  ND2S U1344 ( .I1(n2975), .I2(n2974), .O(n3865) );
  OR2 U1345 ( .I1(n221), .I2(n605), .O(n1199) );
  OAI12HS U1346 ( .B1(n95), .B2(n3041), .A1(n3040), .O(n3870) );
  ND2S U1347 ( .I1(n3060), .I2(n3059), .O(n3869) );
  ND2S U1348 ( .I1(n3018), .I2(n3017), .O(n3867) );
  INV2 U1349 ( .I(n746), .O(n745) );
  INV2 U1350 ( .I(n1492), .O(n1569) );
  BUF6 U1351 ( .I(n3312), .O(n3328) );
  BUF6 U1352 ( .I(n3342), .O(n3269) );
  BUF6 U1353 ( .I(n3342), .O(n3430) );
  BUF6 U1354 ( .I(n3312), .O(n3298) );
  BUF6 U1355 ( .I(n3342), .O(n3340) );
  BUF6 U1356 ( .I(n3259), .O(n3217) );
  BUF6 U1357 ( .I(n3149), .O(n3134) );
  BUF6 U1358 ( .I(n3342), .O(n3353) );
  BUF6 U1359 ( .I(n3149), .O(n3163) );
  BUF6 U1360 ( .I(n3385), .O(n3220) );
  BUF6 U1361 ( .I(n3385), .O(n3205) );
  BUF6 U1362 ( .I(n3286), .O(n3299) );
  BUF6 U1363 ( .I(n3286), .O(n3283) );
  BUF6 U1364 ( .I(n3375), .O(n3166) );
  BUF8CK U1365 ( .I(n3143), .O(n3177) );
  BUF6 U1366 ( .I(n3378), .O(n3426) );
  BUF8CK U1367 ( .I(n3143), .O(n3149) );
  INV2 U1368 ( .I(n663), .O(n2395) );
  INV4CK U1369 ( .I(n1997), .O(n233) );
  BUF6 U1370 ( .I(n3268), .O(n3233) );
  BUF6 U1371 ( .I(n3268), .O(n3339) );
  INV1 U1372 ( .I(n864), .O(n863) );
  ND2P U1373 ( .I1(n852), .I2(n2365), .O(n2366) );
  XNR2HS U1374 ( .I1(n1917), .I2(n1916), .O(n1922) );
  INV3 U1375 ( .I(n1383), .O(n316) );
  NR2T U1376 ( .I1(n333), .I2(n332), .O(n2331) );
  ND2 U1377 ( .I1(n946), .I2(n728), .O(n1373) );
  XNR2HS U1378 ( .I1(n1426), .I2(n1915), .O(n1916) );
  AN2 U1379 ( .I1(n2016), .I2(n2015), .O(n1473) );
  INV2 U1380 ( .I(n2631), .O(n476) );
  ND2T U1381 ( .I1(n1738), .I2(buffer_data[0]), .O(n379) );
  OR2 U1382 ( .I1(n2014), .I2(n2013), .O(n2016) );
  INV4CK U1383 ( .I(n531), .O(n532) );
  INV1 U1384 ( .I(n2545), .O(n2494) );
  BUF6 U1385 ( .I(n3263), .O(n3186) );
  ND2S U1386 ( .I1(n2671), .I2(n141), .O(n1944) );
  INV4 U1387 ( .I(n494), .O(n496) );
  BUF4CK U1388 ( .I(weights[64]), .O(n556) );
  INV2 U1389 ( .I(weights[53]), .O(n439) );
  INV1S U1390 ( .I(n111), .O(n3419) );
  BUF6 U1391 ( .I(weights[48]), .O(n559) );
  BUF6CK U1392 ( .I(weights[50]), .O(n526) );
  INV3 U1393 ( .I(n651), .O(n220) );
  INV1S U1394 ( .I(n1282), .O(n923) );
  INV3 U1395 ( .I(n2755), .O(n221) );
  BUF1 U1396 ( .I(n2841), .O(n730) );
  XOR2H U1397 ( .I1(n217), .I2(n364), .O(n1162) );
  INV1S U1398 ( .I(n1448), .O(n2774) );
  AOI12HP U1399 ( .B1(n2853), .B2(n2851), .A1(n357), .O(n2849) );
  INV2 U1400 ( .I(n2521), .O(n1264) );
  MUX2S U1401 ( .A(\CHIPS[1].core/temp_conv[15] ), .B(
        \CHIPS[1].core/pooling[15] ), .S(n649), .O(n2990) );
  NR2P U1402 ( .I1(n2604), .I2(n1380), .O(n1291) );
  MUX2S U1403 ( .A(\CHIPS[1].core/temp_conv[9] ), .B(
        \CHIPS[1].core/pooling[9] ), .S(n649), .O(n3055) );
  MUX2S U1404 ( .A(\CHIPS[1].core/temp_conv[12] ), .B(
        \CHIPS[1].core/pooling[12] ), .S(n649), .O(n3013) );
  XNR2H U1405 ( .I1(n1090), .I2(n363), .O(n1466) );
  MUX2S U1406 ( .A(\CHIPS[0].core/temp_conv[15] ), .B(
        \CHIPS[0].core/pooling[15] ), .S(n648), .O(n3000) );
  MUX2S U1407 ( .A(\CHIPS[1].core/temp_conv[10] ), .B(
        \CHIPS[1].core/pooling[10] ), .S(n648), .O(n3054) );
  INV4 U1408 ( .I(n2713), .O(n1381) );
  MUX2S U1409 ( .A(\CHIPS[1].core/temp_conv[14] ), .B(
        \CHIPS[1].core/pooling[14] ), .S(n648), .O(n2988) );
  MUX2S U1410 ( .A(\CHIPS[0].core/temp_conv[9] ), .B(
        \CHIPS[0].core/pooling[9] ), .S(n649), .O(n3044) );
  MUX2S U1411 ( .A(\CHIPS[0].core/temp_conv[8] ), .B(
        \CHIPS[0].core/pooling[8] ), .S(n649), .O(n3034) );
  ND2 U1412 ( .I1(n2713), .I2(n1000), .O(n2714) );
  MUX2S U1413 ( .A(\CHIPS[0].core/temp_conv[10] ), .B(
        \CHIPS[0].core/pooling[10] ), .S(n648), .O(n3050) );
  MUX2S U1414 ( .A(\CHIPS[0].core/temp_conv[12] ), .B(
        \CHIPS[0].core/pooling[12] ), .S(n648), .O(n3011) );
  INV2 U1415 ( .I(n1872), .O(n753) );
  BUF6 U1416 ( .I(n3325), .O(n3342) );
  ND2S U1417 ( .I1(n3385), .I2(counter_next[0]), .O(n3081) );
  BUF6 U1418 ( .I(n3233), .O(n3259) );
  NR2T U1419 ( .I1(n2396), .I2(n2395), .O(n2398) );
  ND2P U1420 ( .I1(n1459), .I2(n2060), .O(n2061) );
  ND2T U1421 ( .I1(n1779), .I2(n456), .O(n1074) );
  INV3 U1422 ( .I(n2603), .O(n230) );
  BUF2 U1423 ( .I(n3140), .O(n3385) );
  ND2S U1424 ( .I1(n3092), .I2(n3443), .O(n3089) );
  OA12S U1425 ( .B1(n3092), .B2(n3087), .A1(n3443), .O(n3088) );
  BUF6 U1426 ( .I(n3140), .O(n3286) );
  ND2P U1427 ( .I1(n1189), .I2(n313), .O(n413) );
  XNR2H U1428 ( .I1(n2660), .I2(n2659), .O(n460) );
  INV2 U1429 ( .I(n1617), .O(n1094) );
  XNR2HS U1430 ( .I1(n1901), .I2(n403), .O(n402) );
  INV1S U1431 ( .I(n1198), .O(n662) );
  NR2T U1432 ( .I1(n320), .I2(n319), .O(n318) );
  XOR2HP U1433 ( .I1(n208), .I2(n812), .O(n1618) );
  XNR2H U1434 ( .I1(n2586), .I2(n2584), .O(n890) );
  XOR2H U1435 ( .I1(n756), .I2(n755), .O(n1779) );
  XNR2HS U1436 ( .I1(n1898), .I2(n404), .O(n403) );
  ND2T U1437 ( .I1(n3066), .I2(n3065), .O(n3067) );
  ND2 U1438 ( .I1(n2005), .I2(n2006), .O(n2007) );
  INV3CK U1439 ( .I(n2025), .O(n306) );
  ND2 U1440 ( .I1(n2319), .I2(n1050), .O(n1048) );
  INV1S U1441 ( .I(n1486), .O(n911) );
  MUX2S U1442 ( .A(i_data[5]), .B(n160), .S(n3383), .O(n77) );
  BUF2 U1443 ( .I(n1547), .O(n819) );
  OAI12HP U1444 ( .B1(n2004), .B2(n2015), .A1(n2005), .O(n1996) );
  ND2P U1445 ( .I1(n194), .I2(n2175), .O(n2180) );
  XOR2HP U1446 ( .I1(n2592), .I2(n1387), .O(n1383) );
  ND2 U1447 ( .I1(n2181), .I2(n3448), .O(n2184) );
  INV1S U1448 ( .I(n2142), .O(n724) );
  ND2P U1449 ( .I1(n2013), .I2(n2014), .O(n2015) );
  OAI12HP U1450 ( .B1(n1245), .B2(n2234), .A1(n2371), .O(n2370) );
  NR2T U1451 ( .I1(n1077), .I2(n1755), .O(n2023) );
  NR2T U1452 ( .I1(n1525), .I2(n1526), .O(n2004) );
  ND2 U1453 ( .I1(n154), .I2(n1910), .O(n1911) );
  BUF6 U1454 ( .I(n3346), .O(n3330) );
  ND3 U1455 ( .I1(n2546), .I2(n569), .I3(n1740), .O(n1707) );
  INV6 U1456 ( .I(n670), .O(n236) );
  INV3 U1457 ( .I(n608), .O(n610) );
  BUF6CK U1458 ( .I(n2546), .O(n669) );
  ND2T U1459 ( .I1(n1600), .I2(buffer_data[20]), .O(n1580) );
  INV2 U1460 ( .I(n1541), .O(n241) );
  OR2B1S U1461 ( .I1(n654), .B1(n3437), .O(n1540) );
  ND2 U1462 ( .I1(n3090), .I2(counter_next[1]), .O(n3062) );
  NR2T U1463 ( .I1(layer_num[0]), .I2(n2952), .O(n2953) );
  BUF1CK U1464 ( .I(weights[70]), .O(n597) );
  BUF6CK U1465 ( .I(weights[133]), .O(n1837) );
  BUF3 U1466 ( .I(weights[48]), .O(n3204) );
  NR3HT U1467 ( .I1(counter_initial_next[2]), .I2(counter_initial_next[1]), 
        .I3(counter_initial_next[3]), .O(n3068) );
  INV1S U1468 ( .I(sel), .O(n95) );
  ND2S U1469 ( .I1(counter_initial_next[1]), .I2(counter_initial_next[0]), .O(
        n3073) );
  ND2S U1470 ( .I1(counter_initial_next[2]), .I2(counter_initial_next[3]), .O(
        n3076) );
  INV4 U1471 ( .I(n1572), .O(n242) );
  INV3 U1472 ( .I(weights[125]), .O(n1303) );
  XNR2HP U1473 ( .I1(layer_num[0]), .I2(n3456), .O(n3090) );
  INV3 U1474 ( .I(n3456), .O(n2952) );
  MAO222P U1475 ( .A1(n2076), .B1(n1338), .C1(n2075), .O(n2079) );
  XOR2HP U1476 ( .I1(n1722), .I2(n821), .O(n1750) );
  BUF6 U1477 ( .I(n1353), .O(n1388) );
  ND2F U1478 ( .I1(n2560), .I2(n2559), .O(n2865) );
  NR2F U1479 ( .I1(n529), .I2(n264), .O(n1743) );
  OAI12HT U1480 ( .B1(n243), .B2(n1353), .A1(n1710), .O(n1919) );
  INV6 U1481 ( .I(n1686), .O(n243) );
  MOAI1H U1482 ( .A1(n1418), .A2(n244), .B1(n2642), .B2(n2643), .O(n2628) );
  XNR2H U1483 ( .I1(n601), .I2(weights[53]), .O(n2620) );
  OAI12HS U1484 ( .B1(n2620), .B2(n619), .A1(n2542), .O(n2626) );
  MOAI1HT U1485 ( .A1(n721), .A2(n2247), .B1(n2489), .B2(n2250), .O(n2257) );
  ND2 U1486 ( .I1(n1848), .I2(n1814), .O(n1492) );
  MOAI1HP U1487 ( .A1(n1395), .A2(n1394), .B1(n2538), .B2(n250), .O(n2553) );
  ND2P U1488 ( .I1(n1567), .I2(n1328), .O(n2084) );
  XNR2H U1489 ( .I1(n463), .I2(n1055), .O(n1567) );
  ND2F U1490 ( .I1(n410), .I2(n2105), .O(n2814) );
  INV4 U1491 ( .I(n817), .O(n816) );
  XNR2H U1492 ( .I1(n1329), .I2(n245), .O(n1276) );
  XNR2H U1493 ( .I1(n156), .I2(n218), .O(n245) );
  MOAI1H U1494 ( .A1(n246), .A2(n1417), .B1(n1787), .B2(n1788), .O(n1796) );
  NR2P U1495 ( .I1(n1788), .I2(n1787), .O(n246) );
  NR2F U1496 ( .I1(n233), .I2(n247), .O(n1994) );
  XNR2H U1497 ( .I1(n746), .I2(n248), .O(n2072) );
  XOR2HS U1498 ( .I1(weights[127]), .I2(n764), .O(n1681) );
  XNR2HS U1499 ( .I1(n654), .I2(n1042), .O(n1497) );
  MOAI1HP U1500 ( .A1(n476), .A2(n480), .B1(n2630), .B2(n475), .O(n2646) );
  ND3P U1501 ( .I1(n465), .I2(n2731), .I3(n2730), .O(n1339) );
  INV6 U1502 ( .I(n1815), .O(n1846) );
  INV8CK U1503 ( .I(n1574), .O(n1586) );
  INV4CK U1504 ( .I(n422), .O(n378) );
  OAI12HT U1505 ( .B1(n381), .B2(n1305), .A1(n2249), .O(n2256) );
  OAI12H U1506 ( .B1(n1362), .B2(n2289), .A1(n2279), .O(n1358) );
  MOAI1HT U1507 ( .A1(n591), .A2(n2259), .B1(n2285), .B2(n740), .O(n2279) );
  XNR2HP U1508 ( .I1(n1569), .I2(n252), .O(n1424) );
  AOI12HP U1509 ( .B1(n1178), .B2(n1846), .A1(n1851), .O(n252) );
  XNR2HP U1510 ( .I1(n1559), .I2(n1057), .O(n1509) );
  MOAI1HT U1511 ( .A1(n2138), .A2(n1508), .B1(n1327), .B2(n1326), .O(n1057) );
  OAI22H U1512 ( .A1(n1789), .A2(n2615), .B1(n1857), .B2(n303), .O(n1858) );
  BUF6CK U1513 ( .I(n2490), .O(n253) );
  XOR2HP U1514 ( .I1(n1172), .I2(weights[67]), .O(n2217) );
  BUF1CK U1515 ( .I(n1566), .O(n254) );
  INV3CK U1516 ( .I(n1966), .O(n511) );
  XOR2H U1517 ( .I1(n1325), .I2(n1118), .O(n288) );
  NR2T U1518 ( .I1(n2709), .I2(n416), .O(n1325) );
  ND2 U1519 ( .I1(n1690), .I2(n1689), .O(n1716) );
  NR2P U1520 ( .I1(n1554), .I2(n1032), .O(n1031) );
  XNR2HP U1521 ( .I1(n1558), .I2(n1509), .O(n1032) );
  XOR2HS U1522 ( .I1(n1223), .I2(n1992), .O(n2041) );
  ND3HT U1523 ( .I1(n378), .I2(n2433), .I3(n2415), .O(n826) );
  XOR2HP U1524 ( .I1(n1354), .I2(n140), .O(n467) );
  MOAI1HP U1525 ( .A1(n1646), .A2(n132), .B1(n1645), .B2(n242), .O(n1651) );
  MOAI1H U1526 ( .A1(n828), .A2(n827), .B1(n461), .B2(n2522), .O(n2531) );
  XNR2H U1527 ( .I1(n2529), .I2(n283), .O(n2522) );
  XOR2HP U1528 ( .I1(n2103), .I2(n255), .O(n1454) );
  XOR2HP U1529 ( .I1(n1424), .I2(n2102), .O(n255) );
  ND2P U1530 ( .I1(n1469), .I2(n119), .O(n1978) );
  XOR2HP U1531 ( .I1(n579), .I2(n800), .O(n914) );
  MOAI1H U1532 ( .A1(n658), .A2(n2460), .B1(n877), .B2(n2525), .O(n2530) );
  OAI12HP U1533 ( .B1(n305), .B2(n1078), .A1(n1076), .O(n2003) );
  XNR2HP U1534 ( .I1(n1843), .I2(n1371), .O(n691) );
  MOAI1HT U1535 ( .A1(n800), .A2(n1070), .B1(n1071), .B2(n1513), .O(n1515) );
  ND2P U1536 ( .I1(n459), .I2(n2492), .O(n1116) );
  BUF4CK U1537 ( .I(n1233), .O(n715) );
  INV3 U1538 ( .I(n2027), .O(n305) );
  BUF6CK U1539 ( .I(n542), .O(n327) );
  XOR2H U1540 ( .I1(n2825), .I2(n256), .O(\CHIPS[1].core/temp_pconv[11] ) );
  NR2T U1541 ( .I1(n258), .I2(n257), .O(n256) );
  NR2T U1542 ( .I1(n678), .I2(n2867), .O(n257) );
  XNR2H U1543 ( .I1(n1655), .I2(n259), .O(n1658) );
  XNR2H U1544 ( .I1(n1656), .I2(n1657), .O(n259) );
  XNR2HP U1545 ( .I1(n2407), .I2(n356), .O(n2406) );
  XNR2HP U1546 ( .I1(n1630), .I2(n1631), .O(n807) );
  NR2F U1547 ( .I1(n1610), .I2(n1609), .O(n788) );
  ND2 U1548 ( .I1(n288), .I2(n1069), .O(n2715) );
  XNR2H U1549 ( .I1(n1729), .I2(n1730), .O(n451) );
  MOAI1HP U1550 ( .A1(n1706), .A2(n1705), .B1(n953), .B2(n1704), .O(n1730) );
  XOR2H U1551 ( .I1(n2486), .I2(n2485), .O(n859) );
  XNR2HP U1552 ( .I1(n104), .I2(n1349), .O(n2259) );
  INV3 U1553 ( .I(n702), .O(n562) );
  BUF6CK U1554 ( .I(n1949), .O(n527) );
  ND2P U1555 ( .I1(n2562), .I2(n771), .O(n770) );
  INV6 U1556 ( .I(n1336), .O(n1354) );
  XNR2HP U1557 ( .I1(weights[54]), .I2(n1349), .O(n1305) );
  NR2F U1558 ( .I1(n2379), .I2(n2376), .O(n425) );
  NR2T U1559 ( .I1(n427), .I2(n426), .O(n2376) );
  XOR2H U1560 ( .I1(n1450), .I2(weights[48]), .O(n2263) );
  OA12P U1561 ( .B1(n1284), .B2(n1382), .A1(n1013), .O(n1283) );
  NR2F U1562 ( .I1(n1263), .I2(n1039), .O(n1262) );
  ND2F U1563 ( .I1(n262), .I2(n197), .O(n2592) );
  ND2P U1564 ( .I1(n2474), .I2(n147), .O(n262) );
  XOR2HT U1565 ( .I1(n2512), .I2(n263), .O(n1061) );
  XOR2HP U1566 ( .I1(n1228), .I2(n557), .O(n263) );
  ND3P U1567 ( .I1(n574), .I2(n1003), .I3(n2713), .O(n1002) );
  NR2F U1568 ( .I1(n2513), .I2(n2514), .O(n2593) );
  XNR2HP U1569 ( .I1(n369), .I2(n813), .O(n372) );
  NR2F U1570 ( .I1(n2363), .I2(n795), .O(n918) );
  ND2F U1571 ( .I1(n2824), .I2(n2563), .O(n767) );
  NR2T U1572 ( .I1(n1513), .I2(n1071), .O(n1070) );
  OR2B1S U1573 ( .I1(n652), .B1(n161), .O(n2132) );
  INV8CK U1574 ( .I(n495), .O(n1576) );
  XOR2H U1575 ( .I1(n1758), .I2(n1759), .O(n1756) );
  XNR2H U1576 ( .I1(n1115), .I2(n1230), .O(n1399) );
  ND2T U1577 ( .I1(n2335), .I2(n1248), .O(n1230) );
  INV12 U1578 ( .I(n1277), .O(n622) );
  OAI112HP U1579 ( .C1(n2003), .C2(n2001), .A1(n1198), .B1(n1987), .O(n1197)
         );
  ND2P U1580 ( .I1(n1752), .I2(n343), .O(n1442) );
  ND2 U1581 ( .I1(n378), .I2(n2415), .O(n2435) );
  OR2T U1582 ( .I1(n177), .I2(n2079), .O(n2759) );
  NR2T U1583 ( .I1(n2244), .I2(n560), .O(n2245) );
  ND2F U1584 ( .I1(n2245), .I2(n343), .O(n1308) );
  INV8 U1585 ( .I(n542), .O(n996) );
  XNR2HP U1586 ( .I1(n2522), .I2(n829), .O(n2464) );
  OAI12HP U1587 ( .B1(n1232), .B2(n2302), .A1(n2458), .O(n2456) );
  INV6 U1588 ( .I(buffer_data[8]), .O(n1493) );
  NR2F U1589 ( .I1(n2704), .I2(n449), .O(n2702) );
  ND2 U1590 ( .I1(n340), .I2(n2792), .O(n2799) );
  INV3 U1591 ( .I(n2457), .O(n2459) );
  MOAI1HT U1592 ( .A1(n163), .A2(n1607), .B1(n328), .B2(n1640), .O(n1637) );
  OAI12HT U1593 ( .B1(n1993), .B2(n1994), .A1(n391), .O(n806) );
  ND2T U1594 ( .I1(n2242), .I2(n343), .O(n370) );
  ND3HT U1595 ( .I1(n669), .I2(n2274), .I3(n187), .O(n2275) );
  NR2F U1596 ( .I1(n438), .I2(n432), .O(n736) );
  INV2 U1597 ( .I(n2079), .O(n1441) );
  OAI22H U1598 ( .A1(n1511), .A2(n564), .B1(n1510), .B2(n553), .O(n1548) );
  NR2F U1599 ( .I1(n670), .I2(n542), .O(n266) );
  ND3 U1600 ( .I1(n1126), .I2(n2535), .I3(n2466), .O(n267) );
  OAI22H U1601 ( .A1(n2161), .A2(n1510), .B1(n802), .B2(n240), .O(n1504) );
  NR2F U1602 ( .I1(n2063), .I2(n2064), .O(n2046) );
  INV12 U1603 ( .I(n702), .O(n1892) );
  ND2T U1604 ( .I1(n2830), .I2(n789), .O(n2448) );
  INV3 U1605 ( .I(n1122), .O(n731) );
  XNR2HP U1606 ( .I1(n353), .I2(n352), .O(n1834) );
  ND2T U1607 ( .I1(n1720), .I2(n1719), .O(n1693) );
  INV8 U1608 ( .I(n2490), .O(n2541) );
  ND3HT U1609 ( .I1(n2250), .I2(n2541), .I3(n2619), .O(n268) );
  ND2P U1610 ( .I1(n1526), .I2(n1525), .O(n2005) );
  ND2F U1611 ( .I1(n888), .I2(n2357), .O(n1168) );
  ND2P U1612 ( .I1(n464), .I2(n2133), .O(n2357) );
  BUF4 U1613 ( .I(weights[129]), .O(n1520) );
  AOI12HT U1614 ( .B1(n789), .B2(n2827), .A1(n1282), .O(n2447) );
  OAI12HT U1615 ( .B1(n2412), .B2(n895), .A1(n1447), .O(n1258) );
  ND3P U1616 ( .I1(n2489), .I2(n847), .I3(n554), .O(n2246) );
  ND2T U1617 ( .I1(n909), .I2(n215), .O(n969) );
  ND3HT U1618 ( .I1(n269), .I2(n726), .I3(n712), .O(n856) );
  ND2 U1619 ( .I1(n288), .I2(n289), .O(n2717) );
  MAO222 U1620 ( .A1(n2011), .B1(n2012), .C1(n855), .O(n2039) );
  XOR2H U1621 ( .I1(n108), .I2(n1349), .O(n1760) );
  NR2P U1622 ( .I1(n2001), .I2(n2000), .O(n2002) );
  ND2P U1623 ( .I1(n1372), .I2(n1373), .O(n1903) );
  INV3 U1624 ( .I(n1854), .O(n1234) );
  ND2P U1625 ( .I1(n966), .I2(n967), .O(n965) );
  XNR2H U1626 ( .I1(n2076), .I2(n270), .O(n2078) );
  XNR2H U1627 ( .I1(n1338), .I2(n2075), .O(n270) );
  OAI12HP U1628 ( .B1(n596), .B2(n1641), .A1(n271), .O(n1657) );
  OR2T U1629 ( .I1(n921), .I2(n922), .O(n683) );
  INV2 U1630 ( .I(n1576), .O(n541) );
  ND2T U1631 ( .I1(n2802), .I2(n182), .O(n2795) );
  MXL2H U1632 ( .A(n853), .B(n195), .S(n1962), .OB(n1176) );
  ND2P U1633 ( .I1(n272), .I2(n1568), .O(n2083) );
  INV1S U1634 ( .I(n2082), .O(n493) );
  NR2F U1635 ( .I1(n1568), .I2(n272), .O(n2082) );
  XNR2HP U1636 ( .I1(n1564), .I2(n1465), .O(n272) );
  NR2P U1637 ( .I1(n2471), .I2(n790), .O(n791) );
  ND2T U1638 ( .I1(n1049), .I2(n1048), .O(n790) );
  NR2T U1639 ( .I1(n250), .I2(n2538), .O(n1395) );
  XNR2H U1640 ( .I1(n2551), .I2(n273), .O(n2538) );
  XNR2H U1641 ( .I1(n155), .I2(n2550), .O(n273) );
  XNR2H U1642 ( .I1(n1889), .I2(n151), .O(n1507) );
  AN2T U1643 ( .I1(n2084), .I2(n2086), .O(n1976) );
  NR2F U1644 ( .I1(n559), .I2(n381), .O(n2271) );
  NR2F U1645 ( .I1(n559), .I2(n1352), .O(n2270) );
  OAI12HP U1646 ( .B1(n1242), .B2(n1241), .A1(n1240), .O(n1749) );
  NR2P U1647 ( .I1(n621), .I2(n3293), .O(n1859) );
  XOR2HP U1648 ( .I1(n1726), .I2(n1727), .O(n1744) );
  MAO222P U1649 ( .A1(n2251), .B1(n1307), .C1(n2252), .O(n2329) );
  ND2T U1650 ( .I1(n275), .I2(n1679), .O(n2090) );
  NR2F U1651 ( .I1(n1679), .I2(n275), .O(n2091) );
  BUF8CK U1652 ( .I(n277), .O(n276) );
  BUF2 U1653 ( .I(buffer_data[21]), .O(n277) );
  XNR2HP U1654 ( .I1(n279), .I2(n2667), .O(n2659) );
  XNR2H U1655 ( .I1(n285), .I2(n908), .O(n279) );
  OAI12H U1656 ( .B1(n657), .B2(n2527), .A1(n2662), .O(n908) );
  XNR2HP U1657 ( .I1(n2642), .I2(n281), .O(n2655) );
  XNR2H U1658 ( .I1(n2643), .I2(n2641), .O(n281) );
  BUF12CK U1659 ( .I(buffer_data[1]), .O(n282) );
  XNR2HS U1660 ( .I1(n285), .I2(n2530), .O(n283) );
  MOAI1H U1661 ( .A1(n286), .A2(n284), .B1(n2530), .B2(n285), .O(n2658) );
  NR2 U1662 ( .I1(n285), .I2(n2530), .O(n284) );
  ND2 U1663 ( .I1(n2526), .I2(n287), .O(n2662) );
  XNR2H U1664 ( .I1(n142), .I2(n280), .O(n2663) );
  ND2S U1665 ( .I1(n289), .I2(n1069), .O(n2716) );
  XNR2HP U1666 ( .I1(n1419), .I2(n698), .O(n289) );
  MOAI1H U1667 ( .A1(n292), .A2(n291), .B1(n2495), .B2(n156), .O(n2550) );
  AOI12H U1668 ( .B1(n2330), .B2(n2541), .A1(n293), .O(n292) );
  NR2F U1669 ( .I1(n784), .I2(n294), .O(n1146) );
  XOR2H U1670 ( .I1(n1628), .I2(n295), .O(n1633) );
  OAI12H U1671 ( .B1(n298), .B2(n297), .A1(n296), .O(n1619) );
  OAI12HS U1672 ( .B1(n299), .B2(n1629), .A1(n1628), .O(n296) );
  INV2 U1673 ( .I(n1629), .O(n297) );
  OAI12HP U1674 ( .B1(n1613), .B2(n3452), .A1(n300), .O(n299) );
  INV3 U1675 ( .I(n301), .O(n300) );
  XNR2HP U1676 ( .I1(n1856), .I2(n1065), .O(n1062) );
  XNR2HP U1677 ( .I1(n1428), .I2(n1860), .O(n1065) );
  NR2P U1678 ( .I1(n555), .I2(n303), .O(n2289) );
  OAI12H U1679 ( .B1(n1117), .B2(n303), .A1(n1692), .O(n1721) );
  OAI12H U1680 ( .B1(n2619), .B2(n1789), .A1(n302), .O(n1792) );
  ND2P U1681 ( .I1(n304), .I2(n203), .O(n1076) );
  NR2P U1682 ( .I1(n203), .I2(n304), .O(n1078) );
  OAI12HP U1683 ( .B1(n532), .B2(n1754), .A1(n211), .O(n304) );
  NR2F U1684 ( .I1(n2023), .I2(n306), .O(n2027) );
  XNR2HS U1685 ( .I1(n2011), .I2(n307), .O(n2036) );
  XNR2H U1686 ( .I1(n855), .I2(n2012), .O(n307) );
  ND2P U1687 ( .I1(n448), .I2(n1995), .O(n308) );
  XNR2H U1688 ( .I1(n1999), .I2(n309), .O(n2012) );
  OAI22H U1689 ( .A1(n264), .A2(n2618), .B1(n2620), .B2(n2615), .O(n2632) );
  OA12P U1690 ( .B1(n1688), .B2(n303), .A1(n310), .O(n1113) );
  ND2T U1691 ( .I1(n230), .I2(n832), .O(n2713) );
  XOR2H U1692 ( .I1(n989), .I2(n987), .O(n832) );
  INV3CK U1693 ( .I(n645), .O(n646) );
  XNR2H U1694 ( .I1(n311), .I2(n2578), .O(n2602) );
  NR2F U1695 ( .I1(n312), .I2(n163), .O(n732) );
  OAI22H U1696 ( .A1(n1615), .A2(n163), .B1(n891), .B2(n312), .O(n1628) );
  XOR2HS U1697 ( .I1(n519), .I2(n541), .O(n312) );
  ND2 U1698 ( .I1(n131), .I2(weights[70]), .O(n2670) );
  OAI12H U1699 ( .B1(n1189), .B2(n313), .A1(n412), .O(n1828) );
  XNR2H U1700 ( .I1(n314), .I2(n323), .O(n321) );
  XNR2H U1701 ( .I1(n316), .I2(n315), .O(n314) );
  XOR2H U1702 ( .I1(n321), .I2(n317), .O(n701) );
  AOI12HP U1703 ( .B1(n400), .B2(n614), .A1(n2570), .O(n1387) );
  MAO222 U1704 ( .A1(n2578), .B1(n644), .C1(n2579), .O(n323) );
  ND2P U1705 ( .I1(n324), .I2(n1067), .O(n1270) );
  OR2T U1706 ( .I1(n325), .I2(n2327), .O(n2499) );
  ND2S U1707 ( .I1(n231), .I2(n325), .O(n2345) );
  ND2P U1708 ( .I1(n1217), .I2(n325), .O(n1216) );
  ND2T U1709 ( .I1(n433), .I2(n2294), .O(n325) );
  INV6CK U1710 ( .I(n542), .O(n326) );
  XOR2H U1711 ( .I1(n2292), .I2(n848), .O(n738) );
  OAI12H U1712 ( .B1(n2286), .B2(n591), .A1(n380), .O(n848) );
  MAO222P U1713 ( .A1(n2331), .B1(n2333), .C1(n2332), .O(n2485) );
  OAI12HP U1714 ( .B1(n187), .B2(n2336), .A1(n329), .O(n2332) );
  ND3HT U1715 ( .I1(n1068), .I2(n669), .I3(n2255), .O(n329) );
  OAI12H U1716 ( .B1(n2253), .B2(n593), .A1(n330), .O(n2333) );
  OAI12HP U1717 ( .B1(n1667), .B2(n1666), .A1(n334), .O(n1679) );
  NR2P U1718 ( .I1(n335), .I2(n2091), .O(n517) );
  ND2F U1719 ( .I1(n1087), .I2(n336), .O(n1086) );
  ND2P U1720 ( .I1(n1622), .I2(n337), .O(n1207) );
  NR2T U1721 ( .I1(n337), .I2(n1622), .O(n2008) );
  NR2F U1722 ( .I1(n552), .I2(n596), .O(n337) );
  ND2F U1723 ( .I1(n1784), .I2(n338), .O(n1973) );
  ND2S U1724 ( .I1(n338), .I2(n2098), .O(n365) );
  NR2F U1725 ( .I1(n1103), .I2(n1104), .O(n338) );
  ND2P U1726 ( .I1(n339), .I2(n1783), .O(n2097) );
  NR2F U1727 ( .I1(n1783), .I2(n339), .O(n1971) );
  XOR2HP U1728 ( .I1(n1748), .I2(n450), .O(n339) );
  OAI12H U1729 ( .B1(n2801), .B2(n2791), .A1(n340), .O(n2109) );
  ND2P U1730 ( .I1(n388), .I2(n1966), .O(n340) );
  XNR2H U1731 ( .I1(n3107), .I2(n341), .O(n2232) );
  XNR2H U1732 ( .I1(weights[65]), .I2(n341), .O(n2233) );
  XOR2H U1733 ( .I1(weights[138]), .I2(n341), .O(n1623) );
  XOR2H U1734 ( .I1(weights[137]), .I2(n341), .O(n1620) );
  ND2 U1735 ( .I1(n2183), .I2(n341), .O(n713) );
  ND2F U1736 ( .I1(n342), .I2(n2099), .O(n1932) );
  ND3HT U1737 ( .I1(n2263), .I2(n437), .I3(n343), .O(n861) );
  INV6 U1738 ( .I(n2254), .O(n343) );
  XNR2H U1739 ( .I1(n344), .I2(n346), .O(n1105) );
  MOAI1H U1740 ( .A1(n406), .A2(n345), .B1(n540), .B2(n346), .O(n1786) );
  NR2 U1741 ( .I1(n540), .I2(n346), .O(n345) );
  OAI12H U1742 ( .B1(n1068), .B2(n1685), .A1(n1684), .O(n346) );
  XOR2HT U1743 ( .I1(buffer_data[2]), .I2(n282), .O(n434) );
  XNR2HP U1744 ( .I1(n1834), .I2(n347), .O(n410) );
  XOR2HP U1745 ( .I1(n349), .I2(n348), .O(n1462) );
  XNR2HP U1746 ( .I1(n351), .I2(n350), .O(n1833) );
  ND3HT U1747 ( .I1(n957), .I2(n894), .I3(n956), .O(n350) );
  ND3HT U1748 ( .I1(n1298), .I2(n1887), .I3(n1297), .O(n352) );
  OAI12HP U1749 ( .B1(n2243), .B2(n189), .A1(n370), .O(n2278) );
  ND2T U1750 ( .I1(n354), .I2(n2739), .O(n2880) );
  NR2F U1751 ( .I1(n2739), .I2(n354), .O(n2879) );
  OAI12H U1752 ( .B1(n419), .B2(n2264), .A1(n201), .O(n355) );
  MAO222 U1753 ( .A1(n2273), .B1(n355), .C1(n1357), .O(n2283) );
  XNR2HP U1754 ( .I1(n1165), .I2(n1169), .O(n356) );
  ND2P U1755 ( .I1(n2404), .I2(n2403), .O(n2850) );
  NR2F U1756 ( .I1(n2405), .I2(n2406), .O(n2845) );
  NR2 U1757 ( .I1(n2349), .I2(n232), .O(n358) );
  MOAI1H U1758 ( .A1(n360), .A2(n640), .B1(n2232), .B2(n359), .O(n2229) );
  INV1S U1759 ( .I(n2217), .O(n360) );
  ND2T U1760 ( .I1(n808), .I2(n807), .O(n1997) );
  OR2T U1761 ( .I1(n2230), .I2(n809), .O(n808) );
  XOR2HP U1762 ( .I1(n1162), .I2(n361), .O(n2100) );
  XNR2HP U1763 ( .I1(n1466), .I2(n2101), .O(n361) );
  OAI12H U1764 ( .B1(n1977), .B2(n1179), .A1(n1089), .O(n363) );
  AOI22H U1765 ( .A1(n903), .A2(n366), .B1(n602), .B2(n365), .O(n364) );
  NR2 U1766 ( .I1(n2096), .I2(n782), .O(n366) );
  OAI12H U1767 ( .B1(n195), .B2(n367), .A1(n1965), .O(n1177) );
  ND3HT U1768 ( .I1(n486), .I2(n1883), .I3(n1019), .O(n367) );
  OAI22HP U1769 ( .A1(n866), .A2(n368), .B1(n843), .B2(n752), .O(n2107) );
  XNR2HP U1770 ( .I1(n573), .I2(n1888), .O(n368) );
  OAI12HP U1771 ( .B1(n817), .B2(n2198), .A1(n369), .O(n814) );
  NR2F U1772 ( .I1(n2173), .I2(n2172), .O(n369) );
  XOR2HP U1773 ( .I1(n2279), .I2(n2278), .O(n1413) );
  XNR2HP U1774 ( .I1(n523), .I2(n764), .O(n2243) );
  XNR2H U1775 ( .I1(n439), .I2(n1349), .O(n2285) );
  MOAI1H U1776 ( .A1(n162), .A2(n371), .B1(n328), .B2(n2174), .O(n375) );
  OAI22HT U1777 ( .A1(n371), .A2(n596), .B1(n1232), .B2(n2171), .O(n817) );
  XNR2HS U1778 ( .I1(weights[68]), .I2(n541), .O(n371) );
  OAI12H U1779 ( .B1(n2206), .B2(n2207), .A1(n372), .O(n836) );
  XNR2HP U1780 ( .I1(n835), .I2(n372), .O(n2238) );
  NR2F U1781 ( .I1(n660), .I2(n2258), .O(n2327) );
  MOAI1HP U1782 ( .A1(n374), .A2(n373), .B1(n1213), .B2(n803), .O(n660) );
  INV1 U1783 ( .I(n2293), .O(n373) );
  NR2F U1784 ( .I1(n1213), .I2(n803), .O(n374) );
  MAO222P U1785 ( .A1(n1155), .B1(n375), .C1(n2180), .O(n1130) );
  XNR2H U1786 ( .I1(n1788), .I2(n1786), .O(n1416) );
  NR2F U1787 ( .I1(n377), .I2(n376), .O(n406) );
  OA12P U1788 ( .B1(n642), .B2(n1714), .A1(n1415), .O(n376) );
  MOAI1H U1789 ( .A1(n381), .A2(n467), .B1(buffer_data[0]), .B2(n1359), .O(
        n1344) );
  OAI12HP U1790 ( .B1(n591), .B2(n1761), .A1(n379), .O(n1769) );
  OAI22H U1791 ( .A1(n2260), .A2(n381), .B1(n2259), .B2(n610), .O(n1357) );
  ND2 U1792 ( .I1(n739), .I2(n740), .O(n380) );
  INV12CK U1793 ( .I(n1709), .O(n381) );
  XNR2H U1794 ( .I1(n382), .I2(n1774), .O(n1772) );
  XNR2H U1795 ( .I1(n1775), .I2(n386), .O(n382) );
  OAI12H U1796 ( .B1(n385), .B2(n384), .A1(n383), .O(n1778) );
  OAI12H U1797 ( .B1(n1775), .B2(n386), .A1(n1774), .O(n383) );
  OAI12H U1798 ( .B1(n1767), .B2(n2544), .A1(n2276), .O(n386) );
  MOAI1HP U1799 ( .A1(n709), .A2(n1624), .B1(n387), .B2(buffer_data[16]), .O(
        n1630) );
  XNR2H U1800 ( .I1(weights[139]), .I2(n1172), .O(n1614) );
  ND2 U1801 ( .I1(n512), .I2(n1183), .O(n388) );
  INV3CK U1802 ( .I(n389), .O(n2791) );
  ND3P U1803 ( .I1(n1183), .I2(n512), .I3(n390), .O(n389) );
  INV1S U1804 ( .I(n1966), .O(n390) );
  XNR2H U1805 ( .I1(n524), .I2(n1349), .O(n1753) );
  XNR2H U1806 ( .I1(n106), .I2(n237), .O(n1754) );
  ND2T U1807 ( .I1(n1633), .I2(n1011), .O(n391) );
  MOAI1HP U1808 ( .A1(n593), .A2(n1739), .B1(n953), .B2(n1737), .O(n1742) );
  INV3 U1809 ( .I(n393), .O(n2001) );
  OAI12H U1810 ( .B1(n188), .B2(n1764), .A1(n1442), .O(n1759) );
  INV2 U1811 ( .I(n2268), .O(n394) );
  XOR2H U1812 ( .I1(n398), .I2(n395), .O(n1323) );
  AOI12H U1813 ( .B1(n1985), .B2(n397), .A1(n396), .O(n395) );
  INV1 U1814 ( .I(n1983), .O(n396) );
  ND2 U1815 ( .I1(n399), .I2(n2097), .O(n398) );
  OAI22S U1816 ( .A1(n1538), .A2(n400), .B1(n1512), .B2(n2568), .O(n1547) );
  OAI22H U1817 ( .A1(n2476), .A2(n614), .B1(n400), .B2(n2322), .O(n2480) );
  OAI22HP U1818 ( .A1(n2570), .A2(n613), .B1(n2509), .B2(n400), .O(n2591) );
  OAI22H U1819 ( .A1(n2123), .A2(n613), .B1(n2143), .B2(n400), .O(n2150) );
  OAI22HP U1820 ( .A1(n400), .A2(n2476), .B1(n614), .B2(n2509), .O(n1228) );
  XNR2H U1821 ( .I1(n972), .I2(n1902), .O(n404) );
  OAI22H U1822 ( .A1(n1840), .A2(n747), .B1(n1891), .B2(n405), .O(n1895) );
  AOI12H U1823 ( .B1(n747), .B2(n563), .A1(n405), .O(n1893) );
  XNR2HP U1824 ( .I1(n406), .I2(n1105), .O(n1718) );
  ND2T U1825 ( .I1(n407), .I2(n2106), .O(n2809) );
  NR2F U1826 ( .I1(n2106), .I2(n407), .O(n2806) );
  INV4 U1827 ( .I(n147), .O(n409) );
  AOI22HP U1828 ( .A1(n409), .A2(n198), .B1(n872), .B2(n785), .O(n1398) );
  MOAI1H U1829 ( .A1(n1517), .A2(n641), .B1(n873), .B2(n409), .O(n1527) );
  NR2F U1830 ( .I1(n2105), .I2(n410), .O(n2813) );
  ND2P U1831 ( .I1(n1828), .I2(n1829), .O(n1885) );
  XNR2H U1832 ( .I1(n1874), .I2(n901), .O(n411) );
  XNR2H U1833 ( .I1(n1947), .I2(n1877), .O(n1873) );
  ND2F U1834 ( .I1(n1366), .I2(n933), .O(n901) );
  XOR2H U1835 ( .I1(n2647), .I2(n2646), .O(n414) );
  OAI12H U1836 ( .B1(n2718), .B2(n582), .A1(n415), .O(n2706) );
  ND3HT U1837 ( .I1(n955), .I2(n520), .I3(n1136), .O(n415) );
  NR2T U1838 ( .I1(n2698), .I2(n417), .O(n2710) );
  OAI12H U1839 ( .B1(n3448), .B2(n556), .A1(n418), .O(n2371) );
  MOAI1H U1840 ( .A1(n2210), .A2(n418), .B1(n2194), .B2(n973), .O(n2205) );
  OAI12HT U1841 ( .B1(n418), .B2(n1390), .A1(n2177), .O(n2685) );
  AOI12HT U1842 ( .B1(n419), .B2(n437), .A1(n2491), .O(n2637) );
  INV6 U1843 ( .I(n727), .O(n419) );
  XNR2H U1844 ( .I1(n421), .I2(n546), .O(n2280) );
  NR2F U1845 ( .I1(n2349), .I2(n2350), .O(n422) );
  XNR2H U1846 ( .I1(n424), .I2(n423), .O(n606) );
  XNR2H U1847 ( .I1(n1771), .I2(n1770), .O(n423) );
  MAO222 U1848 ( .A1(n1770), .B1(n1771), .C1(n424), .O(n1773) );
  NR2F U1849 ( .I1(n2377), .I2(n425), .O(n2350) );
  INV4 U1850 ( .I(n430), .O(n426) );
  NR2F U1851 ( .I1(n429), .I2(n428), .O(n2379) );
  NR2F U1852 ( .I1(n2383), .I2(n2394), .O(n428) );
  NR2P U1853 ( .I1(n431), .I2(n430), .O(n2377) );
  XNR2HP U1854 ( .I1(n2267), .I2(n1404), .O(n430) );
  OAI12HP U1855 ( .B1(n437), .B2(n2264), .A1(n861), .O(n1404) );
  MOAI1H U1856 ( .A1(n1358), .A2(n432), .B1(n1362), .B2(n2289), .O(n2293) );
  INV4 U1857 ( .I(n2278), .O(n432) );
  NR2F U1858 ( .I1(n2294), .I2(n433), .O(n2344) );
  XNR2HP U1859 ( .I1(n803), .I2(n1212), .O(n433) );
  NR2F U1860 ( .I1(n434), .I2(n2254), .O(n727) );
  NR2F U1861 ( .I1(n2290), .I2(n436), .O(n435) );
  XNR2HP U1862 ( .I1(n738), .I2(n1348), .O(n436) );
  ND2P U1863 ( .I1(n436), .I2(n2290), .O(n2291) );
  INV3CK U1864 ( .I(n2279), .O(n438) );
  ND2P U1865 ( .I1(n441), .I2(n440), .O(n445) );
  INV1 U1866 ( .I(n442), .O(n440) );
  NR2T U1867 ( .I1(n444), .I2(n446), .O(n442) );
  ND2P U1868 ( .I1(n443), .I2(n958), .O(n441) );
  INV3 U1869 ( .I(n2455), .O(n444) );
  NR2T U1870 ( .I1(n2523), .I2(n445), .O(n462) );
  XNR2H U1871 ( .I1(weights[67]), .I2(n447), .O(n457) );
  ND2T U1872 ( .I1(n1083), .I2(n1082), .O(n448) );
  NR2F U1873 ( .I1(n1238), .I2(n1237), .O(n449) );
  XOR2HP U1874 ( .I1(n1750), .I2(n1749), .O(n450) );
  MAO222P U1875 ( .A1(n761), .B1(n1746), .C1(n1747), .O(n1783) );
  XNR2H U1876 ( .I1(n1744), .I2(n452), .O(n761) );
  XNR2H U1877 ( .I1(n1745), .I2(n979), .O(n452) );
  XNR2H U1878 ( .I1(n2299), .I2(n1130), .O(n453) );
  XNR2H U1879 ( .I1(n661), .I2(n454), .O(n2298) );
  XOR2H U1880 ( .I1(n504), .I2(n2301), .O(n454) );
  XOR2H U1881 ( .I1(n2187), .I2(n2176), .O(n1155) );
  XOR2HS U1882 ( .I1(n2305), .I2(n1446), .O(n455) );
  XNR2H U1883 ( .I1(weights[65]), .I2(n2671), .O(n2179) );
  XNR2H U1884 ( .I1(weights[141]), .I2(n447), .O(n1820) );
  OAI22H U1885 ( .A1(n2300), .A2(n153), .B1(n928), .B2(n457), .O(n2461) );
  ND2S U1886 ( .I1(n458), .I2(n231), .O(n1217) );
  XNR2HS U1887 ( .I1(n458), .I2(n2345), .O(n1403) );
  MOAI1H U1888 ( .A1(n684), .A2(n1708), .B1(n1691), .B2(n459), .O(n1715) );
  MOAI1H U1889 ( .A1(n684), .A2(n2287), .B1(n2255), .B2(n459), .O(n1213) );
  INV2 U1890 ( .I(n2722), .O(n1236) );
  ND2T U1891 ( .I1(n2531), .I2(n2532), .O(n2722) );
  INV3CK U1892 ( .I(n462), .O(n461) );
  ND2P U1893 ( .I1(n1202), .I2(n463), .O(n1201) );
  XNR2H U1894 ( .I1(n1560), .I2(n961), .O(n463) );
  NR2F U1895 ( .I1(n2133), .I2(n464), .O(n2356) );
  XOR2HP U1896 ( .I1(n1033), .I2(n2134), .O(n464) );
  INV3 U1897 ( .I(n465), .O(n1039) );
  ND3HT U1898 ( .I1(n931), .I2(n930), .I3(n2309), .O(n465) );
  BUF12CK U1899 ( .I(buffer_data[3]), .O(n466) );
  XNR2H U1900 ( .I1(weights[52]), .I2(n466), .O(n2244) );
  NR2T U1901 ( .I1(n610), .I2(n467), .O(n1346) );
  OAI12H U1902 ( .B1(n1805), .B2(n1488), .A1(n468), .O(n1561) );
  ND2S U1903 ( .I1(n158), .I2(n469), .O(n468) );
  INV1S U1904 ( .I(n1505), .O(n469) );
  OAI22H U1905 ( .A1(n1512), .A2(n482), .B1(n1805), .B2(n1506), .O(n1516) );
  MOAI1H U1906 ( .A1(n614), .A2(n2143), .B1(n157), .B2(n199), .O(n1170) );
  MOAI1H U1907 ( .A1(n613), .A2(n2144), .B1(n158), .B2(n241), .O(n2149) );
  XOR2HP U1908 ( .I1(n167), .I2(n1268), .O(n2449) );
  NR2F U1909 ( .I1(n2594), .I2(n2595), .O(n2727) );
  MAO222P U1910 ( .A1(n2585), .B1(n2586), .C1(n2584), .O(n2594) );
  XNR2HP U1911 ( .I1(n2590), .I2(n705), .O(n2585) );
  XNR2HT U1912 ( .I1(n2599), .I2(n470), .O(n2595) );
  XOR2HT U1913 ( .I1(n2600), .I2(n967), .O(n470) );
  XOR2HT U1914 ( .I1(n2589), .I2(n1383), .O(n967) );
  NR2F U1915 ( .I1(n2517), .I2(n472), .O(n2731) );
  OAI12HT U1916 ( .B1(n472), .B2(n2519), .A1(n2518), .O(n2596) );
  NR2F U1917 ( .I1(n2516), .I2(n2515), .O(n472) );
  XNR2HP U1918 ( .I1(n2734), .I2(n1288), .O(n1067) );
  MOAI1HP U1919 ( .A1(n408), .A2(n2164), .B1(n473), .B2(n872), .O(n2319) );
  INV1 U1920 ( .I(n2321), .O(n473) );
  XNR2HS U1921 ( .I1(n151), .I2(n3348), .O(n2321) );
  MOAI1HP U1922 ( .A1(n614), .A2(n2322), .B1(n158), .B2(n207), .O(n1050) );
  XNR2H U1923 ( .I1(n2630), .I2(n474), .O(n2644) );
  XNR2H U1924 ( .I1(n2637), .I2(n2631), .O(n474) );
  ND2 U1925 ( .I1(n2550), .I2(n478), .O(n477) );
  INV3CK U1926 ( .I(n479), .O(n478) );
  NR2T U1927 ( .I1(n2637), .I2(n2551), .O(n479) );
  AOI12H U1928 ( .B1(n482), .B2(n2568), .A1(n1806), .O(n1900) );
  OAI22H U1929 ( .A1(n1539), .A2(n482), .B1(n1538), .B2(n2568), .O(n1239) );
  OAI22H U1930 ( .A1(n1480), .A2(n482), .B1(n1806), .B2(n2568), .O(n1810) );
  OAI12H U1931 ( .B1(n1480), .B2(n2568), .A1(n483), .O(n1486) );
  ND2 U1932 ( .I1(n157), .I2(n484), .O(n483) );
  MOAI1H U1933 ( .A1(n1540), .A2(n2568), .B1(n158), .B2(n241), .O(n1546) );
  ND3HT U1934 ( .I1(n664), .I2(n2089), .I3(n1392), .O(n486) );
  ND2P U1935 ( .I1(n1905), .I2(n1907), .O(n1854) );
  OR2T U1936 ( .I1(n1844), .I2(n487), .O(n1907) );
  ND2 U1937 ( .I1(n487), .I2(n1844), .O(n1905) );
  XNR2H U1938 ( .I1(n488), .I2(n1903), .O(n487) );
  XNR2HP U1939 ( .I1(n1121), .I2(n1967), .O(n1174) );
  XOR2HP U1940 ( .I1(n1457), .I2(n1175), .O(n1121) );
  ND3HT U1941 ( .I1(n490), .I2(n1074), .I3(n1196), .O(n1073) );
  ND2S U1942 ( .I1(n490), .I2(n1196), .O(n1075) );
  ND3HT U1943 ( .I1(n1197), .I2(n2047), .I3(n2050), .O(n490) );
  ND2 U1944 ( .I1(n1076), .I2(n491), .O(n2010) );
  FA1 U1945 ( .A(n2624), .B(n708), .CI(n2623), .CO(n2616), .S(n2643) );
  OAI12HS U1946 ( .B1(n1230), .B2(n1115), .A1(n2496), .O(n1401) );
  NR2F U1947 ( .I1(n2017), .I2(n2008), .O(n1205) );
  ND2T U1948 ( .I1(n2018), .I2(n2019), .O(n2017) );
  XNR2HP U1949 ( .I1(n1110), .I2(n1111), .O(n1107) );
  OAI12HP U1950 ( .B1(n1111), .B2(n1110), .A1(n1108), .O(n1811) );
  ND2P U1951 ( .I1(n1111), .I2(n1110), .O(n1109) );
  NR2P U1952 ( .I1(n728), .I2(n1485), .O(n1300) );
  XNR2HP U1953 ( .I1(n1485), .I2(n1376), .O(n1564) );
  ND2P U1954 ( .I1(n767), .I2(n765), .O(n492) );
  ND2T U1955 ( .I1(n767), .I2(n765), .O(n2885) );
  ND2T U1956 ( .I1(n2100), .I2(n781), .O(n2751) );
  NR2 U1957 ( .I1(n2049), .I2(n2048), .O(n2053) );
  ND2 U1958 ( .I1(n2535), .I2(n2467), .O(n2308) );
  XNR2HP U1959 ( .I1(n2538), .I2(n1393), .O(n2555) );
  XOR2HP U1960 ( .I1(n2328), .I2(n497), .O(n2258) );
  OAI12H U1961 ( .B1(n2126), .B2(n2125), .A1(n2124), .O(n920) );
  ND3P U1962 ( .I1(n1072), .I2(n1934), .I3(n1933), .O(n1333) );
  ND2T U1963 ( .I1(n1700), .I2(n1701), .O(n1864) );
  NR2F U1964 ( .I1(buffer_data[18]), .I2(n494), .O(n506) );
  XNR2HP U1965 ( .I1(n1264), .I2(n1044), .O(n2735) );
  NR2F U1966 ( .I1(n1154), .I2(n2235), .O(n2367) );
  NR2F U1967 ( .I1(n545), .I2(n891), .O(n1154) );
  ND2P U1968 ( .I1(n604), .I2(n1310), .O(n2742) );
  NR2P U1969 ( .I1(n565), .I2(n1388), .O(n1755) );
  XOR2HP U1970 ( .I1(n978), .I2(n1279), .O(n2158) );
  XOR3 U1971 ( .I1(n510), .I2(n1673), .I3(n1672), .O(n595) );
  XNR2HS U1972 ( .I1(n1673), .I2(n1672), .O(n508) );
  NR2P U1973 ( .I1(n2869), .I2(n2882), .O(n1310) );
  OAI12HT U1974 ( .B1(n1258), .B2(n2430), .A1(n1257), .O(n2468) );
  XNR2HP U1975 ( .I1(n202), .I2(n1043), .O(n2503) );
  ND2P U1976 ( .I1(n2418), .I2(n2417), .O(n2842) );
  OAI12HS U1977 ( .B1(n2420), .B2(n2421), .A1(n2419), .O(n939) );
  ND2F U1978 ( .I1(n788), .I2(n499), .O(n1638) );
  NR2F U1979 ( .I1(n239), .I2(n928), .O(n1636) );
  ND2 U1980 ( .I1(n1342), .I2(n2735), .O(n1186) );
  XNR2HP U1981 ( .I1(n2735), .I2(n500), .O(n796) );
  XNR2HP U1982 ( .I1(n2736), .I2(n1342), .O(n500) );
  NR2F U1983 ( .I1(n2879), .I2(n2877), .O(n1343) );
  XOR2H U1984 ( .I1(n1336), .I2(weights[51]), .O(n2262) );
  BUF8CK U1985 ( .I(n326), .O(n596) );
  XNR2H U1986 ( .I1(n2218), .I2(n538), .O(n1625) );
  XNR2H U1987 ( .I1(n2218), .I2(weights[142]), .O(n1647) );
  BUF8CK U1988 ( .I(n2664), .O(n561) );
  INV6 U1989 ( .I(n2526), .O(n2303) );
  OA22P U1990 ( .A1(n615), .A2(n1635), .B1(n1605), .B2(n657), .O(n1021) );
  AOI12HT U1991 ( .B1(n1422), .B2(n1421), .A1(n1420), .O(n2810) );
  NR2T U1992 ( .I1(n1441), .I2(n1439), .O(n2757) );
  NR2P U1993 ( .I1(n1466), .I2(n2101), .O(n1161) );
  OR2T U1994 ( .I1(n2192), .I2(n823), .O(n2193) );
  MOAI1H U1995 ( .A1(n661), .A2(n503), .B1(n2301), .B2(n504), .O(n2452) );
  OAI12HP U1996 ( .B1(n596), .B2(n2302), .A1(n1182), .O(n504) );
  NR2T U1997 ( .I1(n1460), .I2(n804), .O(n505) );
  ND2 U1998 ( .I1(n506), .I2(n3315), .O(n2181) );
  NR2P U1999 ( .I1(n670), .I2(n1577), .O(n1578) );
  XNR2HT U2000 ( .I1(n516), .I2(n1579), .O(n670) );
  XOR2HP U2001 ( .I1(n261), .I2(n578), .O(n812) );
  XNR2H U2002 ( .I1(n509), .I2(n508), .O(n1676) );
  ND2 U2003 ( .I1(n603), .I2(n1584), .O(n509) );
  ND2 U2004 ( .I1(n603), .I2(n1584), .O(n510) );
  ND2P U2005 ( .I1(n489), .I2(n511), .O(n512) );
  INV4 U2006 ( .I(n1967), .O(n1966) );
  XOR2HP U2007 ( .I1(n513), .I2(n1680), .O(n2102) );
  OR2T U2008 ( .I1(n1832), .I2(n1882), .O(n513) );
  INV2 U2009 ( .I(n1626), .O(n1615) );
  MXL2HP U2010 ( .A(n1627), .B(n1626), .S(n328), .OB(n1631) );
  NR2P U2011 ( .I1(n239), .I2(n2303), .O(n1629) );
  XOR2HP U2012 ( .I1(n1095), .I2(n1015), .O(n514) );
  OAI22H U2013 ( .A1(n2304), .A2(n658), .B1(n2460), .B2(n615), .O(n2455) );
  INV4 U2014 ( .I(n2526), .O(n615) );
  ND2F U2015 ( .I1(n2426), .I2(n2353), .O(n895) );
  XOR2HP U2016 ( .I1(n515), .I2(n2469), .O(n2504) );
  ND2 U2017 ( .I1(n1123), .I2(n1980), .O(n1981) );
  NR2P U2018 ( .I1(n934), .I2(n1953), .O(n1369) );
  NR2T U2019 ( .I1(n1833), .I2(n1834), .O(n1461) );
  ND2P U2020 ( .I1(n1392), .I2(n1970), .O(n1320) );
  MOAI1HP U2021 ( .A1(n1014), .A2(n589), .B1(n2081), .B2(n924), .O(n781) );
  NR2P U2022 ( .I1(n924), .I2(n2081), .O(n1014) );
  INV3 U2023 ( .I(n2346), .O(n1046) );
  ND2P U2024 ( .I1(n713), .I2(n2184), .O(n1182) );
  ND2 U2025 ( .I1(n2182), .I2(n539), .O(n2183) );
  ND2P U2026 ( .I1(n2241), .I2(n2240), .O(n2346) );
  AO12 U2027 ( .B1(n997), .B2(n1139), .A1(n1140), .O(n520) );
  NR2F U2028 ( .I1(n2237), .I2(n2236), .O(n795) );
  AOI12HS U2029 ( .B1(n806), .B2(n1010), .A1(n2064), .O(n846) );
  XOR2HS U2030 ( .I1(n2456), .I2(n2455), .O(n799) );
  XOR2HS U2031 ( .I1(n2169), .I2(n107), .O(n2219) );
  XOR2HP U2032 ( .I1(n3322), .I2(n2169), .O(n1641) );
  INV4 U2033 ( .I(weights[51]), .O(n3165) );
  INV1S U2034 ( .I(n3053), .O(n528) );
  BUF6CK U2035 ( .I(n2488), .O(n2489) );
  INV2 U2036 ( .I(weights[120]), .O(n3211) );
  INV4 U2037 ( .I(n1388), .O(n531) );
  ND2P U2038 ( .I1(n1690), .I2(n1683), .O(n1924) );
  INV6 U2039 ( .I(n601), .O(n543) );
  OAI12HT U2040 ( .B1(n1694), .B2(n1695), .A1(n1693), .O(n1701) );
  XOR2H U2041 ( .I1(n1357), .I2(n2273), .O(n546) );
  XNR2HP U2042 ( .I1(n1153), .I2(n2308), .O(n2450) );
  MOAI1HP U2043 ( .A1(n1461), .A2(n879), .B1(n1833), .B2(n1834), .O(n2106) );
  MOAI1 U2044 ( .A1(n990), .A2(n989), .B1(n2601), .B2(n2602), .O(n2583) );
  NR2 U2045 ( .I1(n2602), .I2(n2601), .O(n990) );
  XNR2H U2046 ( .I1(n1721), .I2(n822), .O(n821) );
  BUF6 U2047 ( .I(n2116), .O(n1891) );
  INV1S U2048 ( .I(n1440), .O(n1318) );
  OAI22HT U2049 ( .A1(n2576), .A2(n2122), .B1(n1891), .B2(n2163), .O(n1279) );
  OAI22H U2050 ( .A1(n2577), .A2(n562), .B1(n2574), .B2(n2575), .O(n2587) );
  XOR2H U2051 ( .I1(n761), .I2(n548), .O(n1782) );
  XNR2HP U2052 ( .I1(n1317), .I2(n1315), .O(n1314) );
  NR2T U2053 ( .I1(n1631), .I2(n1632), .O(n1011) );
  NR2P U2054 ( .I1(n1364), .I2(n1815), .O(n1817) );
  NR2F U2055 ( .I1(n715), .I2(n1414), .O(n866) );
  OAI22HP U2056 ( .A1(n2508), .A2(n562), .B1(n611), .B2(n2577), .O(n2581) );
  XNR2H U2057 ( .I1(n646), .I2(n2581), .O(n1406) );
  MOAI1HP U2058 ( .A1(n1045), .A2(n1391), .B1(n2503), .B2(n2504), .O(n2561) );
  NR2T U2059 ( .I1(n2504), .I2(n2503), .O(n1045) );
  INV2 U2060 ( .I(n979), .O(n1241) );
  INV3 U2061 ( .I(n1286), .O(n2872) );
  ND2P U2062 ( .I1(n175), .I2(n823), .O(n2466) );
  MOAI1H U2063 ( .A1(n2213), .A2(n163), .B1(n327), .B2(n2212), .O(n2214) );
  OAI12HT U2064 ( .B1(n507), .B2(n2459), .A1(n2458), .O(n632) );
  OAI22HP U2065 ( .A1(n2317), .A2(n2576), .B1(n563), .B2(n2473), .O(n2477) );
  OAI12HP U2066 ( .B1(n1227), .B2(n219), .A1(n1226), .O(n2584) );
  XNR2HP U2067 ( .I1(n1801), .I2(n1107), .O(n986) );
  XOR2H U2068 ( .I1(buffer_data[10]), .I2(buffer_data[11]), .O(n1477) );
  INV3CK U2069 ( .I(n1809), .O(n1378) );
  INV2 U2070 ( .I(n2600), .O(n966) );
  OAI22H U2071 ( .A1(n2473), .A2(n2576), .B1(n2575), .B2(n2508), .O(n2510) );
  XNR2H U2072 ( .I1(n646), .I2(n2510), .O(n1410) );
  OAI12HP U2073 ( .B1(n1515), .B2(n1516), .A1(n1514), .O(n983) );
  MOAI1H U2074 ( .A1(n1378), .A2(n1299), .B1(n1810), .B2(n728), .O(n1835) );
  INV2 U2075 ( .I(n2126), .O(n922) );
  AOI12HP U2076 ( .B1(n574), .B2(n2483), .A1(n2482), .O(n1043) );
  XOR2HP U2077 ( .I1(buffer_data[2]), .I2(n282), .O(n560) );
  INV6 U2078 ( .I(buffer_data[5]), .O(n2543) );
  INV6 U2079 ( .I(n2121), .O(n702) );
  BUF4CK U2080 ( .I(n2116), .O(n2575) );
  BUF6CK U2081 ( .I(n2113), .O(n564) );
  ND2T U2082 ( .I1(buffer_data[9]), .I2(n1493), .O(n2113) );
  XNR2HP U2083 ( .I1(n1303), .I2(n237), .O(n1738) );
  OR2 U2084 ( .I1(n1960), .I2(n1961), .O(n573) );
  OAI12HP U2085 ( .B1(n2744), .B2(n2751), .A1(n2745), .O(n1420) );
  BUF2 U2086 ( .I(n1015), .O(n924) );
  ND3HT U2087 ( .I1(n931), .I2(n930), .I3(n2309), .O(n574) );
  XNR2HP U2088 ( .I1(n2313), .I2(n2312), .O(n883) );
  ND2P U2089 ( .I1(n1674), .I2(n1007), .O(n970) );
  XOR2HP U2090 ( .I1(n1314), .I2(n1319), .O(n1079) );
  OAI22H U2091 ( .A1(n1582), .A2(n657), .B1(n2303), .B2(n1591), .O(n1595) );
  AOI12HP U2092 ( .B1(n2296), .B2(n1324), .A1(n774), .O(n773) );
  INV2 U2093 ( .I(n2348), .O(n774) );
  XNR2HP U2094 ( .I1(n777), .I2(n776), .O(n2296) );
  XNR2HP U2095 ( .I1(n2208), .I2(n960), .O(n959) );
  ND2P U2096 ( .I1(n518), .I2(n887), .O(n776) );
  OAI22HP U2097 ( .A1(n2576), .A2(n3449), .B1(n563), .B2(n204), .O(n1499) );
  NR2T U2098 ( .I1(n731), .I2(n732), .O(n578) );
  ND2T U2099 ( .I1(n1339), .I2(n1340), .O(n1288) );
  OAI12HP U2100 ( .B1(n870), .B2(n869), .A1(n868), .O(n2505) );
  ND3 U2101 ( .I1(n2499), .I2(n725), .I3(n2498), .O(n1278) );
  MAO222P U2102 ( .A1(n697), .B1(n1715), .C1(n1716), .O(n1720) );
  XOR2HP U2103 ( .I1(n1732), .I2(n1731), .O(n1097) );
  XNR2HP U2104 ( .I1(n249), .I2(n1102), .O(n1732) );
  XNR2H U2105 ( .I1(n159), .I2(n146), .O(n1789) );
  XNR2H U2106 ( .I1(n2284), .I2(n741), .O(n1361) );
  AOI12HT U2107 ( .B1(n2836), .B2(n1434), .A1(n1254), .O(n2826) );
  OAI12HP U2108 ( .B1(n2854), .B2(n2858), .A1(n2855), .O(n2853) );
  ND2P U2109 ( .I1(n2402), .I2(n2401), .O(n2855) );
  NR2F U2110 ( .I1(n2439), .I2(n2440), .O(n2837) );
  MAO222P U2111 ( .A1(n960), .B1(n2208), .C1(n2209), .O(n2239) );
  NR2F U2112 ( .I1(n1534), .I2(n1535), .O(n1989) );
  NR2 U2113 ( .I1(n1776), .I2(n1777), .O(n757) );
  OAI12HP U2114 ( .B1(n1204), .B2(n120), .A1(n1203), .O(n2092) );
  NR2F U2115 ( .I1(n811), .I2(n1644), .O(n1389) );
  OR2T U2116 ( .I1(n2474), .I2(n2139), .O(n584) );
  ND2 U2117 ( .I1(n1342), .I2(n2736), .O(n2737) );
  INV4CK U2118 ( .I(n772), .O(n1153) );
  XNR2HP U2119 ( .I1(n2511), .I2(n1410), .O(n2506) );
  XNR2HP U2120 ( .I1(n1659), .I2(n1092), .O(n1091) );
  FA1 U2121 ( .A(n2058), .B(n2057), .CI(n2056), .S(n585) );
  INV1 U2122 ( .I(n1467), .O(n1316) );
  XOR2H U2123 ( .I1(n104), .I2(n566), .O(n2540) );
  OR2 U2124 ( .I1(n1443), .I2(n1444), .O(n586) );
  ND2P U2125 ( .I1(n2036), .I2(n2035), .O(n2777) );
  XNR2HP U2126 ( .I1(n1261), .I2(n1260), .O(n2736) );
  XNR2HP U2127 ( .I1(n1855), .I2(n1062), .O(n1797) );
  ND2P U2128 ( .I1(n2669), .I2(n135), .O(n2719) );
  XOR2HS U2129 ( .I1(n2062), .I2(n2061), .O(n2074) );
  OR2T U2130 ( .I1(n2240), .I2(n2241), .O(n587) );
  MAO222P U2131 ( .A1(n2158), .B1(n2159), .C1(n2160), .O(n2312) );
  BUF6 U2132 ( .I(n851), .O(n797) );
  AOI12HT U2133 ( .B1(n2410), .B2(n2409), .A1(n1435), .O(n1195) );
  ND2P U2134 ( .I1(n2444), .I2(n1255), .O(n2834) );
  NR2T U2135 ( .I1(n2413), .I2(n2412), .O(n2428) );
  XNR2HS U2136 ( .I1(n1715), .I2(n1716), .O(n696) );
  INV4 U2137 ( .I(n1059), .O(n2172) );
  ND2P U2138 ( .I1(n2607), .I2(n2547), .O(n2631) );
  NR2T U2139 ( .I1(n456), .I2(n1779), .O(n2068) );
  NR2T U2140 ( .I1(n1381), .I2(n1379), .O(n1001) );
  MAO222P U2141 ( .A1(n105), .B1(n1446), .C1(n2305), .O(n958) );
  NR2T U2142 ( .I1(n1156), .I2(n2702), .O(n1119) );
  MAO222P U2143 ( .A1(n2510), .B1(n2511), .C1(n644), .O(n2590) );
  ND2P U2144 ( .I1(n1714), .I2(n642), .O(n1106) );
  INV2 U2145 ( .I(n1322), .O(n1123) );
  NR2F U2146 ( .I1(n807), .I2(n808), .O(n1998) );
  ND2P U2147 ( .I1(n1817), .I2(n1178), .O(n957) );
  INV2 U2148 ( .I(n2502), .O(n1391) );
  MOAI1HP U2149 ( .A1(n1456), .A2(n1490), .B1(n1564), .B2(n1565), .O(n1491) );
  NR2P U2150 ( .I1(n1565), .I2(n1564), .O(n1456) );
  XOR2HP U2151 ( .I1(n1377), .I2(n1378), .O(n1111) );
  XNR2HP U2152 ( .I1(n687), .I2(n1835), .O(n1812) );
  XOR2HT U2153 ( .I1(buffer_data[4]), .I2(n466), .O(n1281) );
  NR2 U2154 ( .I1(n2660), .I2(n2659), .O(n733) );
  MOAI1HP U2155 ( .A1(n162), .A2(n2220), .B1(n328), .B2(n2219), .O(n2228) );
  ND2T U2156 ( .I1(n2236), .I2(n2237), .O(n880) );
  XOR2HP U2157 ( .I1(n1636), .I2(n1637), .O(n1020) );
  OAI12HP U2158 ( .B1(n668), .B2(n667), .A1(n666), .O(n1731) );
  OAI12H U2159 ( .B1(n1729), .B2(n1730), .A1(n1728), .O(n666) );
  INV2 U2160 ( .I(n1660), .O(n1125) );
  OAI12H U2161 ( .B1(n1647), .B2(n996), .A1(n995), .O(n1671) );
  OAI22HP U2162 ( .A1(n1602), .A2(n561), .B1(n2303), .B2(n1605), .O(n1611) );
  INV2 U2163 ( .I(n1499), .O(n950) );
  XOR2HS U2164 ( .I1(n526), .I2(n1336), .O(n1359) );
  BUF6 U2165 ( .I(n1354), .O(n1352) );
  ND2P U2166 ( .I1(n1333), .I2(n1935), .O(n1332) );
  XOR2H U2167 ( .I1(n1537), .I2(n1536), .O(n1214) );
  XOR2H U2168 ( .I1(n2205), .I2(n1059), .O(n2208) );
  XNR2HS U2169 ( .I1(n1946), .I2(n1951), .O(n1181) );
  XNR2HP U2170 ( .I1(n1959), .I2(n1958), .O(n1963) );
  BUF1 U2171 ( .I(n1968), .O(n844) );
  ND3HT U2172 ( .I1(n669), .I2(n2492), .I3(n187), .O(n2493) );
  OAI12HP U2173 ( .B1(n816), .B2(n815), .A1(n814), .O(n2200) );
  INV2 U2174 ( .I(n1156), .O(n1141) );
  INV3 U2175 ( .I(n2720), .O(n754) );
  OAI12HP U2176 ( .B1(n1388), .B2(n1734), .A1(n124), .O(n1727) );
  MOAI1HP U2177 ( .A1(n818), .A2(n801), .B1(n1711), .B2(n633), .O(n1726) );
  ND3P U2178 ( .I1(n167), .I2(n1146), .I3(n2650), .O(n726) );
  XNR2H U2179 ( .I1(n2363), .I2(n2362), .O(n2381) );
  OAI12HP U2180 ( .B1(n189), .B2(n2253), .A1(n1308), .O(n1307) );
  MAO222P U2181 ( .A1(n1653), .B1(n527), .C1(n1654), .O(n1672) );
  INV3 U2182 ( .I(n2704), .O(n2705) );
  INV2 U2183 ( .I(n1276), .O(n1275) );
  XNR2HP U2184 ( .I1(n2451), .I2(n798), .O(n2306) );
  XOR2H U2185 ( .I1(buffer_data[13]), .I2(buffer_data[12]), .O(n794) );
  MAO222P U2186 ( .A1(n1501), .B1(n576), .C1(n1502), .O(n1560) );
  INV2 U2187 ( .I(n1730), .O(n667) );
  XOR2HS U2188 ( .I1(weights[141]), .I2(n1172), .O(n1603) );
  NR3H U2189 ( .I1(n2709), .I2(n1138), .I3(n1156), .O(n1137) );
  ND2P U2190 ( .I1(n2563), .I2(n2824), .O(n600) );
  ND3S U2191 ( .I1(n2541), .I2(n2619), .I3(n2540), .O(n2542) );
  NR2F U2192 ( .I1(n1625), .I2(n507), .O(n1627) );
  AOI12HP U2193 ( .B1(n2780), .B2(n2778), .A1(n1051), .O(n2776) );
  FA1 U2194 ( .A(n1924), .B(n1795), .CI(n1794), .CO(n1855), .S(n1787) );
  MXL2H U2195 ( .A(n209), .B(n1682), .S(n1450), .OB(n1683) );
  ND2P U2196 ( .I1(n1454), .I2(n2104), .O(n2745) );
  XOR2HP U2197 ( .I1(n214), .I2(n884), .O(n2552) );
  ND2P U2198 ( .I1(n1024), .I2(n1662), .O(n1392) );
  INV1 U2199 ( .I(n2718), .O(n2708) );
  XOR2HP U2200 ( .I1(n1172), .I2(weights[69]), .O(n2194) );
  INV2 U2201 ( .I(n2087), .O(n1088) );
  ND2T U2202 ( .I1(n2282), .I2(n2283), .O(n2433) );
  OAI22H U2203 ( .A1(n3449), .A2(n2576), .B1(n205), .B2(n1891), .O(n2159) );
  OAI12H U2204 ( .B1(n569), .B2(n1766), .A1(n710), .O(n1775) );
  XNR2HP U2205 ( .I1(n1145), .I2(n2142), .O(n1142) );
  ND3P U2206 ( .I1(n735), .I2(n1146), .I3(n1350), .O(n712) );
  ND2P U2207 ( .I1(n1146), .I2(n1350), .O(n1209) );
  OAI22HT U2208 ( .A1(n1445), .A2(n994), .B1(n993), .B2(n1040), .O(n2165) );
  NR2F U2209 ( .I1(n2556), .I2(n2557), .O(n1211) );
  INV6 U2210 ( .I(n1337), .O(n759) );
  ND2F U2211 ( .I1(n851), .I2(n2720), .O(n2704) );
  XOR2HP U2212 ( .I1(n677), .I2(n675), .O(n2152) );
  INV2 U2213 ( .I(n2725), .O(n2726) );
  OAI12HT U2214 ( .B1(n1448), .B2(n2776), .A1(n2773), .O(n1171) );
  OR2T U2215 ( .I1(n2179), .I2(n639), .O(n2188) );
  MOAI1HP U2216 ( .A1(n2233), .A2(n709), .B1(n2232), .B2(n973), .O(n2235) );
  MOAI1HP U2217 ( .A1(n561), .A2(n3442), .B1(n877), .B2(n1601), .O(n1612) );
  INV2 U2218 ( .I(n1494), .O(n785) );
  MOAI1H U2219 ( .A1(n2454), .A2(n1588), .B1(n1587), .B2(n242), .O(n1653) );
  XNR2HP U2220 ( .I1(n1113), .I2(n1112), .O(n1719) );
  INV8 U2221 ( .I(n1353), .O(n1709) );
  XNR2HP U2222 ( .I1(weights[127]), .I2(n570), .O(n1791) );
  INV2 U2223 ( .I(n1508), .O(n915) );
  MOAI1HT U2224 ( .A1(n1211), .A2(n1210), .B1(n2557), .B2(n2556), .O(n1350) );
  INV4 U2225 ( .I(n725), .O(n2557) );
  INV6CK U2226 ( .I(n758), .O(n2615) );
  FA1 U2227 ( .A(n2627), .B(n156), .CI(n2626), .CO(n2635), .S(n2645) );
  ND3P U2228 ( .I1(n1973), .I2(n1334), .I3(n1798), .O(n1800) );
  ND2P U2229 ( .I1(n1190), .I2(n1455), .O(n1163) );
  ND2T U2230 ( .I1(n2724), .I2(n1350), .O(n699) );
  AOI12HP U2231 ( .B1(n167), .B2(n1265), .A1(n1350), .O(n1260) );
  XNR2H U2232 ( .I1(n139), .I2(n1349), .O(n1761) );
  BUF12CK U2233 ( .I(n2115), .O(n1805) );
  BUF8CK U2234 ( .I(n2114), .O(n617) );
  OAI22HP U2235 ( .A1(n1523), .A2(n2136), .B1(n2135), .B2(n616), .O(n2142) );
  BUF12CK U2236 ( .I(n280), .O(n618) );
  NR2P U2237 ( .I1(n238), .I2(n239), .O(n1654) );
  NR2P U2238 ( .I1(n3242), .I2(n568), .O(n1668) );
  INV6 U2239 ( .I(n601), .O(n621) );
  NR2P U2240 ( .I1(n621), .I2(n3129), .O(n1699) );
  INV12 U2241 ( .I(n1277), .O(n623) );
  ND3P U2242 ( .I1(n1068), .I2(n711), .I3(n160), .O(n2276) );
  OAI12H U2243 ( .B1(n1068), .B2(n1708), .A1(n1707), .O(n1729) );
  ND3P U2244 ( .I1(n1068), .I2(n1765), .I3(n711), .O(n710) );
  BUF12CK U2245 ( .I(n3865), .O(o_data[6]) );
  BUF12CK U2246 ( .I(n3866), .O(o_data[5]) );
  BUF12CK U2247 ( .I(n3864), .O(o_data[7]) );
  BUF12CK U2248 ( .I(n3867), .O(o_data[4]) );
  BUF12CK U2249 ( .I(n3869), .O(o_data[2]) );
  BUF12CK U2250 ( .I(n3870), .O(o_data[1]) );
  BUF12CK U2251 ( .I(n3871), .O(o_data[0]) );
  BUF12CK U2252 ( .I(n3868), .O(o_data[3]) );
  OR2 U2253 ( .I1(n908), .I2(n632), .O(n905) );
  FA1 U2254 ( .A(n2820), .B(n2819), .CI(n2818), .CO(n2790), .S(
        \CHIPS[0].core/temp_pconv[0] ) );
  FA1 U2255 ( .A(n2890), .B(n2889), .CI(n2888), .CO(n2863), .S(
        \CHIPS[1].core/temp_pconv[0] ) );
  INV1S U2256 ( .I(n3029), .O(n638) );
  OAI22S U2257 ( .A1(n1804), .A2(n562), .B1(n1840), .B2(n563), .O(n1841) );
  OAI22H U2258 ( .A1(n1479), .A2(n1892), .B1(n1804), .B2(n1891), .O(n1807) );
  INV3 U2259 ( .I(n1572), .O(n1397) );
  BUF2 U2260 ( .I(buffer_data[16]), .O(n973) );
  NR2F U2261 ( .I1(n220), .I2(n2474), .O(n992) );
  INV12CK U2262 ( .I(n2474), .O(n872) );
  INV6 U2263 ( .I(n822), .O(n642) );
  INV3 U2264 ( .I(n1411), .O(n643) );
  INV4 U2265 ( .I(n643), .O(n644) );
  INV3 U2266 ( .I(n1411), .O(n645) );
  OAI12HS U2267 ( .B1(n2324), .B2(n644), .A1(n2323), .O(n1409) );
  MAO222P U2268 ( .A1(n2477), .B1(n1411), .C1(n2478), .O(n2512) );
  INV1S U2269 ( .I(n2953), .O(n648) );
  INV1S U2270 ( .I(n2953), .O(n649) );
  AO13T U2271 ( .B1(n647), .B2(n3062), .B3(n3831), .A1(n3061), .O(n3091) );
  OR2B1S U2272 ( .I1(n652), .B1(n186), .O(n2128) );
  OR2B1S U2273 ( .I1(n651), .B1(n567), .O(n2144) );
  XNR2HS U2274 ( .I1(n1042), .I2(n652), .O(n2122) );
  BUF3 U2275 ( .I(weights[128]), .O(n654) );
  OR2B1 U2276 ( .I1(n655), .B1(n873), .O(n1517) );
  AN2B1 U2277 ( .I1(n653), .B1(n1532), .O(n1525) );
  XNR2HS U2278 ( .I1(weights[48]), .I2(n159), .O(n2247) );
  NR2F U2279 ( .I1(n2552), .I2(n2553), .O(n784) );
  OAI12HT U2280 ( .B1(n2841), .B2(n2837), .A1(n2838), .O(n2836) );
  ND3HT U2281 ( .I1(n1208), .I2(n1209), .I3(n2712), .O(n698) );
  INV3 U2282 ( .I(n2651), .O(n749) );
  OR2T U2283 ( .I1(n2191), .I2(n2190), .O(n661) );
  MOAI1HP U2284 ( .A1(n2487), .A2(n917), .B1(n801), .B2(n2540), .O(n2548) );
  BUF1S U2285 ( .I(n2394), .O(n663) );
  INV3 U2286 ( .I(buffer_data[20]), .O(n665) );
  ND2P U2287 ( .I1(n2280), .I2(n2281), .O(n2415) );
  ND2T U2288 ( .I1(n1881), .I2(n1880), .O(n1964) );
  XOR2H U2289 ( .I1(n806), .I2(n2046), .O(n2057) );
  INV4 U2290 ( .I(n2310), .O(n2167) );
  INV2 U2291 ( .I(n1729), .O(n668) );
  ND3HT U2292 ( .I1(n673), .I2(n699), .I3(n2726), .O(n695) );
  ND3HT U2293 ( .I1(n1016), .I2(n1265), .I3(n2724), .O(n673) );
  AOI12HT U2294 ( .B1(n1192), .B2(n2596), .A1(n1191), .O(n2597) );
  XNR2H U2295 ( .I1(n1301), .I2(n1486), .O(n1376) );
  INV4 U2296 ( .I(n2562), .O(n765) );
  ND2F U2297 ( .I1(n920), .I2(n683), .O(n2157) );
  MOAI1H U2298 ( .A1(n677), .A2(n676), .B1(n2151), .B2(n2150), .O(n2154) );
  NR2 U2299 ( .I1(n2150), .I2(n2151), .O(n676) );
  XOR2H U2300 ( .I1(n2124), .I2(n919), .O(n677) );
  XNR2H U2301 ( .I1(weights[62]), .I2(n622), .O(n2120) );
  OAI12H U2302 ( .B1(n1129), .B2(n1128), .A1(n1127), .O(n2307) );
  NR2T U2303 ( .I1(n527), .I2(n1668), .O(n680) );
  OA12P U2304 ( .B1(n1575), .B2(n153), .A1(n682), .O(n681) );
  NR2F U2305 ( .I1(n2104), .I2(n1454), .O(n2744) );
  NR2F U2306 ( .I1(n2087), .I2(n2091), .O(n1883) );
  BUF12CK U2307 ( .I(buffer_data[17]), .O(n1022) );
  MOAI1H U2308 ( .A1(n709), .A2(n1621), .B1(n973), .B2(n1623), .O(n1622) );
  NR2F U2309 ( .I1(n1206), .I2(n1205), .O(n1999) );
  XNR2H U2310 ( .I1(n1664), .I2(n1665), .O(n1330) );
  XNR2H U2311 ( .I1(n1653), .I2(n685), .O(n1664) );
  INV3 U2312 ( .I(n2656), .O(n735) );
  MAO222P U2313 ( .A1(n1536), .B1(n1537), .C1(n1215), .O(n1543) );
  XNR2H U2314 ( .I1(n2323), .I2(n1405), .O(n2313) );
  OAI12HP U2315 ( .B1(n590), .B2(n1791), .A1(n1790), .O(n1432) );
  OR2T U2316 ( .I1(n1791), .I2(n2544), .O(n1790) );
  ND3HT U2317 ( .I1(n686), .I2(n1332), .I3(n1433), .O(n1175) );
  NR2P U2318 ( .I1(n2791), .I2(n2800), .O(n2110) );
  MOAI1H U2319 ( .A1(n1300), .A2(n911), .B1(n1485), .B2(n728), .O(n1801) );
  INV3 U2320 ( .I(n787), .O(n786) );
  NR2F U2321 ( .I1(n1962), .I2(n1018), .O(n1888) );
  ND2 U2322 ( .I1(n182), .I2(n2801), .O(n2805) );
  ND2P U2323 ( .I1(n1884), .I2(n1831), .O(n1297) );
  OAI12HT U2324 ( .B1(n2087), .B2(n2090), .A1(n2088), .O(n1884) );
  OAI12H U2325 ( .B1(n690), .B2(n689), .A1(n688), .O(n1844) );
  NR2F U2326 ( .I1(n210), .I2(n2140), .O(n2351) );
  XNR2HP U2327 ( .I1(n2141), .I2(n1142), .O(n2140) );
  XNR2H U2328 ( .I1(n938), .I2(n2148), .O(n974) );
  BUF12CK U2329 ( .I(n2127), .O(n2474) );
  INV2 U2330 ( .I(n254), .O(n1490) );
  OAI22H U2331 ( .A1(n1507), .A2(n408), .B1(n533), .B2(n1487), .O(n1562) );
  XNR2HP U2332 ( .I1(n2168), .I2(n1218), .O(n2347) );
  OAI22H U2333 ( .A1(n2186), .A2(n561), .B1(n615), .B2(n2304), .O(n2301) );
  NR2 U2334 ( .I1(n2382), .I2(n2381), .O(n692) );
  XNR2H U2335 ( .I1(n2380), .I2(n694), .O(n2404) );
  XNR2H U2336 ( .I1(n2382), .I2(n2381), .O(n694) );
  MAO222P U2337 ( .A1(n1592), .B1(n1593), .C1(n925), .O(n1821) );
  OAI22H U2338 ( .A1(n780), .A2(n2454), .B1(n1589), .B2(n639), .O(n1592) );
  INV2 U2339 ( .I(n2777), .O(n1051) );
  ND3HT U2340 ( .I1(n1016), .I2(n1146), .I3(n1265), .O(n1208) );
  XNR2H U2341 ( .I1(n2333), .I2(n2331), .O(n833) );
  MOAI1H U2342 ( .A1(n763), .A2(n214), .B1(n2644), .B2(n2645), .O(n2651) );
  ND3 U2343 ( .I1(n569), .I2(n2546), .I3(n2545), .O(n2547) );
  BUF1S U2344 ( .I(n2350), .O(n700) );
  XNR2H U2345 ( .I1(n2496), .I2(n1399), .O(n2484) );
  ND3P U2346 ( .I1(n656), .I2(n530), .I3(n2334), .O(n2335) );
  NR2F U2347 ( .I1(n2555), .I2(n2556), .O(n2554) );
  XNR2H U2348 ( .I1(n2583), .I2(n701), .O(n1380) );
  NR2F U2349 ( .I1(n2649), .I2(n2656), .O(n2650) );
  BUF6CK U2350 ( .I(n2113), .O(n1523) );
  NR2P U2351 ( .I1(n969), .I2(n968), .O(\CHIPS[1].core/temp_pconv[16] ) );
  XNR2H U2352 ( .I1(n845), .I2(n703), .O(n1554) );
  XNR2HP U2353 ( .I1(n1554), .I2(n1032), .O(n985) );
  INV8CK U2354 ( .I(buffer_data[9]), .O(n1277) );
  XNR2H U2355 ( .I1(n1501), .I2(n1502), .O(n703) );
  NR2F U2356 ( .I1(n2727), .I2(n2593), .O(n1192) );
  INV3 U2357 ( .I(weights[64]), .O(n3190) );
  INV2 U2358 ( .I(n2609), .O(n711) );
  ND2P U2359 ( .I1(n1409), .I2(n1408), .O(n2479) );
  OAI12HP U2360 ( .B1(n2727), .B2(n2732), .A1(n2728), .O(n1191) );
  ND2F U2361 ( .I1(n1148), .I2(n1309), .O(n789) );
  XNR2HP U2362 ( .I1(n2470), .I2(n1225), .O(n2326) );
  XOR2HP U2363 ( .I1(n1269), .I2(n145), .O(n2130) );
  ND2F U2364 ( .I1(n2326), .I2(n2325), .O(n2519) );
  INV4 U2365 ( .I(n2356), .O(n2358) );
  ND2 U2366 ( .I1(n2732), .I2(n2730), .O(n2521) );
  ND2F U2367 ( .I1(n1768), .I2(n1769), .O(n1302) );
  NR2F U2368 ( .I1(n1701), .I2(n1700), .O(n1863) );
  OAI22H U2369 ( .A1(n2202), .A2(n615), .B1(n561), .B2(n2203), .O(n960) );
  NR2F U2370 ( .I1(n2355), .I2(n2354), .O(n2412) );
  INV2 U2371 ( .I(n1738), .O(n1735) );
  INV2 U2372 ( .I(n2426), .O(n1180) );
  HA1P U2373 ( .A(n1504), .B(n1503), .C(n1558), .S(n1498) );
  INV3 U2374 ( .I(n1553), .O(n1555) );
  XNR2HP U2375 ( .I1(n1498), .I2(n952), .O(n1514) );
  XNR2H U2376 ( .I1(n570), .I2(n111), .O(n2608) );
  XNR2H U2377 ( .I1(n2453), .I2(n2452), .O(n798) );
  OAI22HP U2378 ( .A1(n591), .A2(n1762), .B1(n1761), .B2(n609), .O(n1770) );
  XOR2H U2379 ( .I1(n929), .I2(weights[138]), .O(n1587) );
  NR2F U2380 ( .I1(n783), .I2(n1599), .O(n1882) );
  OAI12HP U2381 ( .B1(n951), .B2(n950), .A1(n949), .O(n1553) );
  INV2 U2382 ( .I(n1905), .O(n1906) );
  NR2F U2383 ( .I1(n3452), .I2(n1331), .O(n811) );
  BUF1S U2384 ( .I(n2500), .O(n716) );
  OAI12HP U2385 ( .B1(n1849), .B2(n1848), .A1(n1847), .O(n1850) );
  XOR2H U2386 ( .I1(n566), .I2(weights[121]), .O(n1711) );
  XNR2H U2387 ( .I1(n817), .I2(n2198), .O(n813) );
  ND2P U2388 ( .I1(n965), .I2(n2599), .O(n964) );
  NR2T U2389 ( .I1(n1324), .I2(n2296), .O(n775) );
  XNR2H U2390 ( .I1(n2697), .I2(n2696), .O(n717) );
  MOAI1H U2391 ( .A1(n719), .A2(n718), .B1(n2696), .B2(n2697), .O(n2690) );
  OAI12H U2392 ( .B1(n1140), .B2(n1141), .A1(n2701), .O(n720) );
  INV3CK U2393 ( .I(n722), .O(n721) );
  NR2F U2394 ( .I1(n2094), .I2(n2093), .O(n723) );
  OAI12HP U2395 ( .B1(n1159), .B2(n1158), .A1(n1157), .O(n1028) );
  XNR2HP U2396 ( .I1(n912), .I2(n914), .O(n1550) );
  AOI12HT U2397 ( .B1(n1171), .B2(n2771), .A1(n1012), .O(n857) );
  OR2T U2398 ( .I1(n2054), .I2(n2055), .O(n2771) );
  OA12P U2399 ( .B1(n2428), .B2(n2427), .A1(n2426), .O(n2432) );
  AOI12H U2400 ( .B1(n2596), .B2(n2730), .A1(n1341), .O(n1340) );
  ND2T U2401 ( .I1(n2340), .I2(n2339), .O(n725) );
  FA1 U2402 ( .A(n2215), .B(n2216), .CI(n2214), .CO(n2224), .S(n2227) );
  INV2 U2403 ( .I(n2155), .O(n994) );
  INV2 U2404 ( .I(n1507), .O(n1326) );
  NR2F U2405 ( .I1(n731), .I2(n732), .O(n1609) );
  XNR2H U2406 ( .I1(n1651), .I2(n1389), .O(n1655) );
  MOAI1H U2407 ( .A1(n734), .A2(n733), .B1(n2659), .B2(n2660), .O(n2668) );
  ND2P U2408 ( .I1(n735), .I2(n2711), .O(n1419) );
  XNR2HP U2409 ( .I1(n737), .I2(n736), .O(n1348) );
  XOR2H U2410 ( .I1(n1362), .I2(n2289), .O(n737) );
  MOAI1H U2411 ( .A1(n742), .A2(n1363), .B1(n2284), .B2(n1413), .O(n2290) );
  OAI12H U2412 ( .B1(n187), .B2(n2288), .A1(n2275), .O(n741) );
  OAI12H U2413 ( .B1(n745), .B2(n744), .A1(n743), .O(n2077) );
  OAI22H U2414 ( .A1(n2574), .A2(n747), .B1(n611), .B2(n2572), .O(n2578) );
  AOI12H U2415 ( .B1(n747), .B2(n611), .A1(n2572), .O(n2566) );
  ND3HT U2416 ( .I1(n1178), .I2(n1846), .I3(n748), .O(n1853) );
  AOI12HP U2417 ( .B1(n748), .B2(n1851), .A1(n1850), .O(n1852) );
  NR2F U2418 ( .I1(n1845), .I2(n1849), .O(n748) );
  ND2F U2419 ( .I1(n2652), .I2(n749), .O(n2653) );
  MOAI1H U2420 ( .A1(n1313), .A2(n750), .B1(n1634), .B2(n751), .O(n1660) );
  BUF2 U2421 ( .I(n834), .O(n752) );
  INV2 U2422 ( .I(n834), .O(n1414) );
  XNR2HP U2423 ( .I1(n753), .I2(n1871), .O(n834) );
  OR2T U2424 ( .I1(n2668), .I2(n592), .O(n2720) );
  MOAI1H U2425 ( .A1(n757), .A2(n756), .B1(n1777), .B2(n1776), .O(n1781) );
  OR2T U2426 ( .I1(n1861), .I2(n1862), .O(n1935) );
  NR2F U2427 ( .I1(n2490), .I2(n2488), .O(n758) );
  AOI12HT U2428 ( .B1(n759), .B2(n2757), .A1(n221), .O(n2748) );
  ND2P U2429 ( .I1(n2246), .I2(n760), .O(n2252) );
  NR2P U2430 ( .I1(n2645), .I2(n2644), .O(n763) );
  BUF6 U2431 ( .I(buffer_data[3]), .O(n764) );
  INV1 U2432 ( .I(n771), .O(n768) );
  ND2P U2433 ( .I1(n770), .I2(n860), .O(n769) );
  INV2 U2434 ( .I(n492), .O(n2743) );
  AOI12HP U2435 ( .B1(n772), .B2(n2721), .A1(n1458), .O(n1259) );
  ND3HT U2436 ( .I1(n2297), .I2(n1126), .I3(n2466), .O(n772) );
  NR2F U2437 ( .I1(n775), .I2(n773), .O(n1309) );
  NR2T U2438 ( .I1(n779), .I2(n778), .O(n777) );
  NR2F U2439 ( .I1(n781), .I2(n2100), .O(n2747) );
  NR2T U2440 ( .I1(n782), .I2(n1972), .O(n1974) );
  OR2T U2441 ( .I1(n854), .I2(n253), .O(n818) );
  INV1S U2442 ( .I(n1233), .O(n843) );
  XOR2HP U2443 ( .I1(n1234), .I2(n1908), .O(n1233) );
  XNR2H U2444 ( .I1(n1518), .I2(n2320), .O(n1494) );
  XNR2HP U2445 ( .I1(n787), .I2(n1174), .O(n2108) );
  NR2F U2446 ( .I1(n1177), .I2(n1176), .O(n787) );
  ND2S U2447 ( .I1(n789), .I2(n923), .O(n2829) );
  XOR2H U2448 ( .I1(n2355), .I2(n792), .O(n1169) );
  NR2T U2449 ( .I1(n2226), .I2(n2227), .O(n2354) );
  NR2F U2450 ( .I1(n2361), .I2(n918), .O(n2355) );
  ND2F U2451 ( .I1(n2115), .I2(n794), .O(n2569) );
  NR2F U2452 ( .I1(n2561), .I2(n796), .O(n2821) );
  ND2P U2453 ( .I1(n796), .I2(n2561), .O(n2823) );
  OR2T U2454 ( .I1(n2531), .I2(n2532), .O(n851) );
  OAI12HT U2455 ( .B1(n857), .B2(n2766), .A1(n2767), .O(n2765) );
  OR2T U2456 ( .I1(n1470), .I2(n1398), .O(n800) );
  XNR2HT U2457 ( .I1(weights[135]), .I2(n623), .O(n802) );
  INV3 U2458 ( .I(n804), .O(n1970) );
  NR2F U2459 ( .I1(n1662), .I2(n1024), .O(n804) );
  NR2F U2460 ( .I1(n2080), .I2(n805), .O(n1337) );
  NR2F U2461 ( .I1(n2064), .I2(n806), .O(n1204) );
  NR2T U2462 ( .I1(n1247), .I2(n162), .O(n2230) );
  NR2F U2463 ( .I1(n1617), .I2(n1616), .O(n2065) );
  NR2F U2464 ( .I1(n1619), .I2(n1618), .O(n2063) );
  ND2T U2465 ( .I1(n886), .I2(n885), .O(n2463) );
  ND2T U2466 ( .I1(n1030), .I2(n1168), .O(n1029) );
  XNR2HP U2467 ( .I1(n2156), .I2(n2157), .O(n1023) );
  XNR2H U2468 ( .I1(n2125), .I2(n2126), .O(n919) );
  OAI22H U2469 ( .A1(n2202), .A2(n658), .B1(n615), .B2(n2197), .O(n2206) );
  XNR2HP U2470 ( .I1(n2505), .I2(n1036), .O(n2515) );
  XNR2H U2471 ( .I1(n902), .I2(n2218), .O(n1577) );
  NR2F U2472 ( .I1(n2224), .I2(n2225), .O(n2427) );
  NR2F U2473 ( .I1(n2157), .I2(n2155), .O(n993) );
  INV3 U2474 ( .I(n2068), .O(n1780) );
  ND2 U2475 ( .I1(n587), .I2(n2468), .O(n887) );
  NR2F U2476 ( .I1(n220), .I2(n613), .O(n1145) );
  AOI13HP U2477 ( .B1(n574), .B2(n1003), .B3(n1001), .A1(n999), .O(n998) );
  ND2P U2478 ( .I1(n2595), .I2(n2594), .O(n2728) );
  INV2 U2479 ( .I(n2125), .O(n921) );
  XOR2H U2480 ( .I1(n1301), .I2(n1810), .O(n1377) );
  ND2P U2481 ( .I1(n1412), .I2(n1037), .O(n1150) );
  OR2T U2482 ( .I1(n2417), .I2(n2418), .O(n1437) );
  BUF1S U2483 ( .I(n1865), .O(n824) );
  INV2 U2484 ( .I(n1909), .O(n1449) );
  BUF6 U2485 ( .I(n560), .O(n953) );
  OAI12HP U2486 ( .B1(n1968), .B2(n1467), .A1(n1440), .O(n1471) );
  ND3HT U2487 ( .I1(n826), .I2(n1356), .I3(n2434), .O(n1355) );
  OR2B1S U2488 ( .I1(n655), .B1(n622), .O(n1524) );
  AN2B1 U2489 ( .I1(n654), .B1(n1805), .O(n1537) );
  OAI22HP U2490 ( .A1(n1497), .A2(n1892), .B1(n1496), .B2(n563), .O(n1503) );
  INV6 U2491 ( .I(buffer_data[0]), .O(n1351) );
  XOR2HP U2492 ( .I1(n2257), .I2(n2256), .O(n2251) );
  ND2T U2493 ( .I1(n2514), .I2(n2513), .O(n2732) );
  INV4 U2494 ( .I(n1436), .O(n2409) );
  OR2T U2495 ( .I1(n832), .I2(n230), .O(n1000) );
  MAO222P U2496 ( .A1(n2588), .B1(n2587), .C1(n644), .O(n2580) );
  XNR2HT U2497 ( .I1(buffer_data[2]), .I2(n764), .O(n2254) );
  OAI12HP U2498 ( .B1(n1724), .B2(n189), .A1(n1723), .O(n979) );
  XNR2HS U2499 ( .I1(weights[122]), .I2(n764), .O(n1763) );
  XNR2HS U2500 ( .I1(n1428), .I2(n1923), .O(n1928) );
  OAI12H U2501 ( .B1(n838), .B2(n837), .A1(n836), .O(n2240) );
  OAI22HP U2502 ( .A1(n564), .A2(n2130), .B1(n2136), .B2(n617), .O(n1033) );
  INV8 U2503 ( .I(n622), .O(n1269) );
  AOI12HP U2504 ( .B1(n2817), .B2(n2797), .A1(n2796), .O(n2798) );
  OAI12HT U2505 ( .B1(n1100), .B2(n1099), .A1(n1098), .O(n1937) );
  XOR2HS U2506 ( .I1(n2017), .I2(n839), .O(n2021) );
  ND2P U2507 ( .I1(n2009), .I2(n1207), .O(n839) );
  NR2F U2508 ( .I1(n1882), .I2(n1886), .O(n1019) );
  NR2T U2509 ( .I1(n1577), .I2(n996), .O(n1160) );
  NR2F U2510 ( .I1(n1082), .I2(n1083), .O(n841) );
  INV6 U2511 ( .I(n2810), .O(n2817) );
  AOI12HT U2512 ( .B1(n1908), .B2(n1907), .A1(n1906), .O(n842) );
  OR2T U2513 ( .I1(n2373), .I2(n2372), .O(n2375) );
  HA1P U2514 ( .A(n2397), .B(n1472), .C(n2387), .S(n2399) );
  OR2T U2515 ( .I1(n2342), .I2(n2310), .O(n930) );
  NR2F U2516 ( .I1(n2166), .I2(n2165), .O(n2310) );
  XNR2HP U2517 ( .I1(n2209), .I2(n959), .O(n2225) );
  XNR2H U2518 ( .I1(n276), .I2(n141), .O(n1591) );
  OAI12HP U2519 ( .B1(n2598), .B2(n1039), .A1(n2597), .O(n1253) );
  XOR2H U2520 ( .I1(weights[49]), .I2(n3384), .O(n2250) );
  NR2P U2521 ( .I1(n3190), .I2(n928), .O(n2198) );
  OR2T U2522 ( .I1(n2283), .I2(n2282), .O(n2434) );
  AN2B1 U2523 ( .I1(n651), .B1(n2575), .O(n2126) );
  MAO222P U2524 ( .A1(n1560), .B1(n1562), .C1(n1561), .O(n1566) );
  NR2F U2525 ( .I1(n992), .I2(n991), .O(n2364) );
  XNR2HS U2526 ( .I1(weights[120]), .I2(n566), .O(n854) );
  OR2T U2527 ( .I1(n212), .I2(n606), .O(n1198) );
  ND3 U2528 ( .I1(n1137), .I2(n997), .I3(n1139), .O(n1136) );
  XNR2H U2529 ( .I1(n2645), .I2(n2644), .O(n884) );
  XOR2H U2530 ( .I1(weights[67]), .I2(n1247), .O(n2171) );
  MOAI1HP U2531 ( .A1(n2316), .A2(n2315), .B1(n2314), .B2(n862), .O(n2325) );
  OA12P U2532 ( .B1(n1702), .B2(n3335), .A1(n840), .O(n1706) );
  AOI12H U2533 ( .B1(n1969), .B2(n1469), .A1(n1316), .O(n1315) );
  XNR2H U2534 ( .I1(n929), .I2(n902), .O(n1939) );
  XNR2H U2535 ( .I1(n1955), .I2(n1954), .O(n1959) );
  NR2F U2536 ( .I1(n2281), .I2(n2280), .O(n2349) );
  OA12P U2537 ( .B1(n2051), .B2(n662), .A1(n2050), .O(n2052) );
  ND3HT U2538 ( .I1(n1973), .I2(n1936), .I3(n1334), .O(n1869) );
  ND2F U2539 ( .I1(n1073), .I2(n1780), .O(n1985) );
  XNR2H U2540 ( .I1(n1371), .I2(n1899), .O(n865) );
  XNR2HP U2541 ( .I1(weights[60]), .I2(n151), .O(n2119) );
  XNR2HP U2542 ( .I1(n1658), .I2(n1091), .O(n1661) );
  MAO222P U2543 ( .A1(n2581), .B1(n2582), .C1(n185), .O(n2589) );
  INV2 U2544 ( .I(n1606), .O(n1607) );
  INV2 U2545 ( .I(n1637), .O(n1639) );
  XNR2H U2546 ( .I1(n2679), .I2(n2678), .O(n2683) );
  ND2F U2547 ( .I1(n327), .I2(n2457), .O(n2458) );
  XOR2HS U2548 ( .I1(n2689), .I2(n2675), .O(n954) );
  XNR2H U2549 ( .I1(n867), .I2(n2479), .O(n2470) );
  OAI12H U2550 ( .B1(n871), .B2(n820), .A1(n2479), .O(n868) );
  MOAI1H U2551 ( .A1(n2138), .A2(n2321), .B1(n872), .B2(n197), .O(n871) );
  ND2P U2552 ( .I1(n1006), .I2(n1380), .O(n1005) );
  INV4 U2553 ( .I(n1936), .O(n1120) );
  OAI12HP U2554 ( .B1(n1506), .B2(n2569), .A1(n875), .O(n1559) );
  OR2T U2555 ( .I1(n1805), .I2(n1505), .O(n875) );
  MOAI1HP U2556 ( .A1(n408), .A2(n1495), .B1(n915), .B2(n916), .O(n1500) );
  BUF12CK U2557 ( .I(n2121), .O(n2576) );
  XNR2HP U2558 ( .I1(n1821), .I2(n1365), .O(n1189) );
  INV2 U2559 ( .I(n2731), .O(n1263) );
  MAO222P U2560 ( .A1(n2484), .B1(n2486), .C1(n2485), .O(n2556) );
  INV4 U2561 ( .I(n878), .O(n1832) );
  MOAI1 U2562 ( .A1(n561), .A2(n1635), .B1(n877), .B2(n1648), .O(n1659) );
  ND2 U2563 ( .I1(n1935), .I2(n1933), .O(n1872) );
  FA1 U2564 ( .A(n1950), .B(n925), .CI(n1948), .CO(n1951), .S(n1957) );
  XNR2HS U2565 ( .I1(n1947), .I2(n1181), .O(n1955) );
  OAI12HT U2566 ( .B1(n2756), .B2(n1058), .A1(n2748), .O(n1422) );
  ND2P U2567 ( .I1(n1052), .I2(n1543), .O(n2042) );
  XNR2HP U2568 ( .I1(n1545), .I2(n977), .O(n1052) );
  XNR2HP U2569 ( .I1(n2314), .I2(n883), .O(n2166) );
  OAI22H U2570 ( .A1(n240), .A2(n1531), .B1(n1521), .B2(n1523), .O(n1528) );
  OAI22H U2571 ( .A1(n564), .A2(n1531), .B1(n1529), .B2(n240), .O(n1536) );
  INV2 U2572 ( .I(n2285), .O(n2286) );
  INV2 U2573 ( .I(n2086), .O(n1179) );
  INV2 U2574 ( .I(n1500), .O(n951) );
  ND2 U2575 ( .I1(n2453), .I2(n2452), .O(n885) );
  OAI12H U2576 ( .B1(n2453), .B2(n2452), .A1(n2451), .O(n886) );
  OAI112HP U2577 ( .C1(n3448), .C2(n2182), .A1(n196), .B1(n2212), .O(n2170) );
  MAO222P U2578 ( .A1(n1319), .B1(n1323), .C1(n1314), .O(n2080) );
  NR2F U2579 ( .I1(n1864), .I2(n1865), .O(n1867) );
  NR2P U2580 ( .I1(n621), .I2(n3173), .O(n1793) );
  ND2T U2581 ( .I1(n1444), .I2(n1443), .O(n2878) );
  ND2 U2582 ( .I1(n1862), .I2(n1861), .O(n1933) );
  ND2 U2583 ( .I1(n2728), .I2(n2729), .O(n2734) );
  OR2T U2584 ( .I1(n1117), .I2(n253), .O(n889) );
  XNR2HS U2585 ( .I1(n1194), .I2(n2425), .O(n1185) );
  FA1 U2586 ( .A(n2686), .B(n927), .CI(n2684), .CO(n2678), .S(n2697) );
  OR2T U2587 ( .I1(n2230), .I2(n2231), .O(n2237) );
  ND2T U2588 ( .I1(n1491), .I2(n986), .O(n1848) );
  INV3 U2589 ( .I(n2347), .O(n1324) );
  ND2P U2590 ( .I1(n2464), .I2(n2463), .O(n2534) );
  MAO222P U2591 ( .A1(n1655), .B1(n1657), .C1(n1656), .O(n1665) );
  BUF1S U2592 ( .I(n2836), .O(n892) );
  ND2T U2593 ( .I1(n2227), .I2(n1246), .O(n2353) );
  XNR2H U2594 ( .I1(n1022), .I2(weights[142]), .O(n1643) );
  INV2 U2595 ( .I(n1608), .O(n1610) );
  INV4 U2596 ( .I(n1661), .O(n1124) );
  NR2F U2597 ( .I1(n1660), .I2(n1661), .O(n1460) );
  OR2T U2598 ( .I1(n1364), .I2(n1816), .O(n894) );
  AOI12HT U2599 ( .B1(n2044), .B2(n2043), .A1(n1544), .O(n2062) );
  AOI22H U2600 ( .A1(n1278), .A2(n1280), .B1(n716), .B2(n2501), .O(n896) );
  BUF1CK U2601 ( .I(buffer_data[6]), .O(n897) );
  OAI12H U2602 ( .B1(n900), .B2(n899), .A1(n898), .O(n1880) );
  BUF4 U2603 ( .I(weights[143]), .O(n902) );
  OR2T U2604 ( .I1(n1281), .I2(n2609), .O(n2337) );
  XNR2HP U2605 ( .I1(n1301), .I2(n1900), .O(n1371) );
  XOR2H U2606 ( .I1(n2421), .I2(n2420), .O(n942) );
  XNR2H U2607 ( .I1(n2414), .I2(n2428), .O(n2420) );
  OAI12H U2608 ( .B1(n907), .B2(n906), .A1(n904), .O(n2692) );
  ND2P U2609 ( .I1(n2667), .I2(n905), .O(n904) );
  ND2P U2610 ( .I1(n1310), .I2(n1193), .O(n909) );
  ND3HT U2611 ( .I1(n1004), .I2(n1002), .I3(n1291), .O(n910) );
  AOI13HT U2612 ( .B1(n1469), .B2(n122), .B3(n1969), .A1(n1471), .O(n1977) );
  OAI12HT U2613 ( .B1(n2062), .B2(n2059), .A1(n2060), .O(n1969) );
  ND2F U2614 ( .I1(n1192), .I2(n2731), .O(n2598) );
  INV6CK U2615 ( .I(n2598), .O(n1003) );
  NR2F U2616 ( .I1(n862), .I2(n2314), .O(n2316) );
  ND2P U2617 ( .I1(n1801), .I2(n1109), .O(n1108) );
  FA1 U2618 ( .A(n2637), .B(n2636), .CI(n2635), .CO(n2641), .S(n2648) );
  AOI12HT U2619 ( .B1(n2765), .B2(n2763), .A1(n1423), .O(n2756) );
  XOR2H U2620 ( .I1(n1547), .I2(n1548), .O(n912) );
  NR2T U2621 ( .I1(n1548), .I2(n819), .O(n913) );
  XNR2H U2622 ( .I1(n1499), .I2(n1500), .O(n952) );
  INV3CK U2623 ( .I(n758), .O(n917) );
  NR2F U2624 ( .I1(n1444), .I2(n1443), .O(n2877) );
  XNR2H U2625 ( .I1(n1185), .I2(n2442), .O(n1184) );
  INV2 U2626 ( .I(weights[141]), .O(n3322) );
  INV2 U2627 ( .I(n1074), .O(n2069) );
  OA12P U2628 ( .B1(n2810), .B2(n831), .A1(n502), .O(n2811) );
  XNR2H U2629 ( .I1(n1595), .I2(n934), .O(n1583) );
  INV2 U2630 ( .I(n1882), .O(n1831) );
  XNR2HP U2631 ( .I1(n522), .I2(n873), .O(n1495) );
  BUF6CK U2632 ( .I(n1949), .O(n925) );
  XOR2HP U2633 ( .I1(n1974), .I2(n1973), .O(n1015) );
  INV2 U2634 ( .I(n2762), .O(n1423) );
  BUF4 U2635 ( .I(n2685), .O(n927) );
  HA1P U2636 ( .A(n1473), .B(n2028), .C(n2033), .S(n2031) );
  OA12P U2637 ( .B1(n2786), .B2(n2032), .A1(n2787), .O(n2785) );
  NR2T U2638 ( .I1(n568), .I2(n3107), .O(n2528) );
  XNR2HS U2639 ( .I1(n2528), .I2(n1131), .O(n948) );
  ND3HT U2640 ( .I1(n2311), .I2(n2167), .I3(n1412), .O(n931) );
  ND2T U2641 ( .I1(n974), .I2(n2147), .O(n2408) );
  XNR2HP U2642 ( .I1(n1220), .I2(n1221), .O(n1083) );
  OAI12H U2643 ( .B1(n874), .B2(n2195), .A1(n2177), .O(n2187) );
  FA1 U2644 ( .A(n1671), .B(n1669), .CI(n1670), .CO(n1677), .S(n1663) );
  NR2F U2645 ( .I1(n986), .I2(n1491), .O(n1845) );
  INV2 U2646 ( .I(n2824), .O(n2867) );
  INV2 U2647 ( .I(n2300), .O(n2178) );
  ND2 U2648 ( .I1(n934), .I2(n1822), .O(n933) );
  OAI12H U2649 ( .B1(n561), .B2(n1591), .A1(n1590), .O(n1822) );
  ND3HT U2650 ( .I1(n2717), .I2(n2715), .I3(n2716), .O(n2740) );
  INV3CK U2651 ( .I(n1280), .O(n1266) );
  ND2F U2652 ( .I1(n936), .I2(n1280), .O(n2649) );
  XNR2H U2653 ( .I1(n2149), .I2(n1170), .O(n938) );
  OAI12H U2654 ( .B1(n941), .B2(n940), .A1(n939), .O(n2439) );
  XOR2H U2655 ( .I1(n2419), .I2(n942), .O(n2418) );
  BUF1S U2656 ( .I(n2379), .O(n944) );
  BUF1S U2657 ( .I(n2468), .O(n945) );
  INV2 U2658 ( .I(n2262), .O(n2260) );
  MOAI1H U2659 ( .A1(n1169), .A2(n1165), .B1(n2407), .B2(n1164), .O(n2417) );
  FA1 U2660 ( .A(n2389), .B(n2388), .CI(n2387), .CO(n2380), .S(n2402) );
  BUF1S U2661 ( .I(n1643), .O(n947) );
  OAI12HP U2662 ( .B1(n2093), .B2(n2094), .A1(n1972), .O(n1098) );
  ND2P U2663 ( .I1(n1936), .I2(n1937), .O(n1870) );
  ND2T U2664 ( .I1(n1401), .I2(n1400), .O(n2537) );
  XNR2H U2665 ( .I1(n1132), .I2(n948), .O(n2523) );
  OAI22HP U2666 ( .A1(n2288), .A2(n684), .B1(n187), .B2(n2287), .O(n2292) );
  INV2 U2667 ( .I(n2524), .O(n1396) );
  INV2 U2668 ( .I(n1135), .O(n1134) );
  NR2P U2669 ( .I1(n3211), .I2(n150), .O(n1771) );
  ND2T U2670 ( .I1(n1468), .I2(n1552), .O(n1440) );
  OAI12H U2671 ( .B1(n1499), .B2(n1500), .A1(n1498), .O(n949) );
  INV2 U2672 ( .I(n2703), .O(n1138) );
  OAI22H U2673 ( .A1(n2163), .A2(n562), .B1(n611), .B2(n2317), .O(n2323) );
  INV2 U2674 ( .I(n2596), .O(n2733) );
  XNR2H U2675 ( .I1(n1562), .I2(n1561), .O(n961) );
  OAI22H U2676 ( .A1(n2139), .A2(n408), .B1(n2137), .B2(n641), .O(n2141) );
  INV8 U2677 ( .I(n1977), .O(n1178) );
  ND2 U2678 ( .I1(n2878), .I2(n586), .O(n2881) );
  OAI22H U2679 ( .A1(n2118), .A2(n2475), .B1(n2474), .B2(n2119), .O(n2125) );
  NR2F U2680 ( .I1(n2520), .I2(n1262), .O(n1044) );
  INV3 U2681 ( .I(n2341), .O(n1412) );
  OAI12H U2682 ( .B1(n967), .B2(n966), .A1(n964), .O(n2603) );
  NR2T U2683 ( .I1(n2743), .I2(n2742), .O(n968) );
  INV6CK U2684 ( .I(n1343), .O(n1312) );
  INV3 U2685 ( .I(n1222), .O(n1084) );
  NR2F U2686 ( .I1(n1983), .I2(n1971), .O(n1104) );
  NR2F U2687 ( .I1(n2813), .I2(n2806), .O(n2793) );
  OAI12H U2688 ( .B1(n1453), .B2(n234), .A1(n970), .O(n1599) );
  OR2T U2689 ( .I1(n1551), .I2(n1290), .O(n1469) );
  BUF6CK U2690 ( .I(n2793), .O(n2803) );
  NR2F U2691 ( .I1(n2147), .I2(n974), .O(n1436) );
  INV3 U2692 ( .I(buffer_data[8]), .O(n2114) );
  OAI12HP U2693 ( .B1(n1060), .B2(n976), .A1(n975), .O(n2513) );
  XNR2H U2694 ( .I1(n1546), .I2(n1239), .O(n977) );
  OAI22H U2695 ( .A1(n1530), .A2(n2120), .B1(n2162), .B2(n616), .O(n978) );
  XOR2HP U2696 ( .I1(n2449), .I2(n982), .O(n1267) );
  MOAI1H U2697 ( .A1(n981), .A2(n2450), .B1(n982), .B2(n2449), .O(n2559) );
  NR2 U2698 ( .I1(n2449), .I2(n982), .O(n981) );
  XNR2HP U2699 ( .I1(n1034), .I2(n574), .O(n982) );
  NR2F U2700 ( .I1(n1552), .I2(n1468), .O(n1968) );
  INV2 U2701 ( .I(n1515), .O(n984) );
  XNR2HP U2702 ( .I1(n1553), .I2(n985), .O(n1468) );
  XNR2H U2703 ( .I1(n988), .I2(n2601), .O(n987) );
  AOI12HS U2704 ( .B1(n1386), .B2(n2589), .A1(n1384), .O(n989) );
  NR2F U2705 ( .I1(n1381), .I2(n2597), .O(n1006) );
  XOR2HP U2706 ( .I1(n1594), .I2(n1583), .O(n1453) );
  NR2F U2707 ( .I1(n1009), .I2(n1008), .O(n2064) );
  NR2F U2708 ( .I1(n2071), .I2(n2072), .O(n2766) );
  INV3 U2709 ( .I(n2770), .O(n1012) );
  ND2P U2710 ( .I1(n585), .I2(n2054), .O(n2770) );
  ND2T U2711 ( .I1(n2038), .I2(n2037), .O(n2773) );
  NR2F U2712 ( .I1(n2037), .I2(n2038), .O(n1448) );
  ND2S U2713 ( .I1(n1749), .I2(n1750), .O(n1013) );
  INV3 U2714 ( .I(weights[136]), .O(n3195) );
  XNR2H U2715 ( .I1(buffer_data[17]), .I2(weights[143]), .O(n1331) );
  XNR2HP U2716 ( .I1(n2155), .I2(n1023), .O(n1038) );
  XOR2H U2717 ( .I1(n1403), .I2(n1402), .O(n1149) );
  NR2F U2718 ( .I1(n1028), .I2(n1027), .O(n2087) );
  XNR2HP U2719 ( .I1(n1674), .I2(n1452), .O(n1027) );
  ND2F U2720 ( .I1(n1029), .I2(n2352), .O(n2410) );
  MOAI1H U2721 ( .A1(n1555), .A2(n1031), .B1(n1554), .B2(n1032), .O(n1328) );
  XNR2HP U2722 ( .I1(n2506), .I2(n1061), .O(n1036) );
  XOR2H U2723 ( .I1(n185), .I2(n2318), .O(n2471) );
  BUF2 U2724 ( .I(n2342), .O(n1037) );
  NR2F U2725 ( .I1(n2154), .I2(n1038), .O(n2341) );
  XNR2H U2726 ( .I1(weights[130]), .I2(n164), .O(n1489) );
  XNR2H U2727 ( .I1(weights[57]), .I2(n164), .O(n2163) );
  XNR2H U2728 ( .I1(weights[60]), .I2(n165), .O(n2508) );
  XNR2H U2729 ( .I1(n145), .I2(n165), .O(n2317) );
  XNR2H U2730 ( .I1(n1518), .I2(n164), .O(n1482) );
  XNR2H U2731 ( .I1(n707), .I2(n2565), .O(n2572) );
  XNR2H U2732 ( .I1(n166), .I2(n2571), .O(n2577) );
  XNR2H U2733 ( .I1(n1042), .I2(n1520), .O(n1496) );
  XNR2H U2734 ( .I1(n165), .I2(n1837), .O(n1804) );
  OAI12H U2735 ( .B1(n2319), .B2(n1050), .A1(n206), .O(n1049) );
  INV2 U2736 ( .I(n1558), .O(n1054) );
  MOAI1HP U2737 ( .A1(n1054), .A2(n1053), .B1(n1559), .B2(n1057), .O(n1056) );
  XNR2H U2738 ( .I1(n1563), .I2(n1056), .O(n1055) );
  INV2 U2739 ( .I(n1422), .O(n2753) );
  XOR2H U2740 ( .I1(n1977), .I2(n1976), .O(n1095) );
  OAI12H U2741 ( .B1(n1066), .B2(n1064), .A1(n1063), .O(n1861) );
  OAI12H U2742 ( .B1(n672), .B2(n1065), .A1(n1855), .O(n1063) );
  XNR2HP U2743 ( .I1(n2714), .I2(n1253), .O(n1069) );
  NR2F U2744 ( .I1(n1549), .I2(n1550), .O(n2059) );
  MAO222P U2745 ( .A1(n1545), .B1(n1239), .C1(n1546), .O(n1549) );
  XNR2HS U2746 ( .I1(n1075), .I2(n2070), .O(n2073) );
  NR2T U2747 ( .I1(n610), .I2(n1754), .O(n1077) );
  OAI12H U2748 ( .B1(n565), .B2(n1352), .A1(n532), .O(n2025) );
  XNR2H U2749 ( .I1(n1081), .I2(n1080), .O(n1881) );
  MAO222 U2750 ( .A1(n1956), .B1(n1957), .C1(n1081), .O(n1958) );
  OAI12H U2751 ( .B1(n1367), .B2(n1369), .A1(n1368), .O(n1081) );
  ND2S U2752 ( .I1(n1953), .I2(n934), .O(n1368) );
  OR2T U2753 ( .I1(n1825), .I2(n1824), .O(n1953) );
  OR2T U2754 ( .I1(n2035), .I2(n2036), .O(n2778) );
  NR2F U2755 ( .I1(n1084), .I2(n1085), .O(n1221) );
  INV2 U2756 ( .I(n2008), .O(n2009) );
  ND3P U2757 ( .I1(n656), .I2(n530), .I3(n1704), .O(n1689) );
  NR2T U2758 ( .I1(n2266), .I2(n2265), .O(n2281) );
  MAO222P U2759 ( .A1(n1658), .B1(n1092), .C1(n1659), .O(n1662) );
  ND2F U2760 ( .I1(n1351), .I2(n282), .O(n1353) );
  FA1 U2761 ( .A(n2058), .B(n2057), .CI(n2056), .CO(n2071), .S(n2055) );
  NR2P U2762 ( .I1(n543), .I2(n3254), .O(n1714) );
  OAI12HT U2763 ( .B1(n2821), .B2(n2865), .A1(n2823), .O(n2562) );
  ND2P U2764 ( .I1(n2655), .I2(n2654), .O(n2711) );
  NR2T U2765 ( .I1(n1093), .I2(n1094), .O(n2066) );
  MOAI1HT U2766 ( .A1(n1717), .A2(n1096), .B1(n1451), .B2(n1733), .O(n2093) );
  XNR2HP U2767 ( .I1(n1733), .I2(n1097), .O(n1285) );
  AOI12H U2768 ( .B1(n1937), .B2(n1798), .A1(n1101), .O(n1799) );
  XNR2H U2769 ( .I1(n858), .I2(n1714), .O(n1102) );
  INV3CK U2770 ( .I(n1802), .O(n1110) );
  XOR2H U2771 ( .I1(n858), .I2(n1699), .O(n1112) );
  MOAI1H U2772 ( .A1(n1113), .A2(n1114), .B1(n1699), .B2(n642), .O(n1794) );
  NR2 U2773 ( .I1(n1699), .I2(n1919), .O(n1114) );
  ND2 U2774 ( .I1(n1230), .I2(n1115), .O(n1400) );
  OAI12H U2775 ( .B1(n2337), .B2(n2336), .A1(n1116), .O(n1115) );
  NR2F U2776 ( .I1(n1797), .I2(n1796), .O(n1865) );
  NR2F U2777 ( .I1(n2239), .I2(n2238), .O(n2430) );
  NR2F U2778 ( .I1(n1125), .I2(n1124), .O(n1322) );
  OAI12HS U2779 ( .B1(n1130), .B2(n2299), .A1(n2298), .O(n1127) );
  INV1S U2780 ( .I(n1130), .O(n1129) );
  ND2 U2781 ( .I1(n1396), .I2(n1397), .O(n1135) );
  NR2T U2782 ( .I1(n2700), .I2(n2699), .O(n2709) );
  OR2T U2783 ( .I1(n2703), .I2(n2710), .O(n1140) );
  MOAI1H U2784 ( .A1(n724), .A2(n1144), .B1(n2141), .B2(n1143), .O(n2147) );
  OR2T U2785 ( .I1(n1145), .I2(n2142), .O(n1143) );
  XNR2H U2786 ( .I1(n526), .I2(n159), .O(n1147) );
  NR2F U2787 ( .I1(n1309), .I2(n1148), .O(n1282) );
  XNR2H U2788 ( .I1(n2443), .I2(n1149), .O(n1255) );
  XNR2H U2789 ( .I1(n945), .I2(n1151), .O(n2443) );
  OA12P U2790 ( .B1(n2370), .B2(n2367), .A1(n2368), .O(n2363) );
  NR2T U2791 ( .I1(n640), .I2(n2233), .O(n1245) );
  OAI12H U2792 ( .B1(n1677), .B2(n1678), .A1(n595), .O(n1157) );
  NR2F U2793 ( .I1(n1160), .I2(n1578), .O(n1597) );
  MOAI1HP U2794 ( .A1(n1162), .A2(n1161), .B1(n2101), .B2(n1466), .O(n2104) );
  XOR2H U2795 ( .I1(n2229), .I2(n2228), .O(n2236) );
  ND2 U2796 ( .I1(n1165), .I2(n1169), .O(n1164) );
  XNR2H U2797 ( .I1(n1168), .I2(n1166), .O(n1165) );
  NR2T U2798 ( .I1(n1167), .I2(n2351), .O(n1166) );
  MAO222 U2799 ( .A1(n2148), .B1(n1170), .C1(n2149), .O(n2153) );
  XNR2HS U2800 ( .I1(n1171), .I2(n2772), .O(\CHIPS[0].core/temp_pconv[5] ) );
  NR2T U2801 ( .I1(n1180), .I2(n2427), .O(n2414) );
  OR2T U2802 ( .I1(n2339), .I2(n2340), .O(n1280) );
  XNR2H U2803 ( .I1(n2441), .I2(n1184), .O(n2440) );
  MAO222 U2804 ( .A1(n2442), .B1(n2441), .C1(n1185), .O(n2444) );
  ND3HT U2805 ( .I1(n1186), .I2(n2737), .I3(n1187), .O(n2739) );
  NR2F U2806 ( .I1(n3452), .I2(n1390), .O(n1188) );
  XNR2HT U2807 ( .I1(n143), .I2(n1022), .O(n1390) );
  ND2 U2808 ( .I1(n1973), .I2(n1334), .O(n1190) );
  INV3 U2809 ( .I(n2534), .O(n1238) );
  NR2T U2810 ( .I1(n1773), .I2(n1772), .O(n2049) );
  ND2 U2811 ( .I1(n1563), .I2(n1056), .O(n1200) );
  XNR2H U2812 ( .I1(n1213), .I2(n2293), .O(n1212) );
  OR2T U2813 ( .I1(n2390), .I2(n2391), .O(n2394) );
  ND2P U2814 ( .I1(n1344), .I2(n1345), .O(n2384) );
  XOR2HP U2815 ( .I1(n2347), .I2(n2348), .O(n1252) );
  NR2T U2816 ( .I1(n1220), .I2(n1221), .O(n1534) );
  OR2T U2817 ( .I1(n1532), .I2(n1533), .O(n1222) );
  OAI12HP U2818 ( .B1(n2707), .B2(n2708), .A1(n2706), .O(n1224) );
  OAI12H U2819 ( .B1(n557), .B2(n1228), .A1(n2512), .O(n1226) );
  ND2 U2820 ( .I1(n2368), .I2(n1229), .O(n2369) );
  NR2T U2821 ( .I1(n1266), .I2(n2557), .O(n1268) );
  INV3 U2822 ( .I(n2842), .O(n1256) );
  ND2T U2823 ( .I1(n2238), .I2(n2239), .O(n1257) );
  NR3HP U2824 ( .I1(n1238), .I2(n1236), .I3(n1237), .O(n1235) );
  INV3CK U2825 ( .I(n1244), .O(n2397) );
  MXL2HS U2826 ( .A(n1247), .B(n3444), .S(n3451), .OB(n69) );
  NR2F U2827 ( .I1(n2712), .I2(n2656), .O(n1292) );
  AOI12HT U2828 ( .B1(n2725), .B2(n2653), .A1(n2723), .O(n2712) );
  NR2F U2829 ( .I1(n1250), .I2(n1249), .O(n2725) );
  ND2F U2830 ( .I1(n2446), .I2(n2445), .O(n2831) );
  MOAI1HP U2831 ( .A1(n1025), .A2(n1026), .B1(n1251), .B2(n2443), .O(n2445) );
  XNR2HP U2832 ( .I1(n2296), .I2(n1252), .O(n2446) );
  OR2T U2833 ( .I1(n2444), .I2(n1255), .O(n1434) );
  NR2P U2834 ( .I1(n2429), .I2(n2430), .O(n2431) );
  ND3HT U2835 ( .I1(n1272), .I2(n1271), .I3(n1270), .O(n1444) );
  XNR2H U2836 ( .I1(weights[60]), .I2(n622), .O(n2135) );
  XNR2HT U2837 ( .I1(buffer_data[13]), .I2(n115), .O(n2116) );
  XNR2H U2838 ( .I1(buffer_data[5]), .I2(buffer_data[4]), .O(n2609) );
  XNR2H U2839 ( .I1(n1413), .I2(n1361), .O(n2282) );
  NR2F U2840 ( .I1(n1283), .I2(n1285), .O(n1972) );
  ND2T U2841 ( .I1(n797), .I2(n2721), .O(n1287) );
  XNR2H U2842 ( .I1(weights[54]), .I2(n152), .O(n2334) );
  XOR2H U2843 ( .I1(n140), .I2(n1736), .O(n2264) );
  XOR2H U2844 ( .I1(n108), .I2(n1736), .O(n1739) );
  XOR2HS U2845 ( .I1(weights[121]), .I2(n1736), .O(n1764) );
  MXL2HS U2846 ( .A(n1295), .B(n840), .S(n3382), .OB(n71) );
  INV1S U2847 ( .I(i_data[3]), .O(n1295) );
  NR2 U2848 ( .I1(n1810), .I2(n728), .O(n1299) );
  NR2F U2849 ( .I1(n1487), .I2(n1425), .O(n1301) );
  NR2T U2850 ( .I1(n1781), .I2(n1782), .O(n1982) );
  MOAI1HP U2851 ( .A1(n188), .A2(n1739), .B1(n331), .B2(n1304), .O(n1768) );
  ND2 U2852 ( .I1(n1796), .I2(n1797), .O(n1934) );
  INV1S U2853 ( .I(n2297), .O(n1311) );
  NR2T U2854 ( .I1(n1318), .I2(n844), .O(n1317) );
  NR2T U2855 ( .I1(n1328), .I2(n1567), .O(n1975) );
  MAO222 U2856 ( .A1(n156), .B1(n1329), .C1(n218), .O(n2496) );
  OR2T U2857 ( .I1(n1975), .I2(n2082), .O(n1815) );
  BUF2 U2858 ( .I(buffer_data[1]), .O(n1336) );
  XOR2H U2859 ( .I1(n1979), .I2(n1978), .O(n1338) );
  AOI12H U2860 ( .B1(n2885), .B2(n604), .A1(n1193), .O(n2886) );
  ND2P U2861 ( .I1(n606), .I2(n212), .O(n2050) );
  XOR2HT U2862 ( .I1(buffer_data[5]), .I2(buffer_data[6]), .O(n2488) );
  MOAI1H U2863 ( .A1(n1348), .A2(n1347), .B1(n848), .B2(n2292), .O(n2294) );
  MXL2HS U2864 ( .A(n3447), .B(n1352), .S(n3441), .OB(n64) );
  MXL2HS U2865 ( .A(n1360), .B(n1352), .S(n3383), .OB(n65) );
  INV1S U2866 ( .I(i_data[1]), .O(n1360) );
  OAI12HS U2867 ( .B1(n1595), .B2(n534), .A1(n1594), .O(n1596) );
  XNR2H U2868 ( .I1(n1822), .I2(n1597), .O(n1365) );
  XNR2H U2869 ( .I1(n1947), .I2(n1952), .O(n1956) );
  ND2 U2870 ( .I1(n1843), .I2(n1375), .O(n1372) );
  ND2 U2871 ( .I1(n1374), .I2(n1373), .O(n1901) );
  ND2 U2872 ( .I1(n1899), .I2(n1375), .O(n1374) );
  INV3CK U2873 ( .I(n1380), .O(n1379) );
  INV1S U2874 ( .I(n1387), .O(n1385) );
  XNR2H U2875 ( .I1(n2539), .I2(n2537), .O(n1393) );
  XNR2H U2876 ( .I1(n2588), .I2(n1407), .O(n2600) );
  ND2 U2877 ( .I1(n2324), .I2(n185), .O(n1408) );
  AOI12HT U2878 ( .B1(n2161), .B2(n1475), .A1(n2162), .O(n1411) );
  XNR2H U2879 ( .I1(n1787), .I2(n1416), .O(n1700) );
  NR2F U2880 ( .I1(n2747), .I2(n2744), .O(n1421) );
  OR2T U2881 ( .I1(n2077), .I2(n2078), .O(n2763) );
  ND2 U2882 ( .I1(n1860), .I2(n1431), .O(n1427) );
  XNR2H U2883 ( .I1(n1924), .I2(n1432), .O(n1428) );
  ND2 U2884 ( .I1(n1430), .I2(n1429), .O(n1925) );
  ND2 U2885 ( .I1(n1432), .I2(n540), .O(n1429) );
  ND2 U2886 ( .I1(n1923), .I2(n1431), .O(n1430) );
  ND2 U2887 ( .I1(n1434), .I2(n2834), .O(n2835) );
  INV3 U2888 ( .I(n2408), .O(n1435) );
  ND2S U2889 ( .I1(n1437), .I2(n2842), .O(n2843) );
  ND2P U2890 ( .I1(n2078), .I2(n2077), .O(n2762) );
  MOAI1H U2891 ( .A1(n1753), .A2(n1388), .B1(n1760), .B2(n740), .O(n1758) );
  XNR2H U2892 ( .I1(weights[68]), .I2(n1172), .O(n2210) );
  AOI12H U2893 ( .B1(n1703), .B2(n3335), .A1(n840), .O(n1705) );
  MXL2HS U2894 ( .A(n3444), .B(n840), .S(n3441), .OB(n70) );
  OR2T U2895 ( .I1(n1732), .I2(n1731), .O(n1451) );
  NR2F U2896 ( .I1(n2107), .I2(n2108), .O(n2800) );
  XNR2H U2897 ( .I1(n142), .I2(n1247), .O(n2457) );
  XNR2H U2898 ( .I1(weights[66]), .I2(n1247), .O(n2212) );
  ND2T U2899 ( .I1(n1550), .I2(n1549), .O(n2060) );
  NR2F U2900 ( .I1(n2559), .I2(n2560), .O(n2864) );
  NR2T U2901 ( .I1(n2221), .I2(n2222), .O(n2226) );
  INV2 U2902 ( .I(n2228), .O(n2221) );
  ND2F U2903 ( .I1(n2116), .I2(n1476), .O(n2121) );
  ND2P U2904 ( .I1(n2110), .I2(n2803), .O(n2112) );
  XNR2HT U2905 ( .I1(buffer_data[9]), .I2(buffer_data[10]), .O(n2127) );
  XNR2HP U2906 ( .I1(n2565), .I2(n623), .O(n2162) );
  XNR2H U2907 ( .I1(n1839), .I2(n873), .O(n1487) );
  AN2T U2908 ( .I1(n2374), .I2(n2375), .O(n1472) );
  BUF1 U2909 ( .I(rst_n), .O(n2948) );
  BUF1 U2910 ( .I(rst_n), .O(n2893) );
  BUF2 U2911 ( .I(weights[135]), .O(n1839) );
  FA1 U2912 ( .A(n2634), .B(n156), .CI(n2632), .CO(n2625), .S(n2647) );
  FA1 U2913 ( .A(n1920), .B(n125), .CI(n1918), .CO(n1921), .S(n1929) );
  NR2 U2914 ( .I1(n2398), .I2(n2399), .O(n2859) );
  TIE0 U2915 ( .O(net21266) );
  BUF2 U2916 ( .I(weights[131]), .O(n1518) );
  INV1S U2917 ( .I(n1518), .O(n1474) );
  NR2 U2918 ( .I1(n1474), .I2(n193), .O(n1808) );
  BUF2 U2919 ( .I(weights[134]), .O(n1889) );
  XNR2HS U2920 ( .I1(n1889), .I2(n3437), .O(n1480) );
  XNR2HS U2921 ( .I1(weights[135]), .I2(n3437), .O(n1806) );
  XNR2HS U2922 ( .I1(n1837), .I2(n3437), .O(n1488) );
  INV1S U2923 ( .I(weights[129]), .O(n1481) );
  FA1 U2924 ( .A(n1484), .B(n576), .CI(n1483), .CO(n1809), .S(n1565) );
  XNR2HS U2925 ( .I1(n112), .I2(n3437), .O(n1512) );
  XNR2HS U2926 ( .I1(n1518), .I2(n3437), .O(n1506) );
  XNR2H U2927 ( .I1(n623), .I2(weights[133]), .O(n1511) );
  XNR2HS U2928 ( .I1(n1520), .I2(n567), .O(n1538) );
  XNR2HS U2929 ( .I1(n1518), .I2(n161), .O(n1531) );
  XNR2HS U2930 ( .I1(n653), .I2(n873), .O(n1519) );
  XNR2HS U2931 ( .I1(weights[129]), .I2(n2320), .O(n1533) );
  OAI22H U2932 ( .A1(n1522), .A2(n1523), .B1(n1521), .B2(n240), .O(n1526) );
  OAI22H U2933 ( .A1(n653), .A2(n1523), .B1(n1522), .B2(n240), .O(n2013) );
  ND2 U2934 ( .I1(n1524), .I2(n564), .O(n2014) );
  XNR2HS U2935 ( .I1(n655), .I2(n3437), .O(n1539) );
  FA1 U2936 ( .A(n1557), .B(n1896), .CI(n1556), .CO(n1485), .S(n1563) );
  OAI12HP U2937 ( .B1(n2082), .B2(n2084), .A1(n2083), .O(n1851) );
  INV1S U2938 ( .I(weights[138]), .O(n3115) );
  NR2F U2939 ( .I1(buffer_data[16]), .I2(n1570), .O(n1571) );
  XOR2H U2940 ( .I1(n1592), .I2(n925), .O(n1573) );
  XOR2H U2941 ( .I1(n1593), .I2(n1573), .O(n1675) );
  INV1S U2942 ( .I(n1587), .O(n1575) );
  BUF12CK U2943 ( .I(n1576), .O(n1579) );
  XOR2HS U2944 ( .I1(n280), .I2(weights[141]), .O(n1585) );
  INV1S U2945 ( .I(n1585), .O(n1582) );
  MOAI1HT U2946 ( .A1(n1581), .A2(n2218), .B1(n2169), .B2(n1580), .O(n2664) );
  MOAI1 U2947 ( .A1(n657), .A2(n1649), .B1(n877), .B2(n1585), .O(n1673) );
  NR2 U2948 ( .I1(n568), .I2(n3158), .O(n1827) );
  XNR2HS U2949 ( .I1(n280), .I2(n902), .O(n1823) );
  NR2P U2950 ( .I1(n1823), .I2(n2303), .O(n1825) );
  INV1S U2951 ( .I(n1595), .O(n1598) );
  OAI12H U2952 ( .B1(n1598), .B2(n1597), .A1(n1596), .O(n1818) );
  XNR2HS U2953 ( .I1(n618), .I2(n538), .O(n1602) );
  XNR2HS U2954 ( .I1(weights[137]), .I2(n276), .O(n1605) );
  XNR2HS U2955 ( .I1(n618), .I2(weights[138]), .O(n1635) );
  XOR2HS U2956 ( .I1(n541), .I2(weights[140]), .O(n1640) );
  XOR2HS U2957 ( .I1(n541), .I2(weights[137]), .O(n1626) );
  MOAI1H U2958 ( .A1(n709), .A2(n538), .B1(n1620), .B2(n973), .O(n2018) );
  INV2 U2959 ( .I(n1623), .O(n1624) );
  XOR2HS U2960 ( .I1(n277), .I2(weights[139]), .O(n1648) );
  INV1S U2961 ( .I(n1648), .O(n1650) );
  OAI22S U2962 ( .A1(n1650), .A2(n657), .B1(n615), .B2(n1649), .O(n1670) );
  ND2P U2963 ( .I1(n560), .I2(n1681), .O(n1690) );
  NR2 U2964 ( .I1(buffer_data[2]), .I2(weights[127]), .O(n1682) );
  XOR2HS U2965 ( .I1(weights[126]), .I2(n570), .O(n1697) );
  XOR2HS U2966 ( .I1(weights[125]), .I2(n571), .O(n1691) );
  ND3S U2967 ( .I1(n2546), .I2(n569), .I3(n1691), .O(n1684) );
  XNR2HP U2968 ( .I1(buffer_data[7]), .I2(buffer_data[6]), .O(n2490) );
  XOR2HS U2969 ( .I1(n3384), .I2(weights[124]), .O(n1696) );
  INV1S U2970 ( .I(n1696), .O(n1688) );
  ND3S U2971 ( .I1(n2546), .I2(n2544), .I3(n1697), .O(n1698) );
  ND2S U2972 ( .I1(n1790), .I2(n1698), .O(n1795) );
  ND2S U2973 ( .I1(n1798), .I2(n1864), .O(n1785) );
  XOR2HS U2974 ( .I1(weights[123]), .I2(n570), .O(n1740) );
  INV1 U2975 ( .I(n1727), .O(n1713) );
  INV3 U2976 ( .I(n1726), .O(n1712) );
  XNR2HS U2977 ( .I1(n1450), .I2(n146), .O(n1724) );
  XOR2HS U2978 ( .I1(n466), .I2(n139), .O(n1737) );
  OAI22S U2979 ( .A1(n1735), .A2(n1388), .B1(n1734), .B2(n610), .O(n1777) );
  XNR2HS U2980 ( .I1(n160), .I2(n106), .O(n1766) );
  XNR2HS U2981 ( .I1(n570), .I2(n524), .O(n1741) );
  OAI22S U2982 ( .A1(n1766), .A2(n2337), .B1(n569), .B2(n1741), .O(n1776) );
  NR2 U2983 ( .I1(n1751), .I2(n560), .O(n1752) );
  NR2P U2984 ( .I1(n1757), .I2(n1756), .O(n2000) );
  XOR2HS U2985 ( .I1(n160), .I2(weights[120]), .O(n1765) );
  ND2S U2986 ( .I1(n3211), .I2(n571), .O(n1767) );
  XOR2HS U2987 ( .I1(n1768), .I2(n1769), .O(n1774) );
  XNR2HS U2988 ( .I1(weights[126]), .I2(n159), .O(n1857) );
  FA1 U2989 ( .A(n1793), .B(n1919), .CI(n1792), .CO(n1860), .S(n1788) );
  FA1 U2990 ( .A(n1896), .B(n1808), .CI(n1807), .CO(n1843), .S(n1802) );
  NR2F U2991 ( .I1(n1811), .I2(n1812), .O(n1849) );
  INV1S U2992 ( .I(n1849), .O(n1813) );
  INV1S U2993 ( .I(weights[140]), .O(n3277) );
  NR2 U2994 ( .I1(n3277), .I2(n568), .O(n1879) );
  XNR2HS U2995 ( .I1(n929), .I2(n141), .O(n1876) );
  OAI22S U2996 ( .A1(n2454), .A2(n1820), .B1(n963), .B2(n1876), .O(n1878) );
  NR2 U2997 ( .I1(n1823), .I2(n561), .O(n1824) );
  FA1P U2998 ( .A(n1827), .B(n1826), .CI(n925), .CO(n1877), .S(n1819) );
  INV1S U2999 ( .I(n1837), .O(n1838) );
  NR2 U3000 ( .I1(n1838), .I2(n192), .O(n1897) );
  FA1 U3001 ( .A(n576), .B(n1842), .CI(n1841), .CO(n1899), .S(n1836) );
  ND2F U3002 ( .I1(n1853), .I2(n1852), .O(n1908) );
  NR2 U3003 ( .I1(n3435), .I2(n3335), .O(n1920) );
  XOR2HS U3004 ( .I1(n566), .I2(n558), .O(n1910) );
  OAI12HS U3005 ( .B1(n2615), .B2(n1857), .A1(n1911), .O(n1918) );
  FA1 U3006 ( .A(n1859), .B(n1919), .CI(n1858), .CO(n1923), .S(n1856) );
  NR2T U3007 ( .I1(n1866), .I2(n1867), .O(n1868) );
  ND3HT U3008 ( .I1(n1868), .I2(n1869), .I3(n1870), .O(n1871) );
  NR2 U3009 ( .I1(n3322), .I2(n620), .O(n1950) );
  NR2 U3010 ( .I1(n639), .I2(n1939), .O(n1941) );
  INV1S U3011 ( .I(n1941), .O(n1875) );
  OAI12HS U3012 ( .B1(n971), .B2(n1876), .A1(n1875), .O(n1948) );
  NR2P U3013 ( .I1(n1880), .I2(n1881), .O(n1960) );
  INV2 U3014 ( .I(n1964), .O(n1961) );
  INV1S U3015 ( .I(n1889), .O(n1890) );
  NR2 U3016 ( .I1(n1890), .I2(n193), .O(n1894) );
  XOR3 U3017 ( .I1(n1894), .I2(n845), .I3(n1893), .O(n1902) );
  INV1S U3018 ( .I(n1910), .O(n1912) );
  OAI12HS U3019 ( .B1(n2615), .B2(n1912), .A1(n1911), .O(n1913) );
  XOR2HS U3020 ( .I1(n540), .I2(n1913), .O(n1917) );
  ND2 U3021 ( .I1(weights[126]), .I2(n847), .O(n1914) );
  XOR2HS U3022 ( .I1(n1914), .I2(n858), .O(n1915) );
  NR2 U3023 ( .I1(n1939), .I2(n1940), .O(n1942) );
  NR2 U3024 ( .I1(n1942), .I2(n1941), .O(n1943) );
  XOR2HS U3025 ( .I1(n1944), .I2(n1943), .O(n1945) );
  XOR2HS U3026 ( .I1(n925), .I2(n1945), .O(n1946) );
  MXL2HS U3027 ( .A(n1961), .B(n1960), .S(n1963), .OB(n1965) );
  XNR2HS U3028 ( .I1(n581), .I2(n1981), .O(n2076) );
  XNR2HS U3029 ( .I1(n1985), .I2(n1984), .O(n2075) );
  INV1S U3030 ( .I(n2050), .O(n1986) );
  NR2 U3031 ( .I1(n1986), .I2(n662), .O(n1988) );
  AOI12HS U3032 ( .B1(n1987), .B2(n2003), .A1(n2001), .O(n2051) );
  XNR2HS U3033 ( .I1(n1988), .I2(n2051), .O(n2037) );
  XOR2HS U3034 ( .I1(n2015), .I2(n2007), .O(n2022) );
  XNR2HS U3035 ( .I1(n2027), .I2(n2010), .O(n2020) );
  FA1P U3036 ( .A(n2022), .B(n2021), .CI(n2020), .CO(n2035), .S(n2034) );
  NR2F U3037 ( .I1(n2033), .I2(n2034), .O(n2781) );
  INV1S U3038 ( .I(n2023), .O(n2024) );
  NR2 U3039 ( .I1(n2025), .I2(n2024), .O(n2026) );
  NR2 U3040 ( .I1(n2027), .I2(n2026), .O(n2030) );
  NR2P U3041 ( .I1(n2030), .I2(n2031), .O(n2786) );
  NR2 U3042 ( .I1(n640), .I2(n552), .O(n2820) );
  NR2 U3043 ( .I1(n609), .I2(n3211), .O(n2819) );
  AN2B1S U3044 ( .I1(n654), .B1(n553), .O(n2818) );
  INV1S U3045 ( .I(n2790), .O(n2032) );
  ND2P U3046 ( .I1(n2031), .I2(n2030), .O(n2787) );
  FA1P U3047 ( .A(n2041), .B(n2040), .CI(n2039), .CO(n2054), .S(n2038) );
  XNR2HS U3048 ( .I1(n2044), .I2(n2045), .O(n2058) );
  INV1S U3049 ( .I(n2047), .O(n2048) );
  NR2 U3050 ( .I1(n2068), .I2(n2069), .O(n2070) );
  INV1S U3051 ( .I(n2084), .O(n2085) );
  ND2S U3052 ( .I1(n2094), .I2(n2093), .O(n2095) );
  OAI12HT U3053 ( .B1(n2806), .B2(n2814), .A1(n2809), .O(n2802) );
  ND2P U3054 ( .I1(n2108), .I2(n2107), .O(n2801) );
  AOI12H U3055 ( .B1(n2110), .B2(n2802), .A1(n2109), .O(n2111) );
  OA12P U3056 ( .B1(n2112), .B2(n136), .A1(n2111), .O(
        \CHIPS[0].core/temp_pconv[16] ) );
  BUF2 U3057 ( .I(weights[61]), .O(n2571) );
  OAI22S U3058 ( .A1(n564), .A2(n2117), .B1(n2120), .B2(n617), .O(n2151) );
  XNR2HS U3059 ( .I1(n3226), .I2(n567), .O(n2143) );
  XNR2HS U3060 ( .I1(n145), .I2(n567), .O(n2123) );
  XNR2HS U3061 ( .I1(weights[58]), .I2(n151), .O(n2137) );
  OAI22H U3062 ( .A1(n3444), .A2(n2138), .B1(n533), .B2(n2128), .O(n2133) );
  XNR2H U3063 ( .I1(n622), .I2(n525), .O(n2136) );
  XNR2HS U3064 ( .I1(n650), .I2(n2320), .O(n2129) );
  ND2 U3065 ( .I1(n2132), .I2(n1530), .O(n2373) );
  ND2T U3066 ( .I1(n2372), .I2(n2373), .O(n2374) );
  HA1P U3067 ( .A(n2146), .B(n2145), .C(n2124), .S(n2148) );
  NR2F U3068 ( .I1(n2152), .I2(n2153), .O(n2422) );
  ND2S U3069 ( .I1(n2167), .I2(n2309), .O(n2168) );
  XNR2HS U3070 ( .I1(n618), .I2(n521), .O(n2197) );
  XOR2HS U3071 ( .I1(n280), .I2(weights[67]), .O(n2185) );
  MOAI1S U3072 ( .A1(n658), .A2(n2197), .B1(n877), .B2(n2185), .O(n2201) );
  XOR2HS U3073 ( .I1(n496), .I2(n539), .O(n2174) );
  NR2 U3074 ( .I1(n3450), .I2(n3190), .O(n2305) );
  XNR2HS U3075 ( .I1(n2218), .I2(weights[70]), .O(n2302) );
  INV1S U3076 ( .I(n2185), .O(n2186) );
  XNR2HS U3077 ( .I1(n277), .I2(weights[68]), .O(n2304) );
  OA12P U3078 ( .B1(n153), .B2(n2189), .A1(n2188), .O(n2190) );
  XNR2HS U3079 ( .I1(n618), .I2(n107), .O(n2202) );
  FA1 U3080 ( .A(n2201), .B(n2200), .CI(n2199), .CO(n2192), .S(n2241) );
  XNR2HS U3081 ( .I1(n618), .I2(weights[64]), .O(n2203) );
  NR2 U3082 ( .I1(n3442), .I2(n556), .O(n2204) );
  MOAI1 U3083 ( .A1(n657), .A2(n3442), .B1(n877), .B2(n2204), .O(n2209) );
  XNR2HS U3084 ( .I1(n496), .I2(n556), .O(n2220) );
  AN3 U3085 ( .I1(n328), .I2(n496), .I3(n545), .O(n2231) );
  XNR2HS U3086 ( .I1(n526), .I2(n571), .O(n2287) );
  XOR2HS U3087 ( .I1(weights[51]), .I2(n571), .O(n2255) );
  XNR2HS U3088 ( .I1(n764), .I2(weights[53]), .O(n2253) );
  NR2 U3089 ( .I1(n3435), .I2(n554), .O(n2338) );
  XNR2HS U3090 ( .I1(n570), .I2(n104), .O(n2336) );
  XNR2HS U3091 ( .I1(n140), .I2(n570), .O(n2288) );
  XOR2HS U3092 ( .I1(n570), .I2(n559), .O(n2274) );
  ND2S U3093 ( .I1(n555), .I2(n570), .O(n2277) );
  XNR2HS U3094 ( .I1(n277), .I2(n539), .O(n2460) );
  NR2 U3095 ( .I1(n3232), .I2(n191), .O(n2478) );
  XNR2H U3096 ( .I1(n159), .I2(weights[51]), .O(n2487) );
  XOR2HS U3097 ( .I1(weights[53]), .I2(n571), .O(n2492) );
  OR2T U3098 ( .I1(n2445), .I2(n2446), .O(n2830) );
  XOR2HS U3099 ( .I1(n2374), .I2(n2366), .O(n2389) );
  XOR2HS U3100 ( .I1(n2370), .I2(n2369), .O(n2388) );
  NR2 U3101 ( .I1(n2377), .I2(n2376), .O(n2378) );
  XNR2HS U3102 ( .I1(n944), .I2(n2378), .O(n2403) );
  OR2T U3103 ( .I1(n2403), .I2(n2404), .O(n2851) );
  INV1S U3104 ( .I(n2383), .O(n2385) );
  ND2 U3105 ( .I1(n2385), .I2(n2384), .O(n2386) );
  XOR2HS U3106 ( .I1(n663), .I2(n2386), .O(n2401) );
  NR2 U3107 ( .I1(n640), .I2(n545), .O(n2890) );
  NR2 U3108 ( .I1(n610), .I2(n555), .O(n2889) );
  AN2B1S U3109 ( .I1(n652), .B1(n617), .O(n2888) );
  INV1S U3110 ( .I(n2863), .O(n2400) );
  ND2 U3111 ( .I1(n2399), .I2(n2398), .O(n2860) );
  ND2S U3112 ( .I1(n2434), .I2(n2433), .O(n2416) );
  XNR2HS U3113 ( .I1(n2416), .I2(n2435), .O(n2419) );
  NR2 U3114 ( .I1(n2436), .I2(n435), .O(n2437) );
  XOR2HS U3115 ( .I1(n2438), .I2(n2437), .O(n2441) );
  XNR2HS U3116 ( .I1(n550), .I2(weights[68]), .O(n2524) );
  FA1 U3117 ( .A(n2462), .B(n2685), .CI(n2461), .CO(n2529), .S(n2453) );
  INV1S U3118 ( .I(n2536), .O(n2465) );
  NR2 U3119 ( .I1(n2472), .I2(n191), .O(n2511) );
  OR2 U3120 ( .I1(n2516), .I2(n2515), .O(n2481) );
  INV1S U3121 ( .I(weights[50]), .O(n3121) );
  NR2 U3122 ( .I1(n3435), .I2(n3121), .O(n2549) );
  XOR2HS U3123 ( .I1(weights[54]), .I2(n570), .O(n2545) );
  NR2 U3124 ( .I1(n2507), .I2(n191), .O(n2582) );
  INV2 U3125 ( .I(n2593), .O(n2730) );
  NR2 U3126 ( .I1(n238), .I2(n3151), .O(n2666) );
  INV1S U3127 ( .I(n2525), .O(n2527) );
  OR2T U3128 ( .I1(n2608), .I2(n569), .O(n2607) );
  FA1 U3129 ( .A(n2549), .B(n2633), .CI(n2548), .CO(n2630), .S(n2539) );
  NR2F U3130 ( .I1(n2864), .I2(n2821), .O(n2563) );
  INV1S U3131 ( .I(n3348), .O(n2564) );
  NR2 U3132 ( .I1(n2564), .I2(n192), .O(n2567) );
  NR2 U3133 ( .I1(n3311), .I2(n192), .O(n2579) );
  NR2 U3134 ( .I1(n2573), .I2(n192), .O(n2588) );
  XNR2HS U3135 ( .I1(n111), .I2(n601), .O(n2605) );
  XOR2HS U3136 ( .I1(n155), .I2(n2606), .O(n2613) );
  XOR2HS U3137 ( .I1(n2610), .I2(n708), .O(n2611) );
  XOR2HS U3138 ( .I1(n2636), .I2(n2611), .O(n2612) );
  XNR2HS U3139 ( .I1(n2613), .I2(n2612), .O(n2617) );
  NR2 U3140 ( .I1(n621), .I2(n439), .O(n2624) );
  XNR2HS U3141 ( .I1(n847), .I2(n537), .O(n2618) );
  OAI12HS U3142 ( .B1(n2615), .B2(n2618), .A1(n2614), .O(n2623) );
  NR2 U3143 ( .I1(n3435), .I2(n3285), .O(n2634) );
  NR2F U3144 ( .I1(n2654), .I2(n2655), .O(n2656) );
  NR2 U3145 ( .I1(n238), .I2(n3271), .O(n2681) );
  OAI12H U3146 ( .B1(n658), .B2(n2663), .A1(n2662), .O(n2689) );
  FA1 U3147 ( .A(n2666), .B(n2685), .CI(n2665), .CO(n2688), .S(n2660) );
  XNR2HS U3148 ( .I1(n929), .I2(n144), .O(n2672) );
  OAI12HS U3149 ( .B1(n971), .B2(n2672), .A1(n2676), .O(n2673) );
  XOR2HS U3150 ( .I1(n927), .I2(n2673), .O(n2674) );
  NR2 U3151 ( .I1(n620), .I2(n3315), .O(n2686) );
  OAI12HS U3152 ( .B1(n971), .B2(n2677), .A1(n2676), .O(n2684) );
  FA1 U3153 ( .A(n2681), .B(n2685), .CI(n2680), .CO(n2687), .S(n2694) );
  FA1 U3154 ( .A(n632), .B(n2689), .CI(n2688), .CO(n2695), .S(n2693) );
  FA1 U3155 ( .A(n2694), .B(n2692), .CI(n2693), .CO(n2698), .S(n2669) );
  NR2F U3156 ( .I1(n2740), .I2(n2741), .O(n2882) );
  INV1S U3157 ( .I(n2727), .O(n2729) );
  ND2P U3158 ( .I1(n2741), .I2(n2740), .O(n2883) );
  INV1S U3159 ( .I(n2744), .O(n2746) );
  ND2S U3160 ( .I1(n2746), .I2(n2745), .O(n2750) );
  XNR2HS U3161 ( .I1(n2750), .I2(n2749), .O(\CHIPS[0].core/temp_pconv[11] ) );
  XOR2HS U3162 ( .I1(n1199), .I2(n2758), .O(\CHIPS[0].core/temp_pconv[9] ) );
  XNR2HS U3163 ( .I1(n216), .I2(n2761), .O(\CHIPS[0].core/temp_pconv[8] ) );
  ND2 U3164 ( .I1(n2763), .I2(n2762), .O(n2764) );
  XNR2HS U3165 ( .I1(n2765), .I2(n2764), .O(\CHIPS[0].core/temp_pconv[7] ) );
  INV1S U3166 ( .I(n2766), .O(n2768) );
  ND2 U3167 ( .I1(n2768), .I2(n2767), .O(n2769) );
  XOR2HS U3168 ( .I1(n857), .I2(n2769), .O(\CHIPS[0].core/temp_pconv[6] ) );
  ND2 U3169 ( .I1(n2771), .I2(n2770), .O(n2772) );
  ND2 U3170 ( .I1(n2774), .I2(n2773), .O(n2775) );
  XOR2HS U3171 ( .I1(n2776), .I2(n2775), .O(\CHIPS[0].core/temp_pconv[4] ) );
  ND2 U3172 ( .I1(n2777), .I2(n2778), .O(n2779) );
  XNR2HS U3173 ( .I1(n2780), .I2(n2779), .O(\CHIPS[0].core/temp_pconv[3] ) );
  INV1S U3174 ( .I(n2781), .O(n2783) );
  ND2 U3175 ( .I1(n2783), .I2(n2782), .O(n2784) );
  XOR2HS U3176 ( .I1(n2785), .I2(n2784), .O(\CHIPS[0].core/temp_pconv[2] ) );
  INV1S U3177 ( .I(n2786), .O(n2788) );
  ND2 U3178 ( .I1(n2788), .I2(n2787), .O(n2789) );
  XNR2HS U3179 ( .I1(n2790), .I2(n2789), .O(\CHIPS[0].core/temp_pconv[1] ) );
  INV1S U3180 ( .I(n2791), .O(n2792) );
  INV4CK U3181 ( .I(n2793), .O(n2794) );
  NR2T U3182 ( .I1(n2800), .I2(n2794), .O(n2797) );
  AOI12HP U3183 ( .B1(n2817), .B2(n2803), .A1(n2802), .O(n2804) );
  XOR2HS U3184 ( .I1(n2805), .I2(n2804), .O(\CHIPS[0].core/temp_pconv[14] ) );
  INV2 U3185 ( .I(n2807), .O(n2808) );
  XNR2HS U3186 ( .I1(n2817), .I2(n2816), .O(\CHIPS[0].core/temp_pconv[12] ) );
  INV1S U3187 ( .I(n2821), .O(n2822) );
  ND2S U3188 ( .I1(n2823), .I2(n2822), .O(n2825) );
  AOI12H U3189 ( .B1(n2832), .B2(n2830), .A1(n2827), .O(n2828) );
  XOR2HS U3190 ( .I1(n2829), .I2(n2828), .O(\CHIPS[1].core/temp_pconv[9] ) );
  ND2 U3191 ( .I1(n2831), .I2(n2830), .O(n2833) );
  XNR2HS U3192 ( .I1(n2833), .I2(n2832), .O(\CHIPS[1].core/temp_pconv[8] ) );
  XNR2HS U3193 ( .I1(n892), .I2(n2835), .O(\CHIPS[1].core/temp_pconv[7] ) );
  INV1S U3194 ( .I(n2837), .O(n2839) );
  ND2 U3195 ( .I1(n2838), .I2(n2839), .O(n2840) );
  XOR2HS U3196 ( .I1(n730), .I2(n2840), .O(\CHIPS[1].core/temp_pconv[6] ) );
  XNR2HS U3197 ( .I1(n2844), .I2(n2843), .O(\CHIPS[1].core/temp_pconv[5] ) );
  INV1S U3198 ( .I(n2845), .O(n2847) );
  ND2 U3199 ( .I1(n2847), .I2(n2846), .O(n2848) );
  XOR2HS U3200 ( .I1(n2849), .I2(n2848), .O(\CHIPS[1].core/temp_pconv[4] ) );
  ND2 U3201 ( .I1(n2850), .I2(n2851), .O(n2852) );
  XNR2HS U3202 ( .I1(n2853), .I2(n2852), .O(\CHIPS[1].core/temp_pconv[3] ) );
  INV1S U3203 ( .I(n2854), .O(n2856) );
  ND2 U3204 ( .I1(n2856), .I2(n2855), .O(n2857) );
  XOR2HS U3205 ( .I1(n2858), .I2(n2857), .O(\CHIPS[1].core/temp_pconv[2] ) );
  INV1S U3206 ( .I(n2859), .O(n2861) );
  ND2 U3207 ( .I1(n2861), .I2(n2860), .O(n2862) );
  XNR2HS U3208 ( .I1(n2863), .I2(n2862), .O(\CHIPS[1].core/temp_pconv[1] ) );
  INV1S U3209 ( .I(n2869), .O(n2871) );
  ND2 U3210 ( .I1(n2871), .I2(n2870), .O(n2876) );
  OAI12H U3211 ( .B1(n2872), .B2(n2882), .A1(n2883), .O(n2873) );
  AOI12H U3212 ( .B1(n2885), .B2(n2874), .A1(n2873), .O(n2875) );
  XOR2HS U3213 ( .I1(n2876), .I2(n2875), .O(\CHIPS[1].core/temp_pconv[15] ) );
  ND2 U3214 ( .I1(n2884), .I2(n2883), .O(n2887) );
  XOR2HS U3215 ( .I1(n2887), .I2(n2886), .O(\CHIPS[1].core/temp_pconv[14] ) );
  BUF12CK U3216 ( .I(layer_num[1]), .O(n3456) );
  BUF1 U3217 ( .I(n2893), .O(n2907) );
  BUF1 U3218 ( .I(n2907), .O(n2892) );
  BUF1 U3219 ( .I(n2892), .O(n2908) );
  BUF1 U3220 ( .I(n2908), .O(n3801) );
  BUF1 U3221 ( .I(n2907), .O(n2900) );
  BUF1 U3222 ( .I(n2900), .O(n3800) );
  BUF1 U3223 ( .I(n2907), .O(n2905) );
  BUF1 U3224 ( .I(n2905), .O(n3799) );
  BUF1 U3225 ( .I(n2905), .O(n2910) );
  BUF1 U3226 ( .I(n2910), .O(n3798) );
  BUF1 U3227 ( .I(n2905), .O(n3797) );
  BUF1 U3228 ( .I(n2910), .O(n3796) );
  BUF1 U3229 ( .I(n2910), .O(n3795) );
  BUF1 U3230 ( .I(rst_n), .O(n2901) );
  BUF1 U3231 ( .I(n2901), .O(n2898) );
  BUF1 U3232 ( .I(n2898), .O(n3749) );
  BUF1 U3233 ( .I(n2898), .O(n2891) );
  BUF1 U3234 ( .I(n2891), .O(n2894) );
  BUF1 U3235 ( .I(n2894), .O(n3748) );
  BUF1 U3236 ( .I(n2901), .O(n2903) );
  BUF1 U3237 ( .I(n2903), .O(n2897) );
  BUF1 U3238 ( .I(n2897), .O(n3747) );
  BUF1 U3239 ( .I(n2891), .O(n3746) );
  BUF1 U3240 ( .I(n2891), .O(n3745) );
  BUF1 U3241 ( .I(n2891), .O(n3744) );
  BUF1 U3242 ( .I(n2898), .O(n3743) );
  BUF1 U3243 ( .I(n2891), .O(n3742) );
  BUF1 U3244 ( .I(n2898), .O(n3741) );
  BUF1 U3245 ( .I(n2898), .O(n3740) );
  BUF1 U3246 ( .I(n2891), .O(n3739) );
  BUF1 U3247 ( .I(n2897), .O(n3737) );
  BUF1 U3248 ( .I(n2897), .O(n3736) );
  BUF1 U3249 ( .I(n2897), .O(n3735) );
  BUF1 U3250 ( .I(n2903), .O(n3734) );
  BUF1 U3251 ( .I(n2892), .O(n2913) );
  BUF1 U3252 ( .I(n2913), .O(n3780) );
  BUF1 U3253 ( .I(n2892), .O(n3779) );
  BUF1 U3254 ( .I(n2913), .O(n3778) );
  BUF1 U3255 ( .I(n2892), .O(n3777) );
  BUF1 U3256 ( .I(n2892), .O(n3776) );
  BUF1 U3257 ( .I(n2913), .O(n3775) );
  BUF1 U3258 ( .I(n2892), .O(n3774) );
  BUF1 U3259 ( .I(n2905), .O(n2906) );
  BUF1 U3260 ( .I(n2906), .O(n3816) );
  BUF1 U3261 ( .I(n2906), .O(n3815) );
  BUF1 U3262 ( .I(n2906), .O(n3814) );
  BUF1 U3263 ( .I(n2893), .O(n3813) );
  BUF1 U3264 ( .I(n2906), .O(n3812) );
  BUF1 U3265 ( .I(n2893), .O(n3811) );
  BUF1 U3266 ( .I(n2893), .O(n3810) );
  BUF1 U3267 ( .I(n2906), .O(n3809) );
  BUF1 U3268 ( .I(n2893), .O(n3808) );
  BUF1 U3269 ( .I(n2908), .O(n3807) );
  BUF1 U3270 ( .I(n2908), .O(n3806) );
  BUF1 U3271 ( .I(n2908), .O(n3805) );
  BUF1 U3272 ( .I(n2907), .O(n3804) );
  BUF1 U3273 ( .I(n2907), .O(n3803) );
  BUF1 U3274 ( .I(n2900), .O(n2899) );
  BUF1 U3275 ( .I(n2899), .O(n3802) );
  BUF1 U3276 ( .I(n2894), .O(n3754) );
  BUF1 U3277 ( .I(n2901), .O(n3753) );
  BUF1 U3278 ( .I(n2894), .O(n3752) );
  BUF1 U3279 ( .I(n2894), .O(n3751) );
  BUF1 U3280 ( .I(n2894), .O(n3750) );
  BUF1 U3281 ( .I(n2899), .O(n3773) );
  BUF1 U3282 ( .I(rst_n), .O(n3829) );
  BUF1 U3283 ( .I(n3829), .O(n2895) );
  BUF1 U3284 ( .I(n2895), .O(n3522) );
  BUF1 U3285 ( .I(n2895), .O(n3521) );
  BUF1 U3286 ( .I(n2895), .O(n3520) );
  BUF1 U3287 ( .I(n3829), .O(n3827) );
  BUF1 U3288 ( .I(n3827), .O(n2942) );
  BUF1 U3289 ( .I(n2942), .O(n3519) );
  BUF1 U3290 ( .I(n2895), .O(n3518) );
  BUF1 U3291 ( .I(n3829), .O(n3826) );
  BUF1 U3292 ( .I(n3826), .O(n2947) );
  BUF1 U3293 ( .I(n2947), .O(n2896) );
  BUF1 U3294 ( .I(n2896), .O(n3517) );
  BUF1 U3295 ( .I(n2895), .O(n2940) );
  BUF1 U3296 ( .I(n2940), .O(n3516) );
  BUF1 U3297 ( .I(n2895), .O(n3515) );
  BUF1 U3298 ( .I(n3829), .O(n3828) );
  BUF1 U3299 ( .I(n3828), .O(n2941) );
  BUF1 U3300 ( .I(n2941), .O(n3514) );
  BUF1 U3301 ( .I(n2896), .O(n3513) );
  BUF1 U3302 ( .I(n2896), .O(n3512) );
  BUF1 U3303 ( .I(n2896), .O(n3510) );
  BUF1 U3304 ( .I(n2896), .O(n3509) );
  BUF1 U3305 ( .I(n2896), .O(n3511) );
  BUF1 U3306 ( .I(n3511), .O(n3507) );
  BUF1 U3307 ( .I(n2947), .O(n3506) );
  BUF1 U3308 ( .I(n2947), .O(n3504) );
  BUF1 U3309 ( .I(n2897), .O(n3733) );
  BUF1 U3310 ( .I(n2903), .O(n3732) );
  BUF1 U3311 ( .I(n2903), .O(n3731) );
  BUF1 U3312 ( .I(n2897), .O(n3730) );
  BUF1 U3313 ( .I(n2903), .O(n3729) );
  BUF1 U3314 ( .I(n2901), .O(n2931) );
  BUF1 U3315 ( .I(n2931), .O(n2927) );
  BUF1 U3316 ( .I(n2927), .O(n3728) );
  BUF1 U3317 ( .I(n2898), .O(n3738) );
  BUF1 U3318 ( .I(n2899), .O(n3772) );
  BUF1 U3319 ( .I(n2899), .O(n3771) );
  BUF1 U3320 ( .I(n2900), .O(n3770) );
  BUF1 U3321 ( .I(n2899), .O(n3769) );
  BUF1 U3322 ( .I(n2900), .O(n3768) );
  BUF1 U3323 ( .I(n2900), .O(n3767) );
  BUF1 U3324 ( .I(n2899), .O(n3766) );
  BUF1 U3325 ( .I(n2900), .O(n3765) );
  BUF1 U3326 ( .I(n2927), .O(n2902) );
  BUF1 U3327 ( .I(n2902), .O(n3764) );
  BUF1 U3328 ( .I(n2902), .O(n3763) );
  BUF1 U3329 ( .I(n2902), .O(n3762) );
  BUF1 U3330 ( .I(n2901), .O(n3761) );
  BUF1 U3331 ( .I(n2902), .O(n3760) );
  BUF1 U3332 ( .I(n2931), .O(n3759) );
  BUF1 U3333 ( .I(n2901), .O(n2904) );
  BUF1 U3334 ( .I(n2904), .O(n2930) );
  BUF1 U3335 ( .I(n2930), .O(n3758) );
  BUF1 U3336 ( .I(n2902), .O(n3757) );
  BUF1 U3337 ( .I(n2904), .O(n3756) );
  BUF1 U3338 ( .I(n2903), .O(n3755) );
  BUF1 U3339 ( .I(n2904), .O(n3714) );
  BUF1 U3340 ( .I(n2904), .O(n3713) );
  BUF1 U3341 ( .I(n2930), .O(n3712) );
  BUF1 U3342 ( .I(n2904), .O(n3711) );
  BUF1 U3343 ( .I(rst_n), .O(n2923) );
  BUF1 U3344 ( .I(n2923), .O(n2929) );
  BUF1 U3345 ( .I(n2929), .O(n3710) );
  BUF1 U3346 ( .I(n2929), .O(n2938) );
  BUF1 U3347 ( .I(n2938), .O(n3709) );
  BUF1 U3348 ( .I(n2929), .O(n3707) );
  BUF1 U3349 ( .I(n2938), .O(n3706) );
  BUF1 U3350 ( .I(n2929), .O(n3705) );
  BUF1 U3351 ( .I(n2930), .O(n3715) );
  BUF1 U3352 ( .I(n2923), .O(n2939) );
  BUF1 U3353 ( .I(n2939), .O(n2921) );
  BUF1 U3354 ( .I(n2921), .O(n3658) );
  BUF1 U3355 ( .I(n2921), .O(n3657) );
  BUF1 U3356 ( .I(rst_n), .O(n3830) );
  BUF1 U3357 ( .I(n3830), .O(n2918) );
  BUF1 U3358 ( .I(n2918), .O(n2911) );
  BUF1 U3359 ( .I(n2911), .O(n2919) );
  BUF1 U3360 ( .I(n2919), .O(n3656) );
  BUF1 U3361 ( .I(n2919), .O(n3655) );
  BUF1 U3362 ( .I(n2919), .O(n3654) );
  BUF1 U3363 ( .I(n2911), .O(n3653) );
  BUF1 U3364 ( .I(n2919), .O(n3652) );
  BUF1 U3365 ( .I(n2911), .O(n3651) );
  BUF1 U3366 ( .I(n2911), .O(n3650) );
  BUF1 U3367 ( .I(n2919), .O(n3649) );
  BUF1 U3368 ( .I(n2911), .O(n3648) );
  BUF1 U3369 ( .I(n2929), .O(n3696) );
  BUF1 U3370 ( .I(n2923), .O(n2912) );
  BUF1 U3371 ( .I(n2912), .O(n2928) );
  BUF1 U3372 ( .I(n2928), .O(n3694) );
  BUF1 U3373 ( .I(n2928), .O(n2924) );
  BUF1 U3374 ( .I(n2924), .O(n3688) );
  BUF1 U3375 ( .I(n2938), .O(n3704) );
  BUF1 U3376 ( .I(n2927), .O(n3726) );
  BUF1 U3377 ( .I(n2931), .O(n3725) );
  BUF1 U3378 ( .I(n2930), .O(n3717) );
  BUF1 U3379 ( .I(n2904), .O(n3716) );
  BUF1 U3380 ( .I(n2912), .O(n2925) );
  BUF1 U3381 ( .I(n2925), .O(n3667) );
  BUF1 U3382 ( .I(n2912), .O(n3666) );
  BUF1 U3383 ( .I(n2939), .O(n3665) );
  BUF1 U3384 ( .I(n2921), .O(n3664) );
  BUF1 U3385 ( .I(n2939), .O(n3663) );
  BUF1 U3386 ( .I(n2939), .O(n3662) );
  BUF1 U3387 ( .I(n2921), .O(n3661) );
  BUF1 U3388 ( .I(n2921), .O(n3659) );
  BUF1 U3389 ( .I(n2910), .O(n3794) );
  BUF1 U3390 ( .I(n2905), .O(n3793) );
  BUF1 U3391 ( .I(n2910), .O(n3792) );
  BUF1 U3392 ( .I(n2905), .O(n3791) );
  BUF1 U3393 ( .I(n2906), .O(n2909) );
  BUF1 U3394 ( .I(n2909), .O(n3790) );
  BUF1 U3395 ( .I(n2909), .O(n3789) );
  BUF1 U3396 ( .I(n2909), .O(n3788) );
  BUF1 U3397 ( .I(n2913), .O(n3787) );
  BUF1 U3398 ( .I(n2909), .O(n3786) );
  BUF1 U3399 ( .I(n2907), .O(n3785) );
  BUF1 U3400 ( .I(n2909), .O(n3784) );
  BUF1 U3401 ( .I(n2910), .O(n3783) );
  BUF1 U3402 ( .I(n2913), .O(n3782) );
  BUF1 U3403 ( .I(n2918), .O(n2914) );
  BUF1 U3404 ( .I(n2914), .O(n3646) );
  BUF1 U3405 ( .I(n2914), .O(n3645) );
  BUF1 U3406 ( .I(n3830), .O(n3644) );
  BUF1 U3407 ( .I(n2914), .O(n3643) );
  BUF1 U3408 ( .I(n3830), .O(n3642) );
  BUF1 U3409 ( .I(n2911), .O(n3641) );
  BUF1 U3410 ( .I(n2914), .O(n3640) );
  BUF1 U3411 ( .I(n2918), .O(n2916) );
  BUF1 U3412 ( .I(n2916), .O(n2943) );
  BUF1 U3413 ( .I(n2943), .O(n2917) );
  BUF1 U3414 ( .I(n2917), .O(n3639) );
  BUF1 U3415 ( .I(n2917), .O(n3638) );
  BUF1 U3416 ( .I(n2917), .O(n3637) );
  BUF1 U3417 ( .I(n2914), .O(n3647) );
  BUF1 U3418 ( .I(n2923), .O(n2922) );
  BUF1 U3419 ( .I(n2922), .O(n2926) );
  BUF1 U3420 ( .I(n2926), .O(n3681) );
  BUF1 U3421 ( .I(n2922), .O(n3680) );
  BUF1 U3422 ( .I(n2926), .O(n3679) );
  BUF1 U3423 ( .I(n2922), .O(n3678) );
  BUF1 U3424 ( .I(n2922), .O(n3677) );
  BUF1 U3425 ( .I(n2926), .O(n3676) );
  BUF1 U3426 ( .I(n2922), .O(n3675) );
  BUF1 U3427 ( .I(n2925), .O(n3674) );
  BUF1 U3428 ( .I(n2925), .O(n3673) );
  BUF1 U3429 ( .I(n2925), .O(n3672) );
  BUF1 U3430 ( .I(n2912), .O(n3671) );
  BUF1 U3431 ( .I(n2925), .O(n3670) );
  BUF1 U3432 ( .I(n2912), .O(n3669) );
  BUF1 U3433 ( .I(n2912), .O(n3668) );
  BUF1 U3434 ( .I(n2913), .O(n3781) );
  BUF1 U3435 ( .I(n2914), .O(n3622) );
  BUF1 U3436 ( .I(n2916), .O(n3621) );
  BUF1 U3437 ( .I(n2943), .O(n3620) );
  BUF1 U3438 ( .I(n2916), .O(n3619) );
  BUF1 U3439 ( .I(n2916), .O(n3618) );
  BUF1 U3440 ( .I(n2943), .O(n3617) );
  BUF1 U3441 ( .I(n2916), .O(n3616) );
  BUF1 U3442 ( .I(n2943), .O(n3615) );
  BUF1 U3443 ( .I(n3830), .O(n2936) );
  BUF1 U3444 ( .I(n2936), .O(n2915) );
  BUF1 U3445 ( .I(n2915), .O(n2935) );
  BUF1 U3446 ( .I(n2935), .O(n3567) );
  BUF1 U3447 ( .I(n2935), .O(n3566) );
  BUF1 U3448 ( .I(n2935), .O(n3565) );
  BUF1 U3449 ( .I(n2915), .O(n3564) );
  BUF1 U3450 ( .I(n2935), .O(n3563) );
  BUF1 U3451 ( .I(n2915), .O(n3562) );
  BUF1 U3452 ( .I(n2915), .O(n3561) );
  BUF1 U3453 ( .I(n2935), .O(n3560) );
  BUF1 U3454 ( .I(n2915), .O(n3559) );
  BUF1 U3455 ( .I(n2936), .O(n2933) );
  BUF1 U3456 ( .I(n2933), .O(n2932) );
  BUF1 U3457 ( .I(n2932), .O(n3558) );
  BUF1 U3458 ( .I(n2932), .O(n3556) );
  BUF1 U3459 ( .I(n2936), .O(n2949) );
  BUF1 U3460 ( .I(n2949), .O(n3598) );
  BUF1 U3461 ( .I(n2949), .O(n3597) );
  BUF1 U3462 ( .I(n2949), .O(n3818) );
  BUF1 U3463 ( .I(n3818), .O(n3596) );
  BUF1 U3464 ( .I(n2949), .O(n3595) );
  BUF1 U3465 ( .I(n2915), .O(n2934) );
  BUF1 U3466 ( .I(n2934), .O(n3594) );
  BUF1 U3467 ( .I(n2934), .O(n3593) );
  BUF1 U3468 ( .I(n2934), .O(n3592) );
  BUF1 U3469 ( .I(n2918), .O(n2945) );
  BUF1 U3470 ( .I(n2945), .O(n3636) );
  BUF1 U3471 ( .I(n2917), .O(n3635) );
  BUF1 U3472 ( .I(n2918), .O(n3634) );
  BUF1 U3473 ( .I(n2916), .O(n3633) );
  BUF1 U3474 ( .I(n2917), .O(n3632) );
  BUF1 U3475 ( .I(n2945), .O(n2944) );
  BUF1 U3476 ( .I(n2944), .O(n3631) );
  BUF1 U3477 ( .I(n3830), .O(n3817) );
  BUF1 U3478 ( .I(n3817), .O(n3630) );
  BUF1 U3479 ( .I(n3817), .O(n3629) );
  BUF1 U3480 ( .I(n3817), .O(n3628) );
  BUF1 U3481 ( .I(n2917), .O(n3627) );
  BUF1 U3482 ( .I(n3817), .O(n3626) );
  BUF1 U3483 ( .I(n2918), .O(n3625) );
  BUF1 U3484 ( .I(n2919), .O(n3624) );
  BUF1 U3485 ( .I(n3817), .O(n3623) );
  BUF1 U3486 ( .I(n3818), .O(n3599) );
  BUF1 U3487 ( .I(n2936), .O(n2920) );
  BUF1 U3488 ( .I(n2920), .O(n3577) );
  BUF1 U3489 ( .I(n2920), .O(n3576) );
  BUF1 U3490 ( .I(n2920), .O(n2937) );
  BUF1 U3491 ( .I(n2937), .O(n3575) );
  BUF1 U3492 ( .I(n2920), .O(n3574) );
  BUF1 U3493 ( .I(n2920), .O(n3573) );
  BUF1 U3494 ( .I(n2937), .O(n3572) );
  BUF1 U3495 ( .I(n2920), .O(n3571) );
  BUF1 U3496 ( .I(n2937), .O(n3570) );
  BUF1 U3497 ( .I(n2937), .O(n3569) );
  BUF1 U3498 ( .I(n2937), .O(n3568) );
  BUF1 U3499 ( .I(n2938), .O(n3703) );
  BUF1 U3500 ( .I(n2923), .O(n3698) );
  BUF1 U3501 ( .I(n2931), .O(n3723) );
  BUF1 U3502 ( .I(n2927), .O(n3721) );
  BUF1 U3503 ( .I(n2921), .O(n3695) );
  BUF1 U3504 ( .I(n2922), .O(n3684) );
  BUF1 U3505 ( .I(n2928), .O(n3700) );
  BUF1 U3506 ( .I(n2926), .O(n3686) );
  BUF1 U3507 ( .I(n2928), .O(n3701) );
  BUF1 U3508 ( .I(n2924), .O(n3690) );
  BUF1 U3509 ( .I(n2931), .O(n3722) );
  BUF1 U3510 ( .I(n2939), .O(n3693) );
  BUF1 U3511 ( .I(n2924), .O(n3691) );
  BUF1 U3512 ( .I(n2923), .O(n3687) );
  BUF1 U3513 ( .I(n2926), .O(n3682) );
  BUF1 U3514 ( .I(n2924), .O(n3692) );
  BUF1 U3515 ( .I(n2927), .O(n3727) );
  BUF1 U3516 ( .I(n2924), .O(n3685) );
  BUF1 U3517 ( .I(n2925), .O(n3689) );
  BUF1 U3518 ( .I(n2926), .O(n3683) );
  BUF1 U3519 ( .I(n2927), .O(n3724) );
  BUF1 U3520 ( .I(n2928), .O(n3697) );
  BUF1 U3521 ( .I(n2928), .O(n3699) );
  BUF1 U3522 ( .I(n2929), .O(n3708) );
  BUF1 U3523 ( .I(n2930), .O(n3718) );
  BUF1 U3524 ( .I(n2930), .O(n3719) );
  BUF1 U3525 ( .I(n2948), .O(n2946) );
  BUF1 U3526 ( .I(n2946), .O(n3457) );
  BUF1 U3527 ( .I(n2931), .O(n3720) );
  BUF1 U3528 ( .I(n3511), .O(n3508) );
  BUF1 U3529 ( .I(n2932), .O(n3554) );
  BUF1 U3530 ( .I(n2933), .O(n3553) );
  BUF1 U3531 ( .I(n2933), .O(n3552) );
  BUF1 U3532 ( .I(n2932), .O(n3551) );
  BUF1 U3533 ( .I(n2933), .O(n3550) );
  BUF1 U3534 ( .I(n3511), .O(n3549) );
  BUF1 U3535 ( .I(n2940), .O(n3548) );
  BUF1 U3536 ( .I(n3511), .O(n3547) );
  BUF1 U3537 ( .I(n2940), .O(n3546) );
  BUF1 U3538 ( .I(n2932), .O(n3557) );
  BUF1 U3539 ( .I(n2936), .O(n3591) );
  BUF1 U3540 ( .I(n2934), .O(n3590) );
  BUF1 U3541 ( .I(n2933), .O(n3555) );
  BUF1 U3542 ( .I(n2949), .O(n3589) );
  BUF1 U3543 ( .I(n2932), .O(n3588) );
  BUF1 U3544 ( .I(n2934), .O(n3587) );
  BUF1 U3545 ( .I(n2933), .O(n3586) );
  BUF1 U3546 ( .I(n2934), .O(n3819) );
  BUF1 U3547 ( .I(n3819), .O(n3585) );
  BUF1 U3548 ( .I(n3819), .O(n3584) );
  BUF1 U3549 ( .I(n3819), .O(n3583) );
  BUF1 U3550 ( .I(n2935), .O(n3582) );
  BUF1 U3551 ( .I(n3819), .O(n3581) );
  BUF1 U3552 ( .I(n2936), .O(n3580) );
  BUF1 U3553 ( .I(n2937), .O(n3579) );
  BUF1 U3554 ( .I(n3819), .O(n3578) );
  BUF1 U3555 ( .I(n2938), .O(n3702) );
  BUF1 U3556 ( .I(n2939), .O(n3660) );
  BUF1 U3557 ( .I(n2942), .O(n3524) );
  BUF1 U3558 ( .I(n3827), .O(n3523) );
  BUF1 U3559 ( .I(n2948), .O(n3823) );
  BUF1 U3560 ( .I(n3823), .O(n3820) );
  BUF1 U3561 ( .I(n3820), .O(n3479) );
  BUF1 U3562 ( .I(n3820), .O(n3478) );
  BUF1 U3563 ( .I(n3823), .O(n3477) );
  BUF1 U3564 ( .I(n3820), .O(n3476) );
  BUF1 U3565 ( .I(n3823), .O(n3475) );
  BUF1 U3566 ( .I(n3823), .O(n3474) );
  BUF1 U3567 ( .I(n3820), .O(n3473) );
  BUF1 U3568 ( .I(n3827), .O(n3525) );
  BUF1 U3569 ( .I(n3823), .O(n3472) );
  BUF1 U3570 ( .I(n2948), .O(n3822) );
  BUF1 U3571 ( .I(n3822), .O(n3821) );
  BUF1 U3572 ( .I(n3821), .O(n3471) );
  BUF1 U3573 ( .I(n3821), .O(n3470) );
  BUF1 U3574 ( .I(n3821), .O(n3469) );
  BUF1 U3575 ( .I(n3821), .O(n3467) );
  BUF1 U3576 ( .I(n3822), .O(n3466) );
  BUF1 U3577 ( .I(n3822), .O(n3465) );
  BUF1 U3578 ( .I(n3821), .O(n3464) );
  BUF1 U3579 ( .I(n3822), .O(n3463) );
  BUF1 U3580 ( .I(n2940), .O(n3545) );
  BUF1 U3581 ( .I(n2940), .O(n3544) );
  BUF1 U3582 ( .I(n3829), .O(n3543) );
  BUF1 U3583 ( .I(n2940), .O(n3542) );
  BUF1 U3584 ( .I(n2947), .O(n3505) );
  BUF1 U3585 ( .I(n3505), .O(n3541) );
  BUF1 U3586 ( .I(n2941), .O(n3540) );
  BUF1 U3587 ( .I(n2941), .O(n3539) );
  BUF1 U3588 ( .I(n2941), .O(n3538) );
  BUF1 U3589 ( .I(n3828), .O(n3537) );
  BUF1 U3590 ( .I(n2941), .O(n3536) );
  BUF1 U3591 ( .I(n3828), .O(n3535) );
  BUF1 U3592 ( .I(n3828), .O(n3534) );
  BUF1 U3593 ( .I(n2941), .O(n3533) );
  BUF1 U3594 ( .I(n3828), .O(n3532) );
  BUF1 U3595 ( .I(n2942), .O(n3531) );
  BUF1 U3596 ( .I(n2942), .O(n3530) );
  BUF1 U3597 ( .I(n2942), .O(n3529) );
  BUF1 U3598 ( .I(n3827), .O(n3528) );
  BUF1 U3599 ( .I(n2942), .O(n3527) );
  BUF1 U3600 ( .I(n3827), .O(n3526) );
  BUF1 U3601 ( .I(n2948), .O(n3824) );
  BUF1 U3602 ( .I(n3824), .O(n2951) );
  BUF1 U3603 ( .I(n2951), .O(n3485) );
  BUF1 U3604 ( .I(n3824), .O(n3484) );
  BUF1 U3605 ( .I(n3824), .O(n3483) );
  BUF1 U3606 ( .I(n2951), .O(n3482) );
  BUF1 U3607 ( .I(n3824), .O(n3481) );
  BUF1 U3608 ( .I(n3820), .O(n3480) );
  BUF1 U3609 ( .I(n2947), .O(n3502) );
  BUF1 U3610 ( .I(n2943), .O(n3614) );
  BUF1 U3611 ( .I(n3826), .O(n3503) );
  BUF1 U3612 ( .I(n2943), .O(n3613) );
  BUF1 U3613 ( .I(n3818), .O(n3601) );
  BUF1 U3614 ( .I(n3818), .O(n3602) );
  BUF1 U3615 ( .I(n2944), .O(n3612) );
  BUF1 U3616 ( .I(n3818), .O(n3603) );
  BUF1 U3617 ( .I(n2945), .O(n3604) );
  BUF1 U3618 ( .I(n2944), .O(n3611) );
  BUF1 U3619 ( .I(n2944), .O(n3605) );
  BUF1 U3620 ( .I(n2944), .O(n3610) );
  BUF1 U3621 ( .I(n2945), .O(n3609) );
  BUF1 U3622 ( .I(n2945), .O(n3606) );
  BUF1 U3623 ( .I(n2944), .O(n3608) );
  BUF1 U3624 ( .I(n2945), .O(n3607) );
  BUF1 U3625 ( .I(n3824), .O(n3486) );
  BUF1 U3626 ( .I(n2946), .O(n3462) );
  BUF1 U3627 ( .I(n2946), .O(n3461) );
  BUF1 U3628 ( .I(n2946), .O(n3460) );
  BUF1 U3629 ( .I(n2946), .O(n3459) );
  BUF1 U3630 ( .I(n2946), .O(n3458) );
  BUF1 U3631 ( .I(n3822), .O(n3468) );
  BUF1 U3632 ( .I(n3826), .O(n3501) );
  BUF1 U3633 ( .I(n3826), .O(n3500) );
  BUF1 U3634 ( .I(n2947), .O(n3499) );
  BUF1 U3635 ( .I(n3826), .O(n3498) );
  BUF1 U3636 ( .I(n2948), .O(n3825) );
  BUF1 U3637 ( .I(n3825), .O(n2950) );
  BUF1 U3638 ( .I(n2950), .O(n3497) );
  BUF1 U3639 ( .I(n2950), .O(n3496) );
  BUF1 U3640 ( .I(n3825), .O(n3495) );
  BUF1 U3641 ( .I(n2950), .O(n3494) );
  BUF1 U3642 ( .I(n3825), .O(n3493) );
  BUF1 U3643 ( .I(n3825), .O(n3492) );
  BUF1 U3644 ( .I(n2949), .O(n3600) );
  BUF1 U3645 ( .I(n2950), .O(n3491) );
  BUF1 U3646 ( .I(n3825), .O(n3490) );
  BUF1 U3647 ( .I(n2951), .O(n3488) );
  BUF1 U3648 ( .I(n2951), .O(n3489) );
  BUF1 U3649 ( .I(n2951), .O(n3487) );
  MXL2HS U3650 ( .A(n228), .B(\CHIPS[0].core/pooling[13] ), .S(n2970), .OB(
        n2965) );
  INV1S U3651 ( .I(n95), .O(n3045) );
  BUF1 U3652 ( .I(n648), .O(n2970) );
  MXL2HS U3653 ( .A(n222), .B(\CHIPS[1].core/pooling[8] ), .S(n2970), .OB(
        n3051) );
  NR2 U3654 ( .I1(\CHIPS[1].core/pooling[6] ), .I2(\CHIPS[1].core/pooling[5] ), 
        .O(n2956) );
  NR2 U3655 ( .I1(\CHIPS[1].core/pooling[1] ), .I2(\CHIPS[1].core/pooling[0] ), 
        .O(n2955) );
  NR3 U3656 ( .I1(\CHIPS[1].core/pooling[2] ), .I2(\CHIPS[1].core/pooling[4] ), 
        .I3(\CHIPS[1].core/pooling[3] ), .O(n2954) );
  ND3 U3657 ( .I1(n2956), .I2(n2955), .I3(n2954), .O(n2961) );
  NR2 U3658 ( .I1(n229), .I2(\CHIPS[1].core/temp_conv[5] ), .O(n2959) );
  NR2 U3659 ( .I1(\CHIPS[1].core/temp_conv[1] ), .I2(
        \CHIPS[1].core/temp_conv[0] ), .O(n2958) );
  NR3 U3660 ( .I1(\CHIPS[1].core/temp_conv[4] ), .I2(
        \CHIPS[1].core/temp_conv[3] ), .I3(\CHIPS[1].core/temp_conv[2] ), .O(
        n2957) );
  ND3 U3661 ( .I1(n2959), .I2(n2958), .I3(n2957), .O(n2960) );
  MXL2HS U3662 ( .A(n2961), .B(n2960), .S(n2953), .OB(n2962) );
  MXL2HS U3663 ( .A(n223), .B(\CHIPS[1].core/pooling[7] ), .S(n649), .OB(n3033) );
  AO12 U3664 ( .B1(n3051), .B2(n2962), .A1(n3033), .O(n3008) );
  OR2 U3665 ( .I1(n3045), .I2(n3008), .O(n3049) );
  MXL2HS U3666 ( .A(n227), .B(\CHIPS[0].core/pooling[11] ), .S(n2970), .OB(
        n3027) );
  ND3 U3667 ( .I1(n3044), .I2(n3050), .I3(n3034), .O(n3009) );
  NR2 U3668 ( .I1(n3027), .I2(n3009), .O(n3012) );
  ND2S U3669 ( .I1(n3012), .I2(n3011), .O(n2964) );
  OR2 U3670 ( .I1(n3049), .I2(n2964), .O(n2982) );
  OR2 U3671 ( .I1(n2965), .I2(n2982), .O(n2995) );
  MXL2HS U3672 ( .A(n224), .B(\CHIPS[0].core/pooling[14] ), .S(n2970), .OB(
        n2996) );
  ND2S U3673 ( .I1(n2995), .I2(n2996), .O(n2969) );
  INV1S U3674 ( .I(n3008), .O(n2963) );
  NR2 U3675 ( .I1(sel), .I2(n2963), .O(n3037) );
  INV1S U3676 ( .I(n2964), .O(n2966) );
  INV1S U3677 ( .I(n2965), .O(n2985) );
  AOI12HS U3678 ( .B1(n2966), .B2(n2985), .A1(n3049), .O(n2967) );
  NR2 U3679 ( .I1(n3037), .I2(n2967), .O(n2999) );
  INV1S U3680 ( .I(n2996), .O(n2997) );
  ND2S U3681 ( .I1(n2999), .I2(n2997), .O(n2968) );
  ND2S U3682 ( .I1(n2969), .I2(n2968), .O(n2975) );
  MXL2HS U3683 ( .A(n225), .B(\CHIPS[1].core/pooling[13] ), .S(n2970), .OB(
        n2978) );
  OR2 U3684 ( .I1(n95), .I2(n3008), .O(n3023) );
  MXL2HS U3685 ( .A(n226), .B(\CHIPS[1].core/pooling[11] ), .S(n2970), .OB(
        n3025) );
  INV1S U3686 ( .I(n3051), .O(n3004) );
  ND3 U3687 ( .I1(n3004), .I2(n3055), .I3(n3054), .O(n3024) );
  NR2 U3688 ( .I1(n3025), .I2(n3024), .O(n3014) );
  ND2S U3689 ( .I1(n3014), .I2(n3013), .O(n2971) );
  OR2 U3690 ( .I1(n3023), .I2(n2971), .O(n2979) );
  NR2 U3691 ( .I1(n2978), .I2(n2979), .O(n2989) );
  INV1S U3692 ( .I(n2978), .O(n2976) );
  INV1S U3693 ( .I(n2971), .O(n2973) );
  ND2S U3694 ( .I1(n3008), .I2(n3045), .O(n2972) );
  OA12 U3695 ( .B1(n2973), .B2(n3023), .A1(n2972), .O(n2977) );
  OAI12HS U3696 ( .B1(n2976), .B2(n528), .A1(n2977), .O(n2994) );
  MXL2HS U3697 ( .A(n2989), .B(n2994), .S(n2988), .OB(n2974) );
  ND2S U3698 ( .I1(n2977), .I2(n2976), .O(n2981) );
  ND2S U3699 ( .I1(n2979), .I2(n2978), .O(n2980) );
  ND2S U3700 ( .I1(n2981), .I2(n2980), .O(n2987) );
  INV1S U3701 ( .I(n2982), .O(n2984) );
  INV1S U3702 ( .I(n2999), .O(n2983) );
  OAI12HS U3703 ( .B1(n2985), .B2(n2984), .A1(n2983), .O(n2986) );
  OAI12HS U3704 ( .B1(n3023), .B2(n2988), .A1(n2990), .O(n2993) );
  ND2S U3705 ( .I1(n2989), .I2(n2988), .O(n2992) );
  INV1S U3706 ( .I(n2990), .O(n2991) );
  MOAI1S U3707 ( .A1(n2994), .A2(n2993), .B1(n2992), .B2(n2991), .O(n3003) );
  NR2 U3708 ( .I1(n2996), .I2(n2995), .O(n3001) );
  OA12 U3709 ( .B1(n638), .B2(n2997), .A1(n3000), .O(n2998) );
  MOAI1S U3710 ( .A1(n3001), .A2(n3000), .B1(n2999), .B2(n2998), .O(n3002) );
  OR2 U3711 ( .I1(n3004), .I2(n3023), .O(n3007) );
  NR2 U3712 ( .I1(n95), .I2(n3051), .O(n3005) );
  AOI22S U3713 ( .A1(n3005), .A2(n3008), .B1(n3037), .B2(n3034), .O(n3006) );
  OR2 U3714 ( .I1(n3034), .I2(n3049), .O(n3035) );
  ND3 U3715 ( .I1(n3007), .I2(n3006), .I3(n3035), .O(n3871) );
  OA12 U3716 ( .B1(n3008), .B2(n3024), .A1(n3045), .O(n3021) );
  INV1S U3717 ( .I(n3009), .O(n3028) );
  NR2 U3718 ( .I1(sel), .I2(n3028), .O(n3010) );
  OR2 U3719 ( .I1(n3010), .I2(n3037), .O(n3020) );
  AOI22S U3720 ( .A1(n3013), .A2(n3021), .B1(n3020), .B2(n3011), .O(n3018) );
  MXL2HS U3721 ( .A(n3012), .B(n3027), .S(n3011), .OB(n3016) );
  MXL2HS U3722 ( .A(n3014), .B(n3025), .S(n3013), .OB(n3015) );
  OA22 U3723 ( .A1(n3049), .A2(n3016), .B1(n3023), .B2(n3015), .O(n3017) );
  INV1S U3724 ( .I(n3025), .O(n3022) );
  INV1S U3725 ( .I(n3027), .O(n3019) );
  AOI22S U3726 ( .A1(n3022), .A2(n3021), .B1(n3020), .B2(n3019), .O(n3032) );
  INV1S U3727 ( .I(n3023), .O(n3053) );
  INV1S U3728 ( .I(n3024), .O(n3026) );
  ND3 U3729 ( .I1(n3053), .I2(n3026), .I3(n3025), .O(n3031) );
  INV1S U3730 ( .I(n3049), .O(n3029) );
  ND3 U3731 ( .I1(n3029), .I2(n3028), .I3(n3027), .O(n3030) );
  ND3 U3732 ( .I1(n3032), .I2(n3031), .I3(n3030), .O(n3868) );
  OR2 U3733 ( .I1(n3033), .I2(n3051), .O(n3046) );
  XOR2HS U3734 ( .I1(n3055), .I2(n3046), .O(n3041) );
  INV1S U3735 ( .I(n3034), .O(n3042) );
  NR2 U3736 ( .I1(n3042), .I2(n3049), .O(n3039) );
  INV1S U3737 ( .I(n3035), .O(n3036) );
  NR2 U3738 ( .I1(n3037), .I2(n3036), .O(n3058) );
  ND2S U3739 ( .I1(n3058), .I2(n3044), .O(n3038) );
  OAI12HS U3740 ( .B1(n3044), .B2(n3039), .A1(n3038), .O(n3040) );
  OAI12HS U3741 ( .B1(n3042), .B2(n3050), .A1(n3044), .O(n3043) );
  OAI12HS U3742 ( .B1(n3044), .B2(n3050), .A1(n3043), .O(n3048) );
  ND3 U3743 ( .I1(n3046), .I2(n3054), .I3(n3045), .O(n3047) );
  OA12 U3744 ( .B1(n638), .B2(n3048), .A1(n3047), .O(n3060) );
  INV1S U3745 ( .I(n3050), .O(n3057) );
  OAI12HS U3746 ( .B1(n3054), .B2(n3051), .A1(n3055), .O(n3052) );
  OAI112HS U3747 ( .C1(n3055), .C2(n3054), .A1(n3053), .B1(n3052), .O(n3056)
         );
  OA12 U3748 ( .B1(n3058), .B2(n3057), .A1(n3056), .O(n3059) );
  OR2 U3749 ( .I1(counter_next[1]), .I2(counter_next[0]), .O(n3063) );
  ND3HT U3750 ( .I1(n3091), .I2(n3832), .I3(n3064), .O(n3066) );
  OAI12HT U3751 ( .B1(n3091), .B2(n3832), .A1(n3067), .O(n3087) );
  NR2F U3752 ( .I1(n3069), .I2(n3068), .O(n3263) );
  ND2F U3753 ( .I1(n3087), .I2(n3443), .O(n3268) );
  XNR2HS U3754 ( .I1(counter_next[0]), .I2(n3230), .O(n3070) );
  ND2 U3755 ( .I1(n3095), .I2(n3070), .O(n90) );
  XNR2HS U3756 ( .I1(counter_initial_next[0]), .I2(n3453), .O(n84) );
  INV1S U3757 ( .I(counter_initial_next[0]), .O(n3072) );
  INV1S U3758 ( .I(counter_initial_next[1]), .O(n3071) );
  OA12 U3759 ( .B1(n3443), .B2(n3072), .A1(n3071), .O(n3074) );
  NR2 U3760 ( .I1(n3074), .I2(n3077), .O(n85) );
  XOR2HS U3761 ( .I1(counter_initial_next[2]), .I2(n3077), .O(n86) );
  INV1S U3762 ( .I(n3077), .O(n3075) );
  NR2 U3763 ( .I1(n3076), .I2(n3075), .O(n3079) );
  AOI12HS U3764 ( .B1(n3077), .B2(counter_initial_next[2]), .A1(
        counter_initial_next[3]), .O(n3078) );
  NR2 U3765 ( .I1(n3079), .I2(n3078), .O(n87) );
  NR2F U3766 ( .I1(n3367), .I2(n3087), .O(n3140) );
  OAI12HS U3767 ( .B1(n3087), .B2(counter_next[0]), .A1(n3453), .O(n3082) );
  INV1S U3768 ( .I(n3082), .O(n3080) );
  MXL2HS U3769 ( .A(n3081), .B(n3080), .S(counter_next[1]), .OB(n91) );
  NR2 U3770 ( .I1(counter_next[1]), .I2(n3087), .O(n3083) );
  NR2 U3771 ( .I1(n3083), .I2(n3082), .O(n3085) );
  ND3S U3772 ( .I1(n3426), .I2(counter_next[1]), .I3(counter_next[0]), .O(
        n3084) );
  MXL2HS U3773 ( .A(n3085), .B(n3084), .S(n3831), .OB(n92) );
  ND3S U3774 ( .I1(counter_next[1]), .I2(counter_next[0]), .I3(counter_next[2]), .O(n3086) );
  NR2 U3775 ( .I1(n3086), .I2(n3087), .O(n3092) );
  MXL2HS U3776 ( .A(n3089), .B(n3088), .S(counter_next[3]), .OB(n93) );
  AOI12HS U3777 ( .B1(n3091), .B2(n3090), .A1(n3382), .O(n3094) );
  ND3S U3778 ( .I1(n3426), .I2(n3092), .I3(counter_next[3]), .O(n3093) );
  OAI12HS U3779 ( .B1(n3094), .B2(n3832), .A1(n3093), .O(n94) );
  INV1S U3780 ( .I(weights[82]), .O(n3097) );
  AOI22S U3781 ( .A1(n3113), .A2(weights[98]), .B1(n3286), .B2(weights[106]), 
        .O(n3096) );
  OAI12HS U3782 ( .B1(n3095), .B2(n3097), .A1(n3096), .O(N296) );
  INV1S U3783 ( .I(weights[106]), .O(n3099) );
  BUF6 U3784 ( .I(n3140), .O(n3325) );
  AOI22S U3785 ( .A1(n3382), .A2(n524), .B1(n3342), .B2(n112), .O(n3098) );
  OAI12HS U3786 ( .B1(n3095), .B2(n3099), .A1(n3098), .O(N320) );
  AOI22S U3787 ( .A1(n3113), .A2(weights[2]), .B1(n3108), .B2(weights[10]), 
        .O(n3100) );
  OAI12HS U3788 ( .B1(n3095), .B2(n1478), .A1(n3100), .O(N200) );
  INV1S U3789 ( .I(weights[10]), .O(n3102) );
  AOI22S U3790 ( .A1(n3113), .A2(weights[26]), .B1(n3108), .B2(weights[34]), 
        .O(n3101) );
  OAI12HS U3791 ( .B1(n3095), .B2(n3102), .A1(n3101), .O(N224) );
  INV1S U3792 ( .I(weights[34]), .O(n3104) );
  AOI22S U3793 ( .A1(n3127), .A2(n526), .B1(n3108), .B2(n145), .O(n3103) );
  OAI12HS U3794 ( .B1(n3177), .B2(n3104), .A1(n3103), .O(N248) );
  AOI22S U3795 ( .A1(n3113), .A2(weights[74]), .B1(n3108), .B2(weights[82]), 
        .O(n3105) );
  OAI12HS U3796 ( .B1(n3095), .B2(n2472), .A1(n3105), .O(N272) );
  AOI22S U3797 ( .A1(n3127), .A2(weights[82]), .B1(n3108), .B2(weights[90]), 
        .O(n3106) );
  OAI12HS U3798 ( .B1(n3149), .B2(n3107), .A1(n3106), .O(N280) );
  INV1S U3799 ( .I(weights[90]), .O(n3110) );
  AOI22S U3800 ( .A1(n3113), .A2(weights[106]), .B1(n3108), .B2(weights[114]), 
        .O(n3109) );
  OAI12HS U3801 ( .B1(n3149), .B2(n3110), .A1(n3109), .O(N304) );
  INV1S U3802 ( .I(weights[114]), .O(n3112) );
  BUF6 U3803 ( .I(n3140), .O(n3389) );
  AOI22S U3804 ( .A1(n3127), .A2(n112), .B1(n3122), .B2(weights[138]), .O(
        n3111) );
  OAI12HS U3805 ( .B1(n3149), .B2(n3112), .A1(n3111), .O(N328) );
  AOI22S U3806 ( .A1(n3113), .A2(weights[10]), .B1(n3122), .B2(weights[18]), 
        .O(n3114) );
  OAI12HS U3807 ( .B1(n3149), .B2(n3115), .A1(n3114), .O(N208) );
  INV1S U3808 ( .I(weights[18]), .O(n3117) );
  AOI22S U3809 ( .A1(n3141), .A2(weights[34]), .B1(n3122), .B2(weights[42]), 
        .O(n3116) );
  OAI12HS U3810 ( .B1(n3143), .B2(n3117), .A1(n3116), .O(N232) );
  INV1S U3811 ( .I(weights[42]), .O(n3119) );
  AOI22S U3812 ( .A1(n3127), .A2(n145), .B1(n3122), .B2(n521), .O(n3118) );
  OAI12HS U3813 ( .B1(n3143), .B2(n3119), .A1(n3118), .O(N256) );
  AOI22S U3814 ( .A1(n3127), .A2(n521), .B1(n3122), .B2(weights[74]), .O(n3120) );
  OAI12HS U3815 ( .B1(n3134), .B2(n3121), .A1(n3120), .O(N264) );
  INV1S U3816 ( .I(weights[74]), .O(n3124) );
  AOI22S U3817 ( .A1(n3169), .A2(weights[90]), .B1(n3122), .B2(weights[98]), 
        .O(n3123) );
  OAI12HS U3818 ( .B1(n3134), .B2(n3124), .A1(n3123), .O(N288) );
  INV1S U3819 ( .I(weights[98]), .O(n3126) );
  AOI22S U3820 ( .A1(n3141), .A2(weights[114]), .B1(n3137), .B2(n524), .O(
        n3125) );
  OAI12HS U3821 ( .B1(n3134), .B2(n3126), .A1(n3125), .O(N312) );
  AOI22S U3822 ( .A1(n3127), .A2(i_data[2]), .B1(n3137), .B2(weights[2]), .O(
        n3128) );
  OAI12HS U3823 ( .B1(n3134), .B2(n3129), .A1(n3128), .O(N192) );
  INV1S U3824 ( .I(weights[2]), .O(n3131) );
  AOI22S U3825 ( .A1(n3141), .A2(weights[18]), .B1(n3137), .B2(weights[26]), 
        .O(n3130) );
  OAI12HS U3826 ( .B1(n3134), .B2(n3131), .A1(n3130), .O(N216) );
  INV1S U3827 ( .I(weights[26]), .O(n3133) );
  AOI22S U3828 ( .A1(n3141), .A2(weights[42]), .B1(n3137), .B2(n526), .O(n3132) );
  OAI12HS U3829 ( .B1(n3134), .B2(n3133), .A1(n3132), .O(N240) );
  MUX2 U3830 ( .A(i_data[0]), .B(n608), .S(n3383), .O(n62) );
  INV1S U3831 ( .I(weights[83]), .O(n3136) );
  AOI22S U3832 ( .A1(n3141), .A2(weights[99]), .B1(n3137), .B2(weights[107]), 
        .O(n3135) );
  OAI12HS U3833 ( .B1(n3143), .B2(n3136), .A1(n3135), .O(N297) );
  INV1S U3834 ( .I(weights[107]), .O(n3139) );
  AOI22S U3835 ( .A1(n3154), .A2(n108), .B1(n3137), .B2(weights[131]), .O(
        n3138) );
  OAI12HS U3836 ( .B1(n3143), .B2(n3139), .A1(n3138), .O(N321) );
  BUF2 U3837 ( .I(n3140), .O(n3375) );
  AOI22S U3838 ( .A1(n3141), .A2(weights[3]), .B1(n3375), .B2(weights[11]), 
        .O(n3142) );
  OAI12HS U3839 ( .B1(n3268), .B2(n1474), .A1(n3142), .O(N201) );
  INV1S U3840 ( .I(weights[11]), .O(n3145) );
  AOI22S U3841 ( .A1(n3154), .A2(weights[27]), .B1(n3238), .B2(weights[35]), 
        .O(n3144) );
  OAI12HS U3842 ( .B1(n3177), .B2(n3145), .A1(n3144), .O(N225) );
  INV1S U3843 ( .I(weights[35]), .O(n3147) );
  AOI22S U3844 ( .A1(n3154), .A2(weights[51]), .B1(n3375), .B2(n525), .O(n3146) );
  OAI12HS U3845 ( .B1(n3177), .B2(n3147), .A1(n3146), .O(N249) );
  AOI22S U3846 ( .A1(n3154), .A2(weights[75]), .B1(n3238), .B2(weights[83]), 
        .O(n3148) );
  OAI12HS U3847 ( .B1(n3177), .B2(n2507), .A1(n3148), .O(N273) );
  AOI22S U3848 ( .A1(n3154), .A2(weights[83]), .B1(n3385), .B2(weights[91]), 
        .O(n3150) );
  OAI12HS U3849 ( .B1(n3163), .B2(n3151), .A1(n3150), .O(N281) );
  INV1S U3850 ( .I(weights[91]), .O(n3153) );
  AOI22S U3851 ( .A1(n3181), .A2(weights[107]), .B1(n3375), .B2(weights[115]), 
        .O(n3152) );
  OAI12HS U3852 ( .B1(n3163), .B2(n3153), .A1(n3152), .O(N305) );
  INV1S U3853 ( .I(weights[115]), .O(n3156) );
  AOI22S U3854 ( .A1(n3154), .A2(weights[131]), .B1(n3166), .B2(weights[139]), 
        .O(n3155) );
  OAI12HS U3855 ( .B1(n3163), .B2(n3156), .A1(n3155), .O(N329) );
  AOI22S U3856 ( .A1(n3169), .A2(weights[11]), .B1(n3166), .B2(weights[19]), 
        .O(n3157) );
  OAI12HS U3857 ( .B1(n3163), .B2(n3158), .A1(n3157), .O(N209) );
  INV1S U3858 ( .I(weights[19]), .O(n3160) );
  AOI22S U3859 ( .A1(n3169), .A2(weights[35]), .B1(n3166), .B2(weights[43]), 
        .O(n3159) );
  OAI12HS U3860 ( .B1(n3163), .B2(n3160), .A1(n3159), .O(N233) );
  INV1S U3861 ( .I(weights[43]), .O(n3162) );
  AOI22S U3862 ( .A1(n3169), .A2(n525), .B1(n3166), .B2(n109), .O(n3161) );
  OAI12HS U3863 ( .B1(n3163), .B2(n3162), .A1(n3161), .O(N257) );
  AOI22S U3864 ( .A1(n3169), .A2(n109), .B1(n3166), .B2(weights[75]), .O(n3164) );
  OAI12HS U3865 ( .B1(n3176), .B2(n3165), .A1(n3164), .O(N265) );
  INV1S U3866 ( .I(weights[75]), .O(n3168) );
  AOI22S U3867 ( .A1(n3181), .A2(weights[91]), .B1(n3166), .B2(weights[99]), 
        .O(n3167) );
  OAI12HS U3868 ( .B1(n3176), .B2(n3168), .A1(n3167), .O(N289) );
  INV1S U3869 ( .I(weights[99]), .O(n3171) );
  AOI22S U3870 ( .A1(n3169), .A2(weights[115]), .B1(n3179), .B2(n108), .O(
        n3170) );
  OAI12HS U3871 ( .B1(n3176), .B2(n3171), .A1(n3170), .O(N313) );
  AOI22S U3872 ( .A1(n3181), .A2(i_data[3]), .B1(n3179), .B2(weights[3]), .O(
        n3172) );
  OAI12HS U3873 ( .B1(n3176), .B2(n3173), .A1(n3172), .O(N193) );
  AOI22S U3874 ( .A1(n3181), .A2(weights[19]), .B1(n3179), .B2(weights[27]), 
        .O(n3174) );
  OAI12HS U3875 ( .B1(n3176), .B2(n3833), .A1(n3174), .O(N217) );
  AOI22S U3876 ( .A1(n3181), .A2(weights[43]), .B1(n3179), .B2(weights[51]), 
        .O(n3175) );
  OAI12HS U3877 ( .B1(n3176), .B2(n3834), .A1(n3175), .O(N241) );
  AOI22S U3878 ( .A1(n3199), .A2(weights[96]), .B1(n3179), .B2(weights[104]), 
        .O(n3178) );
  OAI12HS U3879 ( .B1(n3188), .B2(n3835), .A1(n3178), .O(N294) );
  AOI22S U3880 ( .A1(n565), .A2(n3423), .B1(n3179), .B2(n653), .O(n3180) );
  OAI12HS U3881 ( .B1(n3188), .B2(n3836), .A1(n3180), .O(N318) );
  INV1S U3882 ( .I(n654), .O(n3183) );
  AOI22S U3883 ( .A1(n3181), .A2(weights[0]), .B1(n3191), .B2(weights[8]), .O(
        n3182) );
  OAI12HS U3884 ( .B1(n3188), .B2(n3183), .A1(n3182), .O(N198) );
  AOI22S U3885 ( .A1(n3199), .A2(weights[24]), .B1(n3191), .B2(weights[32]), 
        .O(n3184) );
  OAI12HS U3886 ( .B1(n3188), .B2(n3837), .A1(n3184), .O(N222) );
  AOI22S U3887 ( .A1(n559), .A2(n3367), .B1(n3191), .B2(n3198), .O(n3185) );
  OAI12HS U3888 ( .B1(n3188), .B2(n3838), .A1(n3185), .O(N246) );
  AOI22S U3889 ( .A1(n3227), .A2(weights[72]), .B1(n3191), .B2(weights[80]), 
        .O(n3187) );
  OAI12HS U3890 ( .B1(n3188), .B2(n220), .A1(n3187), .O(N270) );
  AOI22S U3891 ( .A1(n3199), .A2(weights[80]), .B1(n3191), .B2(weights[88]), 
        .O(n3189) );
  OAI12HS U3892 ( .B1(n3202), .B2(n545), .A1(n3189), .O(N278) );
  AOI22S U3893 ( .A1(n3199), .A2(weights[104]), .B1(n3191), .B2(weights[112]), 
        .O(n3192) );
  OAI12HS U3894 ( .B1(n3202), .B2(n3839), .A1(n3192), .O(N302) );
  AOI22S U3895 ( .A1(n3214), .A2(n655), .B1(n3205), .B2(n538), .O(n3193) );
  OAI12HS U3896 ( .B1(n3202), .B2(n3840), .A1(n3193), .O(N326) );
  AOI22S U3897 ( .A1(n3199), .A2(weights[8]), .B1(n3205), .B2(weights[16]), 
        .O(n3194) );
  OAI12HS U3898 ( .B1(n3202), .B2(n239), .A1(n3194), .O(N206) );
  INV1S U3899 ( .I(weights[16]), .O(n3197) );
  AOI22S U3900 ( .A1(n3214), .A2(weights[32]), .B1(n3205), .B2(weights[40]), 
        .O(n3196) );
  OAI12HS U3901 ( .B1(n3202), .B2(n3197), .A1(n3196), .O(N230) );
  INV1S U3902 ( .I(weights[40]), .O(n3201) );
  AOI22S U3903 ( .A1(n3199), .A2(n3198), .B1(n3205), .B2(n556), .O(n3200) );
  OAI12HS U3904 ( .B1(n3202), .B2(n3201), .A1(n3200), .O(N254) );
  AOI22S U3905 ( .A1(n556), .A2(n3367), .B1(n3205), .B2(weights[72]), .O(n3203) );
  OAI12HS U3906 ( .B1(n3217), .B2(n555), .A1(n3203), .O(N262) );
  INV1S U3907 ( .I(weights[72]), .O(n3207) );
  AOI22S U3908 ( .A1(n3214), .A2(weights[88]), .B1(n3205), .B2(weights[96]), 
        .O(n3206) );
  OAI12HS U3909 ( .B1(n3217), .B2(n3207), .A1(n3206), .O(N286) );
  INV1S U3910 ( .I(weights[96]), .O(n3209) );
  AOI22S U3911 ( .A1(n3214), .A2(weights[112]), .B1(n3220), .B2(n565), .O(
        n3208) );
  OAI12HS U3912 ( .B1(n3217), .B2(n3209), .A1(n3208), .O(N310) );
  AOI22S U3913 ( .A1(n3227), .A2(i_data[0]), .B1(n3220), .B2(weights[0]), .O(
        n3210) );
  OAI12HS U3914 ( .B1(n3217), .B2(n3211), .A1(n3210), .O(N190) );
  INV1S U3915 ( .I(weights[0]), .O(n3213) );
  AOI22S U3916 ( .A1(n3214), .A2(weights[16]), .B1(n3220), .B2(weights[24]), 
        .O(n3212) );
  OAI12HS U3917 ( .B1(n3217), .B2(n3213), .A1(n3212), .O(N214) );
  INV1S U3918 ( .I(weights[24]), .O(n3216) );
  AOI22S U3919 ( .A1(n3214), .A2(weights[40]), .B1(n3220), .B2(n559), .O(n3215) );
  OAI12HS U3920 ( .B1(n3217), .B2(n3216), .A1(n3215), .O(N238) );
  MUX2 U3921 ( .A(i_data[2]), .B(n937), .S(n3382), .O(n68) );
  INV1S U3922 ( .I(weights[81]), .O(n3219) );
  AOI22S U3923 ( .A1(n3227), .A2(weights[97]), .B1(n3220), .B2(weights[105]), 
        .O(n3218) );
  OAI12HS U3924 ( .B1(n3259), .B2(n3219), .A1(n3218), .O(N295) );
  INV1S U3925 ( .I(weights[105]), .O(n3222) );
  AOI22S U3926 ( .A1(n3252), .A2(n106), .B1(n3220), .B2(n1520), .O(n3221) );
  OAI12HS U3927 ( .B1(n3268), .B2(n3222), .A1(n3221), .O(N319) );
  AOI22S U3928 ( .A1(n3227), .A2(weights[1]), .B1(n3238), .B2(weights[9]), .O(
        n3223) );
  OAI12HS U3929 ( .B1(n3233), .B2(n1481), .A1(n3223), .O(N199) );
  INV1S U3930 ( .I(weights[9]), .O(n3225) );
  AOI22S U3931 ( .A1(n3227), .A2(weights[25]), .B1(n3238), .B2(weights[33]), 
        .O(n3224) );
  OAI12HS U3932 ( .B1(n3233), .B2(n3225), .A1(n3224), .O(N223) );
  INV1S U3933 ( .I(weights[33]), .O(n3229) );
  AOI22S U3934 ( .A1(n3227), .A2(n140), .B1(n3238), .B2(n3226), .O(n3228) );
  OAI12HS U3935 ( .B1(n3233), .B2(n3229), .A1(n3228), .O(N247) );
  AOI22S U3936 ( .A1(n3243), .A2(weights[73]), .B1(n3286), .B2(weights[81]), 
        .O(n3231) );
  OAI12HS U3937 ( .B1(n3259), .B2(n3232), .A1(n3231), .O(N271) );
  AOI22S U3938 ( .A1(n3243), .A2(weights[81]), .B1(n3286), .B2(weights[89]), 
        .O(n3234) );
  OAI12HS U3939 ( .B1(n3246), .B2(n3235), .A1(n3234), .O(N279) );
  INV1S U3940 ( .I(weights[89]), .O(n3237) );
  AOI22S U3941 ( .A1(n3243), .A2(weights[105]), .B1(n3286), .B2(weights[113]), 
        .O(n3236) );
  OAI12HS U3942 ( .B1(n3246), .B2(n3237), .A1(n3236), .O(N303) );
  INV1S U3943 ( .I(weights[113]), .O(n3240) );
  AOI22S U3944 ( .A1(n3243), .A2(n1520), .B1(n3249), .B2(weights[137]), .O(
        n3239) );
  OAI12HS U3945 ( .B1(n3246), .B2(n3240), .A1(n3239), .O(N327) );
  AOI22S U3946 ( .A1(n3243), .A2(weights[9]), .B1(n3249), .B2(weights[17]), 
        .O(n3241) );
  OAI12HS U3947 ( .B1(n3246), .B2(n3242), .A1(n3241), .O(N207) );
  AOI22S U3948 ( .A1(n3243), .A2(weights[33]), .B1(n3249), .B2(weights[41]), 
        .O(n3244) );
  OAI12HS U3949 ( .B1(n3246), .B2(n3841), .A1(n3244), .O(N231) );
  AOI22S U3950 ( .A1(n3252), .A2(n3226), .B1(n3249), .B2(n107), .O(n3245) );
  OAI12HS U3951 ( .B1(n3246), .B2(n3842), .A1(n3245), .O(N255) );
  AOI22S U3952 ( .A1(n3252), .A2(n107), .B1(n3249), .B2(weights[73]), .O(n3247) );
  OAI12HS U3953 ( .B1(n3248), .B2(n3258), .A1(n3247), .O(N263) );
  AOI22S U3954 ( .A1(n3252), .A2(weights[89]), .B1(n3249), .B2(weights[97]), 
        .O(n3250) );
  OAI12HS U3955 ( .B1(n3258), .B2(n3843), .A1(n3250), .O(N287) );
  AOI22S U3956 ( .A1(n3252), .A2(weights[113]), .B1(n3430), .B2(n106), .O(
        n3251) );
  OAI12HS U3957 ( .B1(n3258), .B2(n3844), .A1(n3251), .O(N311) );
  AOI22S U3958 ( .A1(n3252), .A2(i_data[1]), .B1(n3430), .B2(weights[1]), .O(
        n3253) );
  OAI12HS U3959 ( .B1(n3258), .B2(n3254), .A1(n3253), .O(N191) );
  AOI22S U3960 ( .A1(n3431), .A2(weights[17]), .B1(n3430), .B2(weights[25]), 
        .O(n3256) );
  OAI12HS U3961 ( .B1(n3258), .B2(n3845), .A1(n3256), .O(N215) );
  AOI22S U3962 ( .A1(n3431), .A2(weights[41]), .B1(n3430), .B2(n140), .O(n3257) );
  OAI12HS U3963 ( .B1(n3258), .B2(n3846), .A1(n3257), .O(N239) );
  MUX2 U3964 ( .A(i_data[4]), .B(buffer_data[4]), .S(n3382), .O(n74) );
  AOI22S U3965 ( .A1(n3431), .A2(weights[100]), .B1(n3430), .B2(weights[108]), 
        .O(n3260) );
  OAI12HS U3966 ( .B1(n3267), .B2(n3847), .A1(n3260), .O(N298) );
  AOI22S U3967 ( .A1(n3431), .A2(n139), .B1(n3269), .B2(n522), .O(n3261) );
  OAI12HS U3968 ( .B1(n3267), .B2(n3848), .A1(n3261), .O(N322) );
  AOI22S U3969 ( .A1(n3431), .A2(weights[4]), .B1(n3269), .B2(weights[12]), 
        .O(n3262) );
  OAI12HS U3970 ( .B1(n3267), .B2(n1803), .A1(n3262), .O(N202) );
  AOI22S U3971 ( .A1(n3273), .A2(weights[28]), .B1(n3269), .B2(weights[36]), 
        .O(n3264) );
  OAI12HS U3972 ( .B1(n3267), .B2(n3849), .A1(n3264), .O(N226) );
  AOI22S U3973 ( .A1(n3273), .A2(n104), .B1(n3269), .B2(n138), .O(n3265) );
  OAI12HS U3974 ( .B1(n3267), .B2(n3850), .A1(n3265), .O(N250) );
  AOI22S U3975 ( .A1(n3273), .A2(weights[76]), .B1(n3269), .B2(weights[84]), 
        .O(n3266) );
  OAI12HS U3976 ( .B1(n3267), .B2(n2573), .A1(n3266), .O(N274) );
  AOI22S U3977 ( .A1(n3273), .A2(weights[84]), .B1(n3269), .B2(weights[92]), 
        .O(n3270) );
  OAI12HS U3978 ( .B1(n3282), .B2(n3271), .A1(n3270), .O(N282) );
  AOI22S U3979 ( .A1(n3273), .A2(weights[108]), .B1(n3283), .B2(weights[116]), 
        .O(n3272) );
  OAI12HS U3980 ( .B1(n3282), .B2(n3851), .A1(n3272), .O(N306) );
  INV1S U3981 ( .I(weights[116]), .O(n3275) );
  AOI22S U3982 ( .A1(n3273), .A2(n522), .B1(n3283), .B2(weights[140]), .O(
        n3274) );
  OAI12HS U3983 ( .B1(n3282), .B2(n3275), .A1(n3274), .O(N330) );
  AOI22S U3984 ( .A1(n3289), .A2(weights[12]), .B1(n3283), .B2(weights[20]), 
        .O(n3276) );
  OAI12HS U3985 ( .B1(n3282), .B2(n3277), .A1(n3276), .O(N210) );
  INV1S U3986 ( .I(weights[20]), .O(n3279) );
  AOI22S U3987 ( .A1(n3289), .A2(weights[36]), .B1(n3283), .B2(weights[44]), 
        .O(n3278) );
  OAI12HS U3988 ( .B1(n3282), .B2(n3279), .A1(n3278), .O(N234) );
  INV1S U3989 ( .I(weights[44]), .O(n3281) );
  AOI22S U3990 ( .A1(n3289), .A2(n138), .B1(n3283), .B2(n137), .O(n3280) );
  OAI12HS U3991 ( .B1(n3282), .B2(n3281), .A1(n3280), .O(N258) );
  AOI22S U3992 ( .A1(n3289), .A2(weights[68]), .B1(n3283), .B2(weights[76]), 
        .O(n3284) );
  OAI12HS U3993 ( .B1(n3298), .B2(n3285), .A1(n3284), .O(N266) );
  INV1S U3994 ( .I(weights[76]), .O(n3288) );
  AOI22S U3995 ( .A1(n3289), .A2(weights[92]), .B1(n3299), .B2(weights[100]), 
        .O(n3287) );
  OAI12HS U3996 ( .B1(n3298), .B2(n3288), .A1(n3287), .O(N290) );
  INV1S U3997 ( .I(weights[100]), .O(n3291) );
  AOI22S U3998 ( .A1(n3289), .A2(weights[116]), .B1(n3299), .B2(n139), .O(
        n3290) );
  OAI12HS U3999 ( .B1(n3298), .B2(n3291), .A1(n3290), .O(N314) );
  AOI22S U4000 ( .A1(n3304), .A2(i_data[4]), .B1(n3299), .B2(weights[4]), .O(
        n3292) );
  OAI12HS U4001 ( .B1(n3298), .B2(n3293), .A1(n3292), .O(N194) );
  INV1S U4002 ( .I(weights[4]), .O(n3295) );
  AOI22S U4003 ( .A1(n3304), .A2(weights[20]), .B1(n3299), .B2(weights[28]), 
        .O(n3294) );
  OAI12HS U4004 ( .B1(n3298), .B2(n3295), .A1(n3294), .O(N218) );
  INV1S U4005 ( .I(weights[28]), .O(n3297) );
  AOI22S U4006 ( .A1(n3304), .A2(weights[44]), .B1(n3299), .B2(n104), .O(n3296) );
  OAI12HS U4007 ( .B1(n3298), .B2(n3297), .A1(n3296), .O(N242) );
  INV1S U4008 ( .I(weights[85]), .O(n3301) );
  AOI22S U4009 ( .A1(n3304), .A2(weights[101]), .B1(n3299), .B2(weights[109]), 
        .O(n3300) );
  OAI12HS U4010 ( .B1(n3312), .B2(n3301), .A1(n3300), .O(N299) );
  INV1S U4011 ( .I(weights[109]), .O(n3303) );
  AOI22S U4012 ( .A1(n3304), .A2(n146), .B1(n3313), .B2(n1837), .O(n3302) );
  OAI12HS U4013 ( .B1(n3312), .B2(n3303), .A1(n3302), .O(N323) );
  AOI22S U4014 ( .A1(n3304), .A2(weights[5]), .B1(n3313), .B2(weights[13]), 
        .O(n3305) );
  OAI12HS U4015 ( .B1(n3339), .B2(n1838), .A1(n3305), .O(N203) );
  INV1S U4016 ( .I(weights[13]), .O(n3307) );
  AOI22S U4017 ( .A1(n3318), .A2(weights[29]), .B1(n3313), .B2(weights[37]), 
        .O(n3306) );
  OAI12HS U4018 ( .B1(n3339), .B2(n3307), .A1(n3306), .O(N227) );
  INV1S U4019 ( .I(weights[37]), .O(n3309) );
  AOI22S U4020 ( .A1(n3318), .A2(weights[53]), .B1(n3313), .B2(weights[61]), 
        .O(n3308) );
  OAI12HS U4021 ( .B1(n3312), .B2(n3309), .A1(n3308), .O(N251) );
  INV1S U4022 ( .I(weights[61]), .O(n3311) );
  AOI22S U4023 ( .A1(n3318), .A2(weights[77]), .B1(n3313), .B2(weights[85]), 
        .O(n3310) );
  OAI12HS U4024 ( .B1(n3339), .B2(n3311), .A1(n3310), .O(N275) );
  AOI22S U4025 ( .A1(n3318), .A2(weights[85]), .B1(n3313), .B2(weights[93]), 
        .O(n3314) );
  OAI12HS U4026 ( .B1(n3328), .B2(n3315), .A1(n3314), .O(N283) );
  INV1S U4027 ( .I(weights[93]), .O(n3317) );
  AOI22S U4028 ( .A1(n3318), .A2(weights[109]), .B1(n3392), .B2(weights[117]), 
        .O(n3316) );
  OAI12HS U4029 ( .B1(n3328), .B2(n3317), .A1(n3316), .O(N307) );
  INV1S U4030 ( .I(weights[117]), .O(n3320) );
  AOI22S U4031 ( .A1(n3318), .A2(n1837), .B1(n3325), .B2(weights[141]), .O(
        n3319) );
  OAI12HS U4032 ( .B1(n3328), .B2(n3320), .A1(n3319), .O(N331) );
  AOI22S U4033 ( .A1(n3350), .A2(weights[13]), .B1(n3325), .B2(weights[21]), 
        .O(n3321) );
  OAI12HS U4034 ( .B1(n3328), .B2(n3322), .A1(n3321), .O(N211) );
  INV1S U4035 ( .I(weights[21]), .O(n3324) );
  AOI22S U4036 ( .A1(n3350), .A2(weights[37]), .B1(n3389), .B2(weights[45]), 
        .O(n3323) );
  OAI12HS U4037 ( .B1(n3328), .B2(n3324), .A1(n3323), .O(N235) );
  INV1S U4038 ( .I(weights[45]), .O(n3327) );
  AOI22S U4039 ( .A1(n3350), .A2(weights[61]), .B1(n3325), .B2(n539), .O(n3326) );
  OAI12HS U4040 ( .B1(n3328), .B2(n3327), .A1(n3326), .O(N259) );
  AOI22S U4041 ( .A1(n3350), .A2(n539), .B1(n3375), .B2(weights[77]), .O(n3329) );
  OAI12HS U4042 ( .B1(n3338), .B2(n439), .A1(n3329), .O(N267) );
  INV1S U4043 ( .I(weights[77]), .O(n3332) );
  AOI22S U4044 ( .A1(n3344), .A2(weights[93]), .B1(n3340), .B2(weights[101]), 
        .O(n3331) );
  OAI12HS U4045 ( .B1(n3338), .B2(n3332), .A1(n3331), .O(N291) );
  AOI22S U4046 ( .A1(n3350), .A2(weights[117]), .B1(n3340), .B2(n146), .O(
        n3333) );
  OAI12HS U4047 ( .B1(n3338), .B2(n3852), .A1(n3333), .O(N315) );
  AOI22S U4048 ( .A1(n3344), .A2(i_data[5]), .B1(n3340), .B2(weights[5]), .O(
        n3334) );
  OAI12HS U4049 ( .B1(n3338), .B2(n3335), .A1(n3334), .O(N195) );
  AOI22S U4050 ( .A1(n3344), .A2(weights[21]), .B1(n3340), .B2(weights[29]), 
        .O(n3336) );
  OAI12HS U4051 ( .B1(n3338), .B2(n3853), .A1(n3336), .O(N219) );
  AOI22S U4052 ( .A1(n3344), .A2(weights[45]), .B1(n3340), .B2(weights[53]), 
        .O(n3337) );
  OAI12HS U4053 ( .B1(n3338), .B2(n3854), .A1(n3337), .O(N243) );
  AOI22S U4054 ( .A1(n3344), .A2(weights[102]), .B1(n3340), .B2(weights[110]), 
        .O(n3341) );
  OAI12HS U4055 ( .B1(n3352), .B2(n3855), .A1(n3341), .O(N300) );
  AOI22S U4056 ( .A1(weights[126]), .A2(n3367), .B1(n3353), .B2(weights[134]), 
        .O(n3343) );
  OAI12HS U4057 ( .B1(n3352), .B2(n3856), .A1(n3343), .O(N324) );
  AOI22S U4058 ( .A1(n3344), .A2(weights[6]), .B1(n3353), .B2(weights[14]), 
        .O(n3345) );
  OAI12HS U4059 ( .B1(n3352), .B2(n1890), .A1(n3345), .O(N204) );
  AOI22S U4060 ( .A1(n3393), .A2(weights[30]), .B1(n3353), .B2(weights[38]), 
        .O(n3347) );
  OAI12HS U4061 ( .B1(n3352), .B2(n3857), .A1(n3347), .O(N228) );
  AOI22S U4062 ( .A1(n537), .A2(n3367), .B1(n3353), .B2(n3348), .O(n3349) );
  OAI12HS U4063 ( .B1(n3352), .B2(n3858), .A1(n3349), .O(N252) );
  AOI22S U4064 ( .A1(n3350), .A2(weights[78]), .B1(n3353), .B2(weights[86]), 
        .O(n3351) );
  OAI12HS U4065 ( .B1(n3352), .B2(n2564), .A1(n3351), .O(N276) );
  INV1S U4066 ( .I(n597), .O(n3355) );
  AOI22S U4067 ( .A1(n3393), .A2(weights[86]), .B1(n3353), .B2(weights[94]), 
        .O(n3354) );
  OAI12HS U4068 ( .B1(n3365), .B2(n3355), .A1(n3354), .O(N284) );
  AOI22S U4069 ( .A1(n3393), .A2(weights[110]), .B1(n3366), .B2(weights[118]), 
        .O(n3356) );
  OAI12HS U4070 ( .B1(n3365), .B2(n3859), .A1(n3356), .O(N308) );
  INV1S U4071 ( .I(weights[118]), .O(n3358) );
  AOI22S U4072 ( .A1(n3393), .A2(weights[134]), .B1(n3366), .B2(n141), .O(
        n3357) );
  OAI12HS U4073 ( .B1(n3365), .B2(n3358), .A1(n3357), .O(N332) );
  INV1S U4074 ( .I(n141), .O(n3360) );
  AOI22S U4075 ( .A1(n3386), .A2(weights[14]), .B1(n3366), .B2(weights[22]), 
        .O(n3359) );
  OAI12HS U4076 ( .B1(n3365), .B2(n3360), .A1(n3359), .O(N212) );
  INV1S U4077 ( .I(weights[22]), .O(n3362) );
  AOI22S U4078 ( .A1(n3393), .A2(weights[38]), .B1(n3366), .B2(weights[46]), 
        .O(n3361) );
  OAI12HS U4079 ( .B1(n3365), .B2(n3362), .A1(n3361), .O(N236) );
  INV1S U4080 ( .I(weights[46]), .O(n3364) );
  AOI22S U4081 ( .A1(n3386), .A2(n3348), .B1(n3366), .B2(n597), .O(n3363) );
  OAI12HS U4082 ( .B1(n3365), .B2(n3364), .A1(n3363), .O(N260) );
  INV1S U4083 ( .I(n537), .O(n3369) );
  AOI22S U4084 ( .A1(n597), .A2(n3367), .B1(n3366), .B2(weights[78]), .O(n3368) );
  OAI12HS U4085 ( .B1(n3381), .B2(n3369), .A1(n3368), .O(N268) );
  INV1S U4086 ( .I(weights[78]), .O(n3371) );
  AOI22S U4087 ( .A1(n3386), .A2(weights[94]), .B1(n3378), .B2(weights[102]), 
        .O(n3370) );
  OAI12HS U4088 ( .B1(n3381), .B2(n3371), .A1(n3370), .O(N292) );
  INV1S U4089 ( .I(weights[102]), .O(n3373) );
  AOI22S U4090 ( .A1(n3386), .A2(weights[118]), .B1(n3378), .B2(n536), .O(
        n3372) );
  OAI12HS U4091 ( .B1(n3381), .B2(n3373), .A1(n3372), .O(N316) );
  AOI22S U4092 ( .A1(n3427), .A2(i_data[6]), .B1(n3378), .B2(weights[6]), .O(
        n3374) );
  OAI12HS U4093 ( .B1(n3381), .B2(n535), .A1(n3374), .O(N196) );
  INV1S U4094 ( .I(weights[6]), .O(n3377) );
  AOI22S U4095 ( .A1(n3386), .A2(weights[22]), .B1(n3375), .B2(weights[30]), 
        .O(n3376) );
  OAI12HS U4096 ( .B1(n3381), .B2(n3377), .A1(n3376), .O(N220) );
  INV1S U4097 ( .I(weights[30]), .O(n3380) );
  AOI22S U4098 ( .A1(n3427), .A2(weights[46]), .B1(n3378), .B2(n537), .O(n3379) );
  OAI12HS U4099 ( .B1(n3381), .B2(n3380), .A1(n3379), .O(N244) );
  MUX2 U4100 ( .A(i_data[6]), .B(n897), .S(n3382), .O(n80) );
  MUX2 U4101 ( .A(i_data[7]), .B(n847), .S(n3383), .O(n83) );
  INV1S U4102 ( .I(weights[87]), .O(n3388) );
  AOI22S U4103 ( .A1(n3386), .A2(weights[103]), .B1(n3385), .B2(weights[111]), 
        .O(n3387) );
  OAI12HS U4104 ( .B1(n3403), .B2(n3388), .A1(n3387), .O(N301) );
  INV1S U4105 ( .I(weights[111]), .O(n3391) );
  AOI22S U4106 ( .A1(n3427), .A2(n558), .B1(n3406), .B2(n1839), .O(n3390) );
  OAI12HS U4107 ( .B1(n3403), .B2(n3391), .A1(n3390), .O(N325) );
  INV1S U4108 ( .I(n1839), .O(n3395) );
  AOI22S U4109 ( .A1(n3393), .A2(weights[7]), .B1(n3392), .B2(weights[15]), 
        .O(n3394) );
  OAI12HS U4110 ( .B1(n3403), .B2(n3395), .A1(n3394), .O(N205) );
  INV1S U4111 ( .I(weights[15]), .O(n3398) );
  AOI22S U4112 ( .A1(n3417), .A2(weights[31]), .B1(n3406), .B2(weights[39]), 
        .O(n3397) );
  OAI12HS U4113 ( .B1(n3403), .B2(n3398), .A1(n3397), .O(N229) );
  INV1S U4114 ( .I(weights[39]), .O(n3400) );
  AOI22S U4115 ( .A1(n3427), .A2(n111), .B1(n3406), .B2(weights[63]), .O(n3399) );
  OAI12HS U4116 ( .B1(n3403), .B2(n3400), .A1(n3399), .O(N253) );
  INV1S U4117 ( .I(n2565), .O(n3402) );
  AOI22S U4118 ( .A1(n3417), .A2(weights[79]), .B1(n3406), .B2(weights[87]), 
        .O(n3401) );
  OAI12HS U4119 ( .B1(n3403), .B2(n3402), .A1(n3401), .O(N277) );
  INV1S U4120 ( .I(n143), .O(n3405) );
  AOI22S U4121 ( .A1(n3427), .A2(weights[87]), .B1(n3406), .B2(weights[95]), 
        .O(n3404) );
  OAI12HS U4122 ( .B1(n3414), .B2(n3405), .A1(n3404), .O(N285) );
  INV1S U4123 ( .I(weights[95]), .O(n3408) );
  AOI22S U4124 ( .A1(n3417), .A2(weights[111]), .B1(n3416), .B2(weights[119]), 
        .O(n3407) );
  OAI12HS U4125 ( .B1(n3414), .B2(n3408), .A1(n3407), .O(N309) );
  AOI22S U4126 ( .A1(n3417), .A2(n1839), .B1(n3416), .B2(n902), .O(n3409) );
  OAI12HS U4127 ( .B1(n3414), .B2(n3860), .A1(n3409), .O(N333) );
  INV1S U4128 ( .I(n902), .O(n3411) );
  AOI22S U4129 ( .A1(n3423), .A2(weights[15]), .B1(n3416), .B2(weights[23]), 
        .O(n3410) );
  OAI12HS U4130 ( .B1(n3414), .B2(n3411), .A1(n3410), .O(N213) );
  AOI22S U4131 ( .A1(n3417), .A2(weights[39]), .B1(n3416), .B2(weights[47]), 
        .O(n3412) );
  OAI12HS U4132 ( .B1(n3414), .B2(n3861), .A1(n3412), .O(N237) );
  AOI22S U4133 ( .A1(n3423), .A2(n2565), .B1(n3416), .B2(n143), .O(n3413) );
  OAI12HS U4134 ( .B1(n3414), .B2(n3862), .A1(n3413), .O(N261) );
  AOI22S U4135 ( .A1(n3417), .A2(n144), .B1(n3416), .B2(weights[79]), .O(n3418) );
  OAI12HS U4136 ( .B1(n3434), .B2(n3419), .A1(n3418), .O(N269) );
  AOI22S U4137 ( .A1(n3423), .A2(weights[95]), .B1(n3426), .B2(weights[103]), 
        .O(n3420) );
  OAI12HS U4138 ( .B1(n3434), .B2(n3863), .A1(n3420), .O(N293) );
  INV1S U4139 ( .I(weights[103]), .O(n3422) );
  AOI22S U4140 ( .A1(n3423), .A2(weights[119]), .B1(n3426), .B2(n558), .O(
        n3421) );
  OAI12HS U4141 ( .B1(n3434), .B2(n3422), .A1(n3421), .O(N317) );
  AOI22S U4142 ( .A1(n3423), .A2(i_data[7]), .B1(n3426), .B2(weights[7]), .O(
        n3424) );
  OAI12HS U4143 ( .B1(n3434), .B2(n3425), .A1(n3424), .O(N197) );
  INV1S U4144 ( .I(weights[7]), .O(n3429) );
  AOI22S U4145 ( .A1(n3427), .A2(weights[23]), .B1(n3426), .B2(weights[31]), 
        .O(n3428) );
  OAI12HS U4146 ( .B1(n3434), .B2(n3429), .A1(n3428), .O(N221) );
  INV1S U4147 ( .I(weights[31]), .O(n3433) );
  AOI22S U4148 ( .A1(n3431), .A2(weights[47]), .B1(n3430), .B2(n111), .O(n3432) );
  OAI12HS U4149 ( .B1(n3434), .B2(n3433), .A1(n3432), .O(N245) );
  MXL2HS U4150 ( .A(n3449), .B(n543), .S(n3255), .OB(n82) );
  INV1S U4151 ( .I(n897), .O(n3436) );
  MXL2HS U4152 ( .A(n116), .B(n3436), .S(n3230), .OB(n79) );
  INV1S U4153 ( .I(n571), .O(n3438) );
  MXL2HS U4154 ( .A(n1541), .B(n3438), .S(n3230), .OB(n76) );
  INV1S U4155 ( .I(buffer_data[12]), .O(n3445) );
  INV1S U4156 ( .I(buffer_data[4]), .O(n3439) );
  MXL2HS U4157 ( .A(n3445), .B(n3439), .S(n3441), .OB(n73) );
  INV1S U4158 ( .I(buffer_data[10]), .O(n3446) );
  INV1S U4159 ( .I(n937), .O(n3440) );
  MXL2HS U4160 ( .A(n3446), .B(n3440), .S(n3441), .OB(n67) );
  MXL2HS U4161 ( .A(n2114), .B(n610), .S(n3441), .OB(n61) );
  MXL2HS U4162 ( .A(n3442), .B(n1541), .S(n3441), .OB(n75) );
  MXL2HS U4163 ( .A(n665), .B(n3445), .S(n3451), .OB(n72) );
  MXL2HS U4164 ( .A(n516), .B(n3446), .S(n3451), .OB(n66) );
  MXL2HS U4165 ( .A(n3448), .B(n3447), .S(n3451), .OB(n63) );
  MXL2HS U4166 ( .A(n620), .B(n3449), .S(n3451), .OB(n81) );
  MXL2HS U4167 ( .A(n640), .B(n616), .S(n3451), .OB(n60) );
  INV1S U4168 ( .I(buffer_data[22]), .O(n3454) );
  MXL2HS U4169 ( .A(n3454), .B(n116), .S(n3453), .OB(n78) );
endmodule

