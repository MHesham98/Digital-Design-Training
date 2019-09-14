library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity decoder is
  port(a :in std_logic_vector(2 downto 0);
  en :in std_logic;
  y :out std_logic_vector(7 downto 0));
end decoder;

architecture rtl of decoder is
begin
  process(a, en)
  begin
  if(en = '1') then
    case( a ) is
    
      when "000" => y <= "00000001";
      
      when "001" => y <= "00000010";

      when "010" => y <= "00000100";

      when "011" => y <= "00001000";

      when "100" => y <= "00010000";

      when "101" => y <= "00100000";

      when "110" => y <= "01000000" ;
    
      when others => y <= "10000000";
    
    end case ;
  
  else
    y <= "00000000";
  end if;
  end process;
end rtl;