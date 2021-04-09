--Universal Register
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Ureg is
	generic(n: integer:= 4);--<------- nbits
	port(
		S: in	std_logic_vector(1 downto 0);
		clear,clk,L,R: in	std_logic;
		P: in std_logic_vector(n-1 downto 0);
		Q: buffer std_logic_vector(n-1 downto 0));
end Ureg;

--Architecture
architecture solve of Ureg is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process (clear,clk)
	--Sequential programming	
		begin
			if clear = '0' then Q <= (OTHERS =>'0');
			elsif clk'event AND clk='1' then
				if S(1)='0' AND S(0)='1' then
					Shift1:
					for i in 0 to n-2 loop
						Q(i)<= Q(i+1);
					end loop;
					Q(n-1)<= R;
				elsif S(1)='1' AND S(0)='0' then
					Shift2: for i in 1 to n-1 loop
						Q(i)<= Q(i-1);
					end loop;
					Q(0)<= L;
				elsif S(1)='1' AND S(0)='1' then
					Q<= P;
				end if;
			end if;
	end process;
	--Process #n... 
end solve;