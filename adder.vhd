LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY adder IS
	PORT(	Cin		:	IN		STD_LOGIC;
			A,B		:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
			S			:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			Cout		:	OUT	STD_LOGIC;
			Overflow	:	OUT	STD_LOGIC);
END adder;
ARCHITECTURE LogicFunction OF adder IS
	SIGNAL SUM : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL RES : STD_LOGIC_VECTOR(7 DOWNTO 0);
	COMPONENT fulladd
		PORT(	Cin, A, B :	IN		STD_LOGIC;
				S,	Cout	 :	OUT	STD_LOGIC);
	END COMPONENT;
BEGIN
	stage0:	fulladd PORT MAP (Cin, A(0), B(0), RES(0), SUM(0));
	stage1:	fulladd PORT MAP (SUM(0), A(1), B(1), RES(1), SUM(1));
	stage2:	fulladd PORT MAP (SUM(1), A(2), B(2), RES(2), SUM(2));
	stage3:	fulladd PORT MAP (SUM(2), A(3), B(3), RES(3), SUM(3));
	stage4:	fulladd PORT MAP (SUM(3), A(4), B(4), RES(4), SUM(4));
	stage5:	fulladd PORT MAP (SUM(4), A(5), B(5), RES(5), SUM(5));
	stage6:	fulladd PORT MAP (SUM(5), A(6), B(6), RES(6), SUM(6));
	stage7:	fulladd PORT MAP (SUM(6), A(7), B(7), RES(7), SUM(7));
	Overflow	<= SUM(7) XOR A(7) XOR B(7) XOR RES(7);
	Cout		<= SUM(7);
	S			<=	RES;
END LogicFunction;