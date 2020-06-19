----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:28:03 11/05/2014 
-- Design Name: 
-- Module Name:    sBox - behavioral 
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
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY OutAffC IS
	PORT ( input:  IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
			 output: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END OutAffC;

ARCHITECTURE behavioral OF OutAffC IS

BEGIN
	
	output(0) <= input(0) XNOR input(1);
	output(1) <= input(0) XNOR input(2);
	output(2) <= input(1);
	output(3) <= input(2) XOR  input(3);
	
END behavioral;
