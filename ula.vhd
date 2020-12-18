LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY ULA IS
	PORT(	
			Clock	: 	IN 	STD_LOGIC;
			OP		:	IN		STD_LOGIC_VECTOR(1 DOWNTO 0);
			A		:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
			B		:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
			Res	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
END ULA;

ARCHITECTURE LogicFunction OF ULA IS
BEGIN
	
	PROCESS (Clock, OP, A, B)
	BEGIN
		IF Clock = '1' THEN
			CASE OP IS
			WHEN "00" => 
				Res <= A AND B;
				
			WHEN "01" => 
				Res <= A OR B;
				
			WHEN "10" => 
				Res <= A + B;
				
			WHEN "11" => 
				Res <= A - B;
				
			WHEN others =>
				Res	<= "00000000";
			END CASE;
		END IF;
	END PROCESS;
	
END LogicFunction;