--Adder of 4 number of n bits
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity Add4 is
	generic ( n: integer :=4);--<------- nbits
	port(
		A,B,C,D: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n+1 downto 0));
end Add4;

--Architecture
architecture solve of add4 is
	-- Signals,Constants,Variables,Components
	begin
		s<=("00"&A)+("00"&B)+("00"&C)+("00"&D);
		--Without the sign bit
end solve;