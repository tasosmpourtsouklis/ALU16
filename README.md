# ALU16
VHDL code for a 16-bit Arithmetic Logic Unit.

Assignment for the class ***"Electronic Circuit Design"***.  
Department of Informatics, Athens University of Economics and Business.

The goal of this assignment is the hierarchical design of a circuit that will implement an Arithmetic Logic Unit (ALU) using *Intel's Quartus II CAD program* and *VHDL*.

ALU can perform the following operations on 16-bit signals:
- Arithmetic operations
  - Addition (ADD)
  - Subtraction (SUB)
  - Overflow check
- Logical operations
  - Conjugation (AND)
  - Disjunction (OR)
  - Exclusive disjunction (XOR)
  - Not disjunction (NOR)
  - Not coupling (NAND)

## Designing and Implementing 1-bit ALU  
***Operations AND & OR:*** The multiplexer selects *"a AND b"*, if Operation=0,   or *"a OR b"*, if Operation=1.   
![image](https://user-images.githubusercontent.com/103905458/193484936-bb3425ec-1c58-4942-8470-fa9e5bcf47a2.png)  
***Operation ADD (Full Adder):*** The multiplexer selects *"a + b"*, if Operation=2.  
![image](https://user-images.githubusercontent.com/103905458/193485481-a6baa088-2885-46b2-9340-ced82e2a639e.png) ![image](https://user-images.githubusercontent.com/103905458/193485526-fe8250ca-b024-42df-bb6d-efe6114bc554.png)   
***Operation SUB:*** a-b = a+(-b). The multiplexer selects *"a - b"*, if Operation=2 and Binvert=1.   
![image](https://user-images.githubusercontent.com/103905458/193485705-130da11f-6948-413d-8be6-db83c9a8d01e.png)   
***Operation NOR:*** According to De Morgan's Theorem, NOT(a+b) = NOT(a)xNOT(b). The multiplexer selects *"a NOR b"*, if Operation=0, Ainvert=1 and Binvert=1.  
***Operation NAND:*** According to De Morgan's Theorem, NOT(axb) = NOT(a)+NOT(b). The multiplexer selects *"a NAND b"*, if Operation=1, Ainvert=1 and Binvert=1.  
![image](https://user-images.githubusercontent.com/103905458/193486073-153418fd-ac7d-4c71-a823-48f3cee685fe.png)  
***Operation XOR:*** The multiplexer selects *"a XOR b"*, if Operation=3.  
![image](https://user-images.githubusercontent.com/103905458/193486254-56411ad7-1703-46b4-bea0-75aab7417661.png)

## Designing and Implementing 16-bit ALU  
The Control Circuit defines the operations performed by the ALU based on the opcode.  
![image](https://user-images.githubusercontent.com/103905458/193486491-44151e8b-0f2f-44f1-9ff4-a70f1f6097a4.png)  
![image](https://user-images.githubusercontent.com/103905458/193486357-2d6bfd62-307a-43f0-a966-a388a7bc3e28.png)
