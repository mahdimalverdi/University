--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

package my_pakage is

	constant n: integer:=10;
	
	function my_convInteger (i_vector : in std_logic_vector) return integer;
	
	function my_convStdLogic (number : in integer) return std_logic_vector;

	function my_absFunction (i_vector : in std_logic_vector) return std_logic_vector;

end my_pakage;

package body my_pakage is

	function my_convInteger (i_vector : in std_logic_vector) return integer is
	variable result: integer :=0;
	begin
		for J in 1 to n  loop
			if i_vector(n-J) = '1' then
				result := result * 2 + 1;
			else
				result := result * 2;
			end if;
		end loop;
		if( i_vector(n-1)='1') then
			result := result - 2**n;
		end if;
		return result;
	end my_convInteger;
 
	function my_convStdLogic (number : in integer) return std_logic_vector is
	variable num: integer :=0;
	variable result: std_logic_vector(n-1 downto 0) ;
	begin
		num := number;
		if( num > 0) then
			num := num + 2**n;
		end if;
		for J in 1 to n  loop
			if num mod 2 = 1 then
				result(j-1) := '1';
			else
				result(j-1) := '0';
			end if;
			num := num / 2;
		end loop;
		return result;
	end my_convStdLogic;
	
	function my_absFunction (i_vector : in std_logic_vector) return std_logic_vector is
	variable A_int: integer ;
	begin
		A_int := my_convInteger(i_vector);
		If(A_int<0)then
			A_int := - A_int;
		End if;
		return my_convStdLogic(A_int);
	end my_absFunction;
end my_pakage;
