restart all
add wave *
force reset 1 
force clk 0, 1 10 ns -repeat 20 ns
force next_value 1, 0 20 ns -repeat 1000 ns 
run 1000000 ns 