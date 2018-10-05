
-- ciclic coder
-- k-length information word  = 4
-- n-length of the message    = 7
-- (n-k) - redundant bits     = 3
-- en - global enable 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity coder2 is
    generic(N: integer:=7;
	         K: integer:=4);
    port( clk: in std_logic;
	       msg: in std_logic;
	       rst: in std_logic;
		    out_1:  out std_logic;
			 out_2:  out std_logic);
end coder2;

architecture Behavioral of coder2 is


-- ff inputs
 signal d0, d1, d2, q0, q1, q2: std_logic;
-- aux signals
 signal ce, ce0, ce1, ce2: std_logic;
-- control signals
 
 signal din: std_logic_vector(N-K-1 downto 0);
 signal qout: std_logic_vector(N-K-1 downto 0);
 signal gi: std_logic_vector(N-K-1 downto 0):="001";

-- csection for generate
 component csection 
	port( clk: in std_logic;
	      rst: in std_logic;
			d0:  in std_logic;
			d:   in std_logic;
			ce:  in std_logic;
			gi:  in std_logic;
			q:   out std_logic);
 end component; 
 
 component dff
	port( clk: in std_logic;
	      rst: in std_logic;
			d:   in std_logic;
			ce:  in std_logic;
			q:   out std_logic);
 end component;
	
 
begin

   df0: dff port map(clk, rst, d0, ce0, q0);
   df1: dff port map(clk, rst, d1, ce1, q1);
   df2: dff port map(clk, rst, d2, ce2, q2);
   ce0 <= '1';
   ce1 <= '1';
   ce2 <= '1';
	
	d0 <= msg;
	d1 <=  msg xor q0;
   d2 <= q1;	
	
	
gen_code_label:  
  for index in 0 to N-K-1 generate  
    begin  
Csec: csection    
		port map( clk => clk,
	             rst => rst,
			       d0  => msg,
					 d   => din(index),
			       ce  => '1',
			       gi  => gi(index),
			       q   => qout(index)
					);
  end generate; 

  din(0) <= msg; 
  gen_code_2:  
  for ind in 1 to N-K-1 generate  
    begin  
         din(ind) <= qout(ind-1);		
  end generate;

 out_1 <= q2;
 out_2 <= qout(2); 
	

end Behavioral;

