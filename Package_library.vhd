--Package library example
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;

Package Package_library is
	component Reg is
		generic ( n: integer :=8);--<-- nbits
		port(
			Clk,resetn,en: in std_logic;
			d: in std_logic_vector(n-1 downto 0);
			q: out std_logic_vector(n-1 downto 0));
	end component;
	
	component Mux4a1 is
		generic ( n: integer:=8);--<-- nbits
		port (
			A : in std_logic_vector(n-1 downto 0);
			B : in std_logic_vector(n-1 downto 0);
			C : in std_logic_vector(n-1 downto 0);
			D : in std_logic_vector(n-1 downto 0);
			sel : in std_logic_vector(1 downto 0);
			en: in std_logic;
			Q : out std_logic_vector(n-1 downto 0));
	end component;
	component Comparador_3in is
		generic ( n: integer :=8);--<-- nbits
		Port(
			A,B,C: in std_logic_vector(n-1 downto 0);
			AmayorB, AmayorC, BmayorC: out std_logic;
			AigualB, AigualC, BigualC: out std_logic;
			AmenorB, AmenorC, BmenorC: out std_logic);
	end component;

	component MSS is
		port(
			resetn,clk,Start,Load,Find,AmayorB,AmenorC: in std_logic;
			est: out std_logic_vector(4 downto 0);
			sel: out std_logic_vector(1 downto 0);
			Done,en0,en1,en2,enMax,enMin: out std_logic);
	end component;
	
end Package_library;