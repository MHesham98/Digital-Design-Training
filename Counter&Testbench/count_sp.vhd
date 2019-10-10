library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity count_sp is
    port (clk, rst: in std_logic;
    ctrl: in std_logic_vector( 1 downto 0);
    d: in std_logic_vector( 3 downto 0);
    count: out std_logic_vector(3 downto 0));
    end count_sp;
    architecture rtl of count_sp is
    signal count_temp: unsigned(3 downto 0);
    begin
    process (rst, clk)
    begin
    if (rst = '1') then
    count_temp <= (others => '0');
    elsif (rising_edge(clk)) then
    case ctrl is
    when "01" => count_temp <= count_temp + 1;
    when "10" => count_temp <= count_temp - 1;
    when "11" => count_temp <= unsigned(d);
    when others => count_temp <= count_temp;
    end case;
    end if;
    end process;
    count <= std_logic_vector(count_temp);
    end rtl;