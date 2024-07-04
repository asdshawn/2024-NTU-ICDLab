`define CONV_LEN 21

module partial_pooling(
    input  [`CONV_LEN*2-1:0] i_data,
    output [`CONV_LEN-1:0]   o_data
);
wire signed [`CONV_LEN-1:0] temp_0, temp_1;

assign temp_0 = i_data[0+:`CONV_LEN];
assign temp_1 = i_data[`CONV_LEN*2-1-:`CONV_LEN];
assign o_data = (temp_0 > temp_1) ? temp_0 : temp_1;

endmodule
