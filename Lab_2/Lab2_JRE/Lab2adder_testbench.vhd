--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Jacob Echeverry
--
-- Create Date:   14:24:36 02/18/2014
-- Design Name:   
-- Module Name:   C:/Users/C15Jacob.Echeverry/Desktop/ECE_281/Lab_2/Lab2_JRE/Lab2adder_testbench.vhd
-- Project Name:  Lab2_JRE
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: four_bit_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Lab2adder_testbench IS
END Lab2adder_testbench;
 
ARCHITECTURE behavior OF Lab2adder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_adder
    PORT(
         Ain : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic_vector(3 downto 0);
         Sum : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_adder PORT MAP (
          Ain => Ain,
          Bin => Bin,
          Sum => Sum
        );

   -- Clock process definitions
  -- <clock>_process :process
 --  begin
	--	<clock> <= '0';
	--	wait for <clock>_period/2;
	--	<clock> <= '1';
	--	wait for <clock>_period/2;
 --  end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

     -- wait for <clock>_period*10;

      -- insert stimulus here 

		A <= "0000";
		B <= "0000";
		wait for 10ns;
		for I in 0 to 15 loop
			for J in 0 to 15 loop
				wait for 10 ns;
				B <= B + "0001";
			end loop;
			A <= A + "0001";
		end loop;
		wait for 10 ns;

		A <= "0000";
		B <= "0000";
		wait for 10 ns;
		for I in 0 to 15 loop
			for J in 0 to 15 loop
				wait for 10 ns;
				B <= B + "0001";
			end loop;
			A <= A + "0001";
		end loop;

      wait;
   end process;

END;
