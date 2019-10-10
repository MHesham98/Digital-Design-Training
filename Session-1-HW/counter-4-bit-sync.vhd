library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity counter is 
    port(clk: in std_logic;
    y: out unsigned(3 downto 0);
    reset: in std_logic);
end counter;

architecture rtl of counter is
    signal cnt: unsigned(3 downto 0); -- a signal was added because we can't add numbers to outputs// we are using unsigned better than using a package which wil breate us some complications in some cases
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
