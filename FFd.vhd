--Flip Flop type D
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity ffd is
	port(
		d,Clk,resetn: in std_logic;
		q: out std_logic);
end ffd;

--Architecture
architecture comportamiento of ffd is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn='0' then
				q<='0';
			elsif clk'event and clk='1' then
				q<=d;
			end if;
	end process;
	--Process #n...
end comportamiento;

