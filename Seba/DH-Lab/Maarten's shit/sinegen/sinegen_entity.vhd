LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
ENTITY sinegen IS
  PORT(
    next_value    : in std_logic;
    clk           : in std_logic;
    reset         : in std_logic;
    sine_complete : OUT std_logic;
    DATA          : OUT std_logic_vector(15 downto 0)
  );
END sinegen;

architecture bhv of sinegen is
  signal cnt_sine : std_logic_vector(5 DOWNTO 0) := (OTHERS => '0');

  function sineValue (n : std_logic_vector(3 DOWNTO 0)) return std_logic_vector is -- only need 16 values, the last 4 bits of cnt_sine are always the same
    begin
      case n is
        when "0000" => return "000000000000000";
        when "0001" => return "000110010001100";
        when "0010" => return "001100011111001";
        when "0011" => return "010010100101000";
        when "0100" => return "011000011111100";
        when "0101" => return "011110001010111";
        when "0110" => return "100011100011101";
        when "0111" => return "101000100110100";
        when "1000" => return "101101010000010";
        when "1001" => return "110001011110010";
        when "1010" => return "110101001101110";
        when "1011" => return "111000011100011";
        when "1100" => return "111011001000010";
        when "1101" => return "111101001111101";
        when "1110" => return "111110110001010";
        when "1111" => return "111111111111111";
        when OTHERS => return "000000000000000";
      end case;
    end sineValue;

  begin
    process(clk,reset)
    begin
      if reset = '0' then
        sine_complete <= '0';
        DATA <= (OTHERS => '0');
        cnt_sine <= (OTHERS => '0');
      elsif falling_edge(clk) then
        sine_complete <= '0'; -- sine_complete is 0 until we reach the last value of cnt_sine
        if cnt_sine < "010000" then
          DATA <= '0' & sineValue(cnt_sine(3 DOWNTO 0)); -- Values in the 1st quarter (0 -> 15) of the sine are regular
        elsif cnt_sine < "100000" then
          DATA <= '0' & sineValue(NOT cnt_sine(3 DOWNTO 0)); -- Values in the 2nd quarter (16 -> 31) of the sine are flipped
        elsif cnt_sine < "110000" then
          DATA <= '1' & NOT sineValue(cnt_sine(3 DOWNTO 0)); -- Values in the 3rd quarter (32 -> 47) of the sine are negative
        elsif cnt_sine < "111111" then
          DATA <= '1' & NOT sineValue(NOT cnt_sine(3 DOWNTO 0)); -- Values in the 4th quarter (48 -> 63) of the sine are negative and flipped
        elsif cnt_sine = "111111" then
          DATA <= '1' & NOT sineValue(NOT cnt_sine(3 DOWNTO 0));
          sine_complete <= '1'; -- this is called after the first allocation of sine_complete so this is used if cnt_sine is 63
        end if;
        cnt_sine <= std_logic_vector(unsigned(cnt_sine) + 1);
      end if;
    end process;
end bhv;