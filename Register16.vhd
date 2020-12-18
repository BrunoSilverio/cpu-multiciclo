LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Register16 IS PORT(
    D   			: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    RegWrite   : IN STD_LOGIC; 
    Clear   	: IN STD_LOGIC; 
    Clock 	   : IN STD_LOGIC; 
    Output   	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0):="0000000000000000"); 
END Register16;

ARCHITECTURE LogicFunction OF Register16 IS

BEGIN
    PROCESS(Clock, Clear, RegWrite)
    BEGIN
	 -- Só vai fazer a escrita caso o regwrite e o clock estiverem comk sinal
        IF Clear = '1' THEN
            Output <= "0000000000000000";
        ELSIF clock = '1' AND RegWrite = '1' THEN
                Output <= D;
        END IF;
    END PROCESS;
END LogicFunction;