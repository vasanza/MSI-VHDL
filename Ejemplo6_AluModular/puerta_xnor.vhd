--N-bit single port xnor
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity puerta_xnor is
	generic ( n: integer :=8);--<-- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
end puerta_xnor;

--Architecture
architecture solve of puerta_xnor is
	-- Signals,Constants,Variables,Components
	begin
		F<= A xnor B;
end solve;