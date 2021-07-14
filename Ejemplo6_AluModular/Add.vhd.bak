--Adder of 2 number of n bits
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity Add is
	generic ( n: integer :=4);--<------- nbits
	port(
		X,Y: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n downto 0));
end Add;

--Architecture
architecture solve of Add is
	-- Signals,Constants,Variables,Components
	begin
		s<=('0'&x)+('0'&y);--Without the sign bit
		--s<='0'&(x+y);--with sign bit
end solve;