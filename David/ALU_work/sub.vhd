library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity sub is
port(	ALU_A   	: in  std_logic_vector(15 downto 0);
	ALU_B 		: in  std_logic_vector(15 downto 0);
	proc_complete	: out std_logic := '0';
	ovflow_flag	: out std_logic := '0';
	output		: out std_logic_vector(15 downto 0):= (others => '0');
	overflow_vec	: out std_logic_vector(15 downto 0):= (others => '0')
);
end sub;

Architecture bhv of sub is

signal	pos_ovflow_a : std_logic := '0';
signal  pos_ovflow_b : std_logic := '0';
signal	neg_ovflow_a : std_logic := '0';
signal	neg_ovflow_b : std_logic := '0';
signal	pos_ovflow   : std_logic := '0';
signal	neg_ovflow   : std_logic := '0';
signal  overflow     : std_logic := '0';
signal 	ALU_sum : std_logic_vector (15 downto 0) := (others => '0');
	
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
	
	pos_ovflow <=  '1' when (pos_ovflow_a = '1') and (pos_ovflow_b = '1') ELSE 
						'0' when (pos_ovflow_a = '0') and (pos_ovflow_b = '0');
	
	neg_ovflow <=  '1' when (neg_ovflow_a = '1') and (neg_ovflow_b = '1') ELSE
						'0' when (neg_ovflow_a = '0') and (neg_ovflow_b = '0');


	ALU_sum	<= 			std_logic_vector((signed(ALU_A)) + not(signed(ALU_B))+ 1)     	when neg_ovflow = '1' else
					std_logic_vector((signed(ALU_A)) - signed(ALU_B)) 		when pos_ovflow = '1' else
					std_logic_vector((signed(ALU_A)) + not(signed(ALU_B)+ 1))  	when (ALU_A(15)= '0' and ALU_B(15)= '1') else
					std_logic_vector((signed(ALU_A)) - (signed(ALU_B))) 		when (ALU_A(ALU_A'left)= '1' and ALU_B(ALU_B'left)= '0');
							 
							 
	output <= ALU_sum 			when overflow = '0' else
				(others => 'Z') 	when	   overflow = '1';
	
	proc_complete <=  '1'					   	when ALU_A(15)= '0' and ALU_B(15)= '1' else
							'1' 					  		when pos_ovflow = '1' and overflow = '0' else
							'1' 					  		when neg_ovflow = '1' and overflow = '0' else
							'1' 				         when (ALU_A(ALU_A'left)= '1' and ALU_B(ALU_B'left)= '0') else
							'0'							when overflow = '1';
							
	
	--output <= (others => 'Z') when (signed(ALU_sum) < 0) and ;	
	--output <= (others => 'Z')				 	when (signed(ALU_sum) > 0);
	--overflow <= '1'							when (signed(ALU_sum) > 0);
	--output <= (others => 'Z')					when overflow = '1';
	--overflow <= '1'							when overflow = '1';			
	
	ovflow_flag <= overflow;	
end bhv;
