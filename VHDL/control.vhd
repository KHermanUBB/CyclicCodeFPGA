-- state machine
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity control is
	port(clk:   in  std_logic;
	     rst:   in  std_logic;
         en:    in  std_logic;
         ctrl0: out std_logic;
         ctrl2: out std_logic;	
         load:  out std_logic		 
						);
end control;

architecture Behavioral of control is

type statetype is (S0, S1, S2, S3, S4);
signal state, nextstate: statetype;
begin
-- state register
	process(clk, rst) 
	begin
		if rst then 
			state <= S0;
		elsif rising_edge(clk) then
			state <= nextstate;
		end if;
	end process;
	
	-- next state logic
	process(all) 
	begin
	case state is
	when S0 =>
		if en then 
			nextstate <= S1;
		else
			nextstate<=S0;
		end if;
	when S1 =>
	    nextstate <= S2; 
	when S2 =>
	if cntk > 4 then 
		nextstate <=  
	else
	nextstate
	end if;
	when others =>
	nextstate
	end case;
	end process;





end Behavioral;

