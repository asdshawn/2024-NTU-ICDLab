`define IPC_LEN 8
`define OPC_LEN (22+3)

module pConv (
    input clk,
    input rst_n,
    input  [`IPC_LEN*3-1:0]   i_weight,
    input  [`IPC_LEN*2*3-1:0] i_data,
    output [`OPC_LEN-1:0]     o_pconv
);
wire signed [14:0] weight_0, weight_1, weight_2;
wire        [14:0] data_0, data_1, data_2;
wire signed [29:0] product_0_w, product_1_w, product_2_w;
reg  signed [29:0] product_0_r, product_1_r, product_2_r;
wire        [21:0] product_0_cut, product_1_cut, product_2_cut;
wire signed [24:0] product_0_ext, product_1_ext, product_2_ext;
wire        [`OPC_LEN-1:0] pconv_w;
reg         [`OPC_LEN-1:0] pconv_r;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        product_0_r <= 0;
        product_1_r <= 0;
        product_2_r <= 0;
        pconv_r <= 0;
    end
    else begin
        product_0_r <= product_0_w;
        product_1_r <= product_1_w;
        product_2_r <= product_2_w;
        pconv_r <= pconv_w;
    end
end

assign weight_0 = {{7{i_weight[`IPC_LEN*1-1]}}, i_weight[`IPC_LEN*0+:`IPC_LEN]};
assign weight_1 = {{7{i_weight[`IPC_LEN*2-1]}}, i_weight[`IPC_LEN*1+:`IPC_LEN]};
assign weight_2 = {{7{i_weight[`IPC_LEN*3-1]}}, i_weight[`IPC_LEN*2+:`IPC_LEN]};
assign data_0 = i_data[`IPC_LEN*2*0+1+:15];
assign data_1 = i_data[`IPC_LEN*2*1+1+:15];
assign data_2 = i_data[`IPC_LEN*2*2+1+:15];

assign product_0_w = weight_0 * data_0;
assign product_1_w = weight_1 * data_1;
assign product_2_w = weight_2 * data_2;

assign product_0_cut = product_0_r[21:0];
assign product_1_cut = product_1_r[21:0];
assign product_2_cut = product_2_r[21:0];

assign product_0_ext = {{3{product_0_cut[21]}}, product_0_cut};
assign product_1_ext = {{3{product_1_cut[21]}}, product_1_cut};
assign product_2_ext = {{3{product_2_cut[21]}}, product_2_cut};

assign pconv_w = product_0_ext + product_1_ext + product_2_ext;

assign o_pconv = pconv_r;

endmodule