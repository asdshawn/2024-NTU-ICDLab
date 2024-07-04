`timescale 1ns/10ps
`include "./i_Buffer/i_Buffer.v"
`include "./pConv/pConv.v"
`include "./Adder_relu/Adder_relu.v"
`include "./pMaxPool/pMaxPool.v"

`define INPUT_LEN 8
`define OUTPUT_LEN 15
`define IB_LEN 8
`define OB_LEN 16*3
`define OPC_LEN (22+3)
`define IAR_LEN 25
`define OAR_LEN (`IAR_LEN+3-7)
`define PMP_LEN 21

module Top (
    input                    clk,
    input                    rst_n,
    input  [1:0]             layer_num,
    input  [`INPUT_LEN-1:0]  i_data,
    output [`OUTPUT_LEN-1:0] o_data
);
wire [`IB_LEN*3-1:0] weight_0, weight_1, weight_2;
wire [`OB_LEN-1:0] data_0, data_1, data_2;
wire [`OPC_LEN-1:0] pconv_0, pconv_1, pconv_2;
wire [`OAR_LEN-1:0] conv, pmp, o_data_temp;
wire [`OAR_LEN-1:0] conv_0_w, conv_1_w;
reg  [`OAR_LEN-1:0] conv_0_r, conv_1_r;
wire [`OAR_LEN-1:0] pmp_0_w, pmp_1_w;
reg  [`OAR_LEN-1:0] pmp_0_r, pmp_1_r;
reg  [`OAR_LEN*3-1:0] buffer_conv;
reg  [`OAR_LEN*53-1:0] buffer_pmp;
wire [`OUTPUT_LEN-1:0] o_data_w;
reg  [`OUTPUT_LEN-1:0] o_data_r;

i_Buffer Buffer(
    .clk(clk),
    .rst_n(rst_n),
    .layer_num(layer_num),
    .i_data(i_data),
    .o_weight_0(weight_0),
    .o_weight_1(weight_1),
    .o_weight_2(weight_2),
    .o_data_0(data_0),
    .o_data_1(data_1),
    .o_data_2(data_2)
);

pConv pConv_0(
    .clk(clk),
    .rst_n(rst_n),
    .i_weight(weight_0),
    .i_data(data_0),
    .o_pconv(pconv_0)
);

pConv pConv_1(
    .clk(clk),
    .rst_n(rst_n),
    .i_weight(weight_1),
    .i_data(data_1),
    .o_pconv(pconv_1)
);

pConv pConv_2(
    .clk(clk),
    .rst_n(rst_n),
    .i_weight(weight_2),
    .i_data(data_2),
    .o_pconv(pconv_2)
);

Adder_relu Adder_relu(
    .clk(clk),
    .rst_n(rst_n),
    .i_data_0(pconv_0),
    .i_data_1(pconv_1),
    .i_data_2(pconv_2),
    .o_data(conv)
);

pMaxPool pMaxPool(
    .clk(clk),
    .rst_n(rst_n),
    .i_data_0(conv_0_r),
    .i_data_1(conv_1_r),
    .o_data(pmp)
);

pMaxPool MaxPool(
    .clk(clk),
    .rst_n(rst_n),
    .i_data_0(pmp_0_r),
    .i_data_1(pmp_1_r),
    .o_data(o_data_temp)
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        buffer_conv <= 0;
        buffer_pmp <= 0;
    end
    else begin
        buffer_conv <= {buffer_conv[0+:`OAR_LEN*2], conv};
        buffer_pmp <= {buffer_pmp[0+:`OAR_LEN*52], pmp};
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        conv_0_r <= 0;
        conv_1_r <= 0;
        pmp_0_r <= 0;
        pmp_1_r <= 0;
        o_data_r <= 0;
    end
    else begin
        conv_0_r <= conv_0_w;
        conv_1_r <= conv_1_w;
        pmp_0_r <= pmp_0_w;
        pmp_1_r <= pmp_1_w;
        o_data_r <= o_data_w;
    end
end

assign conv_0_w = buffer_conv[0+:`OAR_LEN];
assign conv_1_w = buffer_conv[`OAR_LEN*3-1-:`OAR_LEN];
assign pmp_0_w = buffer_pmp[0+:`OAR_LEN];
assign pmp_1_w = (layer_num == 2'd1) ? buffer_pmp[`OAR_LEN*25-1-:`OAR_LEN] : buffer_pmp[`OAR_LEN*53-1-:`OAR_LEN]; // 4*(5+2)-3 = 25 & 4*(12+2)-3 = 53
assign o_data_w = (layer_num == 2'd2) ? conv[0+:`OUTPUT_LEN] : o_data_temp[0+:`OUTPUT_LEN];
assign o_data = o_data_r;

endmodule