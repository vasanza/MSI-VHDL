--Flip Flop type SR
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity ffsr is
	port(
		s,r,Clk,resetn: in std_logic;
		q: buffer std_logic);
end ffsr;

--Architecture
architecture solve of ffsr is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn='0' then
				q<='0';
			elsif clk'event and clk='1' then
				if s='1' and r='0' then q<='1';--<-- Set
				elsif s='0' and r='1' then q<='0';--<-- Reset
				elsif s='0' and r='0' then q<=q;--<-- Hold
				--elsif s='1' and r='1' then dontcare;--<-- Hold
				end if;
			end if;
	end process;
	--Process #n...
end solve;