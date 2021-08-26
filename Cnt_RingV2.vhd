--Ring Counter version 2 of n bits
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Cnt_RingV2 is
	port(
		Clk,resetn,en: in std_logic;
		q: buffer std_logic_vector(3 downto 0));
end Cnt_RingV2;

--Architecture
architecture solve of Cnt_RingV2 is
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
					case q is
						when "0000" => q<="1000";
						when "1000" => q<="0100";
						when "0100" => q<="0010";
						when "0010" => q<="0001";
						when others => q<="0000";
					end case;
				end if;
			end if;
	end process;
	--Process #n...
end solve;
