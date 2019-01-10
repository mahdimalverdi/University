--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:33:57 12/28/2018
-- Design Name:   
-- Module Name:   D:/University/13971/SD/E6/Top_TestBench.vhd
-- Project Name:  E6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Top_BlockRam
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
USE ieee.std_logic_unsigned.ALL;
 
use IEEE.std_logic_textio.all; 
use STD.textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Top_TestBench IS
END Top_TestBench;
 
ARCHITECTURE behavior OF Top_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top_BlockRam
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         Start : IN  std_logic;
         Address : IN  std_logic_vector(12 downto 0);
         Data : IN  std_logic_vector(15 downto 0);
         Wr : IN  std_logic;
         Ack : OUT  std_logic;
         Dout : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';
   signal Start : std_logic := '0';
   signal Address : std_logic_vector(12 downto 0) := (others => '0');
   signal Data : std_logic_vector(15 downto 0) := (others => '0');
   signal Wr : std_logic := '0';

 	--Outputs
   signal Ack : std_logic;
   signal Dout : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
	type state_type is(idle, idle2, run_s0, run_s1, run_s2, run_s3, run_s4, run_s5, ackstate, stop);
	signal state: state_type:=idle;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top_BlockRam PORT MAP (
          Clk => Clk,
          Rst => Rst,
          Start => Start,
          Address => Address,
          Data => Data,
          Wr => Wr,
          Ack => Ack,
          Dout => Dout
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
   stim_proc: 
   process(clk)
		variable counter:std_logic_vector(15 downto 0):=(others=>'0');
		variable add:std_logic_vector(12 downto 0):=(others=>'0');
		FILE  my_input : TEXT open READ_MODE is "input.txt";
		FILE  my_output : TEXT open WRITE_MODE is "output.txt";
		VARIABLE my_line : LINE;
		VARIABLE my_input_line : LINE;
		VARIABLE my_output_line : LINE;
		VARIABLE wait_counter: integer :=0;

		VARIABLE x : STD_LOGIC_VECTOR(15 downto 0);
		VARIABLE x2: STD_LOGIC_VECTOR(7 downto 0);
	begin
		if(clk='1' and clk'event)then
			case state is
				when idle =>
					Address <= add;
					Wr <='1';
					if(add /= "0000000001010")then
						readline(my_input, my_input_line);
						HREAD(my_input_line,x);
						Data <= x;
						add := add + '1';
						state <= idle2;
					else
						state <= run_s0;
						Wr <='0';
						Start <= '1';
					end if;
				when idle2 =>
					state <= idle;
				when run_s0 =>
					if(Ack = '1') then
						state <= run_s1;
						add := "0000000000000";
					end if;
				when run_s1 =>
					Start <= '0';
					Address <= add;
					if(add /= "0000000001010")then
						add := add + '1';
						state <= run_s3;
					end if;
				when run_s2 =>
					state <= run_s1;
					x := Dout;
					HWRITE(my_line,x);
					writeline(my_output,my_line);
				when run_s3 =>
					state <= run_s4;
				when run_s4 =>
					state <= run_s5;
				when run_s5 =>
					state <= run_s2;
				when others =>
						Wr <='0';
				
			end case;

		end if;
	end process;

END;
