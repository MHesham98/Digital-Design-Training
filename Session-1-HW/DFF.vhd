library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity DFF is
    port(q, clk: in std_logic;
    y: out std_logic);
end DFF;

architecture rtl of DFF is

begin
    process(clk)
        begin
            if(clk = '1' and clk'event) then --if we didn't add the condition it triggers for both edges 
            y <= q; 
            end if;
        end process;

end rtl ; -- DFF