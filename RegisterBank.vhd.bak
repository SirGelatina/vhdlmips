library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.datatypes.all;

entity RegisterBank is
	port (
		read1in, read2in		: in std_logic_vector(4 downto 0);
		read1out, read2out 	: out word;
		
		writein					: in std_logic_vector(4 downto 0);
		writedata 				: in word;
		writereg					: in std_logic;
		
		clk						: in std_logic		
	);
end RegisterBank;

architecture Primitive of RegisterBank is
type registerArray is array (0 to 31) of word;
signal registers : registerArray;
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
end Primitive;