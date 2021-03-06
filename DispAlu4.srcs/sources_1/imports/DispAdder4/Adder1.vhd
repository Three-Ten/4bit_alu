----------------------------------------------------------------------------------
-- Description:   Adder4
-- Project:       Adder4 
-- Program-ID:    Adder4.vhd
-- Authors:       Matthew Allemand, James Ostarly, William Williamson
-- Package:       Xilinx Nexys4 DDR Board 
-- Device:        Artix-7 FPGA (XC7A100TCSG324-1) 
-- Software:      Vivado Design Suite
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Adder1 IS
   PORT (
      a, b, cIn : IN std_logic;
      cOut, sum : OUT std_logic);
END Adder1;

ARCHITECTURE behavioral OF Adder1 IS
BEGIN

     -- Insert two lines (one for cOut and the other for sum) of VHDL code Here
       sum <= ((a xor b) xor cIn);
       cOut <= ((a and b) or ((a xor b) and cIn));

END behavioral;
