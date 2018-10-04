
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sr is
	port( clk:   in std_logic;
	      rst:   in std_logic;
		  msg:   in std_logic_vector(3 downto 0);
		  load:  in std_logic;
		  q:     out std_logic);
end sr;

architecture Behavioral of sr is

signal shift: std_logic_vector(3 downto 0);
begin

    process (clk)
    begin
	     if rst  = '1' then
           shift(0) <= '0';
		  elsif load = '1' then 
			  shift <= msg;
        elsif rising_edge(clk) then
            shift <=  '0' & shift(3 downto 1);
        end if;
    end process;

    q <= shift(0);

end Behavioral;

