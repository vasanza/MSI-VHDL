--2-to-1 n-bit multiplexer
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity Mux2a1 is
	generic ( n: integer:=4);--<-- nbits
	port(	A: in std_logic_vector(n-1 downto 0);
			B: in std_logic_vector(n-1 downto 0);
			Sel: in std_logic;
			en: in std_logic;
			Q: out std_logic_vector(n-1 downto 0));
end Mux2a1;

--Architecture
architecture solve of Mux2a1 is
	-- Signals,Constants,Variables,Components
	signal f: std_logic_vector(n-1 downto 0);
	begin
		with Sel select
		f<= A when '0',
			 B when others;
		Q<= f when en='1' else (others=>'0');
end solve;
