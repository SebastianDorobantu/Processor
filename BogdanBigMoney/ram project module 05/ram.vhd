library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
entity RAM_256X16 is
port(
 address: in std_logic_vector(7 downto 0); 
 data_in: in std_logic_vector(15 downto 0);
 write_in: in std_logic; 
 clock: in std_logic; 
 data_out: out std_logic_vector(15 downto 0)
);
end RAM_256X16;

architecture Behavioral of RAM_256X16 is
type ram_array is array (0 to 255) of std_logic_vector (15 downto 0);
signal ram_data: ram_array :=( 
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000",
   	x"0000",x"0000",x"0000",x"0000",
	x"0000",x"0000",x"0000",x"0000"
   );
begin
process(clock)
begin
 if(rising_edge(clock)) then
 if(write_in='1') then 
 ram_data(to_integer(unsigned(address))) <= data_in;
  end if;
 end if;
end process;
 data_out <= ram_data(to_integer(unsigned(address)));
end Behavioral;
