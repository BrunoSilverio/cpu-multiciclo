LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY DataMemory IS
PORT (
			Clock					: 		IN STD_LOGIC;
			InstructionNumber : 		IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			InstructionOut 	: 		OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END DataMemory;

ARCHITECTURE dataArchitecture OF DataMemory IS
			TYPE rom_array IS ARRAY (0 TO 5) OF STD_LOGIC_VECTOR (15 DOWNTO 0);
			CONSTANT rom: rom_array := ( 
			"0101000000000001", "0000010000000000", "1000000001000000", "0100101001000000", "0111110000000001", "0000000000000000");
BEGIN
	PROCESS (Clock)
	BEGIN
	-- Aqui é possivel ver qual instrucao que precisa ser buscada e pegar do array de instrucoes
		IF clock = '1' THEN
			InstructionOut <= rom(to_integer(unsigned(InstructionNumber)));
		END IF;
	END PROCESS;
END dataArchitecture;