-- state machine
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

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
	signal cntk, cntn: std_logic_vector(4 downto 0);
begin
-- state register
	process(clk, rst) 
	begin
		if rst = '1' then 
			state <= S0;
		elsif rising_edge(clk) then
			state <= nextstate;
		end if;
	end process;
	
	-- next state logic
	process(clk) 
	begin
	case state is
		when S0 =>
			if en = '1' then 
				nextstate <= S1;
			else
				nextstate <= S0;
			end if;
		when S1 =>
				nextstate <= S2; 
		when S2 =>
			if cntk > "00100" then 
				nextstate <=  S3;
			else
				nextstate <= S2;
			end if;
		when S3 => 
			if cntk > "00111" then 
				nextstate <=  S0;
			else
				nextstate <= S3;
			end if;
		when others => 
				nextstate <= S0;
	end case;
	end process;


load  <= '1' when state = S1 else '0';
ctrl0 <= '1' when state = S2 or state = S3 else '0';
ctrl2 <= '1' when state = S3 else '0'; 


 process(clk)
 begin 
   if state = S0 or state = S1 then
		cntk <= (others => '0');
	elsif rising_edge(clk) then 
		cntk <= cntk + 1;
	end if;
 end process;
 
end Behavioral;

