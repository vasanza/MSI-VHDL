--Flip Flop type SR
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity FFsr is
	port(
		s,r,Clk,resetn: in std_logic;
		q: buffer std_logic);
end FFsr;

--Architecture
architecture solve of FFsr is
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
