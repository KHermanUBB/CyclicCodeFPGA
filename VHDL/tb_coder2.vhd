
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_coder2 IS
END tb_coder2;
 
ARCHITECTURE behavior OF tb_coder2 IS 
 
 
    COMPONENT coder2
    PORT(
         clk : IN  std_logic;
         msg : IN  std_logic;
         rst : IN  std_logic;
         out_1 : OUT  std_logic;
         out_2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal msg : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal out_1 : std_logic;
   signal out_2 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: coder2 PORT MAP (
          clk => clk,
          msg => msg,
          rst => rst,
          out_1 => out_1,
          out_2 => out_2
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		rst <= '1';
		wait for clk_period*5;
		rst <= '0';
		
		msg <='1';
		wait for clk_period*2;
		
		

      -- insert stimulus here 

      wait;
   end process;

END;
