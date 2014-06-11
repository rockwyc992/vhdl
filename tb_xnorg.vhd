library ieee; 

use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 

entity tb_xnorg is end 
entity tb_xnorg; 

architecture rtl of tb_xnorg is 
    component xnorg is port( 
                               din : in  std_logic_vector(3 downto 0);
                               dout : out std_logic
                           ); 
    end component ; 

    signal t_in : std_logic_vector(3 downto 0) := "0000"; 
    signal t_out : std_logic; 
    signal period: time := 100 ns; 

begin 
    u0: xnorg
    port map( 
                din => t_in, 
                dout => t_out
            ); 

    t_in <= t_in + '1' after period; 
end rtl;
