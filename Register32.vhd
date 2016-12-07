library ieee ;
use ieee.std_logic_1164.all ;
use work.datatypes.all ;

entity Register32 is
	port (
		d : in word;
		enable : in std_logic;
		clk, clr : in std_logic ;
		q : out word := (others => '0')
	) ;
end Register32 ;

architecture DFF of Register32 is
begin
	process (clk, clr)
	begin
		if clr = '0' then
			q <= (others => '0');
		elsif clk'EVENT and clk = '1' then
			q <= d;
		end if;
	end process;
end DFF ;