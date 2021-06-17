--Structural programming example using pakage
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

package componentes is
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
end package componentes;
