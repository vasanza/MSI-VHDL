--BCD decoder to 7 segment display (Common Anode)
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;
 
--Entity
entity deco_bcd7s is
   port(
		BCD: in std_logic_vector(3 downto 0);
		SEG7: out std_logic_vector(1 to 7));
end deco_bcd7s;

--Architecture
architecture solve of deco_bcd7s is
	-- Signals,Constants,Variables,Components
	 begin
		SEG7 <=	"0000001"	when BCD = "0000" ELSE
			"1001111"  	when BCD = "0001" ELSE 
			"0010010" 	when BCD = "0010" ELSE 
			"0000110"	when BCD = "0011" ELSE 
			"1001100"	when BCD = "0100" ELSE 
			"0100100"	when BCD = "0101" ELSE 
			"0100000"	when BCD = "0110" ELSE 
			"0001111"	when BCD = "0111" ELSE 
			"0000000"	when BCD = "1000" ELSE 
			"0000100"	when BCD = "1001" ELSE 
			"1111111" ; 
end solve;
