library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity or_and is
  port(a,b,c: in std_logic;
  y: out std_logic);
end or_and;

architecture rtl of or_and is
  signal z:std_logic;
    begin
    y <= a and z;
    z <= b or c;
end rtl;
