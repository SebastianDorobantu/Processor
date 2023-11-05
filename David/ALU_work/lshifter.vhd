library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity lshifter IS 

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
overflow_vector : out std_logic_vector(14 DOWNTO 0):= "000000000000000";
overflow_vector1 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector2 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector3 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector4 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector5 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector6 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector7 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector8 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector9 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector10 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector11 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector12 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector13 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector14 : out std_logic_vector(14 DOWNTO 0):= (others => '0');
overflow_vector15 : out std_logic_vector(14 DOWNTO 0):= (others => '0')

);

end lshifter;

architecture bhv OF lshifter is
signal input_in : std_logic_vector (15 downto 0):= (others => '0');
signal signal1 : std_logic_vector (14 downto 0):= (others => '0');
signal signal2 : std_logic_vector (14 downto 0):= (others => '0');
signal signal3 : std_logic_vector (14 downto 0):= (others => '0');
signal signal4 : std_logic_vector (14 downto 0):= (others => '0');
signal signal5 : std_logic_vector (14 downto 0):= (others => '0');
signal signal6 : std_logic_vector (14 downto 0):= (others => '0');
signal signal7 : std_logic_vector (14 downto 0):= (others => '0');
signal signal8 : std_logic_vector (14 downto 0):= (others => '0');
signal signal9 : std_logic_vector (14 downto 0):= (others => '0');
signal signal10 : std_logic_vector (14 downto 0):= (others => '0');
signal signal11 : std_logic_vector (14 downto 0):= (others => '0');
signal signal12 : std_logic_vector (14 downto 0):= (others => '0');
signal signal13 : std_logic_vector (14 downto 0):= (others => '0');
signal signal14 : std_logic_vector (14 downto 0):= (others => '0');
signal signal15 : std_logic_vector (14 downto 0):= (others => '0');
signal overflow_vector_buf_pos: std_logic_vector(14 downto 0) := (others => '0');
signal overflow_vector_buf_neg: std_logic_vector(14 downto 0) := (others => '1');
signal overflow_vector1_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector2_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector3_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector4_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector5_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector6_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector7_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector8_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector9_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector10_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector11_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector12_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector13_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector14_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');
signal overflow_vector15_buf :  std_logic_vector(14 DOWNTO 0 ):= (others => '0');

begin
input_in <= input;


overflow_vector1_buf <= (overflow_vector_buf_neg(14 downto 1)) & input_in(14) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 1)) & input_in(14) when input(15) = '0';
								
overflow_vector2_buf <= (overflow_vector_buf_neg(14 downto 2))&overflow_vector1_buf(0)&input_in(13) when input(15) = '1' else
		  	(overflow_vector_buf_pos(14 downto 2))&overflow_vector1_buf(0)&input_in(13) when input(15) = '0';
								
overflow_vector3_buf <= (overflow_vector_buf_neg(14 downto 3))&overflow_vector2_buf(1 downto 0)&input_in(12) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 3))&overflow_vector2_buf(1 downto 0)&input_in(12) when input(15) = '0';
								
overflow_vector4_buf <= (overflow_vector_buf_neg(14 downto 4))&overflow_vector3_buf(2 downto 0)&input_in(11) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 4))&overflow_vector3_buf(2 downto 0)&input_in(11) when input(15) = '0';
								
overflow_vector5_buf <= (overflow_vector_buf_neg(14 downto 5))&overflow_vector4_buf(3 downto 0)&input_in(10) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 5))&overflow_vector4_buf(3 downto 0)&input_in(10) when input(15) = '0';
								
overflow_vector6_buf <= (overflow_vector_buf_neg(14 downto 6))&overflow_vector5_buf(4 downto 0)&input_in(9) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 6))&overflow_vector5_buf(4 downto 0)&input_in(9) when input(15) = '0';
								
overflow_vector7_buf <= (overflow_vector_buf_neg(14 downto 7))&overflow_vector6_buf(5 downto 0)&input_in(8) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 7))&overflow_vector6_buf(5 downto 0)&input_in(8) when input(15) = '0';
								
overflow_vector8_buf <= (overflow_vector_buf_neg(14 downto 8))&overflow_vector7_buf(6 downto 0)&input_in(7) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 8))&overflow_vector7_buf(6 downto 0)&input_in(7) when input(15) = '0';
								
overflow_vector9_buf <= (overflow_vector_buf_neg(14 downto 9))&overflow_vector8_buf(7 downto 0)&input_in(6) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 9))&overflow_vector8_buf(7 downto 0)&input_in(6)  when input(15) = '0';
							
overflow_vector10_buf <= (overflow_vector_buf_neg(14 downto 10))&overflow_vector9_buf(8 downto 0)&input_in(5) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 10))&overflow_vector9_buf(8 downto 0)&input_in(5) when input(15) = '0';
								
overflow_vector11_buf <= (overflow_vector_buf_neg(14 downto 11))&overflow_vector10_buf(9 downto 0)&input_in(4) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 11))&overflow_vector10_buf(9 downto 0)&input_in(4)  when input(15) = '0';
								
overflow_vector12_buf <= (overflow_vector_buf_neg(14 downto 12))&overflow_vector11_buf(10 downto 0)&input_in(3) when input(15) = '1' else
			(overflow_vector_buf_pos(14 downto 12))&overflow_vector11_buf(10 downto 0)&input_in(3) when input(15) = '0';	
								
overflow_vector13_buf <= (overflow_vector_buf_neg(14 downto 13))&overflow_vector12_buf(11 downto 0)&input_in(2) when input(15) = '1' else
			overflow_vector_buf_pos(14 downto 13)&overflow_vector12_buf(11 downto 0)&input_in(2) when input(15) = '0';
								
overflow_vector14_buf <= (overflow_vector_buf_neg(14))&overflow_vector13_buf(12 downto 0)&input_in(1) when input(15) = '1' else
			overflow_vector_buf_pos(14)&overflow_vector13_buf(12 downto 0)&input_in(1) when input(15) = '0';
								
overflow_vector15_buf <=  overflow_vector14_buf(13 downto 0)&input_in(0) when input(15) = '1' else
			  overflow_vector14_buf(13 downto 0)&input_in(0) when input(15) = '0';

								
								
signal1 <=  input_in(13 DOWNTO 0) & '0';
shift1 <= signal1;
--overflow_vector1_buf(0) <= input_in(14);

signal2 <= signal1(13 DOWNTO 0) & '0';
shift2 <= signal2;
--overflow_vector2_buf(0) <= input_in(13);
--overflow_vector2_buf(1) <=  overflow_vector1_buf(0); 

signal3 <= signal2(13 DOWNTO 0) & '0';
shift3 <= signal3;
--overflow_vector3_buf(0) <=  input_in(12);
--overflow_vector3_buf(1) <=  overflow_vector2_buf(0);
--overflow_vector3_buf(2) <=  overflow_vector2_buf(1);

signal4 <= signal3(13 DOWNTO 0) & '0';
shift4 <= signal4;
--overflow_vector4_buf(0) <=  input_in(11);
--overflow_vector4_buf(1) <=  overflow_vector3_buf(0);
--overflow_vector4_buf(2) <=  overflow_vector3_buf(1);
--overflow_vector4_buf(3) <=  overflow_vector3_buf(2);

signal5 <= signal4(13 DOWNTO 0) & '0';
shift5 <= signal5;
--overflow_vector5_buf(0) <=  input_in(10);
--overflow_vector5_buf(1) <=  overflow_vector4_buf(0);
--overflow_vector5_buf(2) <=  overflow_vector4_buf(1);
--overflow_vector5_buf(3) <=  overflow_vector4_buf(2);
--overflow_vector5_buf(4) <=  overflow_vector4_buf(3);
signal6 <= signal5(13 DOWNTO 0) & '0';
shift6 <= signal6;
--overflow_vector6_buf(0) <=  input_in(9);
--overflow_vector6_buf(1) <=  overflow_vector5_buf(0);
--overflow_vector6_buf(2) <=  overflow_vector5_buf(1);
--overflow_vector6_buf(3) <=  overflow_vector5_buf(2);
--overflow_vector6_buf(4) <=  overflow_vector5_buf(3);
--overflow_vector6_buf(5) <=  overflow_vector5_buf(4);
signal7 <= signal6(13 DOWNTO 0) & '0';
shift7 <= signal7;
--overflow_vector7_buf(0) <=  input_in(8);
--overflow_vector7_buf(1) <=  overflow_vector6_buf(0);
--overflow_vector7_buf(2) <=  overflow_vector6_buf(1);
--overflow_vector7_buf(3) <=  overflow_vector6_buf(2);
--overflow_vector7_buf(4) <=  overflow_vector6_buf(3);
--overflow_vector7_buf(5) <=  overflow_vector6_buf(4);
--overflow_vector7_buf(6) <=  overflow_vector6_buf(5);
signal8 <= signal7(13 DOWNTO 0) & '0';
shift8 <= signal8;

signal9 <= signal8(13 DOWNTO 0) & '0';
shift9 <= signal9;

signal10 <= signal9(13 DOWNTO 0) & '0';
shift10 <= signal10;

signal11 <= signal10(13 DOWNTO 0) & '0';
shift11 <= signal11;

signal12 <= signal11(13 DOWNTO 0) & '0';
shift12 <= signal12;

signal13 <= signal12(13 DOWNTO 0) & '0';
shift13 <= signal13;

signal14 <= signal13(13 DOWNTO 0) & '0';
shift14 <= signal14;

signal15 <= signal14(13 DOWNTO 0) & '0';
shift15 <= signal15;




overflow_vector1 <= overflow_vector1_buf ;
overflow_vector2 <= overflow_vector2_buf;
overflow_vector3 <= overflow_vector3_buf;
overflow_vector4 <= overflow_vector4_buf;
overflow_vector5 <= overflow_vector5_buf;
overflow_vector6 <= overflow_vector6_buf;
overflow_vector7 <= overflow_vector7_buf;
overflow_vector8 <= overflow_vector8_buf;
overflow_vector9 <= overflow_vector9_buf;
overflow_vector10 <= overflow_vector10_buf;
overflow_vector11 <= overflow_vector11_buf;
overflow_vector12 <= overflow_vector12_buf;
overflow_vector13 <= overflow_vector13_buf;
overflow_vector14 <= overflow_vector14_buf;
overflow_vector15 <= overflow_vector15_buf;


end bhv;


