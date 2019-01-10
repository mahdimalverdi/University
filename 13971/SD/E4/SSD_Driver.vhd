----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:53:09 11/30/2018 
-- Design Name: 
-- Module Name:    SSD_Driver - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SSD_Driver is
	 generic (N : integer);
    Port ( Count : in  STD_LOGIC_VECTOR (N-1 downto 0);
           SSD : out  STD_LOGIC_VECTOR (6 downto 0));
end SSD_Driver;

architecture Behavioral of SSD_Driver is
	signal tmp: integer:=0;
begin
		tmp <= conv_integer(unsigned(Count));
		with tmp select
			SSD <= 	"0111111" when 0,
						"0000110" when 1,
						"1011011" when 2,
						"1001111" when 3,
						"1100110" when 4,
						"1101101" when 5,
						"1111101" when 6,
						"0000111" when 7,
						"1111111" when 8,
						"1101111" when 9,
						"1111001" when others;
end Behavioral;

