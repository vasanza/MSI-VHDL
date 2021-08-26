--Subtract 1 of number of n bits
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity Subtract1 is
	generic ( n: integer :=8);--<------- nbits
	port(
		X: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n downto 0));
end Subtract1;

--Architecture
architecture solve of Subtract1 is
	-- Signals,Constants,Variables,Components
	begin
		s<='0'&(x-1);--with sign bit
end solve;
