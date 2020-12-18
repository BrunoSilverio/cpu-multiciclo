LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY Mux2 IS
PORT (	    control: IN STD_LOGIC;
			input1, input2: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			clock: IN STD_LOGIC);
END Mux2;

ARCHITECTURE LogicFunction OF Mux2 IS
BEGIN
	PROCESS (control, clock)
	BEGIN
	
		IF clock = '1' 
		THEN
			IF control = '0'
			THEN
				output <= input1;
			ELSE
				output <= input2;
			END IF;
		END IF;
	END PROCESS;

END LogicFunction;