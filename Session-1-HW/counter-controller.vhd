library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

--Ctrl
-- 0 0 Nothing
-- 0 1 Count UP
-- 1 0 Count DOWN
-- 1 1 LOAD


entity counter is 
    port(clk, reset, clr: in std_logic;
    ctrl: in std_logic_vector(1 downto 0);
    load_value: in unsigned(3 downto 0);
    y: out unsigned(3 downto 0));
end counter;

architecture rtl of counter is
    signal cnt: unsigned(3 downto 0); -- a signal was added because we can't add numbers to outputs// we are using unsigned better than using a package which wil breate us some complications in some cases
        begin
            process(clk, reset)
            begin
                if(reset = '0') then -- asynchronous
                    cnt <= (others => '0') ;
                elsif(rising_edge(clk)) then 
                    if (clr = '1') then
                        cnt <= (others => '0');  
                    
                    else
                        case( ctrl ) is
                        
                            when "01" => cnt <= cnt + 1;
                            when "10" => cnt <= cnt - 1;
                            when "11" => cnt <= load_value;
                                
                        
                            when others => cnt <= cnt;
                        
                        end case ;
                    end if;
                end if;
            end process;
        y <= cnt;
end rtl; -- 

