restart all
add wave *
force reset 1 
force next_value 1
force clk 0, 1 10 ns -repeat 20 ns
run 10000 ns 