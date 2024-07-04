`include "partial_conv/partial_conv.v"
`include "conv/conv.v"
`include "partial_pooling/partial_pooling.v"
`define INPUT_LEN 8
`define CORE_NUM 3
`define PCONV_LEN 18
`define CONV_LEN 21

module CORE (
    input                             clk,
    input                             rst_n,
    input  [1:0]                      layer_num,
    input  [`INPUT_LEN*`CORE_NUM-1:0] i_data,
    input  [`INPUT_LEN*`CORE_NUM-1:0] i_weight,
    output [`CONV_LEN-1:0]            o_data
);
reg  [`PCONV_LEN*53-1:0] buffer_pconv;
wire [`PCONV_LEN-1:0] temp_pconv;
reg  [`CONV_LEN*2-1:0] buffer_conv;
wire [`CONV_LEN-1:0] temp_conv;
reg  [`CONV_LEN*27-1:0] buffer_ppool;
wire [`CONV_LEN-1:0] temp_ppool;
wire [`CONV_LEN*2-1:0] temp_pool;
wire [`CONV_LEN-1:0] pooling;

partial_conv partial_conv(
    .i_data(i_data),
    .i_weight(i_weight),
    .o_pconv(temp_pconv)
);

conv conv(
    .layer_num(layer_num),
    .i_pconv(buffer_pconv),
    .o_conv(temp_conv)
);

partial_pooling partial_pool(
    .i_data(buffer_conv),
    .o_data(temp_ppool)
);

partial_pooling pool(
    .i_data(temp_pool),
    .o_data(pooling)
);

/////////////////////////////////////////////// BUFFER ///////////////////////////////////////////////
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        buffer_pconv <= 0;
        buffer_conv <= 0;
        buffer_ppool <= 0;
    end
    else begin
        buffer_pconv <= {buffer_pconv[0+:`PCONV_LEN*52], temp_pconv};
        buffer_conv <= {buffer_conv[0+:`CONV_LEN], temp_conv};
        buffer_ppool <= {buffer_ppool[0+:`CONV_LEN*26], temp_ppool};
    end
end

assign temp_pool = {buffer_ppool[`CONV_LEN*27-1-:`CONV_LEN], buffer_ppool[0+:`CONV_LEN]};

assign o_data = (layer_num == 2'd2) ? temp_conv : pooling;

endmodule