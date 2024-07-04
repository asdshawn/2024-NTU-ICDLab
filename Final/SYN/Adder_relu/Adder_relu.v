`define IAR_LEN 25
`define OAR_LEN (`IAR_LEN+3-7)

module Adder_relu (
    input clk,
    input rst_n,
    input  [`IAR_LEN-1:0] i_data_0,
    input  [`IAR_LEN-1:0] i_data_1,
    input  [`IAR_LEN-1:0] i_data_2,
    output [`OAR_LEN-1:0] o_data
);
wire signed [`IAR_LEN+3-1:0] data_0_ext, data_1_ext, data_2_ext;
wire signed [`IAR_LEN+3-1:0] data_sum_w;
reg  signed [`IAR_LEN+3-1:0] data_sum_r;
wire signed [`OAR_LEN-1:0] data_round;
wire [`OAR_LEN-1:0] o_data_w;
reg  [`OAR_LEN-1:0] o_data_r;
wire G, R, S;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_sum_r <= 0;
        o_data_r <= 0;
    end
    else begin
        data_sum_r <= data_sum_w;
        o_data_r <= o_data_w;
    end
end

assign data_0_ext = {{3{i_data_0[`IAR_LEN-1]}}, i_data_0};
assign data_1_ext = {{3{i_data_1[`IAR_LEN-1]}}, i_data_1};
assign data_2_ext = {{3{i_data_2[`IAR_LEN-1]}}, i_data_2};

assign data_sum_w = data_0_ext + data_1_ext + data_2_ext;

assign {G, R, S} = {data_sum_r[7:6], |data_sum_r[5:0]};
assign data_round = ({G, R, S} == 3'b011 || {G, R, S} == 3'b110 || {G, R, S} == 3'b111) ? (data_sum_r[`IAR_LEN+3-1:7] + 1) : data_sum_r[`IAR_LEN+3-1:7];
assign o_data_w = (data_round[`OAR_LEN-1]) ? 0 : data_round;

assign o_data = o_data_r;

endmodule