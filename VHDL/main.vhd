
-- ciclic coder
-- k-length information word  = 4
-- n-length of the message    = 7
-- (n-k) - redundant bits     = 3
-- en - global enable 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity coder is
    generic(N: integer:=7;
	         K: integer:=4);
    port( clk: in std_logic;
	       msg: in std_logic_vector(3 downto 0);
	       rst: in std_logic;
		    en:  in std_logic;
		    out_o:  out std_logic);
end coder;

architecture Behavioral of coder is

-- serialized input
 signal msg_in: std_logic;
-- ff inputs
 signal d0, q2: std_logic;
-- aux signals
 signal aux0, aux1, aux2: std_logic;
-- control signals
 signal ctrl0, ctrl2: std_logic;
-- load signal for shift register
 signal load: std_logic; 
 
 
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

-- shift register
 component sr 
	port( clk:   in std_logic;
	      rst:   in std_logic;
		   msg:   in std_logic_vector(3 downto 0);
		   load:  in std_logic;
		   q:     out std_logic);
 end component;
-- state machine component 
 component control 
   generic(N: integer:= 7;
	        K: integer:= 3);
   port   (clk:   in  std_logic;
			  rst:   in  std_logic;
			  en:    in  std_logic;
			  ctrl0: out std_logic;
			  ctrl2: out std_logic;	
			  load:  out std_logic		 
			 );
 end component;	
 
begin

-- shift register
   sr0: sr port map(clk, rst, msg, load, msg_in);
-- state machine 
   FSM0: control generic map(N=>7, K=>4)
                 port map(clk, rst, en, ctrl0, ctrl2, load);
-- registers
--   df0: dff port map(clk, rst, d0, ce0, q0);
--   df1: dff port map(clk, rst, d1, ce1, q1);
--   df2: dff port map(clk, rst, d2, ce2, q2);
--   ce0 <= ctrl0;
--   ce1 <= ctrl0;
--   ce2 <= ctrl0;
	
gen_code_label:  
  for index in 0 to N-K-1 generate  
    begin  
Csec: csection    
		port map( clk => clk,
	             rst => rst,
			       d0  => aux0,
					 d   => din(index),
			       ce  => ctrl0,
			       gi  => gi(index),
			       q   => qout(index)
					);
--		if index = "0" then
--         din(index) = d0;
--      else
--         din(index) = qout(index-1);
--      end if;			
		   
  end generate; 
  din(0) <= d0; 
  gen_code_2:  
  for ind in 1 to N-K-1 generate  
    begin  
         din(ind) <= qout(ind-1);		
  end generate; 
	

-- first mux
	aux2 <= msg_in xor qout(N-K-1);
	aux0 <= aux2 when ctrl2 = '0' else '0';
	d0 <= aux0;
	
-- second mux
	aux1 <= msg_in when ctrl2 = '0' else q2;
   out_o <= aux1 when rst = '0' else '0';

-- 	

end Behavioral;

