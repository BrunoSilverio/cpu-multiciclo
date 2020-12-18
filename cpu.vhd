LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY CPU IS
PORT (
		Clock				:	IN STD_LOGIC;
		Ri, Rj, Rk, Rx		: 	OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END CPU;

ARCHITECTURE LogicFunction OF CPU IS
	COMPONENT Register8
		PORT(
		    D   		: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		    RegWrite    : IN STD_LOGIC; 
		    Clear 	    : IN STD_LOGIC; 
		    Clock 	    : IN STD_LOGIC; 
		    Output   	 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); 
	END COMPONENT;
	
	COMPONENT Register16
			PORT(
			 D   		 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 RegWrite : IN STD_LOGIC; 
			 Clear 	 : IN STD_LOGIC; 
			 Clock  	 : IN STD_LOGIC; 
			 Output   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT DataMemory
		PORT (
			Clock					: 		IN STD_LOGIC;
			InstructionNumber : 		IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			InstructionOut    : 		OUT STD_LOGIC_vECTOR(15 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT Mux4
		PORT (	
		    control                         : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			input1, input2, input3, input4  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			output                          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			clock                           : IN STD_LOGIC);
	END COMPONENT;
	
	COMPONENT Mux2
		PORT (
		    control         : IN STD_LOGIC;
			input1, input2  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			output          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			clock           : IN STD_LOGIC);
	END COMPONENT;
	
	COMPONENT Ula
		PORT (
         Clock	: 	IN 	STD_LOGIC;
			OP		:	IN		STD_LOGIC_VECTOR(1 DOWNTO 0);
			A		:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
			B		:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
			Res	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT UnidadeControl
		PORT (
            Clock																			: IN  STD_LOGIC;
            OpCode														        		: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
            PCWrite, RegWrite, RegAuxWrite, IRWrite, MemToReg				: OUT STD_LOGIC;
            AluSrcA, AluSrcB, AluControl 								        	: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
            Reset																			: IN  STD_LOGIC);
    END COMPONENT;
    
    COMPONENT BancoRegistrador
		PORT (		
    		Clock: IN STD_LOGIC;
    		RegWrite: IN STD_LOGIC;
    		readAdress1, readAdress2: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    		writeAdress : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    		writeData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    		readData1, readData2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			Ri, Rj, Rk, Rx						:OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
    END COMPONENT;
	
	-- Sinais de controle, que vem da unidade de controle
	SIGNAL RegWrite : STD_LOGIC;
	SIGNAL PCWrite	: STD_LOGIC := '1';
	SIGNAL MemToReg : STD_LOGIC;
	SIGNAL RegAuxWrite : STD_LOGIC;
	SIGNAL AluControl	: STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL AluSrcA : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL AluSrcB : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL IRWrite : STD_LOGIC;
	
	-- Instrucao, que está vindo do dataMemory
	SIGNAL Instruction : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL DataMemOut  : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	-- Saida dos registradores
	SIGNAL PCOut              : STD_LOGIC_VECTOR(7 DOWNTO 0):= "00000000";
	SIGNAL RegAuxOut          : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL RegAOut, RegBOut   : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	-- Saida ULA 
	SIGNAL ALUCarry, ALUZero, ALUOvf : STD_LOGIC;
	SIGNAL ALUOut                    : STD_LOGIC_VECTOR(7 DOWNTO 0):= "00000000";
	
	-- MUX Outputs
	SIGNAL MuxAOut, MuxBOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL MuxRegDataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	-- Registradores
	RegAux 		: Register8 PORT MAP(RegAOut, RegAuxWrite, '0', Clock, RegAuxOut);
	PC 			: Register8 PORT MAP(ALUOut, PCWrite, '0', Clock, PCOut);
	RegInst		: Register16 PORT MAP(DataMemOut ,IRWrite, '0', Clock, Instruction);

	--Mux
	MuxRegData 	: Mux2 PORT MAP(MemToReg, ALUOut, RegAuxOut, MuxRegDataOut, Clock);
	MuxUlaA 		: Mux4 PORT MAP(AluSrcA, RegAOut, RegAuxOut, "00000000", PCOut, MuxAOut, Clock);
	MuxUlaB		: Mux4 PORT MAP(AluSrcB, RegBOut, Instruction(7 DOWNTO 0), "00000001", "00000000", MuxBOut, Clock);
	
	-- Components
	BancoReg		: BancoRegistrador PORT MAP(Clock, RegWrite, Instruction(9 DOWNTO 8), Instruction(7 DOWNTO 6), Instruction(11 DOWNTO 10), MuxRegDataOut, RegAOut, RegBOut, Ri, Rj, Rk, Rx);
	DataMem	 	: DataMemory PORT MAP(Clock, PCOut, DataMemOut);
	Alu			: Ula PORT MAP(Clock, AluControl, MuxAOut, MuxBOut, ALUOut);
	ContrUnit 	: UnidadeControl PORT MAP(Clock, Instruction(15 downto 12), PCWrite, RegWrite, RegAuxWrite, IRWrite, MemToReg, AluSrcA, AluSrcB, AluControl, '0');
	
	
END LogicFunction;