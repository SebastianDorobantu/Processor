library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity ALU IS
port(	reset : in std_logic;
		clk : in std_logic;						
		ALU_cntrl : in std_logic_vector (3 downto 0);				-- OP field
		ALU_A : in std_logic_vector (15 downto 0);				-- input A
		ALU_B : in std_logic_vector (15 downto 0);				-- input B
		complete : in boolean;						-- instruction complete => reset 

		carry_out : out std_logic;                                               -- carry out bit
		--zero_condition : out std_logic;					-- checks if result is 0				
		--neg_flag : out std_logic;						-- result is negative
		ALU_out : out std_logic_vector (15 downto 0);				-- output of ALU
		ovflow_flag : out std_logic;						-- overflow flag
		proc_complete : out std_logic						-- process complete => notifies that data is placed on the bus
		);	
end ALU;

architecture bhv of ALU is
signal ALU_sum : std_logic_vector (15 downto 0);
signal pos_ovflow : std_logic;
signal neg_ovflow : std_logic;
signal overflow : std_logic;


begin
process(clk,reset)
variable vec0, vec1, vec2 : std_logic_vector (15 downto 0);
variable nbits : integer;
variable n : integer;
variable vec_length : integer := 15;
begin

if reset = '0' then
	ALU_sum <= (others => '0'); 
	pos_ovflow <= '0';
	neg_ovflow <= '0';
	ovflow_flag <= '0';
	overflow <= '0';
	vec0 := (others => '0');
	vec1 := (others => '0');
	carry_out <= '0';
	ALU_out <= (others => '0');
	proc_complete <= '0';
	--zero_condition  <=  '0';
	--neg_flag <= '0';
	

elsif rising_edge(clk) and complete = true then 						-- soft reset the outputs	
	ALU_sum <= (others => '0');
	pos_ovflow <= '0';
	neg_ovflow <= '0';
	ovflow_flag <= '0';
	overflow <= '0';
	vec0 := (others => '0');
	vec1 := (others => '0');
	carry_out <= '0';
	ALU_out <= (others => '0');
	proc_complete <= '0';
	--zero_condition  <=  '0';
	--neg_flag <= '0';
	
elsif rising_edge(clk) and complete = false then 
	
	if ALU_A(ALU_A'left)= '0' and ALU_B(ALU_B'left)= '0' then		-- Positive overflow chance
		pos_ovflow <= '1';
		
	else																				
		pos_ovflow <= '0';
		
	end if;
	
	if ALU_A(ALU_A'left)= '1' and ALU_B(ALU_B'left)= '1' then		-- Negative overflow chance
		neg_ovflow <= '1';
		
	else
		neg_ovflow <= '0';
		
	end if;
	

		if ALU_A /= "ZZZZZZZZZZZZZZZZ" then										-- check for Valid input 
		case ALU_cntrl is													-- check OP field
			when "0000" =>
			ALU_sum	<= std_logic_vector(signed(ALU_A(15 downto 0)) + signed(ALU_B(15 downto 0)));
			if (signed(ALU_sum) < 0 and pos_ovflow = '1') or (signed(ALU_sum) > 0 and neg_ovflow = '1') then	-- check for overflow
				overflow <= '1';
		
			else
				overflow <= '0';
			
			end if;	
				if overflow = '0' then 										-- overflow is checked here
					ALU_out <= ALU_sum;
					proc_complete <= '1';
					
				elsif overflow = '1' then
					ALU_out <= (others => 'Z');
					ovflow_flag <= '1';
					
				end if;
			when "0001" =>
				
				if neg_ovflow = '1' then
					ALU_out <= std_logic_vector(signed(ALU_A) + (not signed(ALU_B))+ 1);
					proc_complete <= '1';
				elsif pos_ovflow = '1' then
					ALU_out <= std_logic_vector(signed(ALU_A) - signed(ALU_B));
					proc_complete <= '1';
				elsif (ALU_A(ALU_A'left)= '0' and ALU_B(ALU_B'left)= '1') then
						ALU_sum <= std_logic_vector(signed(ALU_A) + (not signed(ALU_B))+ 1);
						ALU_out <= ALU_sum;
						proc_complete <= '1';
					if (signed(ALU_sum) < 0) then
						ALU_out <= (others => 'Z');
						ovflow_flag <= '1';
					end if;
				elsif (ALU_A(ALU_A'left)= '1' and ALU_B(ALU_B'left)= '0') then
						ALU_sum <= std_logic_vector(signed(ALU_A) - signed(ALU_B));
						ALU_out <= ALU_sum;
						proc_complete <= '1';
					if (signed(ALU_sum) > 0) then
						ALU_out <= (others => 'Z');
						ovflow_flag <= '1';
					end if;
				end if;
				if overflow = '1' then
					ALU_out <= (others => 'Z');
					ovflow_flag <= '1';
			
				end if;
			when "0010" => 		
				nbits := to_integer(signed(ALU_B));											-- logical shift left
				vec0 := std_logic_vector(signed(ALU_A (15 downto 0)));
			for i in 0 to (nbits - 1) loop
				if overflow <= '0' then
					vec1(0) := '0';
					vec1(1) := vec0(0);
					vec1(2) := vec0(1);
					vec1(3) := vec0(2);
					vec1(4) := vec0(3);
					vec1(5) := vec0(4);
					vec1(6) := vec0(5);
					vec1(7) := vec0(6);
					vec1(8) := vec0(7);
					vec1(9) := vec0(8);
					vec1(10) := vec0(9);
					vec1(11) := vec0(10);
					vec1(12) := vec0(11);
					vec1(13) := vec0(12);
					vec1(14) := vec0(13);
					vec1(15) := vec0(14);
					vec0 := std_logic_vector(signed(vec1(15 downto 0)));
					vec1 := (others => '0');
					if (ALU_A(ALU_A'left) /= vec0(vec0'left)) then				--detect overflow
						vec1(15) := not vec0(15);
						overflow <= '1';
						if vec1(15) = '1' then
							vec1 := (others => '1');	
						end if;
					end if;
				elsif overflow <= '1' then
					ovflow_flag <= '1';
				end if;
			end loop;
				
				if overflow = '1' then	
					ovflow_flag <= '1';
					ALU_sum <= std_logic_vector(signed(vec0(15 downto 0)));
					ALU_out <= std_logic_vector(signed(vec1(15 downto 0)));
				else
					ALU_sum <= std_logic_vector(signed(vec0(15 downto 0)));
					ALU_out <= ALU_sum;
				end if;
			when others =>
				ALU_out <= (others => 'Z');

		end case;
		elsif ALU_A = "ZZZZZZZZZZZZZZZZ" then								-- if input A is disconnected (needs to be connected in all types of functions)
			ALU_out <= (others => 'Z');										-- keep output disconnected  
		end if;
		end if;
		
end process;
end bhv;
