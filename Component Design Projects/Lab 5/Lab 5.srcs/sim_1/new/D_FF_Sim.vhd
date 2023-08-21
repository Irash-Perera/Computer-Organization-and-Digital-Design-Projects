----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2023 01:54:39 PM
-- Design Name: 
-- Module Name: D_FF_Sim - Behavioral
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

entity D_FF_Sim is
--  Port ( );
end D_FF_Sim;

architecture Behavioral of D_FF_Sim is
COMPONENT D_FF
    Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
END COMPONENT;

SIGNAL D,Res,Clk : std_logic;
SIGNAL Q,Qbar : std_logic;

begin
UUT: D_FF PORT MAP(
        D => D,
        Res => Res,
        Clk => Clk,
        Q => Q,
        Qbar => Qbar
        );
        
process
begin
         D <= '0';
         Res <= '0';
         Clk <= '0';

         WAIT FOR 100 ns; 
         Clk <= '1';
        
         WAIT FOR 100 ns; 
         Res <= '1';
         Clk <= '0';
        
         WAIT FOR 100 ns; 
         Clk <= '1';
        
         WAIT FOR 100 ns; 
         D <= '1';
         Res <= '0';
         Clk <= '0';
        
         WAIT FOR 100 ns; 
         Clk <= '1';
        
         WAIT FOR 100 ns; 
         Res <= '1';
         Clk <= '0';
        
         WAIT FOR 100 ns; 
         Clk <= '1';
        
         WAIT;
end process; 

end Behavioral;