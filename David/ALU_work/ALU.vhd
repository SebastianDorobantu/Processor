library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU IS
port(		reset : in std_logic;
		clk : in std_logic;						
		ALU_cntrl : in std_logic_vector (3 downto 0);				-- OP field
		ALU_A : in std_logic_vector (15 downto 0);				-- input A
		ALU_B : in std_logic_vector (15 downto 0);				-- input B
		complete : in boolean;							-- instruction complete => reset 

		zero_flag : out std_logic;					-- checks if result is 0				
		neg_flag : out std_logic;						-- result is negative
		ALU_out : out std_logic_vector (15 downto 0):= (others => '0');				-- output of ALU
		ovflow_flag : out std_logic := '0';						-- overflow flag
		proc_complete : out std_logic := '0';						-- process complete => notifies that data is placed on the bus
		overflow_out : out std_logic_vector(15 downto 0):= (others => '0')
		);	
end ALU;

architecture bhv of ALU is

signal ALU_out_buf : std_logic_vector (15 downto 0) := (others => '0');
signal overflow_out_buf : std_logic_vector (15 downto 0) := (others => '0');

signal pos_ovflow : std_logic := '0';
signal neg_ovflow : std_logic := '0';
signal overflow : std_logic := '0';
signal ALU_A_lshift : std_logic_vector (15 downto 0) := (others => '0');
signal ALU_B_lshift : std_logic_vector (15 downto 0) := (others => '0');
signal lshift_output : std_logic_vector (15 downto 0) := (others => '0');
signal ovflow_flag_lshift : std_logic := '0';
signal overflow_out_lshift : std_logic_vector (15 downto 0) := (others => '0');

signal ALU_A_add : std_logic_vector (15 downto 0) := (others => '0');
signal ALU_B_add : std_logic_vector (15 downto 0) := (others => '0');
signal add_output : std_logic_vector (15 downto 0) := (others => '0');
signal ovflow_flag_add : std_logic := '0';
signal overflow_out_add : std_logic_vector (15 downto 0) := (others => '0');

signal ALU_A_sub : std_logic_vector (15 downto 0) := (others => '0');
signal ALU_B_sub : std_logic_vector (15 downto 0) := (others => '0');
signal sub_output : std_logic_vector (15 downto 0) := (others => '0');
signal ovflow_flag_sub : std_logic := '0';
signal overflow_out_sub : std_logic_vector (15 downto 0) := (others => '0');

component hl_lshifter is
port(
ALU_A			: in std_logic_vector(15 downto 0);
ALU_B			: in std_logic_vector(15 downto 0);
output 			: out std_logic_vector(15 downto 0):= (others => '0');
overflow_vec 		: out std_logic_vector(15 downto 0):= (others => '0');
proc_complete		: out std_logic := '0';
ovflow_flag		: out std_logic := '0'
);
end component;

component adder is
port(	ALU_A   		: in  std_logic_vector(15 downto 0);
	ALU_B 			: in  std_logic_vector(15 downto 0);
	proc_complete		: out std_logic := '0';
	ovflow_flag		: out std_logic := '0';
	output 			: out std_logic_vector(15 downto 0):= (others => '0');
	overflow_vec 		: out std_logic_vector(15 downto 0):= (others => '0')
);
end component;

component sub is
port(	ALU_A   		: in  std_logic_vector(15 downto 0);
	ALU_B 			: in  std_logic_vector(15 downto 0);
	proc_complete		: out std_logic := '0';
	ovflow_flag		: out std_logic := '0';
	output 			: out std_logic_vector(15 downto 0):= (others => '0');
	overflow_vec 		: out std_logic_vector(15 downto 0):= (others => '0')
);
end component;


begin

port_ALU: adder
PORT MAP(
ALU_A => ALU_A_add,
ALU_B => ALU_B_add,
output => add_output,
overflow_vec => overflow_out_add,
ovflow_flag => ovflow_flag_add
);

port2_ALU: sub
PORT MAP(
ALU_A => ALU_A_sub,
ALU_B => ALU_B_sub,
output => sub_output,
overflow_vec => overflow_out_sub,
ovflow_flag => ovflow_flag_sub
);

port3_ALU: hl_lshifter
PORT MAP(
ALU_A => ALU_A_lshift,
ALU_B => ALU_B_lshift,
output => lshift_output,
overflow_vec => overflow_out_lshift,
ovflow_flag => ovflow_flag_lshift
);
 	
ALU_A_sub <= ALU_A when ALU_cntrl = "0001";
ALU_B_sub <= ALU_B when ALU_cntrl = "0001";

ALU_A_add <= ALU_A when ALU_cntrl = "0000";
ALU_B_add <= ALU_B when ALU_cntrl = "0000";

ALU_A_lshift <= ALU_A when ALU_cntrl = "0010";
ALU_B_lshift <= ALU_B when ALU_cntrl = "0010";


overflow <=  ovflow_flag_add when ALU_cntrl = "0000" else
		ovflow_flag_sub when ALU_cntrl = "0001" else
		ovflow_flag_lshift when ALU_cntrl = "0010";

overflow_out_buf <= overflow_out_add when ALU_cntrl = "0000" else
		overflow_out_sub when ALU_cntrl = "0001" else
		overflow_out_lshift when ALU_cntrl = "0010";


ALU_out_buf <= 	add_output 		when ALU_cntrl = "0000" else				--addition
						sub_output 		when ALU_cntrl = "0001" else				--subtraction
						lshift_output 		when ALU_cntrl = "0010" else			--leftshift
						ALU_A and ALU_B 	when ALU_cntrl = "0110" else			--AND
						not(ALU_A and ALU_B) 	when ALU_cntrl = "1000" else	--NAND
						ALU_A or ALU_B 		when ALU_cntrl = "0101" else		-- OR
						ALU_A xor ALU_B		when ALU_cntrl = "1001" else		-- XOR
						not(ALU_A xor ALU_B)  	when ALU_cntrl = "1010" else	-- XNOR
						"ZZZZZZZZZZZZZZZZ";

zero_flag <= '1' when ALU_out_buf  = "0000000000000000" and overflow = '0' else
	     '0' when ALU_out_buf /= "0000000000000000";

neg_flag <= 	'1' when ALU_out_buf(15) = '1' and overflow_out_buf(15) = '1' else
					'1' when ALU_out_buf(15) = '0' and overflow_out_buf(15) = '1' else
					'0' when ALU_out_buf(15) = '1' and overflow_out_buf(15) = '0' else
					'0' when ALU_out_buf(15) = '0' and overflow_out_buf(15) = '0';

ovflow_flag <= overflow;
ALU_out <= ALU_out_buf;
overflow_out <= overflow_out_buf;


end bhv;
