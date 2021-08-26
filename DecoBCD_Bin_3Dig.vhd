--3-digit BCD to Binary decoder
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL
--By: Angel Zumba and Jose Marquez (2021PAO1)

--Library
library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity DecoBCD_Bin_3Dig is
 
      port(BCD: in std_logic_vector (11 downto 0);
		      Binario: out std_logic_vector (7 downto 0));
end DecoBCD_Bin_3Dig;

--Architecture
architecture Respuesta of DecoBCD_Bin_3Dig is
-- Signals,Constants,Variables,Components
SIGNAL Unidad, Decena, Centena: std_logic_vector(7 downto 0); 
SIGNAL UD, UDC: std_logic_vector(7 downto 0);

BEGIN
	  Centena <= '0' & '0' & '0' & '0' & BCD(11 DOWNTO 8);
	  Decena <= '0' & '0' & '0' & '0' & BCD(7 DOWNTO 4);
	  Unidad <= '0' & '0' & '0' & '0' & BCD(3 DOWNTO 0);
	  --Process #1
	  process(Decena)
	  --Sequential programming
	  BEGIN 
	     if (Decena = "00000000") then 
		      UD<=Unidad; 
		  
		  elsif (Decena = "00000001") then
		      UD <= Unidad+"00001010";
		 
		  elsif (Decena = "00000010") then
		      UD <= Unidad + "00010100";
				
		  elsif (Decena = "00000011") then
		      UD <= Unidad + "00011110";
				
		  elsif (Decena = "00000100") then
		      UD <= Unidad + "00101000";
				
		  elsif (Decena = "00000101") then
		      UD <= Unidad + "00110010";
				
		  elsif (Decena = "00000110") then
		      UD <= Unidad + "00111100";
				
		  elsif (Decena = "00000111") then
		      UD <= Unidad + "01000110";
				
		  elsif (Decena = "00001000") then
		      UD <= Unidad + "01010000";
				
		  elsif (Decena = "00001001") then
		      UD <= Unidad + "01011010";
		  
		  else 
		      UD <= Unidad; 
				
		  end if;  
	  end process; 
	 
	 --Process #2
     process (Centena)
	 --Sequential programming	
	  begin
	     if (Centena = "00000001") then
				UDC <= UD + "01100100"; 
		  
		  elsif (Centena = "00000010") then
		      UDC <= UD + "11001000"; 
				
		  else 
		      UDC <= UD;
				
		  end if;
	  end process; 
	  --Process #n...
Binario <= UDC;
end Respuesta; 
