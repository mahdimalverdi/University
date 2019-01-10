----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:03:38 11/30/2018 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
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

entity Counter is
    Port ( ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           full_count : out  STD_LOGIC;
           count2 : out  STD_LOGIC_VECTOR (2 downto 0);
           count1 : out  STD_LOGIC_VECTOR (3 downto 0));
end Counter;

architecture Behavioral of Counter is
	signal tmp2: STD_LOGIC_VECTOR (2 downto 0):="000";
	signal tmp1: STD_LOGIC_VECTOR (3 downto 0):="0000";
	signal full: STD_LOGIC := '0';
begin 
	process(clk,rst)
   begin
		if rst='1' then
         tmp1 <= "0000";
         tmp2 <= "000";
			full <= '0';
      elsif(rising_edge(clk) and full = '0') then
         if ena='1' then
            if tmp1="1001" then
               tmp1<="0000";
					if tmp2="101" then
						tmp2<="110";
						full<='1';
					else
						tmp2 <= tmp2 + 1;
					end if;
            else
               tmp1 <= tmp1 + 1;
            end if;
         end if;
      end if;
   end process;
	full_count<=full;
	count1<=tmp1;
	count2<=tmp2;
end Behavioral;

