--Flip Flop type SD
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity FFsd is
	port(
		s,d,Clk,resetn: in std_logic;
		q: buffer std_logic);
end FFsd;

--Architecture
architecture solve of FFsd is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn='0' then
				q<='0';
			elsif clk'event and clk='1' then
				if s='0' and d='0' then q<='1';--<-- Set
				elsif s='0' and d='1' then q<= not q;--<-- Inv
				elsif s='1' and d='0' then q<=not q;--<-- Inv
				elsif s='1' and d='1' then q<='0';--<-- Reset
				end if;
			end if;
	end process;
	--Process #n...
end solve;
