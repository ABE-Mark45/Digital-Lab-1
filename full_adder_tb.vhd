library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture TESTBENCH of full_adder_tb is
signal a : STD_LOGIC:='0';
signal b : STD_LOGIC:='0';
signal i_carry : STD_LOGIC:='0';
signal o_carry : STD_LOGIC:='0';
signal sum : STD_LOGIC:='0';
component full_adder is
    port( i_carry: in STD_LOGIC;
	  i_1 : in STD_LOGIC;
	  i_2 : in STD_LOGIC;
	  o_sum : out STD_LOGIC;
	  o_carry : out STD_LOGIC);
end component;
begin 
FULL_ADDER_MAP : full_adder port map (i_1 => a, i_2=>b, i_carry=>i_carry, o_carry=>o_carry,o_sum=>sum);
    process
        begin
	a <= '0';
	b <= '0';
	i_carry <= '0';
	wait for 10 ns;
	a <= '1';
	b <= '0';
	i_carry <= '0';
	wait for 10 ns;
	a <= '0';
	b <= '1';
	i_carry <= '0';
	wait for 10 ns;
	a <= '1';
	b <= '1';
	i_carry <= '0';
	wait for 10 ns;
	a <= '0';
	b <= '0';
	i_carry <= '1';
	wait for 10 ns;
	a <= '1';
	b <= '0';
	i_carry <= '1';
	wait for 10 ns;
	a <= '0';
	b <= '1';
	i_carry <= '1';
	wait for 10 ns;
	a <= '1';
	b <= '1';
	i_carry <= '1';
	wait for 10 ns;


    end process;
end TESTBENCH;
