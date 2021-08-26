--BCD data decoder to 7 segment display
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity DecoBCD_7seg is
	port(
		BCD: in std_logic_vector(3 downto 0);
		anodo7: out std_logic_vector(6 downto 0));
end DecoBCD_7seg;

--Architecture
architecture solve of DecoBCD_7seg is
	-- Signals,Constants,Variables,Components
	begin
	--Process #1
	process(BCD)
	--Sequential programming
		begin
			case BCD is
				when "0000" => anodo7<="1111110";
				when "0001" => anodo7<="0110000";
				when "0010" => anodo7<="1101101";
				when "0011" => anodo7<="1111001";
				when "0100" => anodo7<="0110011";
				when "0101" => anodo7<="1011011";
				when "0110" => anodo7<="0011111";
				when "0111" => anodo7<="1110000";
				when "1000" => anodo7<="1111111";
				when "1001" => anodo7<="1110011";
				when others => anodo7<="0000000";
			end case;
	end process;
	--Process #n...
end solve;
