library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity tlc_fsm is
  port (
    reset, clk, finish_r, finish_y: in std_logic;
    red, green, yellow: out std_logic 
  ) ;
end tlc_fsm;

architecture rtl of tlc_fsm is
    type: state_type is (s_g, s_y, s_r);
    signal c_state,n_state : state_type;
begin
    process( reset, clk )
    begin
        if(reset = '1')
            c_state <= s_g ;
        elsif (rising_edge(clk)) then
            c_state<= n_state;    
        end if;  
    end process ; 

    process( finish_r, finish_y, start, c_state )
    begin
        case( c_state ) is
        
            when s_g =>
                
        
            when others =>
        
        end case ;
        
    end process ; 
end rtl ; --tlc_fsm