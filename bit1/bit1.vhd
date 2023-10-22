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
library IEEE;
use ieee.std_logic_1164.all;
USE work.bit1_package.all;
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