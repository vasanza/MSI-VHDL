--Flip Flop type T
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity fft is
	port(
		t,Clk,resetn: in std_logic;
		q: buffer std_logic);
end fft;

--Architecture
architecture solve of fft is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn='0' then
				q<='0';
			elsif clk'event and clk='1' then
				if t='1' then q<= not q;--<-- Inv
				--elsif t='0' then q<=q;--<-- Hold
				end if;
			end if;
	end process;
	--Process #n...
		--Process #1
end solve;