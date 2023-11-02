library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity hl_lshifter is
port(
	ALU_A   	: in  std_logic_vector(15 downto 0);
	ALU_B 		: in  std_logic_vector(15 downto 0);
	output 		: out std_logic_vector(15 downto 0);
	overflow_vec: out std_logic_vector(15 downto 0)
);
end hl_lshifter;
ARCHITECTURE bhv of hl_lshifter IS



COMPONENT lshifter IS 
port(
input  : IN  std_logic_vector (14 DOWNTO 0);
shift1 : out std_logic_vector (14 DOWNTO 0);
shift2 : out std_logic_vector (14 DOWNTO 0);
shift3 : out std_logic_vector (14 DOWNTO 0);
shift4 : out std_logic_vector (14 DOWNTO 0);
shift5 : out std_logic_vector (14 DOWNTO 0);
shift6 : out std_logic_vector (14 DOWNTO 0);
shift7 : out std_logic_vector (14 DOWNTO 0);
shift8 : out std_logic_vector (14 DOWNTO 0);
shift9 : out std_logic_vector (14 DOWNTO 0);
shift10 : out std_logic_vector (14 DOWNTO 0);
shift11 : out std_logic_vector (14 DOWNTO 0);
shift12 : out std_logic_vector (14 DOWNTO 0);
shift13 : out std_logic_vector (14 DOWNTO 0);
shift14 : out std_logic_vector (14 DOWNTO 0);
shift15 : out std_logic_vector (14 DOWNTO 0);
shift16 : out std_logic_vector (14 DOWNTO 0);
overflow_vector : out std_logic_vector(14 DOWNTO 0 )
);
end COMPONENT;



signal sign1 : std_logic_vector (14 DOWNTO 0);
signal sign2 : std_logic_vector (14 DOWNTO 0);
signal sign3 : std_logic_vector (14 DOWNTO 0);
signal sign4 : std_logic_vector (14 DOWNTO 0);
signal sign5 : std_logic_vector (14 DOWNTO 0);
signal sign6 : std_logic_vector (14 DOWNTO 0);
signal sign7 : std_logic_vector (14 DOWNTO 0);
signal sign8 : std_logic_vector (14 DOWNTO 0);
signal sign9 : std_logic_vector (14 DOWNTO 0);
signal sign10 : std_logic_vector (14 DOWNTO 0);
signal sign11 : std_logic_vector (14 DOWNTO 0);
signal sign12 : std_logic_vector (14 DOWNTO 0);
signal sign13 : std_logic_vector (14 DOWNTO 0);
signal sign14 : std_logic_vector (14 DOWNTO 0);
signal sign15 : std_logic_vector (14 DOWNTO 0);
signal sign16 : std_logic_vector (14 DOWNTO 0);
signal overflow_sign : std_logic_vector(14 DOWNTO 0 );

signal pre_overflow	: std_logic_vector (14 DOWNTO 0);
signal pre_output 	: std_logic_vector (14 DOWNTO 0);

BEGIN


ll_shifter : work.lshifter
	port map(
		input    => ALU_A(14 DOWNTO 0),
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
		shift16  => sign16 ,
		overflow_vector => overflow_sign		
	);

	WITH overflow_sign SELECT
	output <= 
	ALU_A(ALU_A'left)  & pre_output WHEN overflow_sign  = "000000000000000",
	pre_output & '0'	    		WHEN overflow_sign /= "000000000000000";

	WITH overflow_sign SELECT
	overflow_vec <= 
	ALU_A(ALU_A'left) & overflow_sign 	WHEN overflow_sign /= "000000000000000",
	overflow_sign & '0'	    			WHEN overflow_sign = "000000000000000";
	
	

	
	with to_integer(unsigned(ALU_B)) select
	pre_output <=	
		sign1	when 1,
		sign2	when 2,
		sign3	when 3,
		sign4	when 4,
		sign5	when 5,
		sign6	when 6,
		sign7	when 7,
		sign8	when 8,
		sign9	when 9,
		sign10	when 10,
		sign11	when 11,
		sign12	when 12,
		sign13	when 13,
		sign14	when 14,
		sign15	when 15,
		(others => 'Z') when others ;




	-- with to_integer(unsigned(ALU_B)) select
	--shift_output <=	
	-- 	ALU_A(15) & sign1	when 1,
	-- 	ALU_A(15) & sign2	when 2,
	-- 	ALU_A(15) & sign3	when 3,
	-- 	ALU_A(15) & sign4	when 4,
	-- 	ALU_A(15) & sign5	when 5,
	-- 	ALU_A(15) & sign6	when 6,
	-- 	ALU_A(15) & sign7	when 7,
	-- 	ALU_A(15) & sign8	when 8,
	-- 	ALU_A(15) & sign9	when 9,
	-- 	ALU_A(15) & sign10	when 10,
	-- 	ALU_A(15) & sign11	when 11,
	-- 	ALU_A(15) & sign12	when 12,
	-- 	ALU_A(15) & sign13	when 13,
	-- 	ALU_A(15) & sign14	when 14,
	-- 	ALU_A(15) & sign15	when 15,
	-- 	(others => 'Z') when others ;



end bhv;
