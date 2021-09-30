--Decoder 3 to 8 with output denied
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Deco3to8_not is
	port (
		sel : in std_logic_vector(2 downto 0);
		en: in std_logic;
		Q : out std_logic_vector(7 downto 0));
end Deco3to8_not;

--Architecture
architecture solve of Deco3to8_not is
	-- Signals,Constants,Variables,Components
	signal f: std_logic_vector(7 downto 0);
	begin
		with sel select 
		f<= "00000001" when "000",
			 "00000010" when "001",
			 "00000100" when "010",
			 "00001000" when "011",
			 "00010000" when "100",
			 "00100000" when "101",
			 "01000000" when "110",
			 "10000000" when others;
		Q<= not(f) when en='1' else (others=>'0');	 
end solve;
