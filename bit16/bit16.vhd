--OR ENTITY
library IEEE;
use ieee.std_logic_1164.all;
ENTITY orGate IS
    PORT( a, b: in std_logic;
        Res: out std_logic);
END orGate;

ARCHITECTURE Structural OF orGate IS
BEGIN
    Res <= a OR b;
END Structural;

--AND ENTITY
library IEEE;
use ieee.std_logic_1164.all;
ENTITY andGate IS
    PORT( a, b: in std_logic;
        Res: out std_logic);
END andGate;

ARCHITECTURE Structural OF andGate IS
BEGIN
    Res <= a AND b;
END Structural;

--ADD ENTITY
library IEEE;
use ieee.std_logic_1164.all;
ENTITY add IS
PORT(   CarryIn, a, b : in std_logic;
        Sum, CarryOut     : out std_logic);
END add;

ARCHITECTURE Structural OF add IS
BEGIN
    Sum <= (a AND (NOT b) AND (NOT CarryIn)) OR ((NOT a) AND b AND (NOT CarryIn)) OR ((NOT a) AND (NOT b) AND CarryIn) OR (a AND b AND CarryIn);
    CarryOut <=(a AND b) OR (CarryIn AND a) OR (CarryIn AND b);
END Structural;

--A INVERTER
library IEEE;
use ieee.std_logic_1164.all;
ENTITY notA IS
    PORT( a: in std_logic;
        Res: out std_logic);
END notA;

ARCHITECTURE Structural OF notA IS
BEGIN
    Res <= NOT a;
END Structural;

--B INVERTER
library IEEE;
use ieee.std_logic_1164.all;
ENTITY notB IS
    PORT( b: in std_logic;
        Res: out std_logic);
END notB;

ARCHITECTURE Structural OF notB IS
BEGIN
   Res <= NOT b;
END Structural;

--SUB ENTITY
library IEEE;
use ieee.std_logic_1164.all;
ENTITY sub IS
	PORT( b, notb, Binvert : IN STD_LOGIC;
			Res : OUT STD_LOGIC);
END sub;

ARCHITECTURE Structural OF sub IS
BEGIN
	WITH Binvert SELECT
		Res <= b WHEN '0',
				notb WHEN OTHERS;
END Structural;

--NAND / NOR ENTITY
library IEEE;
use ieee.std_logic_1164.all;
ENTITY nandor IS
	PORT( a, nota, Ainvert : IN STD_LOGIC;
			Res : OUT STD_LOGIC);
END nandor;

ARCHITECTURE Structural OF nandor IS
BEGIN
	WITH Ainvert SELECT
		Res <= a WHEN '0',
				nota WHEN OTHERS;
END Structural;

--XOR ENTITY
library IEEE;
use ieee.std_logic_1164.all;
ENTITY xorGate IS
    PORT( a, b: in std_logic;
        Res: out std_logic);
END xorGate;

ARCHITECTURE Structural OF xorGate IS
BEGIN
    Res <= a XOR b;
END Structural;

--MULTIPLEXER 4-TO-1
library IEEE;
use ieee.std_logic_1164.all;
ENTITY mux4to1 IS
	PORT (case1, case2, case3, case4 : IN STD_LOGIC;
			Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			Result : OUT STD_LOGIC);
END mux4to1;

ARCHITECTURE Structural OF mux4to1 IS
BEGIN
	WITH Operation SELECT
		Result <= case1 WHEN "00",
						case2 WHEN "01", 
						case3 WHEN "10",
						case4 WHEN OTHERS;
END Structural;

--1BIT ALU
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
ENTITY bit1 IS
PORT( a, b, Ainvert, Binvert, CarryIn : IN STD_LOGIC;
		Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		CarryOut, Result : OUT STD_LOGIC);
END bit1;


ARCHITECTURE Structural OF bit1 IS
	COMPONENT notA IS
    PORT( a: in std_logic;
        Res: out std_logic);
	END COMPONENT;
	
	COMPONENT nandor IS
	PORT( a, nota, Ainvert : IN STD_LOGIC;
			Res : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT notB IS
    PORT( b: in std_logic;
        Res: out std_logic);
	END COMPONENT;
	
	COMPONENT sub IS
	PORT( b, notb, Binvert : IN STD_LOGIC;
			Res : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT andGate IS
    PORT( a, b: in std_logic;
        Res: out std_logic);
	END COMPONENT;
	
	COMPONENT orGate IS
    PORT( a, b: in std_logic;
        Res: out std_logic);
	END COMPONENT;

	COMPONENT add IS
	PORT(   CarryIn, a, b : in std_logic;
        Sum, CarryOut     : out std_logic);
	END COMPONENT;
	
	COMPONENT xorGate IS
    PORT( a, b: in std_logic;
        Res: out std_logic);
	END COMPONENT;
	
	COMPONENT mux4to1 IS
	PORT (case1, case2, case3, case4 : IN STD_LOGIC;
			Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			Result : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL oros : STD_LOGIC_VECTOR(1 TO 8); 
	
BEGIN
	I0: notA PORT MAP (a, oros(1));
	I1: nandor PORT MAP (a, oros(1), Ainvert, oros(2));
	I2: notB PORT MAP (b, oros(3));
	I3: sub PORT MAP (b, oros(3), Binvert, oros(4));
	I4: andGate PORT MAP (oros(2), oros(4), oros(5));
	I5: orGate PORT MAP (oros(2), oros(4), oros(6));
	I6: ADD PORT MAP (CarryIn, oros(2), oros(4), oros(7), CarryOut);
	I7: xorGate PORT MAP (oros(2), oros(4), oros(8));
	I8: mux4to1 PORT MAP (oros(5), oros(6), oros(7), oros(8), Operation, Result);
END Structural;

--CONTROL CIRCUIT ENTITY
LIBRARY  ieee;
USE ieee.std_logic_1164.all;
ENTITY cc IS
	PORT ( opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Ainvert, Binvert, CarryIn : OUT STD_LOGIC; 
			Operation : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END cc;

ARCHITECTURE Structural OF cc IS
BEGIN
	PROCESS (opcode) IS
	BEGIN
		CASE opcode IS
			--AND CASE
			WHEN "000" => 
				Operation <= "00";
				Ainvert <= '0';
				Binvert <= '0';
				CarryIn <= '0';
			--OR CASE
			WHEN "001" => 
				Operation <= "01";
				Ainvert <= '0';
				Binvert <= '0';
				CarryIn <= '0';
			--ADD CASE
			WHEN "010" => 
				Operation <= "10";
				Ainvert <= '0';
				Binvert <= '0';
				CarryIn <= '0';
			--SUB CASE
			WHEN "011" => 
				Operation <= "10";
				Ainvert <= '0';
				Binvert <= '1';
				CarryIn <= '1';
			--NOR CASE
			WHEN "100" => 
				Operation <= "00";
				Ainvert <= '1';
				Binvert <= '1';
				CarryIn <= '0';
			--NAND CASE
			WHEN "101" => 
				Operation <= "01";
				Ainvert <= '1';
				Binvert <= '1';
				CarryIn <= '0';
			--XOR CASE
			WHEN "110" => 
				Operation <= "11";
				Ainvert <= '0';
				Binvert <= '0';
				CarryIn <= '0';
			--IRRELEVANT CASES
			WHEN OTHERS => 
				Operation <= "00";
				Ainvert <= '0';
				Binvert <= '0';
				CarryIn <= '0';
		END CASE;
	END PROCESS;
END Structural;

--OVERFLOW CHECKER
LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY ofCheck IS
	PORT ( Cn_1, Cn : IN STD_LOGIC;
			Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			Overflow : OUT STD_LOGIC);
END ofCheck;

ARCHITECTURE Structural OF ofCheck IS
BEGIN
	WITH Operation SELECT
		Overflow <= (Cn_1 XOR Cn) WHEN "10",
						'0' WHEN OTHERS;
END Structural;

--16BIT ALU
LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY bit16 IS
	PORT (a, b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			Overflow : OUT STD_LOGIC);
END bit16;

ARCHITECTURE Structural OF bit16 IS
	COMPONENT bit1 IS
		PORT( a, b, Ainvert, Binvert, CarryIn : IN STD_LOGIC;
		Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		CarryOut, Result : OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT cc IS
		PORT ( opcode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			Ainvert, Binvert, CarryIn : OUT STD_LOGIC; 
			Operation : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT ofCheck IS
		PORT ( Cn_1, Cn : IN STD_LOGIC;
				Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
				Overflow : OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL Ainv : STD_LOGIC;
	SIGNAL Binvert: STD_LOGIC;
	SIGNAL Operation : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL Carry : STD_LOGIC_VECTOR(16 DOWNTO 0);

BEGIN
	Control_Cercuit : cc PORT MAP (opcode, Ainv, Binvert, Carry(0), Operation);
	I1: FOR i IN 0 TO 15 GENERATE
		Bit1s : bit1 PORT MAP (a(i), b(i), Ainv, Binvert, Carry(i), Operation, Carry(i+1), Result(i));
	END GENERATE;
	OVerflow_Check : ofCheck PORT MAP(Carry(15), Carry(16), Operation, Overflow);
END ARCHITECTURE;