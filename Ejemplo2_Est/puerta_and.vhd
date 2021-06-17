--N-bit single port and
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity puerta_and is
	generic ( n: integer :=1);--<-- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
end puerta_and;

--Architecture
architecture solve of puerta_and is
	-- Signals,Constants,Variables,Components
	begin
		F<= A and B;
end solve;