--N-bit single port and
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity puerta_or is
	generic ( n: integer :=1);--<-- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
end puerta_or;

--Architecture
architecture solve of puerta_or is
	-- Signals,Constants,Variables,Components
	begin
		F<= A or B;
end solve;