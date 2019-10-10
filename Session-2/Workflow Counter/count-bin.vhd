library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;



entity count_bin is 
    port(clk, reset: in std_logic;
    y: out std_logic_vector(20 downto 0));
end count_bin;

architecture rtl of count_bin is
    signal cnt: unsigned(20 downto 0); 
        begin
            process(clk, reset)
            begin
                if(reset = '1') then 
                    cnt <= (others => '0') ;
                elsif(rising_edge(clk)) then 
                    cnt <= cnt + 1;
                end if;
            end process;
        y <= std_logic_vector(cnt);
end rtl; -- 

