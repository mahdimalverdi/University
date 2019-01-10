--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:03:44 11/30/2018
-- Design Name:   
-- Module Name:   D:/University/13971/SD/E4/SSD_Driver_Bench.vhd
-- Project Name:  E4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SSD_Driver
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
USE ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY SSD_Driver_Bench IS
END SSD_Driver_Bench;
 
ARCHITECTURE behavior OF SSD_Driver_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SSD_Driver
	 generic (N : integer);
    PORT(
         Count : IN  std_logic_vector(N-1 downto 0);
         SSD : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    
	constant SSD_WIDTH : integer := 3;

   --Inputs
   signal Count : std_logic_vector(SSD_WIDTH-1 downto 0) := (others => '1');

 	--Outputs
   signal SSD : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SSD_Driver 
		GENERIC MAP (N => SSD_WIDTH)
		PORT MAP (
          Count => Count,
          SSD => SSD
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 100 ns;
		Count <= Count+1;
		
   end process;

END;
