--Multiplier of 2 numbers of n bits
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL
--by: Bryan Steven Espinosa

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Entity
entity ProductV2 is
	generic(N : positive :=3);
	port( a_i :  in std_logic_vector(N-1 downto 0);
			b_i :  in std_logic_vector(N-1 downto 0);
			clk,start : in std_logic;
			fin : out std_logic;
			p_o : out std_logic_vector(2*N-1 downto 0)
			);
end entity ProductV2;

--Architecture
architecture Arq of ProductV2 is 
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(start,clk)
	--Sequential programming
	begin
	
		if start = '0' then 
			p_o <= "ZZZZZZ";
			fin <= '0';
			
		elsif (clk'event and clk='1' and start='1') then
			p_o <= std_logic_vector(signed(a_i) * signed(b_i));
			fin <= '1';
			
		end if;
	end process;
	--Process #n...
end architecture Arq;


