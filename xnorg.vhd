library ieee;
    use ieee.std_logic_1164.all;
    
entity xnorg is

    port(
        din : in  std_logic_vector(3 downto 0);
		dout : out std_logic
    );
	
end entity xnorg;

architecture rtl of xnorg is
    
    signal w_dout : std_logic;
	
    
begin
    
	w_dout <= din(0) xor din(1) xor din(2) xor din(3);	
	dout <= not w_dout;
	   
end rtl;
