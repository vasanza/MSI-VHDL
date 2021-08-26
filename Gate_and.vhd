--N-bit single and gate
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Gate_and is
	generic ( n: integer :=1);--<-- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
end Gate_and;

--Architecture
architecture solve of Gate_and is
	-- Signals,Constants,Variables,Components
	begin
		F<= A and B;
end solve;
