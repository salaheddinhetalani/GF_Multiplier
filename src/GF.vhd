-----------------------------------------------------------------------------------
-- Engineer: 	   Salaheddin Hetalani
-- Create Date:    23:35:47 11/12/2017 
-- Design Name:    Multiplier of two elements of Galois Field (2^3)
-- Module Name:    GF - Behavioral 
-- Project Name:   GField
-- Description: 
-- Revision: 
-- Revision 0.01 - File Created
-----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity GF is
port(  
--------------------------------- Inputs ------------------------------------------						 
	inputA: in std_logic_vector(2 downto 0);
	inputB: in std_logic_vector(2 downto 0); 
-------------------------------- Outputs ------------------------------------------
	output: out std_logic_vector(2 downto 0)
  );
end GF;

architecture Behavioral of GF is

begin
---------------------------------- XOR Stage -------------------------------------
xorStage: process(inputA, inputB)
	variable inA : std_logic_vector(2 downto 0);
	variable inB : std_logic_vector(2 downto 0);
	variable outZ : std_logic_vector(2 downto 0);
	begin
	  inA := inputA;
	  inB := inputB;
          outZ(0) := (inA(2) and inB(2)) xor (inA(2) and inB(1)) xor (inA(1) and inB(2)) xor (inA(0) and inB(0));
          outZ(1) := (inA(2) and inB(2)) xor (inA(1) and inB(0)) xor (inA(0) and inB(1));
          outZ(2) := (inA(2) and inB(2)) xor (inA(2) and inB(1)) xor (inA(1) and inB(2)) xor (inA(2) and inB(0)) xor (inA(1) and inB(1)) xor (inA(0) and inB(2));
	  output <= outZ;
end process;	

end Behavioral;
