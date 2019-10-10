library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity count_2bit is
    port(clk, rst, enable: in std_logic;
    finish_c: out std_logic);
end count_2bit;


architecture rtl of count_2bit is
    signal cnt: unsigned(1 downto 0);
        begin
            process(clk, rst)
            begin
                if (rst = '1') then
                    cnt <= (others => '0');
                    elsif (rising_edge(clk)) then
                        if(enable = '1') then 
                            cnt <= cnt +1;  
                        end if;      
                end if ;
            end process;
            finish_c <= '1' when cnt = 3 else '0';
    end rtl;





