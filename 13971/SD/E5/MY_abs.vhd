----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:02:11 11/30/2018 
-- Design Name: 
-- Module Name:    MY_abs - Behavioral 
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

use work.my_pakage.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MY_abs is
    Port ( A : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Abs_A : out  STD_LOGIC_VECTOR (n-1 downto 0));
end MY_abs;

architecture Behavioral of MY_abs is
begin
	
		Abs_A <= my_absFunction(A);
	
end Behavioral;

