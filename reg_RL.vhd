--Right to Left Shift Register
--https://vasanza.blogspot.com

--Library
library ieee;  
use ieee.std_logic_1164.all;  

--Entity
entity reg_RL is  
    generic (n: integer:=3);--<------- nbits
    port(
		Resetn,En,Ld,L,clk : in std_logic;
		DataIn : in std_logic_vector(n-1 downto 0);
      Q : buffer std_logic_vector (n-1 downto 0));  
end reg_RL;  

--Architecture
architecture solve of reg_RL is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
   process (Resetn, clk)
	--Sequential programming	
		begin  
			if Resetn = '0' then
				Q <= (others =>'0');
			elsif clk'event and clk='1' then
				if En='1' and Ld='0' then
					Q<= Q(n-2 downto 0) & L;
				elsif En='1' and Ld='1' then
					Q<= DataIn;
				end if;
			end if; 
	end Process;  
	--Process #n... 
end solve;