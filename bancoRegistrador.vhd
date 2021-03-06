 LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY BancoRegistrador IS
PORT (
		Clock: IN STD_LOGIC;
		RegWrite: IN STD_LOGIC;
		readAdress1, readAdress2: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		writeAdress : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		writeData : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		readData1, readData2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		Ri, Rj, Rk, Rx						:OUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
END BancoRegistrador;

ARCHITECTURE behaviorBanco OF BancoRegistrador IS
	SIGNAL R0, R1, R2, R3, ROTHERS :STD_LOGIC_VECTOR(7 DOWNTO 0):= "00000000";
BEGIN
	PROCESS (Clock, RegWrite, readAdress1, readAdress2)
	BEGIN
	-- Neste modulo possiamos controle dos registradores usados para guardar dados, ele é senisivel ao sinal do clock e do regwrite
		IF RegWrite = '1' AND Clock = '1' THEN 
			CASE writeAdress IS
				WHEN "00" =>
					R0 <= writeData;
				WHEN "01" =>
					R1 <= writeData;
				WHEN "10" =>
					R2 <= writeData;
				WHEN "11" =>
					R3 <= writeData;
				WHEN OTHERS =>
					ROTHERS <= "00000000"; 
			END CASE;
		 ELSE
			CASE readAdress1 IS
				WHEN "00" =>
					readData1 <= R0;
				WHEN "01" =>
					readData1 <= R1;
				WHEN "10" =>
					readData1 <= R2;
				WHEN "11" =>
					readData1 <= R3;
				WHEN OTHERS =>
					ROTHERS <= "00000000"; 
			END CASE;
			CASE readAdress2 IS
				WHEN "00" =>
					readData2 <= R0;
				WHEN "01" =>
					readData2 <= R1;
				WHEN "10" =>
					readData2 <= R2;
				WHEN "11" =>
					readData2 <= R3;
				WHEN OTHERS =>
				ROTHERS <= "00000000"; 
			END CASE;
		END IF;
	END PROCESS;
	Ri <= R0;
	Rj <= R1;
	Rk <= R2;
	Rx <= R3;
END behaviorBanco;
