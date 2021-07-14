--Adder 1 of number of n bits
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity Add1 is
	generic ( n: integer :=8);--<------- nbits
	port(
		X: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n downto 0));
end Add1;

--Architecture
architecture solve of Add1 is
	-- Signals,Constants,Variables,Components
	begin
		s<='0'&(x+1);--with sign bit
end solve;