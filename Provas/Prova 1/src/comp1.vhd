----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2018 11:31:45
-- Design Name: 
-- Module Name: comp1 - Behavioral
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

entity comp1 is
    Port ( entrada : in STD_LOGIC_VECTOR (2 downto 0);
           enable : in STD_LOGIC;
           saida : out STD_LOGIC_VECTOR (2 downto 0));
end comp1;

architecture Behavioral of comp1 is

    signal c : STD_LOGIC_VECTOR (2 downto 0); -- soma3bits
    signal c_out : STD_LOGIC;

    component soma3bit is
        PORT ( a : in STD_LOGIC_VECTOR (2 downto 0);
               b : in STD_LOGIC_VECTOR (2 downto 0);
               c_in : in STD_LOGIC;
               soma : out STD_LOGIC_VECTOR (2 downto 0);
               c_out : out STD_LOGIC);
    end component;
    
begin
    s0: soma3bit PORT MAP(entrada, "001", '0', c, c_out);

    saida <= entrada WHEN enable = '0' ELSE
             c;

end Behavioral;
