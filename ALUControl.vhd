library ieee ;
use ieee.std_logic_1164.all;
use work.datatypes.all;

entity ALUControl is
	port (
		op 		: in std_logic_vector(5 downto 0);
		opalu 	: in std_logic_vector(1 downto 0);
		
		control 	: out std_logic_vector(2 downto 0)
	);
end ALUControl;

architecture Primitive of ALUControl is
begin
	process (op, opalu)
	begin
		case opalu is
			when "00" => -- operação lw/sw
				control <= "010"; -- add
			when "01" => -- operação branch
				control <= "110"; -- subtract
			when "10" => -- operação R-type
				case op is
					when "100000" =>
						control <= "010"; -- add
					when "100010" =>
						control <= "110"; -- subtract
					when "100100" =>
						control <= "000"; -- and
					when "100101" =>
						control <= "001"; -- or
					when "101010" =>
						control <= "111"; -- set on less than
					when others =>
						-- vish
				end case;
			when others =>
				-- vish
		end case;
	end process;
end Primitive;