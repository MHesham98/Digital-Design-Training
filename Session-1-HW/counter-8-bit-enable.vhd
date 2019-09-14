library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all; -- Added this to be able to add numbers to the signal as without it you can't add numbers on it

entity counter is 
    port(clk: in std_logic;
    y: out std_logic_vector(7 downto 0);
    enable: in std_logic);
end counter;

architecture rtl of counter is
    signal cnt: std_logic_vector(7 downto 0); -- a signal was added because we can't add numbers to outputs
        begin
            process(clk, enable)
            begin
                if(enable = '0') then cnt <= cnt ;
                elsif(clk'event and clk='1' and cnt ="UUUUUUUU" ) then cnt <= "00000000"; -- is this synthisizable ?
                else
                cnt <= cnt+1;
                end if;
            end process;
        y <= cnt;
end rtl; -- rtl

