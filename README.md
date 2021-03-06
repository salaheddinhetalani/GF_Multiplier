# GF_Multiplier
Design and synthesis a circuit to multiply two elements of Galois Field ![](http://latex.codecogs.com/png.latex?%5Cdpi%7B100%7D%20%5Cfn_jvn%20%5Csmall%202%5E3) (Secure Hardware Design Assignment)

## Overall Objective
Design a circuit to multiply two elements of  ![](http://latex.codecogs.com/png.latex?%5Cdpi%7B100%7D%20%5Cfn_jvn%20%5Csmall%20GF%282%5E3%29%20%3D%20Z_2%5BX%5D/X%5E3%20&plus;%20X%5E2%20&plus;%201)  using VHDL language and synthesis the design using AMS C35B4 0.35um technology process as well as perform behavioral and post-synthesis simulation to verify the correct functunality of the design.

### Design
In order to design a circuit to multiply two elements of ![](http://latex.codecogs.com/png.latex?%5Cdpi%7B100%7D%20%5Cfn_jvn%20%5Csmall%20GF%282%5E3%29%20%3D%20Z_2%5BX%5D/X%5E3%20&plus;%20X%5E2%20&plus;%201), and by assuming that the circuit has two three bits inputs (InputA, InputB) and one three bits output (Output). The following equation can be concluded:

![](http://latex.codecogs.com/png.latex?%5Cdpi%7B100%7D%20%5Cfn_jvn%20%5Csmall%20Output%20%3D%20InputA%20x%20InputB%20%3D%20ABC.DEF%20%3D%20%28AX%5E2%20&plus;%20BX%20&plus;%20C%29.%28%20DX%5E2%20&plus;%20EX%20&plus;%20F%29) 
>>
![](http://latex.codecogs.com/png.latex?%5Cdpi%7B200%7D%20%5Cfn_jvn%20%5Ctiny%20Output%20%3D%20%28AD%20&plus;%20AE%20&plus;%20BD%20&plus;%20AF%20&plus;%20BE%20&plus;%20CD%29X%5E2%20&plus;%20%28AD%20&plus;%20BF%20&plus;%20CE%29X%20&plus;%20%28AD%20&plus;%20AE%20&plus;%20BD%20&plus;%20CF%29)

Therefore, the circuit could be designed to be consisted of combinational logic only, by using Xor gate for each addition and And
gate for each multiplication for the last equation obtained. The following figure shows the block diagram of the design.

![screenshot from 2018-06-04 01 05 13](https://user-images.githubusercontent.com/28307467/40892183-7f1cc44c-6793-11e8-84a9-c58f502fd09e.png)

The following table shows all the possible combinations of the input values and the corresponding output values, based on the fact that the elements of ![](http://latex.codecogs.com/png.latex?%5Cdpi%7B100%7D%20%5Cfn_jvn%20%5Csmall%20GF%282%5E3%29) are the remainders of polynomials division over ![](http://latex.codecogs.com/png.latex?%5Cdpi%7B100%7D%20%5Cfn_jvn%20%5Csmall%20X%5E3%20&plus;%20X%5E2%20&plus;%201), Therefore they consist of all polynomials of degree less than 3: ![](http://latex.codecogs.com/png.latex?%5Cdpi%7B100%7D%20%5Cfn_jvn%20%5Csmall%20GF%288%29%3D%20%280%2C%20X%2C%20X%5E2%20%2C%20X%5E2%20&plus;%201%2C%20X%5E2%20&plus;%20X%20&plus;%201%2C%20X%20&plus;%201%2C%20X%5E2%20&plus;%20X%2C%201%29).

![screenshot from 2018-06-04 00 52 41](https://user-images.githubusercontent.com/28307467/40892124-80fea394-6792-11e8-8db1-a9c01c28961d.png)

### Simulation

#### Behavioural simulation:
By writing a test bench that covers the whole 64 possible cases and running the simulation, the design can be verified by checking that all the output values are the same as the corresponding ones listed in the table.

#### Post synthesis simulation: 
By writing a test bench that covers the whole 64 possible cases, including the HDL library files for AMS 0.35 um technology and running the simulation, the design can be verified by checking that all the output values are the same as the corresponding ones listed in the table.
