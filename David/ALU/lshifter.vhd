library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity shifter IS 

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
output : out std_logic_vector (14 downto 0);
overflow_vector : out std_logic_vector(14 DOWNTO 0 );
overflow_out : out std_logic_vector(14 DOWNTO 0 );
signbit : out std_logic;
)
end shifter;

architecture bhv OF shifter is
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
overflow_vector(0 to 1) <= input(14 downto 13); 
signal3 <= signal2(13 DOWNTO 0) & '0';
shift3 <= signal3;
overflow_vector(0 to 2) <= input(14 downto 12);
signal4 <= signal3(13 DOWNTO 0) & '0';
shift4 <= signal4;
overflow_vector(0 to 3) <= input(14 downto 11);
signal5 <= signal4(13 DOWNTO 0) & '0';
shift5 <= signal5;
overflow_vector(0 to 4) <= input(14 downto 10);
signal6 <= signal5(13 DOWNTO 0) & '0';
shift6 <= signal6;
overflow_vector(0 to 5) <= input(14 downto 9);
signal7 <= signal6(13 DOWNTO 0) & '0';
shift7 <= signal7;
overflow_vector(0 to 6) <= input(14 downto 8);
signal8 <= signal7(13 DOWNTO 0) & '0';
shift8 <= signal8;
overflow_vector(0 to 7) <= input(14 downto 7);
signal9 <= signal8(13 DOWNTO 0) & '0';
shift9 <= signal9;
overflow_vector(0 to 8) <= input(14 downto 6);
signal10 <= signal9(13 DOWNTO 0) & '0';
shift10 <= signal10;
overflow_vector(0 to 9) <= input(14 downto 5);
signal11 <= signal10(13 DOWNTO 0) & '0';
shift111 <= signal11;
overflow_vector(0 to 10) <= input(14 downto 4);
signal12 <= signal11(13 DOWNTO 0) & '0';
shift112 <= signal12;
overflow_vector(0 to 11) <= input(14 downto 3);
signal13 <= signal12(13 DOWNTO 0) & '0';
shift113 <= signal13;
overflow_vector(0 to 12) <= input(14 downto 2);
signal14 <= signal13(13 DOWNTO 0) & '0';
shift14 <= signal14;
overflow_vector(0 to 13) <= input(14 downto 1);
signal15 <= signal14(13 DOWNTO 0) & '0';
shift15 <= signal15;
overflow_vector(0 to 14) <= input(14 downto 0);
--signal16 <= signal15(13 DOWNTO 0) & '0';
--shift16 <= signal16;




