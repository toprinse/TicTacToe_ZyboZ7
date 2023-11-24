library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MatriceTest is
    Port ( clk : in STD_LOGIC;
           start: in STD_LOGIC;
           led_request: in STD_LOGIC_VECTOR(1535 downto 0);
           led_cmd : out STD_LOGIC
          );
end MatriceTest;

architecture Behavioral of MatriceTest is
    type StateType is (Wait_Start, Wait_Stop, One_H, One_L, Zero_H, Zero_L, Status, Wait_Init);
    constant internal_clock: real := 1.0/125.0e6;
    constant T1L: integer := integer(0.45e-6 / internal_clock);
    constant T1H: integer := integer(0.8e-6 / internal_clock);
    constant T0L: integer := integer(0.85e-6 / internal_clock);
    constant T0H: integer := integer(0.4e-6 / internal_clock);
    constant refresh: integer := integer((50.0e-6) / internal_clock);  -- refresh duration
    -- constant led_request: STD_LOGIC_VECTOR(1535 downto 0) := "000000001111111100000000000000001111111100000000000000000000000000000000111111110000000000000000111111110000000000000000000000000000000000000000000000001111111100000000000000001111111100000000000000001111111100000000000000001111111100000000000000000000000000000000111111110000000000000000111111110000000000000000000000000000000000000000000000001111111100000000000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    signal PresentState, NextState : StateType := Wait_Start;
    signal cpt_bit_reg, cpt_clk_reg: integer :=0; 
    signal cpt_bit_next, cpt_clk_next: integer :=0;
    signal command_led_out : STD_LOGIC := '0'; 
    
    begin
        update_state : process(clk)
        begin
            if(clk'event and clk='1') then 
                PresentState <= NextState;
                cpt_bit_reg <= cpt_bit_next;
                cpt_clk_reg <= cpt_clk_next;
            end if;
        end process update_state;
        
        FSM_state : process (start, cpt_clk_reg, cpt_bit_reg)
        begin 
            NextState <= PresentState;
            cpt_bit_next <= cpt_bit_reg;
            cpt_clk_next <= cpt_clk_reg+1;
            -- command_led_out <= '0';
            case PresentState is 
                when Wait_Init =>
                    if led_request(0) = '1' AND start = '0' then
                        NextState <= One_H;
                    elsif led_request(0) = '0' AND start = '0' then
                        NextState <= Zero_H;
                    else 
                        NextState <= Wait_Init;
                    end if;
                when Wait_Start =>
                    cpt_bit_next <= 0;
                    cpt_clk_next <= 0;
                    if(start = '1') then
                        NextState <= Wait_Init;
                    else
                        NextState <= Wait_Start;
                    end if;
                when One_H =>
                     command_led_out <= '1';
                     if( cpt_clk_reg >= T1H) then
                        NextState <= One_L;
                        cpt_clk_next <= 0;
                     else
                        NextState <= One_H;
                     end if;
                when Zero_H =>
                     command_led_out <= '1';
                     if( cpt_clk_reg >= T0H) then
                        NextState <= Zero_L;
                        cpt_clk_next <= 0;
                     else
                        NextState <= Zero_H;
                     end if;
                when One_L =>
                     command_led_out <= '0';
                     if( cpt_clk_reg >= T1L) then
                        NextState <= Status;
                     else
                        NextState <= One_L;
                     end if;
                when Zero_L =>
                     command_led_out <= '0';
                     if( cpt_clk_reg >= T0L) then
                        NextState <= Status;
                     else
                        NextState <= Zero_L;
                     end if;
                when Status =>
                    cpt_bit_next <= cpt_bit_reg+1;
                    command_led_out <= '0';
                    if(cpt_bit_reg >= 1535) then
                        cpt_clk_next <= 0; 
                        NextState <= Wait_Stop;
                    elsif(led_request(cpt_bit_reg) = '1') then
                        NextState <= One_H;
                        cpt_clk_next <= 0;
                    elsif(led_request(cpt_bit_reg) = '0') then
                        NextState <= Zero_H;
                        cpt_clk_next <= 0;
                    else
                        NextState <= Status;
                    end if;
                when Wait_Stop =>
                    if(cpt_clk_reg >= refresh) then
                        NextState <= Wait_Start;
                    else
                        NextState <= Wait_Stop;
                    end if;
              end case;
        end process FSM_state;
        led_cmd <= command_led_out;
end Behavioral;