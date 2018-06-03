LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY GF_tb IS
END GF_tb;
 
ARCHITECTURE behavior OF GF_tb IS 
 
-- Component Declaration for the Unit Under Test (UUT)
    COMPONENT GF
    PORT(
         inputA : IN  std_logic_vector(2 downto 0);
         inputB : IN  std_logic_vector(2 downto 0);
         output : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

--Inputs
   signal inputA : std_logic_vector(2 downto 0) := (others => '0');
   signal inputB : std_logic_vector(2 downto 0) := (others => '0');
--Outputs
   signal output : std_logic_vector(2 downto 0);

-- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
   uut: GF PORT MAP (
          inputA => inputA,
          inputB => inputB,
          output => output
        );

-- Stimulus process
   stim_proc: process 
    begin
	wait for clk_period; inputA <= "000"; inputB <= "000";
	wait for clk_period; inputA <= "000"; inputB <= "001";
	wait for clk_period; inputA <= "000"; inputB <= "010";
	wait for clk_period; inputA <= "000"; inputB <= "011";
	wait for clk_period; inputA <= "000"; inputB <= "100";
	wait for clk_period; inputA <= "000"; inputB <= "101";
	wait for clk_period; inputA <= "000"; inputB <= "110";
	wait for clk_period; inputA <= "000"; inputB <= "111";

	wait for clk_period; inputA <= "001"; inputB <= "000";
	wait for clk_period; inputA <= "001"; inputB <= "001";
	wait for clk_period; inputA <= "001"; inputB <= "010";
	wait for clk_period; inputA <= "001"; inputB <= "011";
	wait for clk_period; inputA <= "001"; inputB <= "100";
	wait for clk_period; inputA <= "001"; inputB <= "101";
	wait for clk_period; inputA <= "001"; inputB <= "110";
	wait for clk_period; inputA <= "001"; inputB <= "111";

	wait for clk_period; inputA <= "010"; inputB <= "000";
	wait for clk_period; inputA <= "010"; inputB <= "001";
	wait for clk_period; inputA <= "010"; inputB <= "010";
	wait for clk_period; inputA <= "010"; inputB <= "011";
	wait for clk_period; inputA <= "010"; inputB <= "100";
	wait for clk_period; inputA <= "010"; inputB <= "101";
	wait for clk_period; inputA <= "010"; inputB <= "110";
	wait for clk_period; inputA <= "010"; inputB <= "111";

	wait for clk_period; inputA <= "011"; inputB <= "000";
	wait for clk_period; inputA <= "011"; inputB <= "001";
	wait for clk_period; inputA <= "011"; inputB <= "010";
	wait for clk_period; inputA <= "011"; inputB <= "011";
	wait for clk_period; inputA <= "011"; inputB <= "100";
	wait for clk_period; inputA <= "011"; inputB <= "101";
	wait for clk_period; inputA <= "011"; inputB <= "110";
	wait for clk_period; inputA <= "011"; inputB <= "111";

	wait for clk_period; inputA <= "100"; inputB <= "000";
	wait for clk_period; inputA <= "100"; inputB <= "001";
	wait for clk_period; inputA <= "100"; inputB <= "010";
	wait for clk_period; inputA <= "100"; inputB <= "011";
	wait for clk_period; inputA <= "100"; inputB <= "100";
	wait for clk_period; inputA <= "100"; inputB <= "101";
	wait for clk_period; inputA <= "100"; inputB <= "110";
	wait for clk_period; inputA <= "100"; inputB <= "111";

	wait for clk_period; inputA <= "101"; inputB <= "000";
	wait for clk_period; inputA <= "101"; inputB <= "001";
	wait for clk_period; inputA <= "101"; inputB <= "010";
	wait for clk_period; inputA <= "101"; inputB <= "011";
	wait for clk_period; inputA <= "101"; inputB <= "100";
	wait for clk_period; inputA <= "101"; inputB <= "101";
	wait for clk_period; inputA <= "101"; inputB <= "110";
	wait for clk_period; inputA <= "101"; inputB <= "111";

	wait for clk_period; inputA <= "110"; inputB <= "000";
	wait for clk_period; inputA <= "110"; inputB <= "001";
	wait for clk_period; inputA <= "110"; inputB <= "010";
	wait for clk_period; inputA <= "110"; inputB <= "011";
	wait for clk_period; inputA <= "110"; inputB <= "100";
	wait for clk_period; inputA <= "110"; inputB <= "101";
	wait for clk_period; inputA <= "110"; inputB <= "110";
	wait for clk_period; inputA <= "110"; inputB <= "111";

	wait for clk_period; inputA <= "111"; inputB <= "000";
	wait for clk_period; inputA <= "111"; inputB <= "001";
	wait for clk_period; inputA <= "111"; inputB <= "010";
	wait for clk_period; inputA <= "111"; inputB <= "011";
	wait for clk_period; inputA <= "111"; inputB <= "100";
	wait for clk_period; inputA <= "111"; inputB <= "101";
	wait for clk_period; inputA <= "111"; inputB <= "110";
	wait for clk_period; inputA <= "111"; inputB <= "111";

      	wait;
   end process;

END;
