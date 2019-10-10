library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity equal_equal is
  port (
    a, b : in std_logic_vector(7 downto 0);
    c : out std_logic
  ) ;
end;

architecture rtl of equal_equal is
begin
    process(a,b)    
        begin
            if(a = b) then
                c <= '1';
            else
                c<= '0';
            end if;
        end process;

end rtl ; --equal_equal