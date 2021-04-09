--N-bit single port inverter
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity puerta_not is
	generic ( n: integer :=1);--<-- nbits
	port(
		X: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n-1 downto 0));
end puerta_not;

--Architecture
architecture solve of puerta_not is
	-- Signals,Constants,Variables,Components
	begin
		s<=not(X);
end solve;
