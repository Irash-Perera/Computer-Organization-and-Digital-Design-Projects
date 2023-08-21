----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2023 03:50:19 PM
-- Design Name: 
-- Module Name: Counter_Sim - Behavioral
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

entity Counter_Sim is
--  Port ( );
end Counter_Sim;

architecture Behavioral of Counter_Sim is
COMPONENT Conter
    Port ( Dir : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
END COMPONENT;

SIGNAL Dir,Res,Clk : std_logic;
SIGNAL Q : STD_LOGIC_VECTOR (2 downto 0);

begin
UUT: Conter PORT MAP(
       Dir => Dir,
       Res => Res,
       Clk => Clk,
       Q => Q
);

process
begin
         wait for 1 ns;
         Clk <= not Clk;
end process; 

process
begin
         wait for 100 ns;
         Res <= '1';
         wait for 15 ns;
         Res <= '0';
         
         Dir <= '0';
         wait for 285 ns;
         Dir <= '1';
         wait;
end process; 

end Behavioral;
