
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
 
 
ENTITY tb_coder IS
END tb_coder;
 
ARCHITECTURE behavior OF tb_coder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT coder
    PORT(
         clk : IN  std_logic;
         msg : IN  std_logic_vector(3 downto 0);
         rst : IN  std_logic;
         en : IN  std_logic;
         out_o : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal msg : std_logic_vector(3 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal en : std_logic := '0';

 	--Outputs
   signal out_o : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: coder PORT MAP (
          clk => clk,
          msg => msg,
          rst => rst,
          en => en,
          out_o => out_o
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
stim_proc: process
   begin		
      -- hold reset state for 10 ns.
     wait for 10 ns;
     rst <= '1';	
	  wait for 10 ns;
     rst <= '0';
	 
stimloop : for i in 0 to 15 loop

				wait for 10 ns;
				msg <= conv_std_logic_vector(i, msg'length); 
				wait for 25 ns;
				en <= '1';
				wait for 10 ns;
				en <= '0';
				wait for 100 ns;

           end loop stimloop;
	 
      wait;
   end process;

END;
