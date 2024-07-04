`define PCONV_LEN 18
`define CORE_NUM 3
`define CONV_LEN 21

module conv (
    input  [1:0]               layer_num,
    input  [`PCONV_LEN*53-1:0] i_pconv,
    output [`CONV_LEN-1:0]     o_conv
);
wire [`CONV_LEN-1:0] pconv_ext_0;
wire [`CONV_LEN-1:0] pconv_ext_26;
wire [`CONV_LEN-1:0] pconv_ext_52;
wire [`CONV_LEN-1:0] pconv_ext_11;
wire [`CONV_LEN-1:0] pconv_ext_22;
wire [`CONV_LEN-1:0] pconv_ext_3;
wire [`CONV_LEN-1:0] pconv_ext_6;
wire [`CONV_LEN-1:0] conv_w_0, conv_w_1, conv_w_2;
reg  [`CONV_LEN-1:0] o_conv_r;

always @(*) begin
    case (layer_num)
        2'd0: o_conv_r <= conv_w_0;
        2'd1: o_conv_r <= conv_w_1;
        2'd2: o_conv_r <= conv_w_2;
        default: o_conv_r <= conv_w_0;
    endcase
end

//Sign Extention
assign pconv_ext_0 = {{`CORE_NUM{i_pconv[`PCONV_LEN*1-1]}}, i_pconv[`PCONV_LEN*0+:`PCONV_LEN]};
assign pconv_ext_26 = {{`CORE_NUM{i_pconv[`PCONV_LEN*27-1]}}, i_pconv[`PCONV_LEN*26+:`PCONV_LEN]};
assign pconv_ext_52 = {{`CORE_NUM{i_pconv[`PCONV_LEN*53-1]}}, i_pconv[`PCONV_LEN*52+:`PCONV_LEN]};
assign pconv_ext_11 = {{`CORE_NUM{i_pconv[`PCONV_LEN*12-1]}}, i_pconv[`PCONV_LEN*11+:`PCONV_LEN]};
assign pconv_ext_22 = {{`CORE_NUM{i_pconv[`PCONV_LEN*23-1]}}, i_pconv[`PCONV_LEN*22+:`PCONV_LEN]};
assign pconv_ext_3 = {{`CORE_NUM{i_pconv[`PCONV_LEN*4-1]}}, i_pconv[`PCONV_LEN*3+:`PCONV_LEN]};
assign pconv_ext_6 = {{`CORE_NUM{i_pconv[`PCONV_LEN*7-1]}}, i_pconv[`PCONV_LEN*6+:`PCONV_LEN]};
//Add
assign conv_w_0 = pconv_ext_0 + pconv_ext_26 + pconv_ext_52;
assign conv_w_1 = pconv_ext_0 + pconv_ext_11 + pconv_ext_22;
assign conv_w_2 = pconv_ext_0 + pconv_ext_3 + pconv_ext_6;
//ReLU
assign o_conv = (o_conv_r[`CONV_LEN-1]) ? 0 : o_conv_r;

endmodule