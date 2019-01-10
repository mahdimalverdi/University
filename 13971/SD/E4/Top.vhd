----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:56:00 11/30/2018 
-- Design Name: 
-- Module Name:    Top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is
    Port ( ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
			  full_count : OUT  std_logic;
           ssd1 : out  STD_LOGIC_VECTOR (6 downto 0);
           ssd2 : out  STD_LOGIC_VECTOR (6 downto 0));
end Top;

architecture Behavioral of Top is

	COMPONENT SSD_Driver
	 generic (N : integer);
    PORT(
         Count : IN  std_logic_vector(N-1 downto 0);
         SSD : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
	
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
	 
	 signal Count1 : std_logic_vector(3 downto 0) := (others => '1');
	 signal Count2 : std_logic_vector(2 downto 0) := (others => '1');
	 
	 
begin
	
	count : Counter port map(
          ena => ena,
          clk => clk,
          rst => rst,
          full_count => full_count,
          count2 => count2,
          count1 => count1);
			 
	ssddriver1: SSD_Driver 
		GENERIC MAP (N => 4)
		PORT MAP (
          Count => Count1,
          SSD => ssd1
        );

	ssddriver2: SSD_Driver 
		GENERIC MAP (N => 3)
		PORT MAP (
          Count => Count2,
          SSD => ssd2
        );
end Behavioral;

