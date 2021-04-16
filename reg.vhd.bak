--Adder of 2 number of n bits
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity reg is
	generic ( n: integer :=8);--<-- nbits
	port(
		Clk,resetn,en: in std_logic;
		d: in std_logic_vector(n-1 downto 0);
		q: out std_logic_vector(n-1 downto 0));
end reg;

--Architecture
architecture solve of reg is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn='0' then
				q<=(others => '0');
			elsif clk'event and clk='1' then
				if en='1' then
					q<=d;
				end if;
			end if;
	end process;
	--Process #n...
end solve;

