----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:24:22 12/22/2018 
-- Design Name: 
-- Module Name:    Top_BlockRam - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top_BlockRam is
    Port ( Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Start : in  STD_LOGIC;
           Address : in  STD_LOGIC_VECTOR (12 downto 0);
           Data : in  STD_LOGIC_VECTOR (15 downto 0);
           Wr : in  STD_LOGIC;
           Ack : out  STD_LOGIC;
           Dout : out  STD_LOGIC_VECTOR (15 downto 0));
end Top_BlockRam;

architecture Behavioral of Top_BlockRam is
	COMPONENT BlockRam
	  PORT (
		 clka : IN STD_LOGIC;
		 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		 addra : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
		 dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	  );
	END COMPONENT;
	Signal wea: std_logic_vector(0 downto 0);
	type state_type is(idle, idle2, run_s0, run_s1, run_s2, run_s3, run_s4, run_s5, run_s6, run_s7, ackstate, stop, readstate);
	signal state: state_type:=idle;
	signal cur: STD_LOGIC_VECTOR (12 downto 0) := ( others => '0');
   signal addra : STD_LOGIC_VECTOR (12 downto 0);
	signal douttmp : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal dintmp : STD_LOGIC_VECTOR(15 DOWNTO 0);
begin
	BR : BlockRam
		PORT MAP (
			clka => clk,
			wea => wea,
			addra => addra,
			dina => dintmp,
			douta => douttmp
		);
	
	process(clk,Rst)
	begin
		if(clk = '1' and clk'event) then
			Ack <= '0';
			case state is
				when idle =>
					wea <= "0";
					addra <= Address;
					if(wr = '1') then
						dintmp <= Data;
						wea <= "1";
					end if;
					if(Start = '1') then
						state <= run_s0;
					else
						state <= idle2;
						Dout <= douttmp;
					end if;
				when idle2 =>
					state <= idle;
				when run_s0 =>
					cur <= "1111111111111";
					state <= run_s1;
					wea <= "0";
				when run_s1 =>
					cur  <= cur +'1';
					addra <= cur;
					state <= run_s2;
				when run_s2 =>
					state <= run_s6;
				when run_s6 =>
					state <= run_s7;
				when run_s7 =>
					state <= run_s3;
				when run_s3 =>
					if(douttmp(0) = '0') then
						dintmp <= douttmp( 7 downto 0) & douttmp( 15 downto 8);
						wea <= "1";
						state <= run_s4;
					else
						state <= run_s5;
					end if;
				when run_s4 =>
					state <= run_s5;
				when run_s5 =>
					wea <= "0";
					if(cur = "00000000001010") then
						state <= ackstate;
					else
						state <= run_s1;
					end if;
				when ackstate =>
					Ack <= '1';
					state <= readstate;
				when readstate =>
					wea <= "0";
					addra <= Address;
					Dout <= douttmp;
				when others =>
					wea <= "0";
			end case;
		end if;
	end process;
	
end Behavioral;

