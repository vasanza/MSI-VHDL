--Three-state buffer
--https://vasanza.blogspot.com

--Library
library ieee;    
use ieee.std_logic_1164.all;    

--Entity
entity buffer3s is  
	generic(n: integer:=4);--<------- nbits   
	port(
		ent: in std_logic_vector(n-1 downto 0);    
      en: in std_logic;    
      sal: out std_logic_vector(n-1 downto 0));    
end buffer3s;

--Architecture   
architecture solve of buffer3s is
	-- Signals,Constants,Variables,Components
	begin    
		sal<=(others=>'Z') when en='0' else ent;    
end solve;