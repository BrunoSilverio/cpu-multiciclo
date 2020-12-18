LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY UnidadeControl IS
PORT (
        Clock																			: IN  STD_LOGIC;
        OpCode														     			 	: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        PCWrite, RegWrite, RegAuxWrite, IRWrite, MemToReg   			: OUT STD_LOGIC;
        AluSrcA, AluSrcB, AluControl 											: OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        Reset																			: IN  STD_LOGIC
		);
END UnidadeControl;

ARCHITECTURE LogicFunction OF UnidadeControl IS
	TYPE STATE IS (fetch, decode, exec, complete, mov, mov_i, exec_i);
	SIGNAL NextStage : STATE := fetch;
BEGIN
	PROCESS(Clock, OpCode, NextStage, Reset)
	BEGIN
		IF Reset = '1' THEN
			NextStage <= fetch;
		ELSIF rising_edge(Clock) THEN
			CASE NextStage IS
				WHEN fetch =>
					PCWrite     <= '1';
					IRWrite     <= '1';
					MemToReg    <= '0';
					AluControl  <= "10";
               AluSrcA     <= "11";
					AluSrcB     <= "10";
					RegWrite    <= '0';
					RegAuxWrite <= '0';
					
					--Next State
					NextStage <= decode;
					
				WHEN decode =>
					PCWrite     <= '0';
					IRWrite     <= '0';
					MemToReg    <= '0';
					AluControl  <= "00";
					AluSrcA     <= "00";
					AluSrcB     <= "00";
					RegWrite    <= '0';
					RegAuxWrite <= '1';

					--Next State
					IF OpCode = "0000" 		THEN NextStage <= mov;
					ELSIF OpCode = "0001" 	THEN NextStage <= mov_i;
					ELSIF OpCode(0) = '0' 	THEN NextStage <= exec;
					ELSIF OpCode(0) = '1' 	THEN NextStage <= exec_i;
					END IF;
                
                WHEN exec =>
					PCWrite <= '0';
					IRWrite <= '0';
					MemToReg <= '0';
					AluControl <= OpCode(2 DOWNTO 1);
					AluSrcA <= "00";
					AluSrcB <= "00";
					RegWrite <= '0';
					RegAuxWrite <= '0';			
					
					--Next State
					NextStage <= complete;
					
				WHEN exec_i =>
					PCWrite <= '0';
					IRWrite <= '0';
					MemToReg <= '0';
					AluControl <= OpCode(2 DOWNTO 1);
					AluSrcA <= "00";
					AluSrcB <= "01";
					RegWrite <= '0';
					RegAuxWrite <= '0';
					
					NextStage <= complete;    

				WHEN mov => 
					PCWrite <= '0';
					IRWrite <= '0';
					MemToReg <= '1';
					AluControl <= "00";
					AluSrcA <= "00";
					AluSrcB <= "00";
					RegWrite <= '1';
					RegAuxWrite <= '0';
	
					
					--Next State
					NextStage <= fetch;

				WHEN mov_i =>
					PCWrite <= '0';
					IRWrite <= '0';
					RegWrite <= '0';
					AluControl <= "10";
					AluSrcA <= "10";
					AluSrcB <= "01";
					MemToReg <= '0';
					RegAuxWrite <= '0';
					
					--Next State
					NextStage <= complete;
					
				
				WHEN complete =>
                    PCWrite <= '0';
                    IRWrite <= '0';
                    MemToReg <= '0';
                    AluControl <= "00";
                    AluSrcA <= "00";
                    AluSrcB <= "00";
                    RegWrite <= '1';
                    RegAuxWrite <= '0';
					
					NextStage <= fetch;
			END CASE;	 
		END IF;
	END PROCESS;
	
END LogicFunction;