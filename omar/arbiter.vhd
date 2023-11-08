library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity arbiter is
  port (
    clk  : in  std_logic;
    rst  : in  std_logic;

-- inputs --data bus requests

	req0,req1,req2 : in  std_logic;
	
	busy : in  std_logic;
	BUS_sync_a1,BUS_sync_a2 : OUT  std_logic;
				
-- outputs  
 
    gnt0 : out std_logic;
	gnt1 : out std_logic;
	gnt2 : out std_logic
  );
  
  type t_state is (Idle,Granted,In_prog);
  signal state : t_state := Idle;

end arbiter;

ARCHITECTURE bhv OF arbiter IS
BEGIN

  PROCESS (clk)
  BEGIN
    IF (rst = '1') THEN
		gnt0 <= '0';
		gnt1 <= '0';
		gnt2 <= '0';
    ELSIF (rising_edge(clk)) THEN
		CASE state IS
		WHEN Idle =>
			gnt0 <= req0;
			gnt1 <= req1 and not req0;
			gnt2 <= req2 and not (req1 or req0);
			state <= Granted;
		WHEN Granted => 
			IF busy = '1' THEN
				gnt0 <= '0';
				gnt1 <= '0';
                                gnt2 <= '0';
				state <= In_prog;
			END IF;
		WHEN In_prog => 
			IF busy = '0' THEN
				IF req0 = '1' OR req1 = '1' THEN 
					gnt0 <= req0;
					gnt1 <= req1 and not req0;
						gnt2 <= req2 and not (req0 or req1);
					state <= Granted;
				ELSE 
					state <= Idle;
				END IF;
					BUS_sync_a1 <= '0' ;
					BUS_sync_a2 <= '0';
			END IF;
		END CASE;
	END IF;
		
	END PROCESS;

end ARCHITECTURE ;

