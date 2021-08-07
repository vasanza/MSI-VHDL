--Synchronous Sequential Machine
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity mss is
	port(
		resetn,clk,d,n: in std_logic;
		est: out std_logic_vector(2 downto 0);
		c: out std_logic);
end mss;

--Architecture
architecture solve of mss is
	-- Signals,Constants,Variables,Components
	type estado is (s1,s2,s3,s4,s5);
	signal y: estado;
	begin
	--Process #1: Next state decoder and state memory
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn = '0' then y<= s1;
			elsif (clk'event and clk = '1') then
				case y is
					when s1 => 
							  if d='0' and n='0' then y <= s1;
							  elsif d='0' and n='1' then y <= s3;
							  elsif d='1' and n='0' then y <= s2;
							  else y <= s1; end if;						  
					when s2 => 
							  if d='0' and n='0' then y <= s2;
							  elsif d='0' and n='1' then y <= s4;
							  elsif d='1' and n='0' then y <= s5;
							  else y <= s2; end if;
					when s3 => 
							  if d='0' and n='0' then y <= s3;
							  elsif d='0' and n='1' then y <= s2;
							  elsif d='1' and n='0' then y <= s4;
							  else y <= s3; end if;
					when s4 => y <= s1;
					when s5 => y <= s3;
				end case;
			end if;
	end process;
	--Process #2: Output decoder
	process(y)-- mealy ->(y,d,n)
	--Sequential programming
		begin
			case y is
				when s1 => c<='0';est<="001";
				when s2 => c<='0';est<="010";
				when s3 => c<='0';est<="011";
				when s4 => c<='1';est<="100";
				when s5 => c<='1';est<="101"; 
			end case;
	end process;
	--Process #n... 
end solve;