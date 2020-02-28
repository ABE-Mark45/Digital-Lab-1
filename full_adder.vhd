library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port( i_carry: in STD_LOGIC;
	  i_1 : in STD_LOGIC;
	  i_2 : in STD_LOGIC;
	  o_sum : out STD_LOGIC;
	  o_carry : out STD_LOGIC);
end full_adder;

architecture STRUCTURAL of full_adder is
component half_adder is
    port(i_1 : in STD_LOGIC;
	 i_2 : in STD_LOGIC;
	 o_sum : out STD_LOGIC;
	 o_carry : out STD_LOGIC); 
end component;
signal s1, c1, c2: STD_LOGIC;
begin
	H1: half_adder port map(i_1, i_2, s1, c1);
	H2: half_adder port map(s1, i_carry, o_sum, c2);
	o_carry <= c1 or c2;
end STRUCTURAL;