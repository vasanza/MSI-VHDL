--Structural Implementation
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;
use work.Package_library.all;

--Entity
entity Structural is
	port(
		resetn,Start,Load,Find,clk: in std_logic;
		Datos: in std_logic_vector(7 downto 0);
		Done: out std_logic;
		Qmax,Qmin: buffer std_logic_vector(7 downto 0));
end Structural;

--Architecture
architecture solve of Structural is
	-- Signals,Constants,Variables,Components
	signal en0,en1,en2,enMax,enMin,AmayorB,AmenorC: std_logic;
	signal est: std_logic_vector(4 downto 0);
	signal sel: std_logic_vector(1 downto 0);
	signal Qreg1,Qreg2,Qreg3,Qreg: std_logic_vector(7 downto 0);
	signal nc: std_logic_vector(0 to 6);
	
	begin
		--Concurrent implementation
		Controller: MSS port map (resetn,clk,Start,Load,Find,AmayorB,AmenorC,est,sel,Done,en0,en1,en2,enMax,enMin);
		Bloque_Amarillo: Comparador_3in port map (Qreg,Qmax,Qmin,AmayorB,nc(0),nc(1),nc(2),nc(3),nc(4),nc(5),AmenorC,nc(6));
		Registro1: Reg port map (clk,resetn,en0,Datos,Qreg1);
		Registro2: Reg port map (clk,resetn,en1,Datos,Qreg2);
		Registro3: Reg port map (clk,resetn,en2,Datos,Qreg3);
		multiplexer: Mux4a1 port map (Qreg1,Qreg2,Qreg3,"00000000",sel,'1',Qreg);
		RegistroMax: Reg port map (clk,resetn,enMax,Qreg,Qmax);
		RegistroMin: Reg port map (clk,resetn,enMin,Qreg,Qmin);

end solve;