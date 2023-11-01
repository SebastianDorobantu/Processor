LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY organ IS
  PORT (
		clk  				: IN std_logic;
      reset  			: IN std_logic;
      kbdata   		: IN STD_LOGIC; -- low freq. clk (~ 20 kHz) serial data from the keyboard
      kbclock  		: IN STD_LOGIC; -- clock from the keyboard
		-- debug outputs
      dig0, dig1		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- show key pressed on display
      dig2, dig3		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- show key pressed on display			
		-- audio codec in and outputs
		init_finish		: out std_logic; --lights ledg[0] when init is finished (for debugging)
		AUD_MCLK			: out std_logic; --audio master clock
		AUD_BCLK 		: in std_logic; -- Digital Audio bit clock
		AUD_DACDAT 		: out std_logic; -- DAC data line
		AUD_DACLRCK		: in std_logic; -- DAC data left/right select
		I2C_SDAT 		: out std_logic; -- serial interface data line
		I2C_SCLK 		: out std_logic  -- serial interface clock
);		
END ENTITY organ;

ARCHITECTURE structure OF organ IS
  COMPONENT key2sample IS
    PORT (
      clk         : IN std_logic;
      reset       : IN std_logic;
      kbdata      : IN STD_LOGIC; -- low freq. clk (~ 20 kHz) serial data from the keyboard
      kbclock     : IN STD_LOGIC; -- clock from the keyboard
		  -- debug outputs
      dig0, dig1  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- show key pressed on display
      dig2, dig3  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0); -- show key pressed on display			
      -- audio codec in and outputs
      data        : OUT std_logic_vector(15 downto 0)
  );		
  END COMPONENT key2sample;

  COMPONENT audio_interface IS
   PORT (
		LDATA, RDATA		: IN std_logic_vector(15 downto 0); -- parallel external data inputs
		clk, Reset 	: IN std_logic; 
		INIT_FINISH 		: OUT std_logic;
		adc_full 			: OUT std_logic;
		data_over 			: OUT std_logic; -- sample sync pulse
		AUD_MCLK 			: OUT std_logic; -- Codec master clock OUTPUT
		AUD_BCLK 			: IN std_logic; -- Digital Audio bit clock
		AUD_ADCDAT 			: IN std_logic;
		AUD_DACDAT 			: OUT std_logic; -- DAC data line
		AUD_DACLRCK			: IN std_logic; -- DAC data left/right select
		AUD_ADCLRCK 		: IN std_logic; -- DAC data left/right select
		I2C_SDAT 			: OUT std_logic; -- serial interface data line
		I2C_SCLK 			: OUT std_logic;  -- serial interface clock
		ADCDATA 				: OUT std_logic_vector(31 downto 0)
    );
  END COMPONENT audio_interface;	
  
  SIGNAL key : std_logic_vector(7 DOWNTO 0);
	
	SIGNAL data : std_logic_vector(15 downto 0);


BEGIN
  ks : key2sample PORT MAP (clk,reset,kbdata,kbclock,dig0,dig1,dig2,dig3,data);
	
  s2a : audio_interface
		  PORT MAP (DATA,DATA,clk,reset,INIT_FINISH,OPEN,OPEN,AUD_MCLK,AUD_BCLK,'0',AUD_DACDAT,AUD_DACLRCK,'0',I2C_SDAT,I2C_SCLK,OPEN);	

END structure;