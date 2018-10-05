----------------------------------------------------------------------------------
-- Company:  UBB
-- Engineer: Krzysztof Herman

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity csection is
	port( clk: in std_logic;
	      rst: in std_logic;
			d0:  in std_logic;
			d:   in std_logic;
			ce:  in std_logic;
			gi:  in std_logic;
			q:   out std_logic);
end csection;

architecture Behavioral of csection is
signal qa: std_logic;

begin

ff:   process(clk)
		begin
		if rst =  '1'  then 
				qa <= '0';
		elsif rising_edge(clk) then 
			if ce = '1' then  
				qa <=  d; 
			end if;
		end if;		
		end process; 
-- output logic		
	q <= 	qa when gi='0' else (qa xor d0);	


end Behavioral;

