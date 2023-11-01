restart all
add wave *
force pulse_length 440	
force clk 0, 1 10 ns -repeat 20 ns
force key 'h1C 100 ns, 'h1C 150 ns, 'h2B 200 ns, 'h1C 300 ns, 'h1C 400 ns, 'h1C 500 ns
run 600 ns 
