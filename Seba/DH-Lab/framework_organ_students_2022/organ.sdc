# http://www.altera.com/support/examples/timequest/exm-tq-clock-mux.html
# Create a clock on each port
create_clock -name clk -period 50MHz [get_ports clk]
create_clock -name kbclock -period 20kHz [get_ports kbclock] 
create_generated_clock -divide_by 512 -source [get_ports clk] -name SCLK_INT [get_registers audio_interface:s2a|i2c_counter[9]]
# Set the clocks as exclusive clocks
set_clock_groups -exclusive -group {clk} -group {kbclock}
# Set a false-path between two unrelated clocks
# See also set_clock_groups
set_false_path -from [get_clocks clk] -to [get_clocks kbclock]

