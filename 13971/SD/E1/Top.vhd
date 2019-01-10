----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:56:58 01/06/2019 
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
    Port ( clk : in  STD_LOGIC;
           dout : out  STD_LOGIC);
end Top;

architecture Behavioral of Top is
	type state_type is (idle,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14);
	signal state: state_type := idle;
begin

	process(clk)
	begin
		if(clk='1' and clk'event) then
			case state is 
				when idle =>
					dout<='0';
					state <= s1;
				when s1 =>
					dout<='0';
					state <= s2;
				when s2 =>
					dout<='0';
					state <= s3;
				when s3 =>
					dout<='1';
					state <= s4;
				when s4 =>
					dout<='1';
					state <= s5;
				when s5 =>
					dout<='1';
					state <= s6;
				when s6 =>
					dout<='1';
					state <= s7;
				when s7 =>
					dout<='0';
					state <= s8;
				when s8 =>
					dout<='0';
					state <= s9;
				when s9 =>
					dout<='0';
					state <= s10;
				when s10 =>
					dout<='0';
					state <= s11;
				when s11 =>
					dout<='0';
					state <= s12;
				when s12 =>
					dout<='1';
					state <= s13;
				when s13 =>
					dout<='1';
					state <= idle;
				when others =>
					dout<='1';
					state <= idle;
				end case;
		end if;
	end process;
	

end Behavioral;

