library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity counter is 
    port(clk: in std_logic;
    y: out unsigned(7 downto 0);
    enable: in std_logic);
end counter;

architecture rtl of counter is
    signal cnt: unsigned(7 downto 0); -- a signal was added because we can't add numbers to outputs// we are using unsigned better than using a package which wil breate us some complications in some cases
        begin
            process(clk, enable)
            begin
                if(enable = '0') then cnt <= cnt ;
                elsif(clk'event and clk='1' and cnt ="UUUUUUUU" ) then cnt <= "00000000"; -- is this synthisizable ? // We Shouldn't care for this case as this will work as a power on reset device
                else
                cnt <= cnt+1;
                end if;
            end process;
        y <= cnt;
end rtl; -- rtl

