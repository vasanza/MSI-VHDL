--Ring Counter of 4 bits
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Cnt_Ring is
	port(
		Clk,resetn,en: in std_logic;
		q: buffer std_logic_vector(3 downto 0));
end Cnt_Ring;

--Architecture
architecture solve of Cnt_Ring is
	-- Signals,Constants,Variables,Components
	signal temp: std_logic;
	begin
	--Process #1
	temp <= not(q(3) or q(2) or q(1) or q(0));
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn='0' then
				q<=(others => '0');
			elsif clk'event and clk='1' then
				if en='1' then
					q<= temp&Q(3 downto 1);
				end if;
			end if;
	end process;
	--Process #n...
end solve;
