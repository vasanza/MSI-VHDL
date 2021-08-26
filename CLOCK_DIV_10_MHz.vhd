--Pseudorandom number generator
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL
--By: Angel Zumba and Jose Marquez (2021PAO1)

--Library
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

--Entity
ENTITY CLOCK_DIV_10_MHz IS
    PORT
    (  CLOCK_10MHz     :IN   STD_LOGIC;
       CLOCK_1MHz     :OUT  STD_LOGIC;
       CLOCK_100KHz   :OUT  STD_LOGIC;
       CLOCK_10KHz    :OUT  STD_LOGIC;
       CLOCK_1KHz     :OUT  STD_LOGIC;
       CLOCK_100Hz    :OUT  STD_LOGIC;
       CLOCK_10Hz     :OUT  STD_LOGIC;
       CLOCK_1Hz      :OUT  STD_LOGIC);
END CLOCK_DIV_10_MHz;

--Architecture
ARCHITECTURE a OF CLOCK_DIV_10_MHz IS
    SIGNAL   count_1Mhz: STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL   count_100Khz, count_10Khz, count_1Khz: STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL   count_100hz, count_10hz, count_1hz: STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL   clock_1Mhz_int, clock_100Khz_int, clock_10Khz_int, clock_1Khz_int: STD_LOGIC;
    SIGNAL   clock_100hz_int, clock_10hz_int, clock_1hz_int: STD_LOGIC;

BEGIN
	-- Signals,Constants,Variables,Components
    PROCESS
    BEGIN
	-- Divide by 10
       WAIT UNTIL clock_10Mhz'EVENT and clock_10Mhz = '0';  -- 10 Mhz
          IF count_1Mhz < 9 THEN
             count_1Mhz <= count_1Mhz + 1;
          ELSE
             count_1Mhz <= "0000";
          END IF;
          IF count_1Mhz < 4 THEN
             clock_1Mhz_int <= '0';
          ELSE
             clock_1Mhz_int <= '1';
          END IF;
       -- Ripple clocks are used in this code to save prescalar hardware
       -- Sync all clock prescalar outputs back to master clock signal
          clock_1Mhz <= clock_1Mhz_int;
          clock_100Khz <= clock_100Khz_int;
          clock_10Khz <= clock_10Khz_int;
          clock_1Khz <= clock_1Khz_int;
          clock_100hz <= clock_100hz_int;
          clock_10hz <= clock_10hz_int;
          clock_1hz <= clock_1hz_int;
       END PROCESS;
       -- Process 1: Divide by 10
       PROCESS
       BEGIN
          WAIT UNTIL clock_1Mhz_int'EVENT and clock_1Mhz_int = '0';
             IF count_100Khz /= 4 THEN
                count_100Khz <= count_100Khz + 1;
             ELSE
                count_100Khz <= "000";
                clock_100Khz_int <= NOT clock_100Khz_int;
             END IF;
       END PROCESS;
       -- Process 2: Divide by 10
       PROCESS
       BEGIN
          WAIT UNTIL clock_100Khz_int'EVENT and clock_100Khz_int = '0';
             IF count_10Khz /= 4 THEN
                count_10Khz <= count_10Khz + 1;
             ELSE
                count_10Khz <= "000";
                clock_10Khz_int <= NOT clock_10Khz_int;
             END IF;
       END PROCESS;
       -- Process 3: Divide by 10
       PROCESS
       BEGIN
          WAIT UNTIL clock_10Khz_int'EVENT and clock_10Khz_int = '0';
             IF count_1Khz /= 4 THEN
                count_1Khz <= count_1Khz + 1;
             ELSE
                count_1Khz <= "000";
                clock_1Khz_int <= NOT clock_1Khz_int;
             END IF;
       END PROCESS;
       -- Process 4: Divide by 10
       PROCESS
       BEGIN
          WAIT UNTIL clock_1Khz_int'EVENT and clock_1Khz_int = '0';
             IF count_100hz /= 4 THEN
                count_100hz <= count_100hz + 1;
             ELSE
                count_100hz <= "000";
                clock_100hz_int <= NOT clock_100hz_int;
             END IF;
       END PROCESS;
       -- Process 5: Divide by 10
       PROCESS
       BEGIN
          WAIT UNTIL clock_100hz_int'EVENT and clock_100hz_int = '0';
             IF count_10hz /= 4 THEN
                count_10hz <= count_10hz + 1;
             ELSE
                count_10hz <= "000";
                clock_10hz_int <= NOT clock_10hz_int;
             END IF;
       END PROCESS;
       -- Process 6: Divide by 10
       PROCESS
       BEGIN
          WAIT UNTIL clock_10hz_int'EVENT and clock_10hz_int = '0';
             IF count_1hz /= 4 THEN
                count_1hz <= count_1hz + 1;
             ELSE
                count_1hz <= "000";
                clock_1hz_int <= NOT clock_1hz_int;
             END IF;
       END PROCESS;
	   --Process #n...
END a;
