LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY key2pulselength IS
  GENERIC (max_length : integer := 20000);
  PORT (key    : IN std_logic_vector(7 DOWNTO 0);
        pulse_length : OUT INTEGER RANGE 0 TO max_length -- number of clock cycles before the next entry from the LUT in SINEGEN is read.
       );
END key2pulselength;
-- map the hexcode to the frequency
ARCHITECTURE bhv OF key2pulselength IS
--variable freq : INTEGER RANGE 0 TO max_length;
BEGIN
    process(key) is
    begin
        case key is      
        --key|ncycles (fclock/(freq*64))
        when X"0D" => pulse_length <=1776 ;--440;       A4
        when X"16" => pulse_length <= 1676;--466.1638;  Ais
        when X"15" => pulse_length <= 1582;--493.8833;  B
        when X"1D" => pulse_length <= 1493;--523.2511;  C
        when X"26" => pulse_length <= 1409;--554.3653;  Cis
        when X"24" => pulse_length <= 1330;--587.3295;  D
        when X"25" => pulse_length <= 1256;--622.2540;  Dis
        when X"2D" => pulse_length <= 1185;--659.2551;  E
        when X"2C" => pulse_length <= 1119;--698.4565;  F
        when X"36" => pulse_length <= 1056;--739.988;   Fis
        when X"35" => pulse_length <= 997;--783.9909;   G
        when X"3C" => pulse_length <= 941;--880.0000;   A
        when X"3E" => pulse_length <= 888;--932.3275;   Ais
        when X"3D" => pulse_length <= 838;--830.6094;   Gis
        when X"43" => pulse_length <= 791;--987.7666;   B
        when X"44" => pulse_length <= 747;--1046.502;   C
        when X"45" => pulse_length <= 705;--1108.731;   Cis
        when X"4D" => pulse_length <= 665;--1174.659;   D
        when X"4E" => pulse_length <= 628;--1244.508;   Dis
        when X"54" => pulse_length <= 593;--1318.510;   E
        when X"5B" => pulse_length <= 559;--1396.913;   F
        when X"5D" => pulse_length <= 528;--1479.978;   Fis
        --when X"1C" => pulse_length <= 0; -- Octave up
        --when X"1A" => pulse_length <= 0; -- octave down
        when others => pulse_length <= 0; -- octave keys are included in here
        end case;
    end process;

END;


        
        
        
        
        
        
        
        
        
        
         
         
         
         
         
         
         
         
         
         
         
         
