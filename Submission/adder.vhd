library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity adder is
port(	ALU_A   	: in  std_logic_vector(15 downto 0);
	ALU_B 		: in  std_logic_vector(15 downto 0);
	ovflow_flag	: out std_logic := '0';
	output		: out std_logic_vector(15 downto 0):= (others => '0');
	overflow_vec	: out std_logic_vector(15 downto 0):= (others => '0')
);
end adder;

Architecture bhv of adder is

signal	pos_ovflow_a : std_logic := '0';
signal  pos_ovflow_b : std_logic := '0';
signal	neg_ovflow_a : std_logic := '0';
signal	neg_ovflow_b : std_logic := '0';
signal	pos_ovflow   : std_logic := '0';
signal	neg_ovflow   : std_logic := '0';
signal  overflow     : std_logic := '0';
signal  ALU_sum      : std_logic_vector (15 downto 0) := (others => '0');

begin

	With ALU_A(ALU_A'left) select
	pos_ovflow_a <= '1' when '0', 		--Positive overflow chance
			'0' when others;
	With ALU_A(ALU_A'left) select
	neg_ovflow_a <= '1' when '1',
			'0' when others;

	with ALU_B(ALU_B'left) select
	pos_ovflow_b <= '1' when '0',
			'0' when others;
	with ALU_B(ALU_B'left) select
	neg_ovflow_b <= '1' when '1',
			'0' when others;
	
	pos_ovflow <= '1' when (pos_ovflow_a = '1') and (pos_ovflow_b = '1') ELSE 
		      '0';
	
	neg_ovflow <= '1' when (neg_ovflow_a = '1') and (neg_ovflow_b = '1') ELSE
		      '0';
	
	
										--check for Valid input 													-- check OP field
		ALU_sum <= std_logic_vector(signed(ALU_A(15 downto 0)) + signed(ALU_B(15 downto 0)));

		overflow <= '1' when (signed(ALU_sum) < 0 and pos_ovflow = '1') else
			    '0' when (signed(ALU_sum) < 0 and pos_ovflow = '0') else
			    '1' when (signed(ALU_sum) > 0 and neg_ovflow = '1') else
			    '1' when (signed(ALU_sum) = 0 and neg_ovflow = '1') else
			    '0' when (signed(ALU_sum) > 0 and neg_ovflow = '0');

														--overflow is checked here
		output <= ALU_sum 		when overflow = '0';
		 	 	
		overflow_vec(0) <= '1' 		when overflow = '1' and pos_ovflow = '1' else
				   '1'		when overflow = '1' and neg_ovflow = '1' else
				   '0'		when overflow = '0';
		overflow_vec(15 downto 1) <= 	"111111111111111" when overflow = '1' and neg_ovflow = '1' else
						"000000000000000"; 
		

		ovflow_flag  <= '1' 	  when overflow = '1' else
				'0'	  when overflow = '0';
														
end bhv;
