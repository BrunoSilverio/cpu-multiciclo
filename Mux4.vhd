LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY Mux4 IS
PORT (	control: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		input1, input2, input3, input4: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		output: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		clock: IN STD_LOGIC);
END Mux4;

ARCHITECTURE LogicFunction OF Mux4 IS
BEGIN
	PROCESS (control, clock)
	BEGIN
		IF clock = '1' 
		THEN
			CASE control IS
				WHEN "00" => output <= input1;
				WHEN "01" => output <= input2;
				WHEN "10" => output <= input3;
				WHEN "11" => output <= input4;
				WHEN others => output <= "00000000";
			END CASE;
		END IF;
	END PROCESS;

END LogicFunction;