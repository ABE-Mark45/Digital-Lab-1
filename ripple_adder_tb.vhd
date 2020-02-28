library ieee;
use ieee.std_logic_1164.all;


entity ripple_adder_tb is
end ripple_adder_tb;

architecture TESTBENCH of ripple_adder_tb is
signal input_1: STD_LOGIC_VECTOR(3 downto 0):="0000";
signal input_2: STD_LOGIC_VECTOR(3 downto 0):="0000";
signal sum: STD_LOGIC_VECTOR(3 downto 0):="0000";
signal c_in: STD_LOGIC:='0';
signal carry: STD_LOGIC:='0';
component ripple_adder is
    port( input_1 : in STD_LOGIC_VECTOR(3 downto 0);
          input_2 : in STD_LOGIC_VECTOR(3 downto 0);
	  carry_in: in STD_LOGIC;
	  o_sum : out STD_LOGIC_VECTOR(3 downto 0);
	  o_carry : out STD_LOGIC);
end component;
begin
ADDER_MAP: ripple_adder port map( input_1=>input_1, input_2=>input_2, carry_in=>c_in, o_sum=>sum,o_carry=>carry);
process
    begin
    c_in<='0';
    input_1<="0010";
    input_2<="0011";
    wait for 10 ns;
    c_in<='0';
    input_1<="0110";
    input_2<="1011";
    wait for 10 ns;
    c_in<='1';
    input_1<="0110";
    input_2<="1011";
    wait for 10 ns;
    c_in<='1';
    input_1<="1011";
    input_2<="1011";
    wait for 10 ns;
    c_in<='1';
    input_1<="1011";
    input_2<="0011";
    wait for 10 ns;
    end process;
end TESTBENCH;