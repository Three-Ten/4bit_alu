----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2017 03:49:35 PM
-- Design Name: 
-- Module Name: Alu4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
ENTITY Alu4 IS
GENERIC(CONSTANT N: INTEGER := 4; -- 4 bits ALU
     CONSTANT Z: STD_LOGIC_VECTOR(3 DOWNTO 1) := "000" -- 3 Zeros
    );

    PORT(
        a, b: IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
        control: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        overflow: OUT STD_LOGIC;
        zero: OUT STD_LOGIC;
        carryOut: OUT STD_LOGIC;
        result: OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
     );
     
END Alu4;

ARCHITECTURE behavioral OF Alu4 IS
COMPONENT Alu1

     PORT(
         a, b: IN STD_LOGIC;
         carryIn: IN STD_LOGIC;
         control: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
         carryOut: OUT STD_LOGIC;
         result: OUT STD_LOGIC
     );
 
 END COMPONENT;

 SIGNAL carry_sig: STD_LOGIC_VECTOR(N DOWNTO 0); -- carry_sig(N) = MSB carryOut
 SIGNAL result_sig: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
BEGIN

-- Write Your Code Here
--add0: Adder1 port map ( a => a(0), b => b(0), cIn => '0', cOut => carry_sig(1), sum => sum(0) );
--add1: Adder1 port map ( a => a(1), b => b(1), cIn => carry_sig(1), cOut => carry_sig(2), sum => sum(1) );
--add2: Adder1 port map ( a => a(2),  b => b(2), cIn => carry_sig(2), cOut => carry_sig(3), sum => sum(2) );
--add3: Adder1 port map ( a => a(3), b => b(3), cIn => carry_sig(3), cOut => cOut, sum => sum(3) );

    co0: Alu1 PORT MAP (a => a(0), b => b(0), carryIn => '0', control => control, carryOut => carry_sig(1), result => result_sig(0));
    co1: Alu1 PORT MAP (a => a(1), b => b(1), carryIn => carry_sig(1), control => control, carryOut => carry_sig(2), result => result_sig(1));
    co2: Alu1 PORT MAP (a => a(2), b => b(2), carryIn => carry_sig(2), control => control, carryOut => carry_sig(3), result => result_sig(2));
    co3: Alu1 PORT MAP (a => a(3), b => b(3), carryIn => carry_sig(3), control => control, carryOut => overflow, result => result_sig(3));

END behavioral;
