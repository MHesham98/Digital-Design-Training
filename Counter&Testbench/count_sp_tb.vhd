library ieee,std;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use std.textio.all;

entity count_sp_tb is
end count_sp_tb ;

architecture behav of count_sp_tb is

    file vectors:text open read_mode is "count_sp_vec.txt";
    constant clockperiod: time:=100 ns;

    signal clk: std_logic:='0';
    signal rst: std_logic;
    signal d: std_logic_vector( 3 downto 0);
    signal ctrl: std_logic_vector(1 downto 0);
    signal count: std_logic_vector(3 downto 0);

    component count_sp is
        port(clk, rst: in std_logic;
        ctrl: in std_logic_vector (1 downto 0);
        d: in std_logic_vector( 3 downto 0);
        count: out std_logic_vector (3 downto 0));
    end component ;

    begin
        clk <= not clk after clockperiod /2;
        rst <= '1' , '0' after 70 ns;
        dut:count_sp port map(clk, rst, ctrl, d, count);
        process
        variable vectorline:line;
        variable ctrl_var: bit_vector(1 downto 0);
        variable d_var: bit_vector(3 downto 0);
        begin
        ctrl_var := "00";
        d_var := "0000";
        wait for clockperiod;
        while(not endfile(vectors)) loop
        readline(vectors, vectorline);
        if vectorline(1)='#' then next ;
        end if;
        read(vectorline, ctrl_var);
        read(vectorline, d_var);
        ctrl <= to_stdlogicvector(ctrl_var);
        d <= to_stdlogicvector(d_var);
        wait for clockperiod;
        end loop;
        wait for 3* clockperiod;
        wait;
        end process;
    end behav;