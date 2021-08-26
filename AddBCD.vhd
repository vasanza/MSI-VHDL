--2-number adder BCD
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity AddBCD is
	port(	A,B: in std_logic_vector(3 downto 0);
			D,U: out std_logic_vector(3 downto 0));--Tens,Units
end AddBCD;

--Architecture
architecture solve of AddBCD is
	-- Signals,Constants,Variables,Components
	signal temp,temp2: std_logic_vector(7 downto 0);
	begin
		temp <= (("0000"&A)+("0000"&B));
		temp2 <= temp +"00000110" when temp>9 else temp;
		D<= temp2(7 downto 4);--Tens
		U<= temp2(3 downto 0);--Units
end solve;
