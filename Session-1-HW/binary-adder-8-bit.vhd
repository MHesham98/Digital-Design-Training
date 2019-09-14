library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use IEEE.std_logic_unsigned.all; -- Added this to be able to add signal to the signal as without it you can't add them to each other

entity adder is 
    port(a, b: in std_logic_vector(7 downto 0);
    y: out std_logic_vector(7 downto 0));
end adder;

architecture rtl of adder is
        begin
            y <= a+b;
end rtl; -- rtl

