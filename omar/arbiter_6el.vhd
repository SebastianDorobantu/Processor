library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity arbiter is
  port (
    clk  : in  std_logic;
    rst  : in  std_logic;

    -- inputs
    req  : in  std_logic_vector(5 downto 0);
    busy : in  std_logic;

    -- outputs
    gnt  : out std_logic_vector(5 downto 0)
  );
end arbiter;

architecture rtl of arbiter is
  signal busy_d : std_logic := '0';
  signal busy_fe : std_logic;

begin
  busy_pr : process (clk)
  begin
    if (rising_edge(clk)) then
      busy_d <= busy;
    end if;
  end process busy_pr;

  -- Falling edge of busy signal
  busy_fe <= '1' when busy = '0' and busy_d = '1' else '0';

  arbiter_pr : process (clk, rst)
  begin
    if (rst = '1') then
      gnt <= (others => '0');
    elsif (rising_edge(clk)) then
      if (busy_fe = '1') then
        gnt <= (others => '0');
      elsif (busy = '0') then
        gnt(0) <= req(0);
        gnt(1) <= req(1) and not req(0);
        gnt(2) <= req(2) and not (req(0) or req(1));
        gnt(3) <= req(3) and not (req(0) or req(1) or req(2));
        gnt(4) <= req(4) and not (req(0) or req(1) or req(2) or req(3));
	gnt(5) <= req(5) and not (req(0) or req(1) or req(2) or req(3) or req(4));
      end if;
    end if;
  end process arbiter_pr;

end rtl;

