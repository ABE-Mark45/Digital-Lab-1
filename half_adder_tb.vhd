library ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is
end half_adder_tb;

architecture TESTBENCH of half_adder_tb is
signal A : STD_LOGIC:='0';
signal B : STD_LOGIC:='0';
signal sum : STD_LOGIC:='0';
signal carry : STD_LOGIC:='0';
component half_adder is
    port(i_1 : in STD_LOGIC;
	 i_2 : in STD_LOGIC;
	 o_sum : out STD_LOGIC;
	 o_carry : out STD_LOGIC); 
end component;
begin
HALF_ADDER_MAP: half_adder port map(i_1=>A, i_2=>B, o_sum=>sum, o_carry=>carry); 

    process
    begin
        A <= '0';
	B <= '0';
	wait for 10 ns;
        A <= '0';
	B <= '1';
	wait for 10 ns;
        A <= '1';
	B <= '0';
	wait for 10 ns;
        A <= '1';
	B <= '1';
	wait for 10 ns;
    end process;
end TESTBENCH;  
