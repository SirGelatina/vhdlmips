library ieee ;
use ieee.std_logic_1164.all ;
use work.datatypes.all;

-- =======================================================
-- =																		=
-- = 	USP / Escola de Engenharia de São Carlos - 2016		=
-- =																		=
-- =  SEL0632 - Linguagens de Descrição de Hardware		=
-- = 		Prof. Maximiliam Luppe									=
-- =																		=
-- =======================================================
-- =																		=
-- =  Grupo:															=
-- =		Denilson A. Marques Junior		8504201				=
-- = 		Guilherme Andriotti Momesso	8910441				=
--	=		Rafael Shibana Fayan				8910285				=
--	=																		=
--	=======================================================

-- O processador de assembly MIPS aqui implementado tem como referência
-- o processador multiciclo da terceira edição do livro Organização e
-- Projeto de Computadores - A Interface Hardware/Software (Edição em
-- português), de PATTERSON, D. e HENNESSY, J.
-- 
-- Referências úteis:
-- pág. 228 - tabela verdade do controle da ALU
-- pág. 243 - caminho de dados completo
-- pág. 244 - ação dos sinais de controle
-- pág. 256 - máquina de estados da unidade de controle

entity Processor is
	port (
		clk, clr : in std_logic;
		
		-- As saídas debugX existem apenas para propósitos de 
		-- debug, e contém o valor de $t0, $t1, $t2 e $t3,
		-- respectivamente.
		debug1, debug2, debug3, debug4 : out word;
		
		-- debug5 e 6 podem ser usados de qualquer outra maneira
		debug5, debug6 : out word;
		
		-- Para verificar o estado
		debugstate : out integer
	) ;
end Processor ;

architecture LogicFunction of Processor is

	signal always1 : std_logic;

	-- Registers
	
	component Register32
		port (
			d : in word;
			enable : in std_logic;
			clk, clr : in std_logic ;
			q : out word
		) ;
	end component;
	
	-- Instruction Register (IR)
	
	signal IR_out : word;
	
	-- Register A (REGA)
	
	signal REGA_out : word;
	
	-- Register B (REGB)
	
	signal REGB_out : word;
	
	-- Memory Data Register (MDR)
	
	signal MDR_out : word;
	
	-- ALU output (ALUO)
	
	signal ALUO_out : word;
	
	-- PC Register (PC)
	
	signal PC_and_or : std_logic;
	signal PC_out : word;
	
	component NMux is
		generic (
			controlWidth: integer
		);
		port (
			muxin : in matrix(0 to (2**controlWidth)-1);
			control : in std_logic_vector(controlWidth-1 downto 0);
			muxout : out word
		);
	end component;
	
	-- Convenção de nomeação de multiplexadores:
	-- Multiplexadores mais à esquerda tem número menor
	-- Para multiplexadores na mesma coluna, o de cima de número menor
	-- Ver fig. 5.28 do livro
	
	-- Mux 0 (MUX0):
	-- MUX0 tem um sinal de controle do tipo std_logic_vector de 1 bit,
	-- no entanto o sinal que corresponde ao controle (IorD) é do tipo
	-- std_logic. Por isso precisamos de um sinal intermediario MUX0_control
	
	signal MUX0_in : matrix(0 to 1);
	signal MUX0_control : std_logic_vector(0 downto 0);
	signal MUX0_out : word;
	
	-- Mux 1 (MUX1):
	-- MUX1 precisa de um sinal de controle intermediário pela mesma
	-- razão descrita acima. Seu controle é o sinal (RegDst)

	signal MUX1_in : matrix(0 to 1);
	signal MUX1_control : std_logic_vector(0 downto 0);
	signal MUX1_out : word;
	
	-- Mux 2 (MUX2):
	-- Idem. Controle: sinal (MemtoReg)
	
	signal MUX2_in : matrix(0 to 1);
	signal MUX2_control : std_logic_vector(0 downto 0);
	signal MUX2_out : word;
	
	-- Mux 3 (MUX3):
	-- Idem. Controle: sinal (OrigAALU)
	
	signal MUX3_in : matrix(0 to 1);
	signal MUX3_control : std_logic_vector(0 downto 0);
	signal MUX3_out : word;
	
	-- Mux 4 (MUX4):
	-- Não é necessário um sinal intermediário de controle pois seu sinal
	-- (OrigBALU) já é um std_logic_vector
	
	signal MUX4_in : matrix(0 to 3);
	signal MUX4_out : word;
	
	-- Mux 5 (MUX5):
	-- Também não é necessário um sinal intermediário. Controle é
	-- dado pelo sinal (OrigPC)
	
	signal MUX5_in : matrix(0 to 3);
	signal MUX5_out : word;
	
	component RegisterBank is
		port (
			read1in, read2in, writein	: in std_logic_vector(4 downto 0);
			writedata 						: in word;
			read1out, read2out 			: out word;
			
			clk								: in std_logic;
			
			writereg							: in std_logic;
			
			-- Para propósito de debug acrescentamos essas saídas ao
			-- registrador que recebem $t0, $t1, $t2 e $t3 respectivamente.
			debug1out, debug2out 		: out word;
			debug3out, debug4out 		: out word
		);
	end component;
	
	-- Register Bank (RB)
	
	signal RB_read1out : word;
	signal RB_read2out : word;
	
	component ControlUnit is
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
	end component;
	
	-- Control Unit (CU)
		
	signal CU_WritePCCond 	: std_logic;
	signal CU_WritePC		 	: std_logic;
	signal CU_IorD			 	: std_logic;
	signal CU_ReadMem		 	: std_logic;
	signal CU_WriteMem		 	: std_logic;
	signal CU_MemtoReg		 	: std_logic;
	signal CU_WriteIR 			: std_logic;
	
	signal CU_OrigPC 		 	: std_logic_vector(1 downto 0);
	signal CU_OpALU 		 	: std_logic_vector(1 downto 0);
	signal CU_OrigBALU 		: std_logic_vector(1 downto 0);
	signal CU_OrigAALU			: std_logic;
	signal CU_WriteReg 		: std_logic;
	signal CU_RegDst 			: std_logic;
	
	component SignalExtension is
		port (
			sgnin 	: in std_logic_vector(15 downto 0);
			sgnout 	: out word
		);
	end component;
	
	-- Sinal Extension (SE)

	signal SE_out : word;
	
	component Shift2Left is
		port (
			input 	: in word;
			output 	: out word
		);
	end component;
	
	-- Convenção de nomeação para Shift2Left:
	-- A mesma convenção usada para os multiplexadores
	
	-- Shift 2 Left 0 (S2L0)
	
	signal S2L0_out : word;
	
	-- Shift 2 Left 1 (s2L1)
	-- Foi necessário um sinal de entrada porque o sinal que S2L1 recebe
	-- um sinal de apenas 26 bits na entrada, mas a unidade funcional de
	-- left shift foi projetada para trabalhar com 32 bits
	
	signal S2L1_in : word;
	signal S2L1_out : word;
	
	component ALU is
		port (
			op1, op2	: in word;
			control 	: in std_logic_Vector(2 downto 0);
			zero		: out std_logic;
			result 	: out	word
		);
	end component;
	
	-- Arithmetic Logic Unit (ALU)
	
	signal ALU_zero : std_logic;
	signal ALU_result : word;
	
	component ALUControl is
		port (
			op 		: in std_logic_vector(5 downto 0);
			opalu 	: in std_logic_vector(1 downto 0);
			control 	: out std_logic_vector(2 downto 0)
		);
	end component;
	
	-- ALU Control (ALUC)
	
	signal ALUC_control : std_logic_vector(2 downto 0);
	
	component Memory
		PORT
		(
			address	: in std_logic_vector (9 downto 0);
			clken		: in std_logic  := '1';
			clock		: in std_logic  := '1';
			data		: in std_logic_vector (31 downto 0);
			
			rden		: in std_logic;
			wren		: in std_logic;
			
			q		: out std_logic_vector (31 downto 0)
		);
	end component;
	
	-- Memory (MEM)
	
	signal MEM_data : word;
	signal MEM_writeenable : std_logic;
	signal MEM_readenable : std_logic;
	
begin
	always1 <= '1';

	--	Control Unit (CU)

	fu_controlunit: ControlUnit port map(
		Op => IR_out(5 downto 0),
		
		clk => clk,
		
		WritePCCond => CU_WritePCCond,
		WritePC => CU_WritePC,
		IorD => CU_IorD,
		ReadMem => CU_ReadMem,
		WriteMem => CU_WriteMem,
		MemtoReg => CU_MemtoReg,
		WriteIR => CU_WriteIR,
		
		OrigPC => CU_OrigPC,
		OpALU => CU_OpAlu,
		OrigBALU => CU_OrigBALU,
		OrigAALU => CU_OrigAALU,
		WriteReg => CU_WriteReg,
		RegDst => CU_RegDst,
		
		state => debugstate
	);
	
	-- Instruction Register (IR)
	
	fu_instructionregister: Register32 port map(
		d => MEM_data,
		clk => clk,
		clr => clr,
		
		q => IR_out,
		enable => CU_WriteIR
	);
	
	-- Register A (REGA)
	
	fu_registera: Register32 port map(
		d => RB_read1out,
		clk => clk,
		clr => clr,
		
		q => REGA_out,
		enable => always1
	);
	
	-- Register B (REGB)
		
	fu_registerb: Register32 port map(
		d => RB_read2out,
		clk => clk,
		clr => clr,
		
		q => REGB_out,
		enable => always1
	);
	
	-- Memory Data Register (MDR)
	
	fu_mdr: Register32 port map(
		d => MEM_data,
		clk => clk,
		clr => clr,
		
		q => MDR_out,
		enable => always1
	);
	
	-- ALUOut (ALUO)
	
	fu_aluout: Register32 port map(
		d => ALU_result,
		clk => clk,
		clr => clr,
		
		q => ALUO_out,
		enable => always1
	);
	
	-- Program Counter Register (PC)
	
	PC_and_or <= (CU_WritePCCond and ALU_zero) or CU_WritePC;
	
	fu_pc: Register32 port map(
		d => MUX5_out,
		clk => clk,
		clr => clr,
		
		q => PC_out,
		enable => PC_and_or
	);
	
	-- MUX0
	
	MUX0_in(0) <= PC_out;
	MUX0_in(1) <= ALUO_out;
	
	MUX0_control <= (0 => CU_IorD);
	fu_mux0: NMUx generic map(controlWidth=>1)
		port map(
			muxin => MUX0_in,
			control => MUX0_control,
			muxout => MUX0_out
		);
		
	-- MUX1
	
	MUX1_in(0)(31 downto 5) <= (others => '0');
	MUX1_in(0)(4 downto 0) <= IR_out(20 downto 16);
	
	MUX1_in(1)(31 downto 5) <= (others => '0');
	MUX1_in(1)(4 downto 0) <= IR_out(15 downto 11);
	
	MUX1_control <= (0 => CU_RegDst);
	fu_mux1: NMUx generic map(controlWidth=>1)
		port map(
			muxin => MUX1_in,
			control => MUX1_control,
			muxout => MUX1_out
		);
		
	-- MUX2
	
	MUX2_in(0) <= ALUO_out;
	MUX2_in(1) <= MDR_out;
	
	MUX2_control <= (0 => CU_MemtoReg);
	fu_mux2: NMUx generic map(controlWidth=>1)
		port map(
			muxin => MUX2_in,
			control => MUX2_control,
			muxout => MUX2_out
		);
		
	-- MUX3
	
	MUX3_in(0) <= PC_out;
	MUX3_in(1) <= REGA_out;
	
	MUX3_control <= (0 => CU_OrigAALU);
	fu_mux3: NMUx generic map(controlWidth=>1)
		port map(
			muxin => MUX3_in,
			control => MUX3_control,
			muxout => MUX3_out
		);
		
	-- MUX4
	
	MUX4_in(0) <= REGB_out;
	MUX4_in(1) <= "00000000000000000000000000000100";
	MUX4_in(2) <= SE_out;
	MUX4_in(3) <= S2L0_out;
	
	fu_mux4: NMUx generic map(controlWidth=>2)
		port map(
			muxin => MUX4_in,
			control => CU_OrigBALU,
			muxout => MUX4_out
		);
		
	-- MUX5
	
	MUX5_in(0) <= ALU_result;
	MUX5_in(1) <= ALUO_out;
	MUX5_in(2) <= S2L1_out;
	-- A entrada 3 não é usada pelo multiplexador
	MUX5_in(3) <= (others => '0');
	
	fu_mux5: NMUx generic map(controlWidth=>2)
		port map(
			muxin => MUX5_in,
			control => CU_OrigPC,
			muxout => MUX5_out
		);
		
	-- Register Bank (RB)
		
	fu_registerbank: RegisterBank port map (
		read1in => IR_out(25 downto 21),
		read2in => IR_out(20 downto 16),
		writein => MUX1_out(4 downto 0),
		
		writedata => MUX2_out,
		
		read1out => RB_read1out,
		read2out => RB_read2out,
		
		clk => clk,
		
		writereg => CU_WriteReg,
		
		debug1out => debug1,
		debug2out => debug2,
		debug3out => debug3,
		debug4out => debug4
	);
		
	-- Signal Extension (SE)

	fu_signalextension: SignalExtension port map (
		sgnin => IR_out(15 downto 0),
		
		sgnout => SE_out
	);
	
	-- Shift 2 Left 0 (S2L0)
	
	fu_shift2left0: Shift2Left port map (
		input => SE_out,
		
		output => S2L0_out
	);
	
	-- Shift 2 Left 1 (S2L1)
	
	S2L1_in(25 downto 0) <= IR_out(25 downto 0);
	S2L1_in(31 downto 26) <= (others => '0');
	
	S2L1_out(31 downto 28) <= PC_out(31 downto 28);
	
	fu_shift2left1: Shift2Left port map (
		input => S2L1_in,
		
		output(31 downto 28) => open,
		output(27 downto 0) => S2L1_out(27 downto 0)
	);
	
	-- Arithmetic Logic Unit (ALU)
	
	fu_alu: ALU port map (
		op1 => MUX3_out,
		op2 => MUX4_out,
		
		control => ALUC_control,
		
		zero => ALU_zero,
		result => ALU_result
	);
	
	-- ALU Control (ALUC)
	
	fu_alucontrol : ALUControl port map (
		op => IR_out(5 downto 0),
		opalu => CU_OpALU,
		
		control => ALUC_control
	);
	
	-- Memory (MEM)
	
	MEM_readenable <= CU_ReadMem;
	MEM_writeenable <= CU_WriteMem and (not CU_ReadMem);
	
	fu_memory : Memory port map (
		address => MUX0_out(9 downto 0),
		clken => always1,
		clock => clk,
		
		data => REGB_out,
		
		rden => MEM_readenable,
		wren => MEM_writeenable,
		
		q => MEM_data
	);
	
	debug5 <= MEM_data;
	
	debug6(0) <= CU_WritePCCond;
	debug6(1) <= CU_WritePC;
	debug6(2) <= CU_IorD;
	debug6(3) <= CU_ReadMem;
	debug6(4) <= CU_WriteMem;
	debug6(5) <= CU_MemtoReg;
	debug6(6) <= CU_WriteIR;
	
	debug6(8 downto 7) <= CU_OrigPC;
	debug6(10 downto 9) <= CU_OpALU;
	debug6(12 downto 11) <= CU_OrigBALU;
	debug6(13) <= CU_OrigAALU;
	debug6(14) <= CU_WriteReg;
	debug6(15) <= CU_RegDst;

	
END LogicFunction ;