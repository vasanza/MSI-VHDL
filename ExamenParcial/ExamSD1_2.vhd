-- Exam SD1
-- Second proposal
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;
 
--Entity
entity ExamSD1 is
   port(A,B: in std_logic_vector(1 downto 0);
			Y: out std_logic_vector(1 downto 0));
end ExamSD1;

--Architecture
architecture solve of ExamSD1 is
	-- Signals,Constants,Variables,Components
	begin
		with A&B select
		Y(1)<= '0' when "0000"|"0001"|"0100"|"0101"|"1111"|"1110"|"1011"|"1010",
			'1' when others;
		Y(0)<= '0' when "0000"|"0010"|"0101"|"0111"|"1101"|"1111"|"1000"|"1010",
			'1' when others;
end solve;

