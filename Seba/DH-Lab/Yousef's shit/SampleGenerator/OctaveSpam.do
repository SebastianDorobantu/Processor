restart all
add wave *
force pulse_length 440	
force clk 0, 1 10 ns -repeat 20 ns
force key 'h1A 30 ns, 'h1A 60 ns, 'h2B 90 ns, 'h1A 120 ns, 'h1A 150 ns, 'h1B 180 ns, 'h1A 300 ns, 'h1A 400 ns, 'h1A 500 ns, 'h1A 550 ns 'h1B 680
run 600 ns 
