--Synchronous Sequential Machine (Sequential Loading)
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity mss_sl is
	port(
		resetn,clk,start,enter: in std_logic;
		est: out std_logic_vector(3 downto 0);
		e0,e1,e2,fin,resetnReg: out std_logic);
end mss_sl;

--Architecture
architecture solve of mss_sl is
	-- Signals,Constants,Variables,Components
	type estado is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12);
	signal y: estado;
	begin
	--Process #1: Next state decoder and state memory
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn = '0' then y<= s0;
			elsif (clk'event and clk = '1') then
				case y is
					when s0 => 
							  if start='0' then y <= s0;
							  else y <= s1; end if;						  
					when s1 => 
							  if start='1' then y <= s1;
							  else y <= s2; end if;	
					when s2 => 
							  if enter='0' then y <= s2;
							  else y <= s3; end if;
					when s3 => 
							  if enter='1' then y <= s3;
							  else y <= s4; end if;
					when s4 => y <= s5;--Output Decoder, e0=1
					when s5 => 
							  if enter='0' then y <= s5;
							  else y <= s6; end if;
					when s6 => 
							  if enter='1' then y <= s6;
							  else y <= s7; end if;
					when s7 => y <= s8;--Output Decoder, e1=1
					when s8 => 
							  if enter='0' then y <= s8;
							  else y <= s9; end if;
					when s9 => 
							  if enter='1' then y <= s9;
							  else y <= s10; end if;
					when s10 => y <= s11;--Output Decoder, e2=1
					when s11 => 
							  if start='0' then y <= s11;
							  else y <= s12; end if;						  
					when s12 => 
							  if start='1' then y <= s12;
							  else y <= s0; end if;	
				end case;
			end if;
	end process;
	--Process #2: State Indicator
	process(y)-- mealy ->(y,d,n)
	--Sequential programming
		begin
			case y is
				when s0 => est<="0000";
				when s1 => est<="0001";
				when s2 => est<="0010";
				when s3 => est<="0011";
				when s4 => est<="0100";--Output Decoder, e0=1
				when s5 => est<="0101";
				when s6 => est<="0110";
				when s7 => est<="0111";--Output Decoder, e1=1
				when s8 => est<="1000";
				when s9 => est<="1001";
				when s10 => est<="1010";--Output Decoder, e2=1
				when s11 => est<="1011";
				when s12 => est<="1100"; 
			end case;
	end process;
	-- Output decoder
	e0<= '1' when y=s4 else '0';
	e1<= '1' when y=s7 else '0';
	e2<= '1' when y=s10 else '0';
	fin<= '1' when (y=S11) or (y=s12) else '0';
	resetnReg <= '0' when y=s0 else '1';
	--Process #n... 
end solve;