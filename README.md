# GF_Multiplier
Design and synthesis a circuit to multiply two elements of Galois Field 2^3 (Secure Hardware Design Assignment)

## Overall Objective
Design a circuit to multiply two element of GF(2^3) = Z2[X]/X^3 + X^2 + 1 using VHDL language and synthesis the design using AMS C35B4 0.35um technology process as well as perform behavioral and post-synthesis simulation to verify the correct functunality of the design. The circuit has two 3-bit inputs and one 3-bit output.

### 
In order to design a circuit to multiply two elements of GF(2 3 ) = Z2[X]/X^3 + X^2 + 1, and by assuming that the circuit has two three bits inputs (InputA, InputB) and one three bits output (Output). The following equation can be concluded:

Output = InputA x InputB = ABC.DEF = (AX^2 + BX + C).( DX^2 + EX + F) >>
Output = (AD + AE + BD + AF + BE + CD)X^2 + (AD + BF + CE)X + (AD + AE + BD + CF)

![first equation](http://latex.codecogs.com/gif.latex?Output%20%3D%20%28AD%20&plus;%20AE%20&plus;%20BD%20&plus;%20AF%20&plus;%20BE%20&plus;%20CD%29X%5E%7B2%7D%20&plus;%20%28AD%20&plus;%20BF%20&plus;%20CE%29X%20&plus;%20%28AD%20&plus;%20AE%20&plus;%20BD%20&plus;%20CF%29)

Therefore, the circuit could be designed to be consisted of combinational logic only, by using Xor gate for each addition and And
gate for each multiplication for the last equation obtained.
