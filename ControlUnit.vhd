library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;
use work.datatypes.all;

entity ControlUnit is
	port (
		Op 				: in std_logic_vector(5 downto 0);
		clk				: in std_logic;
	
		WritePCCond 	: out std_logic;
		WritePC		 	: out std_logic;
		IorD			 	: out std_logic;
		ReadMem		 	: out std_logic;
		WriteMem		 	: out std_logic;
		MemtoReg		 	: out std_logic;
		WriteIR 			: out std_logic;
		
		OrigPC 		 	: out std_logic_vector(1 downto 0);
		OpALU 		 	: out std_logic_vector(1 downto 0);
		OrigBALU 		: out std_logic_vector(1 downto 0);
		OrigAALU			: out std_logic;
		WriteReg 		: out std_logic;
		RegDst 			: out std_logic;
		
		state				: out integer
	);
end ControlUnit;

architecture Primitive of ControlUnit is
	signal CurrentState : integer := STATE_instructionfetch;
begin
	state <= CurrentState;
	
	statemachine: process (clk, CurrentState, Op)
	begin
		if clk'EVENT and clk = '1' then
			WritePCCond <= '0';
			WritePC <= '0';
			IorD <= '0';
			ReadMem <= '0';
			WriteMem <= '0';
			MemtoReg <= '0';
			WriteIR <= '0';
			
			OrigPC <= "00";
			OpALU <= "00";
			OrigBALU <= "00";
			OrigAALU <= '0';
			WriteReg <= '0';
			RegDst <= '0';
			
			case CurrentState is
				when STATE_instructionfetch =>
					ReadMem <= '1';
					OrigAALU <= '0';
					OrigBALU <= "01";
					IorD <= '0';
					WriteIR <= '1';
					OpALU <= "00";
					WritePC <= '1';
					OrigPC <= "00";
					
					CurrentState <= STATE_registerfetch;
					
				when STATE_registerfetch =>
					OrigAALU <= '0';
					OrigBALU <= "11";
					OpALU <= "00";
					
					if Op = op_lw or Op = op_sw then
						CurrentState <= STATE_computeaddress;
					elsif Op = op_r_type then
						CurrentState <= STATE_execution;
					elsif Op = op_beq then
						CurrentState <= STATE_branchconclusion;
					elsif Op = op_jump then
						CurrentState <= STATE_jumpconclusion;
					else
						-- Ops! Problema!!
						
						CurrentState <= STATE_finished;
					end if;
					
				when STATE_computeaddress =>
					OrigAALU <= '1';
					OrigBALU <= "10";
					OpALU <= "00";
					
					if Op = op_lw then
						CurrentState <= STATE_memoryaccess_read;
					elsif Op = op_sw then
						CurrentState <= STATE_memoryaccess_write;
					else
						-- Problema!!
						
						CurrentState <= STATE_finished;
					end if;
				
				when STATE_memoryaccess_read =>
					ReadMem <= '1';
					IorD <= '1';
					
					CurrentState <= STATE_memreadfinish;
					
				when STATE_memreadfinish =>
					RegDst <= '0';
					WriteReg <= '1';
					MemtoReg <= '1';
					
					CurrentState <= STATE_instructionfetch;
					
				when STATE_memoryaccess_write =>
					WriteMem <= '1';
					IorD <= '1';
					
					CurrentState <= STATE_instructionfetch;
					
				when STATE_execution =>
					OrigAALU <= '1';
					OrigBALU <= "00";
					OpALU <= "10";
					
					CurrentState <= STATE_Rconclusion;
				
				when STATE_Rconclusion =>
					RegDst <= '1';
					WriteReg <= '1';
					MemtoReg <= '0';
					
					CurrentState <= STATE_instructionfetch;
					
				when STATE_branchconclusion =>
					OrigAALU <= '1';
					OrigBALU <= "00";
					OpALU <= "01";
					WritePCCond <= '1';
					OrigPC <= "01";
					
					CurrentState <= STATE_instructionfetch;
					
				when STATE_jumpconclusion =>
					WritePC <= '1';
					OrigPC <= "10";
					
					CurrentState <= STATE_instructionfetch;
				
				when STATE_finished =>
					-- Não fazer nada
				when others =>
					-- Não fazer nada aqui também
			end case;
		end if;
	end process;
end Primitive;
	