--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:06:57 11/30/2018
-- Design Name:   
-- Module Name:   D:/University/13971/SD/E4/Counter_Bench.vhd
-- Project Name:  E4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter
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
use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Counter_Bench IS
END Counter_Bench;
 
ARCHITECTURE behavior OF Counter_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter
    PORT(
         ena : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         full_count : OUT  std_logic;
         count2 : OUT  std_logic_vector(2 downto 0);
         count1 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ena : std_logic := '1';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal full_count : std_logic;
   signal count2 : std_logic_vector(2 downto 0);
   signal count1 : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Counter PORT MAP (
          ena => ena,
          clk => clk,
          rst => rst,
          full_count => full_count,
          count2 => count2,
          count1 => count1
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <=  not clk;
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for clk_period*100;
		rst <= '1';
      wait for clk_period;
		rst <= '0';
   end process;

	process
   begin		
      wait for clk_period*333;
		ena <= '0';
      wait for clk_period*1000;
		ena <= '1';
   end process;
	
END;
