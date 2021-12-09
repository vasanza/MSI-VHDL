--Pseudorandom number generator (2^7 random numbers)
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec
--By: Angel Zumba and Jose Marquez (2021PAO1)

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Rand_v2 is
   port (clk : in std_logic;
	      resetn: in std_logic; 
			load: in std_logic;
			seed: in std_logic_vector (7 downto 0);
			random: out std_logic_vector (7 downto 0));
end Rand_v2;

--Architecture
architecture funcional of Rand_v2 is
	-- Signals,Constants,Variables,Components
    signal lfsr_reg: std_logic_vector(7 downto 0);

	begin
	 --Process #1
     process(clk, resetn)
	 --Sequential programming
	  begin 
	   if (resetn = '0') then
	      lfsr_reg <= (others => '0');	
		
		elsif (clk'event and clk = '1') then
		  if (load = '1') then
		    lfsr_reg <= seed;
		else
		
		   lfsr_reg(0) <= lfsr_reg(7);
			lfsr_reg(1) <= lfsr_reg(0);
			lfsr_reg(2) <= lfsr_reg(1) xnor lfsr_reg(7);
			lfsr_reg(3) <= lfsr_reg(2) xnor lfsr_reg(7);
			lfsr_reg(4) <= lfsr_reg(3) xnor lfsr_reg(7);
			lfsr_reg(5) <= lfsr_reg(4);
			lfsr_reg(6) <= lfsr_reg(5);
			lfsr_reg(7) <= lfsr_reg(6);
		
		end if;
	end if; 
	end process; 

    random <= lfsr_reg;
 	--Process #n...
end funcional;		