--N-bit single port inverter
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity ejemplo_rtl is
	generic ( n: integer :=1);--<-- nbits
	port(
		A,B,C,D: in std_logic_vector(n-1 downto 0);
		Y: out std_logic_vector(n-1 downto 0));
end ejemplo_rtl;

--Architecture
architecture solve of ejemplo_rtl is
	-- Signals,Constants,Variables,Components
	begin
		with A&B&C&D select
				Y<='1' when "0000"|"0011"|"0101"|"0110",
					'0' when others;
end solve;