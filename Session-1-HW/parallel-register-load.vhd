library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity p_reg is
    port(clk, load: in std_logic;
    q, load_value: in std_logic_vector(7 downto 0);
    y: out std_logic_vector(7 downto 0));
end p_reg;

architecture rtl of p_reg is

begin
    process(clk, load)
        begin
            if(load = '1') then y <= load_value;
            elsif(rising_edge(clk)) then 
            y <= q; 
            end if;
        end process;

end rtl ; -- p_reg