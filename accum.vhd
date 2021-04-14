--Accumulator
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity accum is
	generic ( n: integer :=4);--<------- nbits
	port(
		Clk,resetn,en: in std_logic;
		data: in std_logic(n-1 downto 0);
		q: buffer std_logic_vector(n-1 downto 0));
end accum;

--Architecture
architecture solve of accum is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn='0' then
				q<=(others => '0');
			elsif clk'event and clk='1' then
				if en='1' then q<=q+data;
				end if;
			end if;
	end process;
	--Process #n...
end solve;