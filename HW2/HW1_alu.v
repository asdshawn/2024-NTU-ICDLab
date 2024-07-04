//ICDLAB HW1
//ID: R12945050

`define S0 3'b000
`define S1 3'b001
`define S2 3'b010
`define S3 3'b011
`define S4 3'b100
`define S5 3'b101
`define S6 3'b110
`define S7 3'b111

module alu(
             clk_p_i,
             reset_n_i,
             data_a_i,
             data_b_i,
             inst_i,
             data_o
             );

  /*========================IO declaration============================ */	  

    input           clk_p_i;
    input           reset_n_i;
    input   [7:0]   data_a_i;
    input   [7:0]   data_b_i;
    input   [2:0]   inst_i;

    output  [15:0]  data_o;

  /* =======================REG & wire================================ */
	  
    //declare reg&wire you need
    wire    [15:0]  out_inst_0;
    wire    [15:0]  out_inst_1;
    wire    [15:0]  out_inst_2;
    wire    [15:0]  out_inst_3;
    wire    [15:0]  out_inst_4;
    wire    [15:0]  out_inst_5;
    wire    [15:0]  out_inst_6;

    reg     [15:0]  ALU_out_inst;
    wire    [15:0]  ALU_d2_w;
    reg     [15:0]  ALU_d2_r;
    
    reg     [7:0]   reg_data_a, reg_data_b;
    reg     [2:0]   state, next_state;

  /* ====================Combinational Part================== */

    //next-next_state logic
    always @(*) begin
      if(inst_i == `S7) next_state <= state;
      else next_state <= inst_i;
      case(state)
        `S2: begin
          if (inst_i == `S2 | inst_i == `S4 | inst_i == `S6 | inst_i == `S7) next_state <= state;
          else next_state <= inst_i;
        end
        `S3: begin
          if (inst_i == `S2 | inst_i == `S3 | inst_i == `S4 | inst_i == `S5 | inst_i == `S7) next_state <= state;
          else next_state <= inst_i;
        end
        `S4: begin
          if (inst_i == `S1 | inst_i == `S5) next_state <= inst_i;
          else next_state <= state;
        end
        `S5: begin
          if (inst_i == `S3 | inst_i == `S4 | inst_i == `S5 | inst_i == `S6 | inst_i == `S7) next_state <= state;
          else next_state <= inst_i;
        end
        `S6: begin
          if (inst_i == `S1 | inst_i == `S5) next_state <= inst_i;
          else next_state <= state;
        end
      endcase
    end			  
			  
    // output logic
    always@ (*) begin
      ALU_out_inst = 0;
      case(state)
        `S0: ALU_out_inst = out_inst_0;           
        `S1: ALU_out_inst = out_inst_1;
        `S2: ALU_out_inst = out_inst_2;
        `S3: ALU_out_inst = out_inst_3;
        `S4: ALU_out_inst = out_inst_4;
        `S5: ALU_out_inst = out_inst_5;
        `S6: ALU_out_inst = out_inst_6;
      endcase
    end

    assign ALU_d2_w = ALU_out_inst;
    assign data_o   = ALU_d2_r;

    assign out_inst_0 = {8'b0, reg_data_a[7:0]} + {8'b0, reg_data_b[7:0]};
    assign out_inst_1 = {8'b0, reg_data_b[7:0]} - {8'b0, reg_data_a[7:0]};
    assign out_inst_2 = {8'b0, reg_data_a[7:0]} * {8'b0, reg_data_b[7:0]};
    assign out_inst_3 = {8'b0, reg_data_a[7], reg_data_a[7:1]};
    assign out_inst_4 = ~out_inst_1;
    assign out_inst_5 = {8'b0, reg_data_a[7:0] ^ reg_data_b[7:0]};
    assign out_inst_6 = out_inst_1[15] ? ~out_inst_1+1 : out_inst_1;

  /* ====================Sequential Part=================== */

    always@(posedge clk_p_i or negedge reset_n_i) begin
      if (reset_n_i == 1'b0) begin
        state   <= 8'd0;
        reg_data_a <= 8'd0;
        reg_data_b <= 8'd0;
        ALU_d2_r   <= 16'd0;
      end
      else begin
        ALU_d2_r   <= ALU_d2_w;
        state   <= next_state;
        reg_data_a <= data_a_i;
        reg_data_b <= data_b_i;
      end
    end

  /* ====================================================== */

endmodule

