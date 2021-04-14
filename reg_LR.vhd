--Left to Right Shift Register
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity reg_LR is
	generic (n: integer:= 3);--<------- nbits
	port(
		Resetn,En,Ld,R,clk : in std_logic;
		DataIn : in std_logic_vector(n-1 downto 0);
		Q: buffer std_logic_vector (n-1 downto 0));
end reg_LR;

--Architecture
architecture solve of reg_LR is
	-- Signals,Constants,Variables,Components
	begin 
	--Process #1
	process (Resetn, clk)
	--Sequential programming
		begin 
			if resetn = '0' then
				Q <= (others =>'0');
			elsif clk'event and clk='1' then
				if en='1' and ld='0' then
					desplazamiento:
					for i in 0 to n-2 loop
						Q(i)<= Q(i+1);
					end loop;
				Q(n-1)<= R;
				--Q<= R&Q(n-1 downto 1);
			elsif en='1' and ld='1' then
				Q<= DataIn;
			end if;
		end if;
	end process;
	--Process #n...
end solve;