LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fulladd IS
	PORT(	Cin, A, B :	IN		STD_LOGIC;
			s,	Cout 	 :	OUT	STD_LOGIC);
END fulladd;
ARCHITECTURE LogicFunction OF fulladd IS
BEGIN
	s	<= A XOR B XOR Cin;
	Cout	<= (A AND B) OR (Cin AND A) OR (Cin AND B);
END LogicFunction;