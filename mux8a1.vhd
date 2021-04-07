library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8a1 is
generic ( n: integer:=4);--1
port (
   A : in std_logic_vector(n-1 downto 0);
	B : in std_logic_vector(n-1 downto 0);
	C : in std_logic_vector(n-1 downto 0);
	D : in std_logic_vector(n-1 downto 0);
	E : in std_logic_vector(n-1 downto 0);
	F : in std_logic_vector(n-1 downto 0);
	G : in std_logic_vector(n-1 downto 0);
	H : in std_logic_vector(n-1 downto 0);
	sel : in std_logic_vector(2 downto 0);
	en: in std_logic;
  	Q : out std_logic_vector(n-1 downto 0));
end mux8a1;

architecture Behavioral of mux8a1 is
	signal X: std_logic_vector(n-1 downto 0);
begin
	with sel select 
	X<= A when "000",
		 B when "001",
		 C when "010",
		 D when "011",
		 E when "100",
		 F when "101",
		 G when "110",
		 H when others;
	Q<= X when en='1' else (others=>'0');	 
end Behavioral;