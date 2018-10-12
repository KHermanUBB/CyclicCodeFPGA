----------------------------------------------------------------------------------
-- Company: UBB
-- Engineer: Krzysztof Herman

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity hw_top is
port( sw: in std_logic_vector (3 downto 0); -- message		
		en: in std_logic;
		clk: in std_logic;
		rst: in std_logic;
		cout: out std_logic;
		Led: out std_logic;
		JA: out std_logic_vector(2 downto 0));
end hw_top;

architecture Behavioral of hw_top is

signal cclk: std_logic_vector(25 downto 0);

component coder 
    generic(N: integer:=7;
	         K: integer:=4;
				G: integer:=1);   -- 001
    port( clk: in std_logic;
	       msg: in std_logic_vector(3 downto 0);
	       rst: in std_logic;
		    en:  in std_logic;
		    out_o:  out std_logic);
end component;


signal tmp: std_logic;


begin

clk_proc: process(clk)
          begin
			 if rst = '1' then 
			     cclk <= (others => '0');
		    elsif rising_edge(clk) then 
              cclk <= cclk + 1;
          end if;				  
			 end process;
			 
			 
coder1: coder generic map(N=>7, K=>4, G=> 1)
              port map(cclk(15), sw, rst, en, tmp);

-- output singls
-- output divided clock
Led <= cclk(15);
JA(0) <= cclk(15);
-- output enable btn
JA(1) <= en;
-- output coder 
JA(2) <= tmp;

cout <= tmp;

end Behavioral;

