`define IB_LEN 8
`define OB_LEN 16*3

module i_Buffer (
    input                  clk,
    input                  rst_n,
    input  [1:0]           layer_num,
    input  [`IB_LEN-1:0]   i_data,
    output [`IB_LEN*3-1:0] o_weight_0,
    output [`IB_LEN*3-1:0] o_weight_1,
    output [`IB_LEN*3-1:0] o_weight_2,
    output [`OB_LEN-1:0]   o_data_0,
    output [`OB_LEN-1:0]   o_data_1,
    output [`OB_LEN-1:0]   o_data_2
);
reg  [3:0] counter, counter_temp;
wire LOAD_W;
reg  [`IB_LEN*9-1:0] weight_buffer;
reg  [(`IB_LEN*2)*26*3-1:0] data_buffer;
reg  [`OB_LEN-1:0] data_0_sel, data_1_sel, data_2_sel;
wire [`OB_LEN-1:0] weight_0_w, weight_1_w, weight_2_w;
reg  [`OB_LEN-1:0] weight_0_r, weight_1_r, weight_2_r;
wire [`OB_LEN-1:0] data_0_w, data_1_w, data_2_w;
reg  [`OB_LEN-1:0] data_0_r, data_1_r, data_2_r;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) counter_temp <= 0;
    else if (LOAD_W) counter_temp <= counter + 1;
    else counter_temp <= counter;
end

always @(*) counter <= counter_temp;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        weight_buffer <= 0;
        data_buffer <= 0;
    end
    else if (LOAD_W) begin
        weight_buffer <= {weight_buffer[0+:`IB_LEN*(9-1)], i_data};
        data_buffer <= data_buffer;
    end
    else begin
        weight_buffer <= weight_buffer;
        data_buffer <= {data_buffer[0+:`IB_LEN*(2*26*3-1)], i_data};
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        weight_0_r <= 0;
        weight_1_r <= 0;
        weight_2_r <= 0;
        data_0_r <= 0;
        data_1_r <= 0;
        data_2_r <= 0;
    end
    else begin
        weight_0_r <= weight_0_w;
        weight_1_r <= weight_1_w;
        weight_2_r <= weight_2_w;
        data_0_r <= data_0_w;
        data_1_r <= data_1_w;
        data_2_r <= data_2_w;
    end
end

always @(*) begin
    case (layer_num)
        2'd1: begin
            data_0_sel <= data_buffer[(`IB_LEN*2*12*0+`IB_LEN*2*9)+:`OB_LEN];
            data_1_sel <= data_buffer[(`IB_LEN*2*12*1+`IB_LEN*2*9)+:`OB_LEN];
            data_2_sel <= data_buffer[(`IB_LEN*2*12*2+`IB_LEN*2*9)+:`OB_LEN];
        end
        2'd2: begin
            data_0_sel <= data_buffer[(`IB_LEN*2*5*0+`IB_LEN*2*2)+:`OB_LEN];
            data_1_sel <= data_buffer[(`IB_LEN*2*5*1+`IB_LEN*2*2)+:`OB_LEN];
            data_2_sel <= data_buffer[(`IB_LEN*2*5*2+`IB_LEN*2*2)+:`OB_LEN];
        end
        default: begin
            data_0_sel <= data_buffer[(`IB_LEN*2*26*0+`IB_LEN*2*23)+:`OB_LEN];
            data_1_sel <= data_buffer[(`IB_LEN*2*26*1+`IB_LEN*2*23)+:`OB_LEN];
            data_2_sel <= data_buffer[(`IB_LEN*2*26*2+`IB_LEN*2*23)+:`OB_LEN];
        end
    endcase
end

assign LOAD_W = (counter < 4'd9);

assign weight_0_w = weight_buffer[0*`IB_LEN*3+:`IB_LEN*3];
assign weight_1_w = weight_buffer[1*`IB_LEN*3+:`IB_LEN*3];
assign weight_2_w = weight_buffer[2*`IB_LEN*3+:`IB_LEN*3];
assign data_0_w = data_0_sel;
assign data_1_w = data_1_sel;
assign data_2_w = data_2_sel;

assign o_weight_0 = weight_0_r;
assign o_weight_1 = weight_1_r;
assign o_weight_2 = weight_2_r;
assign o_data_0 = data_0_r;
assign o_data_1 = data_1_r;
assign o_data_2 = data_2_r;

endmodule