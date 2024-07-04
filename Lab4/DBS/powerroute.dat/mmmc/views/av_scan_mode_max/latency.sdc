set_clock_latency 0.5  [get_clocks {clk_p_i}]
set_clock_latency -source -early -max -rise  -0.600506 [get_ports {clk_p_i}] -clock clk_p_i 
set_clock_latency -source -early -max -fall  -0.355672 [get_ports {clk_p_i}] -clock clk_p_i 
set_clock_latency -source -late -max -rise  -0.600506 [get_ports {clk_p_i}] -clock clk_p_i 
set_clock_latency -source -late -max -fall  -0.355672 [get_ports {clk_p_i}] -clock clk_p_i 
