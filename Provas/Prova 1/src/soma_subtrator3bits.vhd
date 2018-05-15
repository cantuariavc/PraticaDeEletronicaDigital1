----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2018 11:31:45
-- Design Name: 
-- Module Name: soma_subtrator3bits - Behavioral
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

entity soma_subtrator3bits is
    Port ( a : in STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC_VECTOR (2 downto 0);
           seletor : in STD_LOGIC;
           resultado : out STD_LOGIC_VECTOR (2 downto 0);
           c_out : out STD_LOGIC);
end soma_subtrator3bits;

architecture Behavioral of soma_subtrator3bits is

    signal c1 : STD_LOGIC_VECTOR (2 downto 0); -- comp1

    signal c : STD_LOGIC_VECTOR (2 downto 0); -- soma3bits

    component comp1 is
        PORT ( entrada : in STD_LOGIC_VECTOR (2 downto 0);
               enable : in STD_LOGIC;
               saida : out STD_LOGIC_VECTOR (2 downto 0));
    end component;
    
    component soma3bit is
        PORT ( a : in STD_LOGIC_VECTOR (2 downto 0);
               b : in STD_LOGIC_VECTOR (2 downto 0);
               c_in : in STD_LOGIC;
               soma : out STD_LOGIC_VECTOR (2 downto 0);
               c_out : out STD_LOGIC);
    end component;
    
begin
    saida0: comp1 PORT MAP(b, seletor, c1);
    resultado0: soma3bit PORT MAP(a, c1, '0', resultado, c_out);
end Behavioral;
