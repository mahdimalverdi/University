----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:11:15 01/07/2019 
-- Design Name: 
-- Module Name:    top - Behavioral 
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
USE ieee.std_logic_unsigned.ALL;
USE ieee.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( Data : in  STD_LOGIC_VECTOR (7 downto 0);
           Count : in  STD_LOGIC_VECTOR (7 downto 0);
           Start : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           End1 : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (15 downto 0));
end top;

architecture Behavioral of top is
	type state_type is (idle,read_state,done,s1);
	signal state: state_type:= idle;
	signal i:STD_LOGIC_VECTOR (7 downto 0);
	signal result:STD_LOGIC_VECTOR (15 downto 0);
	signal canstart: std_logic:= '0';
begin
	process(clk)
	begin
		if(clk='1' and clk'event) then
			canstart <= Start and canstart;
			case state is
				when idle =>
					End1 <= '0';
					sum <= x"0000";
					if(Start = '1' and canstart = '0' and count > 0 ) then
						canstart <= '1';
						state <=read_state;
						i <= count;
						result <= x"0000";
					end if;
				when read_state =>
					if(canstart = '0') then
						result <= Data + result;
						i <= i - 1;
						if( i = 1) then
							state <=done;
						end if;
					end if;
				when done =>
					state <= idle;
					End1 <= '1';
					Sum <= result;
				when others =>
					state <= idle;
			end case;
		end if;
	end process;

end Behavioral;

