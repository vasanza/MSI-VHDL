--32-word 8-bit synchronous RAM
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec
-- By: Bryan macias and Angel Villamar (2021PAO1)

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

--Entity
entity SRAMv2 is
generic ( n: integer:=8; 
			m:integer:=8 );
port(clock, WE: in std_logic;
		Data: in std_logic_vector(n-1 downto 0);
		Address: in std_logic_vector(m-1 downto 0);
		Q: out std_logic_vector(n-1 downto 0));
end SRAMv2;

--Architecture
architecture comp of SRAMv2 is
type ram_type is array (254 downto 0) of std_logic_vector (7 downto 0);
signal memram: ram_type;
--signal temp: std_logic_vector(7 downto 0);
begin
--Process #1:
process(clock)
--Sequential programming
begin
	if (clock'event and clock='1') then
		if WE='1' then --write
			memram(conv_integer(address)) <= Data;
		else
			Q <= memram(conv_integer(address));
		end if;
	end if;
end process;
--Process #n...
end comp;
