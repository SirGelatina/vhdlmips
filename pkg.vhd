library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

package datatypes is
	type matrix is array(natural range <>) of std_logic_vector(31 downto 0);
	subtype word is std_logic_vector(31 downto 0);
	
	constant STATE_instructionfetch : integer := 0;
	constant STATE_registerfetch : integer := 1;
	constant STATE_computeaddress : integer := 2;
	constant STATE_memoryaccess_read : integer := 3;
	constant STATE_memreadfinish : integer := 4;
	constant STATE_memoryaccess_write : integer := 5;
	constant STATE_execution : integer := 6;
	constant STATE_Rconclusion : integer := 7;
	constant STATE_branchconclusion : integer := 8;
	constant STATE_jumpconclusion : integer := 9;
	constant STATE_finished : integer := 10;
	
	constant op_r_type : std_logic_vector(5 downto 0) := "000000";
	constant op_jump : std_logic_vector(5 downto 0) := "000010";
	constant op_beq : std_logic_vector(5 downto 0) := "000100";
	constant op_lw : std_logic_vector(5 downto 0) := "100011";
	constant op_sw : std_logic_vector(5 downto 0) := "101011";
end package datatypes;