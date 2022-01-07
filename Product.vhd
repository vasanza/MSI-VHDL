--Multiplier of 2 numbers of n bits
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL
--by: Isaac Arturo Zambrano

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Entity
entity Product is
	generic ( n: integer :=4);--<------- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		clk,ResetnMult,start: in std_logic;
		q: out std_logic_vector(2*n-1 downto 0);
		fin: out std_logic);
end Product;

--Architecture
architecture solve of Product is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(ResetnMult,clk)
	--Sequential programming
		begin
			if ResetnMult='0' then
				q<="00000000";
				fin<='0';
			elsif clk'event and clk='1' then
				if start='1' then
					q<=std_logic_vector(signed(A)*signed(B));
					--With the sign bit
					fin<='1';
				else 
					q<="00000000";
					fin<='0';
					end if;
			end if;
	end process;
	--Process #n...
end solve;