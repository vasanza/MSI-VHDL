-- Exam SD1
-- First proposal
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;
 
--Entity
entity ExamSD1 is
   port(A,B,C,D: in std_logic;
			Y: out std_logic);
end ExamSD1;

--Architecture
architecture solve of ExamSD1 is
	-- Signals,Constants,Variables,Components
	begin
		with A&B&C&D select
		Y<= '0' when "0100"|"0101"|"1111"|"1110",
			'1' when others;
end solve;

