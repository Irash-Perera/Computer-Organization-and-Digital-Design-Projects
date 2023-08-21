----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2023 08:35:15 PM
-- Design Name: 
-- Module Name: LUT_Sim - Behavioral
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

entity LUT_Sim is
--  Port ( );
end LUT_Sim;

architecture Behavioral of LUT_Sim is

COMPONENT LUT_16_7
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
END COMPONENT;

SIGNAL d0,d1,d2,d3,d4,d5,d6:std_logic;
SIGNAL a:std_logic_vector(3 downto 0);

begin
UUT: LUT_16_7 PORT MAP(
    address=>a,
    data(0)=>d0,
    data(1)=>d1,
    data(2)=>d2,
    data(3)=>d3,
    data(4)=>d4,
    data(5)=>d5,
    data(6)=>d6
);

process
begin
    a<="0000";
    WAIT FOR 100 ns;
    
    a<="0001";
    WAIT FOR 100 ns;
    
    a<="0010";
    WAIT FOR 100 ns;
    
    a<="0011";
    WAIT FOR 100 ns;
    
    a<="0100";
    WAIT FOR 100 ns;
    
    a<="0101";
    WAIT;
    
end process;
    
end Behavioral;
