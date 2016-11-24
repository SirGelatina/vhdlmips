library ieee ;
use ieee.std_logic_1164.all ;
use work.datatypes.all;

entity Processor is
	PORT (
		clk, clr : IN STD_LOGIC
	) ;
END Processor ;

ARCHITECTURE LogicFunction OF Processor IS

	signal always1 : std_logic;

	-- Registers
	
	component Register32
		port (
			d : word;
			enable : in std_logic;
			clk, clr : in std_logic ;
			q : word
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
			
			writereg							: in std_logic
		);
	end component;
	
	-- Register Bank (RB)
	
	signal RB_read1out : word;
	signal RB_read2out : word;
	
	component ControlUnit is
		port (
			Op 				: in std_logic_vector(5 downto 0);
		
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
			RegDst 			: out std_logic
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
	------------------------------------------------------- FAZER OBSERVAÇÃO AQUI
	
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
	
	component Memory is
		port (
			readmem		: in std_logic;
			writemem 	: in std_logic;
			
			addr			: in word;
			writedata	: in word;
			data			: out word
		);
	end component;
	
	-- Memory (MEM)
	
	signal MEM_data : word;
	
begin
	always1 <= '1';

	--	Control Unit (CU)

	fu_controlunit: ControlUnit port map(
		Op => IR_out(5 downto 0),
		
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
		RegDst => CU_RegDst
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
		
		writereg => CU_WriteReg
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
	
	S2L1_out(31 downto 28) <= PC_out(31 downto 28);
	
	fu_shift2left1: Shift2Left port map (
		input => S2L1_in,
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
	
	fu_memory: Memory port map (
		addr => MUX0_out,
		writedata => REGB_out,
		
		readmem => CU_ReadMem,
		writemem => CU_WriteMem,
		
		data => MEM_data
	);
	
	
--	a0 <= not a1;
--	f <= a0;
--	dbg <= a1;
--	test: RegisterNUnit
--		generic map(n => 32)
--		port map(a0, clk, clr, a1);
----	f <= (x1 AND NOT x2) OR (NOT x1 AND x2);
--
--	i0 <= "0";
--	i1 <= "1";
--	
--	inarr(0) <= (others=>'1');
--	inarr(1) <= (others=>'0');
--	
--	c0 <= (0 => clk, others => '0');
--	
--	test2: NMux
--		generic map(
--			controlWidth => 1
--		)
--		port map(
--			muxin => inarr,
--			control => c0,
--			muxout(0 downto 0) => t
--		);
--		
--		
			
END LogicFunction ;