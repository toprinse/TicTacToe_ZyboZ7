----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.10.2023 10:59:17
-- Design Name: 
-- Module Name: MatriceTest - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MatriceTest is
    Port ( clk : in STD_LOGIC;
           led_request: in STD_LOGIC_VECTOR(31 downto 0); --On utilisera ce signal afin de réaliser le signal de commande des leds. 
           led_cmd : out STD_LOGIC
          );
end MatriceTest;

architecture Behavioral of MatriceTest is
    constant nb_led: integer := 64;
    constant internal_clock: real := 1.0/125.0e6;
    
    signal clock_counter: integer := 0;    -- Counts clock pulses
    
    signal led_bits: integer := 0; --Pour savoir à quel bit de la led on est
    signal led_counter: integer := 0; --Pour savoir à quel led on est actuellement sur les 64
     
    signal long: integer := integer(0.85e-6 / internal_clock);       -- long duration
    signal short: integer := integer(0.4e-6 / internal_clock);       -- short duration
    signal refresh: integer := integer((50.0e-6) / internal_clock);  -- refresh duration
    signal color_counter: unsigned(23 downto 0) := "000000000000000000000000";
    begin
    led_process :process(clk)
    begin    
        if clk'event and clk = '1' then
            clock_counter <= clock_counter + 1;
            if led_counter = nb_led then -- Si on est à la dernière LED alors il faut mettre le timing de reset
                if clock_counter > refresh then --Si la durée est supérieur au temps de reset pour leds on recommence un pattern
                    clock_counter <= 0; 
                    led_counter <= 0;
                else -- Sinon on force la sortie à 0 pour le temps de reset
                    led_cmd <= '0';
                end if;
            else --On doit regarder dans quel état est la LED
                if clock_counter > short+long then --On a fini d'écrire un bit
                    clock_counter <= 0;
                    led_bits <= led_bits + 1; 
        
                    if led_bits = 23 then -- On a fini une LED, on en commence une nouvelle
                        led_bits <= 0;
                        led_counter <= led_counter + 1;
                    end if;
                 elsif led_request(led_bits) = '1' and clock_counter > long then
                    led_cmd <= '0';
                 elsif led_request(led_bits) = '0' and clock_counter > short then
                    led_cmd <= '0';
                 else
                    led_cmd <= '1';
                 end if;
             end if;
        end if;
            
    end process led_process;
end Behavioral;
