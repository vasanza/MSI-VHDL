--3-input n-bit comparator
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
Entity Comparador_3in is
	generic ( n: integer :=4);--<-- nbits
	Port(
		A,B,C: in std_logic_vector(n-1 downto 0);
		AmayorB, AmayorC, BmayorC: out std_logic;
		AigualB, AigualC, BigualC: out std_logic;
		AmenorB, AmenorC, BmenorC: out std_logic);
end Comparador_3in;

--Architecture
Architecture solve of Comparador_3in is
	-- Signals,Constants,Variables,Components
	Begin
		AmayorB<='1' when A>B else '0';
		AmayorC<='1' when A>C else '0';
		BmayorC<='1' when B>C else '0';
		
		AigualB<='1' when A=B else '0';
		AigualC<='1' when A=C else '0';
		BigualC<='1' when B=C else '0';
		
		AmenorB<='1' when A<B else '0';
		AmenorC<='1' when A<C else '0';
		BmenorC<='1' when B<C else '0';
end solve;
