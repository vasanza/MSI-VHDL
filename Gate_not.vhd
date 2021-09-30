--N-bit single port inverter
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Gate_not is
	generic ( n: integer :=1);--<-- nbits
	port(
		X: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n-1 downto 0));
end Gate_not;

--Architecture
architecture solve of Gate_not is
	-- Signals,Constants,Variables,Components
	begin
		s<=not(X);
end solve;
