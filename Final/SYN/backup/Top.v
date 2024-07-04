`timescale 1ns/10ps
`include "CORE.v"
`define INPUT_LEN 8
`define OUTPUT_LEN 8
`define CONV_LEN 21
`define CHIP_NUM 2
`define DATA_NUM (3+`CHIP_NUM-1)
`define WEIGHT_NUM 9

module Top (
    input                    clk,
    input                    rst_n,
    input  [1:0]             layer_num,
    input  [`INPUT_LEN-1:0]  i_data,
    output [`OUTPUT_LEN-1:0] o_data
);
reg  [4:0] layer_size;
reg  [5:0] counter_initial, counter_initial_next;
reg  [4:0] counter, counter_next;
reg  [5:0] counter_store, counter_store_next;
reg  [`INPUT_LEN*`DATA_NUM-1:0] buffer_data;
reg  [`INPUT_LEN*`WEIGHT_NUM*`CHIP_NUM-1:0] weights;
reg  [`INPUT_LEN*`WEIGHT_NUM-1:0] buffer_weight [0:`CHIP_NUM-1];
reg  [`INPUT_LEN*3-1:0] temp_weight [0:`CHIP_NUM-1];
reg  [`OUTPUT_LEN-1:0] o_data_r [0:`CHIP_NUM-1];
wire [`CONV_LEN-1:0] o_data_w [0:`CHIP_NUM-1];
reg  [`OUTPUT_LEN-1:0] o_temp;
reg  [`OUTPUT_LEN*14-1:0] o_buffer [0:`CHIP_NUM-1];
integer j;
reg sel, G, R, S;

genvar i;
generate
    for (i = 0; i < `CHIP_NUM; i = i + 1) begin:CHIPS
        CORE core(
            .clk(clk),
            .rst_n(rst_n),
            .layer_num(layer_num),
            .i_data(buffer_data[`INPUT_LEN*i+:`INPUT_LEN*3]),
            .i_weight(temp_weight[i]),
            .o_data(o_data_w[i])
        );
    end
endgenerate

always @(*) begin
    case (layer_num)
        2'd1: layer_size <= 5'd12;
        2'd2: layer_size <= 5'd5;
        default: layer_size <= 5'd26;
    endcase
end
////////////////////////////////////////////// COUNTERS //////////////////////////////////////////////
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        counter_initial_next <= 0;
        counter_next <= 0;
        counter_store_next <= 0;
    end
    else if (counter_initial < 6'd18) begin
        counter_initial_next <= counter_initial + 1;
        counter_next <= counter_next;
        counter_store_next <= counter_store_next;
    end
    else begin
        counter_initial_next <= counter_initial_next;
        if (counter < layer_size) counter_next <= counter + 1;
        else counter_next <= 1;
        if (counter_store < 6'd56) counter_store_next <= counter_store + 1;
        else counter_store_next <= counter_store_next;
    end
end

always @(*) counter_initial <= counter_initial_next;
always @(*) counter <= counter_next;
always @(*) counter_store <= counter_store_next;
/////////////////////////////////////////////// BUFFER ///////////////////////////////////////////////

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        buffer_data <= 0;
        weights <= 0;
        for (j = 0; j < `CHIP_NUM; j = j + 1) o_buffer[j] <= 0;
        sel <= 0;
    end
    else begin
        if (counter_initial < 6'd18) begin
            buffer_data <= buffer_data;
            weights <= {weights[0+:`INPUT_LEN*(`WEIGHT_NUM*2-1)], i_data};
            for (j = 0; j < `CHIP_NUM; j = j + 1) o_buffer[j] <= o_buffer[j];
        end
        else begin
            buffer_data <= {buffer_data[0+:`INPUT_LEN*(`DATA_NUM-1)], i_data};
            if (counter < layer_size) weights <= weights;
            else weights <= {weights[`INPUT_LEN*9+:`INPUT_LEN*6], temp_weight[1], weights[0+:`INPUT_LEN*6], temp_weight[0]};
            if (counter_store < 6'd28) begin
                for (j = 0; j < `CHIP_NUM; j = j + 1) o_buffer[j] <= {o_buffer[j][0+:`OUTPUT_LEN*13], o_data_r[j]};
                o_temp <= o_temp;
            end
            else if (counter_store < 6'd42) begin
                o_buffer[0] <= {o_buffer[0][0+:`OUTPUT_LEN*13], 8'b0};
                o_buffer[1] <= o_buffer[1];
                o_temp <= o_buffer[0][`OUTPUT_LEN*14-1-:`OUTPUT_LEN];
            end
            else begin
                o_buffer[0] <= o_buffer[0];
                o_buffer[1] <= {o_buffer[1][0+:`OUTPUT_LEN*13], 8'b0};
                o_temp <= o_buffer[1][`OUTPUT_LEN*14-1-:`OUTPUT_LEN];
            end
        end
        sel <= ~sel;
    end
end

always @(*) for (j = 0; j < `CHIP_NUM; j = j + 1) temp_weight[j] <= weights[`INPUT_LEN*`WEIGHT_NUM*(`CHIP_NUM-j)-1-:`INPUT_LEN*3];

always @(*) begin
    for (j = 0; j < `CHIP_NUM; j = j + 1) begin
        {G, R, S} <= {o_data_w[j][7:6], |o_data_w[j][5:0]};
        if ({G, R, S} == 3'b011 || {G, R, S} == 3'b110 || {G, R, S} == 3'b111) begin
            o_data_r[j] <= o_data_w[j][14:7] + 1;
        end
        else o_data_r[j] <= o_data_w[j][14:7];
    end
end

assign o_data = (layer_num == 2'd2) ? o_temp : o_data_r[sel];

endmodule