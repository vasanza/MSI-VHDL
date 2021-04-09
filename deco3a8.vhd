--Decoder 3 to 8
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity deco3a8 is
	port (
		sel : in std_logic_vector(2 downto 0);
		en: in std_logic;
		Q : out std_logic_vector(7 downto 0));
end deco3a8;

--Architecture
architecture solve of deco3a8 is
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
		Q<= f when en='1' else (others=>'0');	 
end solve;