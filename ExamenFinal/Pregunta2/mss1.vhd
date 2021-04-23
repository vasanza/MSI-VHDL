--Synchronous Sequential Machine
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity mss is
	port(
		resetn,clk,X3,X2,X1,X0: in std_logic;
		Q1,Q0: out std_logic);
end mss;

--Architecture
architecture solve of mss is
	-- Signals,Constants,Variables,Components
	type estado is (A,B,C,D,E,F,G,H);
	signal y: estado;
	begin
	--Process #1: Next state decoder and state memory
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn = '0' then y<= A;
			elsif (clk'event and clk = '1') then
				case y is
					when A => E
					when E => G
					when C => A
					when G =>
						  if X0='0' then y <= C;
						  else y <= A; end if;
				end case;
			end if;
	end process;
	--Process #2: Output decoder
	--Output decoder
	process(y)-- moore
	--Sequential programming
		begin
			case y is
				when A => Q1<='0';Q0<='0';
				when B => Q1<='1';Q0<='1';
				when C => Q1<='1';Q0<='1';
				when D => Q1<='0';Q0<='0';
				when E => Q1<='0';Q0<='1';
				when F => Q1<='1';Q0<='1';
				when G => Q1<='1';Q0<='0';
				when H => Q1<='1';Q0<='1';
			end case;
	end process;
	--Process #n... 
end solve;