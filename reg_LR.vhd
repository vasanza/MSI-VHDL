--Left to Right Shift Register
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity reg_LR is
	generic (k: integer:= 3);--<------- nbits
	port(
		R, resetn, clock : in std_logic;
		Q: buffer std_logic_vector (k-1 downto 0));
end reg_LR;

--Architecture
architecture solve of reg_LR is
	-- Signals,Constants,Variables,Components
	begin 
	--Process #1
	process (Resetn, clock)
	--Sequential programming
		begin 
			if Resetn='0' then
				Q <= (others =>'0');
			elsif (clock'event and clock = '1')then 
				desplazamiento:
				for i in 0 to k-2 loop
					Q(i) <= Q(i+1);
				end loop;
				Q(k-1) <= R;
			end if;
	end process;
	--Process #n...
end solve;