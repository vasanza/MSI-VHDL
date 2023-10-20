--32-word 8-bit synchronous RAM with enable
-- Repository: 
-- https://github.com/vasanza/MSI-VHDL
-- Read more:
-- https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--Entity
entity SRAM is 
	generic(n: integer:=8;-- n-bits per data
	m: integer:=2); -- m-bits of addresses
	port(
		clk,en,wr: in std_logic; 
		addr : in std_logic_vector(m-1 downto 0); 
		Din : in std_logic_vector(n-1 downto 0);
		Dout : out std_logic_vector(n-1 downto 0)); 
end SRAM;

--Architecture
architecture solve of SRAM is
	-- Signals,Constants,Variables,Components	
	type ram_type is array (0 to (2**m)-1) of std_logic_vector(n-1 downto 0); 
	signal tmp_ram: ram_type; 
	begin
	--Process #1:
	process(clk,wr)
	--Sequential programming
		begin
			if (clk'event and clk='1') then
				if wr='1' then --write
					tmp_ram(conv_integer(addr)) <= Din; 
				end if;
			end if;
	end process; 
	--Process #n...
	Dout<=(others=>'Z') when en='0' else tmp_ram(conv_integer(addr));--read 
end solve;
