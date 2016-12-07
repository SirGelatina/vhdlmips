library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.datatypes.all;

-- Registradores
--
-- || $zero | 0  ||   $t0   | 8     ||     $s0   | 16    ||     $t8   | 24    ||              
-- || $at   | 1  ||   $t1   | 9     ||     $s1   | 17    ||     $t9   | 25    || 
-- || $v0   | 2  ||	 $t2   | 10    ||     $s2   | 18    ||     $k0   | 26    || 
-- || $v1   | 3  ||   $t3   | 11    ||     $s3   | 19    ||     $k1   | 27    || 
-- || $a0   | 4  ||   $t4   | 12    ||     $s4   | 20    ||     $gp   | 28    || 
-- || $a1   | 5  ||   $t5   | 13    ||     $s5   | 21    ||     $sp   | 29    || 
-- || $a2   | 6  ||   $t6   | 14    ||     $s6   | 22    ||     $fp   | 30    || 
-- || $a3   | 7  ||   $t7   | 15    ||     $s7   | 23    ||     $ra   | 31    || 

entity RegisterBank is
	port (
		read1in, read2in		: in std_logic_vector(4 downto 0);
		read1out, read2out 	: out word;
		
		writein					: in std_logic_vector(4 downto 0);
		writedata 				: in word;
		writereg					: in std_logic;
		
		clk						: in std_logic;
			
		debug1out, debug2out 		: out word;
		debug3out, debug4out 		: out word
	);
end RegisterBank;

architecture Primitive of RegisterBank is
type registerArray is array (0 to 31) of word;
signal registers : registerArray := (
		8 => "00000000000000000000000000000010",
		others => (others=>'0')
	);
begin
	process (clk)
	begin
		if(clk'EVENT AND clk = '1') then
			read1out <= registers(to_integer(unsigned(read1in)));
			read2out <= registers(to_integer(unsigned(read2in)));
			if(writereg = '1') then
				registers(to_integer(unsigned(writein))) <= writedata;
			end if;
		end if;
	end process;
	
	debug1out <= registers(8);
	debug2out <= registers(9);
	debug3out <= registers(10);
	debug4out <= registers(11);
end Primitive;