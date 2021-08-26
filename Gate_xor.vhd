--N-bit single xor gate
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Gate_xor is
	generic ( n: integer :=8);--<-- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
end Gate_xor;

--Architecture
architecture solve of Gate_xor is
	-- Signals,Constants,Variables,Components
	begin
		F<= A xor B;
end solve;
