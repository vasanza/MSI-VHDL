--Structural programming example
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity ejemplo_estructural is
	generic ( n: integer :=1);--<-- nbits
	port(
		SA,SB: in std_logic_vector(n-1 downto 0);
		Y: out std_logic_vector(n-1 downto 0));
end ejemplo_estructural;

--Architecture
architecture solve of ejemplo_estructural is
	-- Components
	component puerta_not
		generic ( n: integer :=1);--<-- nbits
		port(
			X: in std_logic_vector(n-1 downto 0);
			S: out std_logic_vector(n-1 downto 0));
	end component;
	
	component puerta_and
		generic ( n: integer :=1);--<-- nbits
		port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
	end component;
	
	component puerta_or
		generic ( n: integer :=1);--<-- nbits
		port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
	end component;
	
	-- Signals
	signal AN, BN, ANB, ABN: std_logic_vector(0 downto 0);
	-- Signals,Constants,Variables,Components
	begin
	not1: puerta_not port map (SA,AN);
	not2: puerta_not port map (SB,BN);
	and1: puerta_and port map (AN,SB,ANB);
	and2: puerta_and port map (SA,BN,ABN);
	or1: puerta_or port map (ANB,ABN,Y);
end solve;