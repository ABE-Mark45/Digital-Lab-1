library ieee;
use ieee.std_logic_1164.all;

entity ripple_adder is
    port( input_1 : in STD_LOGIC_VECTOR(3 downto 0);
          input_2 : in STD_LOGIC_VECTOR(3 downto 0);
	  carry_in: in STD_LOGIC;
	  o_sum : out STD_LOGIC_VECTOR(3 downto 0);
	  o_carry : out STD_LOGIC);
end ripple_adder;
architecture STRUCTURAL of ripple_adder is
component full_adder is
    port( i_carry: in STD_LOGIC;
	  i_1 : in STD_LOGIC;
	  i_2 : in STD_LOGIC;
	  o_sum : out STD_LOGIC;
	  o_carry : out STD_LOGIC);
end component;
signal c: STD_LOGIC_VECTOR(3 downto 1);
signal xor_out: STD_LOGIC_VECTOR(3 downto 0);
begin
	xor_out(0) <= input_2(0) xor carry_in;
	xor_out(1) <= input_2(1) xor carry_in;
	xor_out(2) <= input_2(2) xor carry_in;
	xor_out(3) <= input_2(3) xor carry_in;
	F1: full_adder port map(input_1(0), xor_out(0), carry_in, o_sum(0), c(1));
	F2: full_adder port map(input_1(1), xor_out(1), c(1), o_sum(1), c(2));
	F3: full_adder port map(input_1(2), xor_out(2), c(2), o_sum(2), c(3));
	F4: full_adder port map(input_1(3), xor_out(3), c(3), o_sum(3), o_carry);
end STRUCTURAL;