library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU_comb is
  port (
    A, B: in std_logic_vector(15 downto 0);
    FuncCode: in std_logic_vector(3 downto 0);
    Result: out std_logic_vector(15 downto 0);
    Zero: out std_logic
  );
end entity ALU_comb;

architecture Behavioral of ALU_comb is
  signal alu_result: std_logic_vector(15 downto 0);
begin
  process (A, B, FuncCode)
  begin
    case FuncCode is
      when "0110" =>
        alu_result <= A and B;  -- AND
      when "1000" =>
        alu_result <= not (A and B);  -- NAND
      when "0101" =>
        alu_result <= A or B;   -- OR
      when "1001" =>
        alu_result <= A xor B;  -- XOR
      when "1010" =>
        alu_result <= not (A xor B);  -- XNOR
      when others =>
        alu_result <= "ZZZZZZZZZZZZZZZZ";
    end case;
  end process;

  Result <= alu_result;

  -- Zero flag generation
  Zero <= '1' when alu_result =  "0000000000000000" else '0';
end architecture Behavioral;

