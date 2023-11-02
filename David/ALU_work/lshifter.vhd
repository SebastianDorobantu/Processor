library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity lshifter IS 

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
overflow_vector : out std_logic_vector(14 DOWNTO 0 );
)

end lshifter;

architecture bhv OF lshifter is
signal signal1 : std_logic_vector (14 downto 0);
signal signal2 : std_logic_vector (14 downto 0);
signal signal3 : std_logic_vector (14 downto 0);
signal signal4 : std_logic_vector (14 downto 0);
signal signal5 : std_logic_vector (14 downto 0);
signal signal6 : std_logic_vector (14 downto 0);
signal signal7 : std_logic_vector (14 downto 0);
signal signal8 : std_logic_vector (14 downto 0);
signal signal9 : std_logic_vector (14 downto 0);
signal signal10 : std_logic_vector (14 downto 0);
signal signal11 : std_logic_vector (14 downto 0);
signal signal12 : std_logic_vector (14 downto 0);
signal signal13 : std_logic_vector (14 downto 0);
signal signal14 : std_logic_vector (14 downto 0);
signal signal15 : std_logic_vector (14 downto 0);
signal signal16 : std_logic_vector (14 downto 0);

begin
signal1 <= input(13 DOWNTO 0) & '0';
shift1 <= signal1;
overflow_vector(0) <= input(14);
signal2 <= signal1(13 DOWNTO 0) & '0';
shift2 <= signal2;
overflow_vector(1 downto 0) <= input(14 downto 13); 
signal3 <= signal2(13 DOWNTO 0) & '0';
shift3 <= signal3;
overflow_vector(2 downto 0) <= input(14 downto 12);
signal4 <= signal3(13 DOWNTO 0) & '0';
shift4 <= signal4;
overflow_vector(3 downto 0) <= input(14 downto 11);
signal5 <= signal4(13 DOWNTO 0) & '0';
shift5 <= signal5;
overflow_vector(4 downto 0) <= input(14 downto 10);
signal6 <= signal5(13 DOWNTO 0) & '0';
shift6 <= signal6;
overflow_vector(5 downto 0) <= input(14 downto 9);
signal7 <= signal6(13 DOWNTO 0) & '0';
shift7 <= signal7;
overflow_vector(6 downto 0) <= input(14 downto 8);
signal8 <= signal7(13 DOWNTO 0) & '0';
shift8 <= signal8;
overflow_vector(7 downto 0) <= input(14 downto 7);
signal9 <= signal8(13 DOWNTO 0) & '0';
shift9 <= signal9;
overflow_vector(8 downto 0) <= input(14 downto 6);
signal10 <= signal9(13 DOWNTO 0) & '0';
shift10 <= signal10;
overflow_vector(9 downto 0) <= input(14 downto 5);
signal11 <= signal10(13 DOWNTO 0) & '0';
shift11 <= signal11;
overflow_vector(10 downto 0) <= input(14 downto 4);
signal12 <= signal11(13 DOWNTO 0) & '0';
shift12 <= signal12;
overflow_vector(11 downto 0) <= input(14 downto 3);
signal13 <= signal12(13 DOWNTO 0) & '0';
shift13 <= signal13;
overflow_vector(12 downto 0) <= input(14 downto 2);
signal14 <= signal13(13 DOWNTO 0) & '0';
shift14 <= signal14;
overflow_vector(13 downto 0) <= input(14 downto 1);
signal15 <= signal14(13 DOWNTO 0) & '0';
shift15 <= signal15;
overflow_vector(14 downto 0) <= input(14 downto 0);
--signal16 <= signal15(13 DOWNTO 0) & '0';
--shift16 <= signal16;


end bhv;


