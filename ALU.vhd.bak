-- zero ainda está faltando.
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;
use work.datatypes.all;

entity ALU is
	port (
		op1		: in	word;
		op2 		: in	word;
		control	: in	std_logic_vector(2 downto 0);
				
		zero		: out bit;
		result 	: out word
	);
end ALU;
	

architecture Primitive of ALU is
begin
	process (op1, op2, control)
	begin
		case control is
			when "000" =>
				result <= op1 AND op2;
			when "001" =>
				result <= op1 OR op2;
			when "010" =>
				result <= word(signed(op1) + signed(op2)); -- considerei que os valores possuem sinal			
			when "110" =>
				result <= word(signed(op1) - signed(op2)); -- caso contrário, trocar por unsigned()
			when "111" =>
				if (signed(op1) < signed(op2)) then
					result <= (word'high downto 1 => '0') & '1';
				else
					result <= (word'high downto 1 => '0') & '0';
				end if;
			when others =>
				-- vish
		end case;
	end process;
end Primitive;