
-- ciclic coder
-- k-length information word  = 4
-- n-length of the message    = 7
-- (n-k) - redundant bits     = 3
-- en - global enable 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity coder is
    generic(N: integer:=7;
	         K: integer:=4;
				G: integer:=1);   -- 001
    port( clk: in std_logic;
	       msg: in std_logic_vector(3 downto 0);
	       rst: in std_logic;
		    en:  in std_logic;
		    out_o:  out std_logic);
end coder;

architecture Behavioral of coder is

-- serialized input
 signal msg_in: std_logic;
-- aux signals
 signal aux0, aux2: std_logic;
-- control signals
 signal ctrl0, ctrl2: std_logic;
-- load signal for shift register
 signal load: std_logic; 
 
 
 signal din: std_logic_vector(N-K-1 downto 0);
 signal qout: std_logic_vector(N-K-1 downto 0);
 signal gi: std_logic_vector(N-K-1 downto 0);

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
-- convert parameter to std logic vector
   gi <= conv_std_logic_vector(G, gi'length);

-- shift register
   sr0: sr port map(clk, rst, msg, load, msg_in);
-- state machine 
   FSM0: control generic map(N=>7, K=>4)
                 port map(clk, rst, en, ctrl0, ctrl2, load);
					  
-- first mux
	aux2 <= msg_in xor qout(N-K-1);
	aux0 <= aux2 when ctrl2 = '0' else '0';

-- assign coder input  
   din(0) <= aux0; 
	
-- output mux
	out_o <= msg_in when ctrl2 = '0' else qout(N-K-1);
   
-- Generate coder block and assign corresponding inputs
gen_main_block:  
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
   end generate; 

-- connect successive blocks	
gen_connections:  
  for ind in 1 to N-K-1 generate  
    begin  
         din(ind) <= qout(ind-1);		
  end generate; 
  
end Behavioral;

