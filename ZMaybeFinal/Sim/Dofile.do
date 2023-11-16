quit -sim

project compileall

vsim work.datapath(bhv)



add wave -position insertpoint  \
sim:/datapath/clk
force -freeze sim:/datapath/clk 1 0, 0 {50 ps} -r 100


add wave -position insertpoint  \
sim:/datapath/req0
add wave -position insertpoint  \
sim:/datapath/req1
add wave -position insertpoint  \
sim:/datapath/req2

add wave -position insertpoint  \
sim:/datapath/gnt0
add wave -position insertpoint  \
sim:/datapath/gnt1
add wave -position insertpoint  \
sim:/datapath/gnt2

add wave -position insertpoint  \
sim:/datapath/BUS_busy_line
add wave -position insertpoint  \
sim:/datapath/BUS_addr1
add wave -position insertpoint  \
sim:/datapath/BUS_addr2
add wave -position insertpoint  \
sim:/datapath/BUS_data
add wave -position insertpoint  \
sim:/datapath/BUS_sync1
add wave -position insertpoint  \
sim:/datapath/BUS_sync2

add wave -position insertpoint  \
sim:/datapath/ControlUnit/IM_control
add wave -position insertpoint  \
sim:/datapath/ControlUnit/exec_state
add wave -position insertpoint  \
sim:/datapath/ControlUnit/fe_state
add wave -position insertpoint  \
sim:/datapath/ControlUnit/fetch_state

add wave -position insertpoint  \
sim:/datapath/IM/InstructionFetchers/state
add wave -position insertpoint  \
sim:/datapath/IM/InstructionFetchers/fetch_state

add wave -position insertpoint  \
sim:/datapath/IM/InstructionFiles/address
add wave -position insertpoint  \
sim:/datapath/IM/InstructionFiles/Data
add wave -position insertpoint  \
sim:/datapath/IM/InstructionFiles/registers
add wave -position insertpoint  \
sim:/datapath/IM/InstructionFiles/WR
add wave -position insertpoint  \
sim:/datapath/BUSarbiter/state


run
run
run
run
run
run
run
run