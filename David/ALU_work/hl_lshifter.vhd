library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hl_lshifter is
port(
	ALU_A   	: in  std_logic_vector(15 downto 0);
	ALU_B 		: in  std_logic_vector(15 downto 0);
	output 		: out std_logic_vector(15 downto 0):= (others => '0');
	overflow_vec	: out std_logic_vector(15 downto 0):= (others => '0');
	ovflow_flag	: out std_logic := '0'
);
end hl_lshifter;

ARCHITECTURE bhv of hl_lshifter IS



COMPONENT lshifter IS 
port(
input  : IN  std_logic_vector (15 DOWNTO 0);
shift1 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift2 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift3 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift4 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift5 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift6 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift7 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift8 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift9 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift10 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift11 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift12 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift13 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift14 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
shift15 : out std_logic_vector (14 DOWNTO 0):= (others => '0');
overflow_vector1 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector2 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector3 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector4 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector5 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector6 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector7 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector8 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector9 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector10 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector11 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector12 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector13 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector14 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector15 : out std_logic_vector(14 DOWNTO 0 ):= (others => '0');
overflow_vector : out std_logic_vector(14 DOWNTO 0 ) := (others => '0')
);
end COMPONENT;


signal overflow_vec1 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec2 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec3 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec4 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec5 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec6 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec7 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec8 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec9 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec10 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec11 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec12 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec13 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec14 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vec15 : std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal sign1 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign2 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign3 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign4 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign5 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign6 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign7 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign8 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign9 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign10 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign11 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign12 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign13 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign14 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal sign15 : std_logic_vector (14 DOWNTO 0):= (others => '0');
signal overflow_sign : std_logic_vector(14 DOWNTO 0) := (others => '0');
signal signcheck : std_logic := '1';
signal ovflow_flag1 : std_logic := '0';
signal ovflow_flag2 : std_logic := '0';
signal ovflow_flag_buf : std_logic := '0';
signal pre_overflow	: std_logic_vector (14 DOWNTO 0):= (others => '0');
signal pre_output 	: std_logic_vector (14 DOWNTO 0):= (others => '0');
signal pre_pre_output 	: std_logic_vector (15 DOWNTO 0):= (others => '0');

BEGIN

port_hl_lshifter : lshifter
	port map(
		input    => ALU_A(15 DOWNTO 0),
		shift1   => sign1  ,           
		shift2   => sign2  ,          
		shift3   => sign3  ,          
		shift4   => sign4  ,          
		shift5   => sign5  ,          
		shift6   => sign6  ,          
		shift7   => sign7  ,          
		shift8   => sign8  ,          
		shift9   => sign9  ,          
		shift10  => sign10 ,        
		shift11  => sign11 ,        
		shift12  => sign12 ,        
		shift13  => sign13 ,        
		shift14  => sign14 ,        
		shift15  => sign15 , 
		overflow_vector1 => overflow_vec1, 
		overflow_vector2 => overflow_vec2,
		overflow_vector3 => overflow_vec3, 
		overflow_vector4 => overflow_vec4, 
		overflow_vector5 => overflow_vec5, 
		overflow_vector6 => overflow_vec6, 
		overflow_vector7 => overflow_vec7, 
		overflow_vector8 => overflow_vec8, 
		overflow_vector9 => overflow_vec9, 
		overflow_vector10 => overflow_vec10, 
		overflow_vector11 => overflow_vec11, 
		overflow_vector12 => overflow_vec12,
		overflow_vector13 => overflow_vec13, 
		overflow_vector14 => overflow_vec14, 
		overflow_vector15 => overflow_vec15        
		--overflow_vector => overflow_sign		
	);

	with to_integer(unsigned(ALU_B)) select
	overflow_sign <=	
		overflow_vec1	when 1,
		overflow_vec1	when 2,
		overflow_vec2	when 3,
		overflow_vec3	when 4,
		overflow_vec4	when 5,
		overflow_vec5	when 6,
		overflow_vec6	when 7,
		overflow_vec7	when 8,
		overflow_vec8	when 9,
		overflow_vec9	when 10,
		overflow_vec10	when 11,
		overflow_vec11	when 12,
		overflow_vec12	when 13,
		overflow_vec13	when 14,
		overflow_vec14	when 15,
		overflow_vec15	when 16,
		(others => 'Z') when others ;

	with to_integer(unsigned(ALU_B)) select
	pre_output <=	
		ALU_A(15) & sign1(14 downto 1) 	when 1,
		sign1	when 2,
		sign2	when 3,
		sign3	when 4,
		sign4	when 5,
		sign5	when 6,
		sign6	when 7,
		sign7	when 8,
		sign8	when 9,
		sign9	when 10,
		sign10	when 11,
		sign11	when 12,
		sign12	when 13,
		sign13	when 14,
		sign14	when 15,
		sign15	when 16,
		(others => 'Z') when others ;
	
	signcheck <= ALU_A(15) xor pre_output(14);




	
	overflow_vec <= 
			'0'  & overflow_sign(14 downto 0)	WHEN overflow_sign = "000000000000000" and to_integer(unsigned(ALU_B)) /= 16 else
			ALU_A(15) & overflow_sign(14 downto 0);
	
	WITH signcheck SELECT
	ovflow_flag1 <= '1' 	WHEN '1',
			'0' 	WHEN others; 

	ovflow_flag2 <=
			'0' 	WHEN overflow_sign = "000000000000000" and to_integer(unsigned(ALU_B)) /= 16 else
			'0'	WHEN overflow_sign = "111111111111111" and to_integer(unsigned(ALU_B)) /= 16 else
			'1'	;
	
	
	ovflow_flag_buf <= ovflow_flag1 or ovflow_flag2;
	ovflow_flag <= ovflow_flag_buf;

	WITH ovflow_flag_buf SELECT
	pre_pre_output <= 	ALU_A(15)  & pre_output(13 downto 0)&'0' WHEN '0', 
				pre_output & '0' 		WHEN others;

	output <= pre_pre_output;  

end bhv;
