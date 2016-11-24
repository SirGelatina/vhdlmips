library ieee ;
use ieee.std_logic_1164.all ;
use work.datatypes.all;

entity Shift2Left is
	port (
		input 	: in word;
		output 	: out word
	);
end Shift2Left;

architecture Primitive of Shift2Left is
begin
	shift: for i in 31 downto 2 generate
		output(i) <= input(i-2);
	end generate shift;
	
	output(1) <= '0';
	output(0) <= '0';
end Primitive;