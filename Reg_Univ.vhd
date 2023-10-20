--Universal Register
-- Repository: 
-- https://github.com/vasanza/MSI-VHDL
-- Read more:
-- https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Reg_Univ is
	generic(n: integer:= 4);--<------- nbits
	port(
		S: in	std_logic_vector(1 downto 0);
		clear,clk,L,R: in	std_logic;
		P: in std_logic_vector(n-1 downto 0);
		Q: buffer std_logic_vector(n-1 downto 0));
end Reg_Univ;

--Architecture
architecture solve of Reg_Univ is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process (clear,clk)
	--Sequential programming	
		begin
			if clear = '0' then
				Q <= (others =>'0');
			elsif clk'event AND clk='1' then
				if S(1)='0' AND S(0)='1' then
					Shift1_LR:
						Q<= R&Q(n-1 downto 1);
				elsif S(1)='1' AND S(0)='0' then
					Shift2_RL: 
						Q<= Q(n-2 downto 0) & L;
				elsif S(1)='1' AND S(0)='1' then
					Q<= P;
				end if;
			end if;
	end process;
	--Process #n... 
end solve;
