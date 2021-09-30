--Pseudorandom number generator
--https://github.com/VHDL-Digital-Systems
--http://blog.espol.edu.ec/sistemasdigitalesfiec
--By: Angel Zumba and Jose Marquez (2021PAO1)

--Library
library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity DecoDecimal_BCD is 
      port(Decimal: in std_logic_vector (9 downto 0);
		         BCD: out std_logic_vector (3 downto 0));
end DecoDecimal_BCD;

--Architecture
architecture Respuesta of DecoDecimal_BCD is
-- Signals,Constants,Variables,Components
SIGNAL or4, or3, or2, or1: std_logic; 

BEGIN
	or4 <= Decimal(9) or Decimal(5) or Decimal(7) or Decimal(3) or Decimal(1);
	or3 <= Decimal(6) or Decimal(7) or Decimal(3) or Decimal(2);
	or2 <= Decimal(5) or Decimal(6) or Decimal(7) or Decimal(4);
	or1 <= Decimal(9) or Decimal(8); 
    BCD <= (or1 & or2 & or3 & or4);
end Respuesta;
