--Counter down
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity Cnt_down is
	generic ( n: integer :=4);--<------- nbits
	port(
		Clk,presetn,en: in std_logic;
		q: buffer std_logic_vector(n-1 downto 0));
end Cnt_down;

--Architecture
architecture solve of Cnt_down is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(presetn,clk)
	--Sequential programming
		begin
			if presetn='0' then
				q<=(others => '1');
			elsif clk'event and clk='1' then
				if en='1' then q<=q-1;
				end if;
			end if;
	end process;
	--Process #n...
end solve;
