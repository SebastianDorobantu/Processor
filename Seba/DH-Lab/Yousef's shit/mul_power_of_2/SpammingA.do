
restart all
add wave *
force clk 0, 1 10 ns -repeat 20 ns
force key 'h1C 100 ns, 'h1C 200 ns, 'h1C 300 ns 
run 600 ns 
