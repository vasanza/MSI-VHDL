library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sum is
	generic ( n: integer :=4);
	port(X,Y: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n downto 0));
end sum;

architecture sol of sum is
	begin
		s<='0'&(x+y);
end sol;