`define PMP_LEN 21

module pMaxPool (
    input clk,
    input rst_n,
    input  [`PMP_LEN-1:0] i_data_0,
    input  [`PMP_LEN-1:0] i_data_1,
    output [`PMP_LEN-1:0] o_data
);
wire [`PMP_LEN-1:0] sub;
wire [`PMP_LEN-1:0] comp_w;
reg  [`PMP_LEN-1:0] comp_r;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        comp_r <= 0;
    end
    else begin
        comp_r <= comp_w;
    end
end

assign sub = i_data_0 - i_data_1;
assign comp_w = (sub[`PMP_LEN-1]) ? i_data_1 : i_data_0;
assign o_data = comp_r;

endmodule