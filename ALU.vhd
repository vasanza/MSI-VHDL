--ALU
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL
	
--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity ALU is
	generic ( n: integer:=8);--<-- nbits
	port(
		A : in std_logic_vector(n-1 downto 0);
		B : in std_logic_vector(n-1 downto 0);
		sel : in std_logic_vector(2 downto 0);
		en: in std_logic;
		Q : out std_logic_vector(n downto 0));
end ALU;

--Architecture
architecture solve of ALU is
	-- Signals,Constants,Variables,Components
	signal X: std_logic_vector(n-1 downto 0);
	begin

end solve;
