# primetime scripts

#set_host_options -max_cores 8
set power_enable_analysis true
set power_analysis_mode time_based

#report intrinsic leakage and gate leakage and total leakage as well
set power_report_leakage_breakdowns true
#exclude clock power 
set power_clock_network_include_register_clock_pin_power true

#read and link design library
#"./"current folder should add db path
set search_path "./" 
#db files
set target_library "fast.db"
#link library need to add "*"
set link_library "* fast.db" 
#add design ware
set sythetic_library "dw_foundation.sldb"

#read designs

read_file -format verilog [list my_design.v]
current_design [get_designs my_top]
read_sdf -load_delay net my_design.sdf

#read switching activity file
#analyze power between t1 t2
read_vcd -time {t1 t2} -strip_path testbench/my_design ./my.vcd

#power analysis 
check_power
set_power_analysis_options -waveform_interval 1
update_power

#generate report
set_power_analysis_options -waveform_interval 1 -waveform_format out -waveform_output vcd
report_power -verbose -hierarchy > my_design.power
report_power >> my_design.power

#exit
exit