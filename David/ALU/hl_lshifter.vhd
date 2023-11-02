entity hl_shifter is
port(
ALU_A2 in std_logic_vector(15 downto 0);
ALU_B2 in std_logic_vector(15 downto 0);
)

architecture begin 

component shifter
PORT MAP(
input <= ALU_A2 (14 downto 0);
signbit <= ALU_A2(15);
nbit_shift <= to_integer(unsgined(ALU_B2(15 downto 0)));
)

case unsigned(ALU_B) is
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

