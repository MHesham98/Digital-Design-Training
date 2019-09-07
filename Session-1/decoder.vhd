library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity decoder is
  port(a :in std_logic_vector(1 downto 0);
  y :out std_logic_vector(3 downto 0));
end decoder;

architecture rtl of decoder is
begin
  process(a)
  begin
    if (a = "00") then
      y <= "0001";
    elsif (a = "01") then
      y <= "0010";
    elsif (a = "10") then
      y <= "0100";
    else
      y <= "1000";  
      
    end if;
  end process;
end rtl;