library ieee;
use ieee.std_logic_1164.all;

entity half_adder is 
    port(i_1 : in STD_LOGIC;
	 i_2 : in STD_LOGIC;
	 o_sum : out STD_LOGIC;
	 o_carry : out STD_LOGIC); 
end half_adder;
architecture DATAFLOW of half_adder is
begin
	o_sum <= i_1 xor i_2;
	o_carry <= i_1 and i_2;
end DATAFLOW;
