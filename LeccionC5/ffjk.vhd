library ieee;
use ieee.std_logic_1164.all;

entity ffjk is
	port(j,k,Clk,resetn: in std_logic;
				  q: buffer std_logic);
end ffjk;

architecture comportamiento of ffjk is
begin
	process(resetn,clk)
		begin
			if resetn='0' then
				q<='0';
			elsif clk'event and clk='1' then
				if j='1' and k='0' then q<='1';-------set
				elsif j='0' and k='1' then q<='0';----reset
				elsif j='1' and k='1' then q<=not q;--inv
				--elsif j='0' and k='0' then q<=q;--hold
				end if;
			end if;
	end process;
end comportamiento;
