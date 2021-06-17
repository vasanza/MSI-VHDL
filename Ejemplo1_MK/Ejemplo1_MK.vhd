--N-bit single port and
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity ejemplo1_MK is
	generic ( n: integer :=1);--<-- nbits
	port(
		A,B,C,D: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
end ejemplo1_MK;

--Architecture
architecture solve of ejemplo1_MK is
	-- Signals,Constants,Variables,Components
	begin
		F<= (not(A) and C and not(D)) or (not(A) and B and not(D)) or (not(B) and not(C) and D);
end solve;