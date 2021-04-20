--Version 1:
-- xy 00 -> set
-- xy 01 -> inv
-- xy 10 -> inv
-- xy 11 -> reset 
-----------------

library ieee;
use ieee.std_logic_1164.all;

entity ffxy is
	port(x,y,Clk,resetn: in std_logic;
				  q: buffer std_logic);
end ffxy;

architecture comportamiento of ffxy is
begin
	process(resetn,clk)
		begin
			if resetn='0' then
				q<='0';
			elsif clk'event and clk='1' then
				if x='0' and y='0' then q<='1';
				elsif x='0' and y='1' then q<=not q;
				elsif x='1' and y='0' then q<=not q;
				elsif x='1' and y='1' then q<='0';
				end if;
			end if;
	end process;
end comportamiento;


