LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Register8 IS PORT(
    D   		: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    RegWrite    : IN STD_LOGIC; 
    Clear 	    : IN STD_LOGIC; 
    Clock 	    : IN STD_LOGIC; 
    Output   	 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) :="00000000"); 
END Register8;

ARCHITECTURE LogicFunction OF Register8 IS

BEGIN
    PROCESS(Clock, Clear, RegWrite,D)
    BEGIN
	 -- Só vai salvar o valor caso o clock e regwrite estiverem com valor
        IF Clear = '1' THEN
            Output <= "00000000";
        ELSIF clock = '1' AND RegWrite = '1' THEN
                Output <= D;
        END IF;
    END PROCESS;
END LogicFunction;