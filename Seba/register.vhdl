LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

entity reg is
    port(
        clk, reset, enable,wr: in std_logic;
        D : inout std_logic_vector(15 downto 0) := (OTHERS => '0')
        );
end entity;
    
architecture my_arch of reg is 
signal data : std_logic_vector(15 downto 0) := (OTHERS => '0');  -- 0000 0000 0000 0000
begin

process (clk, reset)
begin
    if (reset = '1') then
        D <= (OTHERS => '0');
    elsif rising_edge(clk) and enable = '1' and wr = '1' then
        data <= D;
    elsif rising_edge(clk) and enable = '1' and wr = '0' then
        D <= data;
    end if;
end process;

end architecture;