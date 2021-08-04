--Flip Flop type JK
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity ffjk is
	port(
		j,k,Clk,resetn: in std_logic;
		q: buffer std_logic);
end ffjk;

--Architecture
architecture solve of ffjk is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn='0' then
				q<='0';
			elsif clk'event and clk='1' then
				if j='1' and k='0' then q<='1';--<-- Set
				elsif j='0' and k='1' then q<='0';--<-- Reset
				elsif j='1' and k='1' then q<=not q;--<-- Inv
				--elsif j='0' and k='0' then q<=q;--<-- Hold
				end if;
			end if;
	end process;
	--Process #n...
end solve;