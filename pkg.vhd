library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

package datatypes is
	type matrix is array(natural range <>) of std_logic_vector(31 downto 0);
	subtype word is std_logic_vector(31 downto 0);
end package datatypes;