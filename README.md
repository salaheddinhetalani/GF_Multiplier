# GF_Multiplier
Design and synthesis a circuit to multiply two elements of Galois Field 2^3 (Secure Hardware Design Assignment)

## Overall Objective
Design a circuit to multiply two element of \begin{equation} GF(2^3 ) = Z2[X]/X^3 + X^2 + 1 \end{equation} using VHDL language and synthesis the design using AMS C35B4 0.35um technology process as well as perform behavioral and post-synthesis simulation to verify the correct functunality of the design. The circuit has two 3-bit inputs and one 3-bit output.

### 
In order to design a circuit to multiply two elements of GF(2 3 ) = Z 2 [X]/X 3 + X 2 + 1, and by assuming that the circuit has two three bits inputs (InputA, InputB) and one three bits output (Output). The following equation can be concluded:

\begin{equation}
Output = (AD + AE + BD + AF + BE + CD)X^2 + (AD + BF + CE)X + (AD + AE + BD + CF)
\end{equation}

Therefore, the circuit could be designed to be consisted of combinational logic only, by using Xor gate for each addition and And
gate for each multiplication for the last equation obtained.
