----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:56:05 01/07/2019 
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( Clk : in  STD_LOGIC);
end top;

architecture Behavioral of top is
	COMPONENT BlockRam
	  PORT (
		 clka : IN STD_LOGIC;
		 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		 addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		 dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	  );
	END COMPONENT;
	signal wea : STD_LOGIC_VECTOR(0 DOWNTO 0);
	signal addra : STD_LOGIC_VECTOR(9 DOWNTO 0);
	signal dina : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal douta : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal i: std_logic_vector(9 DOWNTO 0):="1111111111";
	type state_type is (idle,s1,s2,s20,s3,s4,s5,s6,done);
	signal state: state_type:=idle;
	signal sum: std_logic_vector(17 DOWNTO 0):="000000000000000000";
begin
		your_instance_name : BlockRam
			PORT MAP (
			clka => clk,
			wea => wea,
			addra => addra,
			dina => dina,
			douta => douta
		);

	
	process(Clk)
	begin
		if(Clk = '1' and Clk'event) then
			case state is
				when idle =>
					addra <= i;
					wea <= "1";
					dina <= x"0" &i(4 downto 0);
					i <= i-1;
					if(i = 1) then
						state <= s2;
					end if;
				when s1 =>
					sum <= sum + douta;
					addra <= i;
					wea <= "0";
					state <= s20;
					i <= i - 1;
					if( i = x"1") then
						i <= "1111111111";
						state <= done;
					end if;
				when s2 =>
						i <= "1111111111"-1;
						addra <= "1111111111";
						wea <= "0";
					state <= s20;
				when s20 =>
					state <= s1;
				when s3 =>
					wea <= "1";
					addra <= "0000000000";
					dina <= sum(7 downto 0);
					state <= s4;
				when s4 =>
					wea <= "1";
					addra <= "0000000001";
					dina <= sum(15 downto 8);
					state <= s5;
				when s5 =>
					wea <= "1";
					addra <= "0000000010";
					dina <= "000000"&sum(17 downto 16);
					state <= s6;
				when s6 =>
					null;
				when done =>
					state <= s3;
				when others =>
					state <= idle;
			end case;
		end if;
	end process;

end Behavioral;

