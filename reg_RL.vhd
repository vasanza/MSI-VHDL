--Right to Left Shift Register
--https://vasanza.blogspot.com

--Library
library ieee;  
use ieee.std_logic_1164.all;  

--Entity
entity reg_RL is  
    generic (k: integer:=3);--<------- nbits
    port(
		R,Resetn,Clock : in std_logic;  
      Q:buffer std_logic_vector (k-1 downto 0));  
end reg_RL;  

--Architecture
architecture solve of reg_RL is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
   process (Resetn, Clock)
	--Sequential programming	
		begin  
			if Resetn='0' then
				Q <= (others => '0');
			elsif (Clock'event and Clock = '1') then  
				desplazamiento:
				for i in 0 to k-2 loop  
					Q(i)<= Q(i-1);  
				end loop;  
            Q(k-1)<= R;  
			end if;  
   end Process;
	--Process #n... 
end solve;