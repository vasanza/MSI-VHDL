--Multiplier of 2 numbers of n bits
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL
--by: Bryan Steven Espinosa

--Library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE. NUMERIC_STD.ALL;

--Entity
entity Divider is
 Port (	 clk, reset : in STD_LOGIC;
					start : in STD_LOGIC;
						 m : in  STD_LOGIC_VECTOR (15 downto 0);     -- Input for dividend
						 n : in  STD_LOGIC_VECTOR (7 downto 0);    -- Input for divisor 
				quotient : out  STD_LOGIC_VECTOR (7 downto 0);    -- Output for quotient
			  remainder : out  STD_LOGIC_VECTOR (7 downto 0);    -- Output for remainder
			ready, ovfl : out STD_LOGIC);    -- Indicates end of algorithm and overflow condition
end Divider;

--Architecture
architecture Behavioral of Divider is
-- Type for the FSM states
type state_type is (idle, shift, op);     

-- Inputs/outputs of the state register and the z, d, and i registers
	signal state_reg, state_next : state_type;   
	signal z_reg, z_next : unsigned(16 downto 0);   
	signal d_reg, d_next : unsigned(7 downto 0);
	signal i_reg, i_next : unsigned(3 downto 0);
-- The subtraction output 
signal sub : unsigned(8 downto 0);
  
begin
  --control path: registers of the FSM
  process(clk, reset)
  begin
	if (reset='1') then
		state_reg <= idle;
	elsif (clk'event and clk='1') then
		state_reg <= state_next;
	end if;
end process;

--control path: the logic that determines the next state of the FSM (this part of
--the code is written based on the green hexagons of Figure 3)
process(state_reg, start, m, n, i_next)
begin
	case state_reg is
		when idle =>
			if ( start='1' ) then
				if ( m(15 downto 8) < n ) then
				state_next <= shift;
				else
				state_next <= idle;
				end if;
			else
				state_next <= idle;
			end if;
				
		when shift =>
			state_next <= op;
		
		when op =>
			if ( i_next = "1000" ) then
				state_next <= idle;
			else
				state_next <= shift;
			end if;
				
		end case;
	end process;
		
--control path: output logic
ready <= '1' when state_reg=idle else
		'0';
ovfl <= '1' when ( state_reg=idle and ( m(15 downto 8) >= n ) ) else
	'0';
						
--control path: registers of the counter used to count the iterations
process(clk, reset)
begin
	if (reset='1') then
		i_reg <= ( others=>'0' );
	elsif (clk'event and clk='1') then
		i_reg <= i_next;
	end if;
end process;

--control path: the logic for the iteration counter
process(state_reg, i_reg)
begin
	case state_reg is
		when idle =>
			i_next <= (others => '0');
							
		when shift =>
			i_next <= i_reg;
			
		when op =>
			i_next <= i_reg + 1;
	end case;
end process;
		


--data path: the registers used in the data path
process(clk, reset)
begin
	if ( reset='1' ) then
		z_reg <= (others => '0');
		d_reg <= (others => '0');
	elsif ( clk'event and clk='1' ) then
		z_reg <= z_next;
		d_reg <= d_next;
	end if;
end process;

--data path: the multiplexers of the data path (written based on the register
--assignments that take place in different states of the ASMD)
process( state_reg, m, n, z_reg, d_reg, sub)
begin
	d_next <= unsigned(n);
	case state_reg is
		when idle =>
			z_next <= unsigned( '0' & m );
			
		when shift =>
			z_next <= z_reg(15 downto 0) & '0';

		when op =>
			if ( z_reg(16 downto 8) < ('0' & d_reg ) ) then
				z_next <= z_reg;
			else
				z_next <=  sub(8 downto 0) & z_reg(7 downto 1) & '1';
			end if;
	end case;
end process;

--data path: functional units
sub <= ( z_reg(16 downto 8) - unsigned('0' & n) );

--data path: output
quotient <= std_logic_vector( z_reg(7 downto 0) );
remainder <= std_logic_vector( z_reg(15 downto 8) );
		
end Behavioral;