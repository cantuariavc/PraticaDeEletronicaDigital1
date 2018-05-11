----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2018 11:23:34
-- Design Name: 
-- Module Name: soma3bits - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity soma3bits is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           c_in : in STD_LOGIC;
           soma : out STD_LOGIC_VECTOR (2 downto 0);
           c_out : out STD_LOGIC);
end soma3bits;

architecture Behavioral of soma3bits is
    signal c : STD_LOGIC_VECTOR (2 downto 0);
    
    component soma1bit is
        PORT ( a : in STD_LOGIC;
               b : in STD_LOGIC;
               c_in : in STD_LOGIC;
               soma : out STD_LOGIC;
               c_out : out STD_LOGIC);
    end component;
    
begin
    soma0: soma1bit PORT MAP(a(0), b(0), c_in, soma(0), c(0));
    soma1: soma1bit PORT MAP(a(1), b(1), c(0), soma(1), c(1));
    soma2: soma1bit PORT MAP(a(2), b(2), c(1), soma(2), c_out);
end Behavioral;
