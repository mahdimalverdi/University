--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:23:11 01/07/2019
-- Design Name:   
-- Module Name:   D:/University/13971/SD/e2/top_testBench.vhd
-- Project Name:  e2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
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
 
ENTITY top_testBench IS
END top_testBench;
 
ARCHITECTURE behavior OF top_testBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         Data : IN  std_logic_vector(7 downto 0);
         Count : IN  std_logic_vector(7 downto 0);
         Start : IN  std_logic;
         Clk : IN  std_logic;
         End1 : OUT  std_logic;
         Sum : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data : std_logic_vector(7 downto 0) := (others => '0');
   signal Count : std_logic_vector(7 downto 0) := (others => '0');
   signal Start : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal End1 : std_logic;
   signal Sum : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
		type state_type is(idle,clac,end_state);
		signal state: state_type:=idle;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          Data => Data,
          Count => Count,
          Start => Start,
          Clk => Clk,
          End1 => End1,
          Sum => Sum
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		

      wait for Clk_period;
		start <= '1';
		count <= x"02";
      wait for Clk_period;
      wait for Clk_period;
      wait for Clk_period;
      wait for Clk_period;
      wait for Clk_period;
      wait for Clk_period;
      wait for Clk_period;
      wait for Clk_period;
      wait for Clk_period;
      wait for Clk_period;
      wait for Clk_period;
		start <= '0';
		data <= x"10";
      wait for Clk_period;
		data <= x"20";
      wait for Clk_period;
		data <= x"30";
      wait for Clk_period;
		data <= x"40";
      wait for Clk_period;
		start <= '1';
		count <= x"02";
      wait for Clk_period;
		data <= x"10";
      wait for Clk_period;
		data <= x"20";
      wait for Clk_period;
		data <= x"30";
      wait for Clk_period;
		data <= x"40";
      wait for Clk_period;
      wait;
   end process;

END;
