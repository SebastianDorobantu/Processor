library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hl_lshifter is
port(
ALU_A2 : in std_logic_vector(15 downto 0);
ALU_B2 : in std_logic_vector(15 downto 0);
output : out std_logic_vector(15 downto 0)
);
end hl_lshifter;
architecture bhv of hl_lshifter is
begin 

with to_integer(unsigned(ALU_B2)) select
	when 1: output <= shift1;
	when 2: output <= shift2;
	when 3: output <= shift3;
	when 4: output <= shift4;
	when 5: output <= shift5;
	when 6: output <= shift6;
	when 7: output <= shift7;
	when 8: output <= shift8;
	when 9: output <= shift9;
	when 10: output <= shift10;
	when 11: output <= shift11;
	when 12: output <= shift12;
	when 13: output <= shift13;
	when 14: output <= shift14;
	when 15: output <= shift15;
	--when 16: output <= shift16;
	when others => output <= (others => 'Z');
end case;

end bhv;
