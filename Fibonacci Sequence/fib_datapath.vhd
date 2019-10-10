library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity fib_datapath is
  port (
    clk, n_i, a_sel, b_sel, i_sel, a_ld, b_ld, i_ld : in std_logic;
    smaller_equal, equal_equal : out std_logic;
    c : out std_logic_vector(7 downto 0)
  ) ;
end fib_datapath;

architecture rtl of fib_datapath is

    signal 

begin

end rtl ; -- rtl