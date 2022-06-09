----------------------------------------------------------------------
-- File Downloaded from 
-- https://www.codeproject.com/Articles/513169/Servomotor-Control-with-PWM-and-VHDL
----------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SERVO_PWM_clk64kHz is
    PORT(
        clk  : IN  STD_LOGIC;
        reset: IN  STD_LOGIC;
        pos  : IN  STD_LOGIC_VECTOR(6 downto 0);
        servo: OUT STD_LOGIC
    );
end SERVO_PWM_clk64kHz;

architecture Behavioral of SERVO_PWM_clk64kHz is
    COMPONENT PWM_clk64kHz
        PORT(
            clk    : in  STD_LOGIC;
            reset  : in  STD_LOGIC;
            clk_out: out STD_LOGIC
        );
    END COMPONENT;
    
    COMPONENT SERVO_PWM
        PORT (
            clk   : IN  STD_LOGIC;
            reset : IN  STD_LOGIC;
            pos   : IN  STD_LOGIC_VECTOR(6 downto 0);
            servo : OUT STD_LOGIC
        );
    END COMPONENT;
    
    signal clk_out : STD_LOGIC := '0';
begin
    clk64kHz_map: PWM_clk64kHz PORT MAP(
        clk, reset, clk_out
    );
    
    servo_pwm_map: SERVO_PWM PORT MAP(
        clk_out, reset, pos, servo
    );
end Behavioral;