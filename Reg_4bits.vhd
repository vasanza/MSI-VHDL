--Register of 2 number of 4 bits v2
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Reg_4bits is
	port(
		Clk,resetn,en: in std_logic;
		d3,d2,d1,d0: in std_logic;
		q3,q2,q1,q0: out std_logic);
end Reg_4bits;

--Architecture
architecture solve of Reg_4bits is
	-- Signals,Constants,Variables,Components
	signal d,q: std_logic_vector(3 downto 0);
	begin
	--Process #1
	d<=d3&d2&d1&d0;
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn='0' then
				q<="0000";
			elsif clk'event and clk='1' then
				if en='1' then
					q<=d;
				end if;
			end if;
	end process;
	--Process #n...
	q3<=q(3);q2<=q(2);q1<=q(1);q0<=q(0);
end solve;