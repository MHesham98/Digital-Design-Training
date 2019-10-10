library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity mux_two_one is
  port (
    a, b : in std_logic_vector(7 downto 0);
    sel : in std_logic;
    c : out std_logic_vector(7 downto 0)

  ) ;
end mux_two_one;

architecture rtl of mux_two_one is
begin
    c <= a when sel = '0' else b; 
end rtl ; -- rtl