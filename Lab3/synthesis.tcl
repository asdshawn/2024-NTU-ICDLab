# Read Design
read_file -format verilog Lab1_alu.v

current_design alu
uniquify
link

#source -echo -verbose ./your_design.sdc

############in sdc file
# Set the Optimization Constraints 
create_clock -period 10 -name "clk_p_i" -waveform {0 5} "clk_p_i"
set_dont_touch_network [get_ports clk_p_i]
set_fix_hold [get_clocks clk_p_i]


# Define the design environment
set_clock_uncertainty  0.1  [get_clocks clk_p_i]
set_clock_latency      0.5  [get_clocks clk_p_i]
set_input_delay -max 1 -clock clk_p_i [all_inputs]
set_output_delay -min 0.5 -clock clk_p_i [all_outputs]
set_drive 1  [all_inputs]
set_load  10 [all_outputs]


set_fix_multiple_port_nets -all -buffer_constants

set_operating_conditions -min_library fsa0m_a_generic_core_ff1p98vm40c -min BCCOM -max_library fsa0m_a_generic_core_ss1p62v125c -max WCCOM
set_wire_load_model -name G200K -library fsa0m_a_generic_core_tt1p8v25c

set_max_area 0
set_max_fanout 6 alu
set_boundary_optimization {"*"}
#############in sdc file


check_design

# remove_attribute [find -hierarchy design {"*"}] dont_touch

# Map and Optimize the Design
compile -map_effort medium

# Analyze and debug the design
report_area > area_alu.out
report_power > power_alu.out
report_timing -path full -delay max > timing_alu.out

#write -format db -hierarchy -output $active_design.db
write -format verilog -hierarchy -output Lab3_alu_syn.v
write_sdf -version 2.1 -context verilog Lab3_alu.sdf
write_sdc Lab3_alu.sdc
