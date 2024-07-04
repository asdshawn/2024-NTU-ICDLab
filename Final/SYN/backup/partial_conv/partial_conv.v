`define INPUT_LEN 8
`define DATA_LEN 15
`define WEIGHT_LEN 15
`define CORE_NUM 3
`define PCONV_LEN 18

module partial_conv (
    input  [`INPUT_LEN*`CORE_NUM-1:0] i_data,
    input  [`INPUT_LEN*`CORE_NUM-1:0] i_weight,
    output [`PCONV_LEN-1:0]           o_pconv
);
wire        [`DATA_LEN-1:0] data_0, data_1, data_2;
wire signed [`WEIGHT_LEN-1:0] weight_0, weight_1, weight_2;
wire signed [`DATA_LEN+`WEIGHT_LEN-1:0] product_0_temp, product_1_temp, product_2_temp;
wire        [`DATA_LEN-1:0] product_0, product_1, product_2;
wire        [`PCONV_LEN-1:0] product_0_ext, product_1_ext, product_2_ext;

assign data_0 = {i_data[`INPUT_LEN*0+:`INPUT_LEN], 7'b0};
assign data_1 = {i_data[`INPUT_LEN*1+:`INPUT_LEN], 7'b0};
assign data_2 = {i_data[`INPUT_LEN*2+:`INPUT_LEN], 7'b0};
assign weight_0 = {{7{i_weight[`INPUT_LEN*1-1]}}, i_weight[`INPUT_LEN*0+:`INPUT_LEN]};
assign weight_1 = {{7{i_weight[`INPUT_LEN*2-1]}}, i_weight[`INPUT_LEN*1+:`INPUT_LEN]};
assign weight_2 = {{7{i_weight[`INPUT_LEN*3-1]}}, i_weight[`INPUT_LEN*2+:`INPUT_LEN]};
//Mult
assign product_0_temp = data_0 * weight_0;
assign product_1_temp = data_1 * weight_1;
assign product_2_temp = data_2 * weight_2;

assign product_0 = product_0_temp[`DATA_LEN+`WEIGHT_LEN-9:7];
assign product_1 = product_1_temp[`DATA_LEN+`WEIGHT_LEN-9:7];
assign product_2 = product_2_temp[`DATA_LEN+`WEIGHT_LEN-9:7];
//Sign Extend
assign product_0_ext = {{3{product_0[`DATA_LEN-1]}}, product_0};
assign product_1_ext = {{3{product_1[`DATA_LEN-1]}}, product_1};
assign product_2_ext = {{3{product_2[`DATA_LEN-1]}}, product_2};
//Add
assign o_pconv = product_0_ext + product_1_ext + product_2_ext;

endmodule