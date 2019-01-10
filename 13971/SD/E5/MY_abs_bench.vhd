--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:25:07 11/30/2018
-- Design Name:   
-- Module Name:   D:/University/13971/SD/E5/MY_abs_bench.vhd
-- Project Name:  E5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MY_abs
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
 
ENTITY MY_abs_bench IS
END MY_abs_bench;
 
ARCHITECTURE behavior OF MY_abs_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MY_abs
    PORT(
         A : IN  std_logic_vector(9 downto 0);
         Abs_A : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal Abs_A : std_logic_vector(9 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MY_abs PORT MAP (
          A => A,
          Abs_A => Abs_A
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
		A <= "1000000000";
		wait for 100 ns;
		A <= "1000000000";
		wait for 100 ns;
		A <= "0000000011";
		wait for 100 ns;

   end process;

END;
