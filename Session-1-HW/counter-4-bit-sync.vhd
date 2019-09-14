library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all; -- Added this to be able to add numbers to the signal as without it you can't add numbers on it

entity counter is 
    port(clk: in std_logic;
    y: out std_logic_vector(3 downto 0);
    reset: in std_logic);
end counter;

architecture rtl of counter is
    signal cnt: std_logic_vector(3 downto 0); -- a signal was added because we can't add numbers to outputs
        begin
            process(clk)
            begin
                if(reset = '1') then cnt <= "0000" ;
                elsif(clk'event and clk='1') then cnt <= cnt+1; -- to mimick rising edge behaviour
                end if;
            end process;
        y <= cnt;
end rtl; -- rtl

--the behaviour is unexpected untill the reset is triggered
