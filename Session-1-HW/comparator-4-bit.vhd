library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity comparator is
  port (
    a, b: in std_logic_vector(3 downto 0);
    y: out std_logic
  ) ;
end comparator;

architecture rtl of comparator is
begin
    process(a, b)
    begin
        if a = b then
            y <= '1';
        else
            y <= '0';
        end if ;
    end process;

end rtl ; --comparator