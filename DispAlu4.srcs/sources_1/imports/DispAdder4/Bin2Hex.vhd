----------------------------------------------------------------------------------
-- Description:   4-bit Adder
-- Project:       DispAdder4 
-- Program-ID:    DispAdder4 .vhd
-- Authors:       Matthew Allemand, James Ostarly, William Williamson
-- Package:       Xilinx Nexys4 DDR Board 
-- Device:        Artix-7 FPGA (XC7A100TCSG324-1) 
-- Software:      Vivado Design Suite
----------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Bin2Hex IS

    PORT(
        bin: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        hex: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END Bin2Hex;

ARCHITECTURE behavioral OF Bin2Hex IS
BEGIN

    with bin select
  hex <= "1000000" when "0000",
         "1111001" when "0001",
         "0100100" when "0010",
         "0110000" when "0011",
         "0011001" when "0100",
         "0010010" when "0101",
         "0000010" when "0110",
         "1111000" when "0111",
         "0000000" when "1000",
         "0010000" when "1001",
         "0001000" when "1010",
         "0000011" when "1011",
         "1000110" when "1100",
         "0100001" when "1101",
         "0000110" when "1110",    
         "0001110" when others;  
END behavioral;
