--2-variable Karnaugh Map decoder
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;
 
--Entity
entity MKD2V is
   port(
		MK: in std_logic_vector(3 downto 0);
		Q: out std_logic_vector(11 downto 0));
		--Cuatro =Q(11 downto 8);
		--Dos =Q(7 downto 4);
		--Uno =Q(3 downto 0);
end MKD2V;

--Architecture
architecture solve of MKD2V is
	-- Signals,Constants,Variables,Components
	begin
		with MK select
		Q<= "000000000000" when "0000",--ceros
			"000000000001" when "0001"|"0010"|"0100"|"1000",-- 1 uno
			"000000000010" when "1001"|"0110",-- 2 uno
			"000000010000" when "0011"|"0101"|"1010"|"1100",-- 1 dos
			"000000100000" when "0111"|"1011"|"1101"|"1110",-- 2 dos
			"000100000000" when others;-- 1 Cuatro
end solve;

