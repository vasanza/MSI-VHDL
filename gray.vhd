--Binary (4-bit) to Gray converter
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity gray is
	port(
		X: in std_logic_vector(3 downto 0);
		S: out std_logic_vector(3 downto 0));
end gray;

--Architecture
architecture sol of gray is
	-- Signals,Constants,Variables,Components
	begin
		s(3)<=x(3)xor'0';
		s(2)<=x(2)xor x(3);
		s(1)<=x(1)xor x(2);
		s(0)<=x(0)xor x(1);
end sol;