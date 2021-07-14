--N-bit single port xor
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity puerta_xor is
	generic ( n: integer :=8);--<-- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
end puerta_xor;

--Architecture
architecture solve of puerta_xor is
	-- Signals,Constants,Variables,Components
	begin
		F<= A xor B;
end solve;