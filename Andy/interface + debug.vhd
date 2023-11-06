LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY buttonss IS
    PORT (
        clk   : IN std_logic;
        reset : IN std_logic;
        button1, button2, button3 : IN std_logic;
        switch0, switch1, switch2, switch3 : IN std_logic;
        dig0, dig1, dig2, dig3, dig4, dig5: OUT std_logic_vector(6 DOWNTO 0)
    );
END buttonss;

ARCHITECTURE bhv OF buttonss IS
    constant countEnd : natural := 10;
    signal currentDisplay: integer range 0 to 5 := 0;
    signal count : integer range 0 to countEnd - 1 := 0;
    signal temp0, temp3, temp4 : std_logic_vector(3 DOWNTO 0) := "0000";
    signal temp1, temp2, temp5 : std_logic_vector(3 DOWNTO 0) := "0000";
    signal prev_button1, prev_button2, prev_button3: std_logic := '0';
    signal decimalValue: integer range -999999 to 999999 := 0;
    signal binaryValue: std_logic_vector(15 DOWNTO 0) := (others => '0');  -- 16-bit binary value
    signal isNegative: std_logic := '0';  -- Added signal to track the sign of the decimal value

    FUNCTION hex2display(n: std_logic_vector(3 DOWNTO 0)) RETURN std_logic_vector IS
    BEGIN
        CASE n IS
            WHEN "0000" => RETURN NOT "0111111";
            WHEN "0001" => RETURN NOT "0000110";
            WHEN "0010" => RETURN NOT "1011011";
            WHEN "0011" => RETURN NOT "1001111";
            WHEN "0100" => RETURN NOT "1100110";
            WHEN "0101" => RETURN NOT "1101101";
            WHEN "0110" => RETURN NOT "1111101";
            WHEN "0111" => RETURN NOT "0000111";
            WHEN "1000" => RETURN NOT "1111111";
            WHEN "1001" => RETURN NOT "1101111";
            WHEN OTHERS => RETURN NOT "1110001";
        END CASE;
    END hex2display;

    FUNCTION displayToDecimal(value: std_logic_vector(3 DOWNTO 0)) RETURN integer IS
    BEGIN
        CASE value IS
            WHEN "0000" => RETURN 0;
            WHEN "0001" => RETURN 1;
            WHEN "0010" => RETURN 2;
            WHEN "0011" => RETURN 3;
            WHEN "0100" => RETURN 4;
            WHEN "0101" => RETURN 5;
            WHEN "0110" => RETURN 6;
            WHEN "0111" => RETURN 7;
            WHEN "1000" => RETURN 8;
            WHEN "1001" => RETURN 9;
            WHEN OTHERS => RETURN 0;
        END CASE;
    END displayToDecimal;

BEGIN
    dig0 <= hex2display(temp0);
    dig1 <= hex2display(temp1);
    dig2 <= hex2display(temp2);
    dig3 <= hex2display(temp3);
    dig4 <= hex2display(temp4);
    dig5 <= hex2display(temp5);

    PROCESS(clk, reset)
    BEGIN
        IF reset = '0' THEN
            count <= 0;
            currentDisplay <= 0;
            temp0 <= "0000";
            temp1 <= "0000";
            temp2 <= "0000";
            temp3 <= "0000";
            temp4 <= "0000";
            temp5 <= "0000";
            decimalValue <= 0;
            isNegative <= '0';
        ELSIF rising_edge(clk) THEN
            IF button1 = '0' AND prev_button1 = '1' THEN
                count <= (count + 1) mod countEnd;
                CASE currentDisplay IS
                    WHEN 0 => temp0 <= std_logic_vector(to_unsigned(count, 4));
                    WHEN 1 => temp1 <= std_logic_vector(to_unsigned(count, 4));
                    WHEN 2 => temp2 <= std_logic_vector(to_unsigned(count, 4));
                    WHEN 3 => temp3 <= std_logic_vector(to_unsigned(count, 4));
                    WHEN 4 => temp4 <= std_logic_vector(to_unsigned(count, 4));
                    WHEN 5 => temp5 <= std_logic_vector(to_unsigned(count, 4));
                    WHEN OTHERS => NULL;
                END CASE;

                -- Update the decimal value based on the displayed values
                decimalValue <= displayToDecimal(temp5) * 100000 +
                                displayToDecimal(temp4) * 10000 +
                                displayToDecimal(temp3) * 1000 +
                                displayToDecimal(temp2) * 100 +
                                displayToDecimal(temp1) * 10 +
                                displayToDecimal(temp0);

                -- Check if switch0 is turned on to make the decimal value negative
                IF switch0 = '1' THEN
                    isNegative <= '1';
                    decimalValue <= -decimalValue;
                END IF;
            END IF;
            prev_button1 <= button1;

            IF button2 = '0' AND prev_button2 = '1' THEN
                currentDisplay <= (currentDisplay + 1) mod 6;
                count <= 0;  -- Reset the counter for the new display
            END IF;
            prev_button2 <= button2;

            -- (new) Store the binary value when button 3 is pressed
            IF button3 = '0' AND prev_button3 = '1' THEN
                IF isNegative = '1' THEN
                    binaryValue <= std_logic_vector(to_signed(-decimalValue, 16));
                ELSE
                    binaryValue <= std_logic_vector(to_signed(decimalValue, 16));
                END IF;
            END IF;
            prev_button3 <= button3;
	IF switch1 = '1' THEN 
        	if reset = '1' then
            		address <=(others => '0');
       		 elsif rising_edge(clk) then
			if enter = '0' then 
            			if btn_inc = '1' then
                			address <= std_logic_vector(unsigned(address) + 1);
           			elsif btn_dec = '1' then
                			address <= std_logic_vector(unsigned(address) - 1);
            			else
                			address(7 downto 0) <= sw(9 downto 2); -- Set the address from switches S2 to S9
            			end if;
			else
				
        	end if;
	end if;
    end process;
        END IF;
    END PROCESS;
END bhv;
