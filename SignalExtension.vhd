library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;
use work.datatypes.all;

entity SignalExtension is
	port (
		sgnin 	: in std_logic_vector(15 downto 0);
		sgnout 	: out word
	);
end SignalExtension;

architecture Primitive of SignalExtension is
begin
	sgnout(15 downto 0) 	<= sgnin;
	sgnout(31 downto 16) <= (others => sgnin(15));
end Primitive;