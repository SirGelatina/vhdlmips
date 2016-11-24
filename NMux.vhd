library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;
use work.datatypes.all;


entity NMux is
	generic (
		controlWidth: integer
	);
	port (
		muxin : in matrix(0 to (2**controlWidth)-1);
		control : in std_logic_vector(controlWidth-1 downto 0);
		muxout : out word
	);
end NMux;

architecture Primitive of NMux is
	signal controlInteger : integer;
begin
	controlInteger <= to_integer(unsigned(control));
	muxout <= muxin(controlInteger);
	
end Primitive;