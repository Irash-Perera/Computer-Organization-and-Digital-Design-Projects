----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 05:50:49 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
COMPONENT Mux_8_to_1
Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
       D : in STD_LOGIC_VECTOR (7 downto 0);
       EN : in STD_LOGIC;
       Q : out STD_LOGIC);
END COMPONENT;

SIGNAL S : std_logic_vector (2 downto 0);
SIGNAL D : std_logic_vector (7 downto 0);
SIGNAL EN : std_logic;
SIGNAL Q : std_logic;

begin
UUT: Mux_8_to_1 PORT MAP(
    S => S,
    D => D,
    EN => EN,
    Q => Q
);

process
begin
    D(0) <= '0';
    D(1) <= '1';          
    D(2) <= '0';
    D(3) <= '0';
    D(4) <= '1';          
    D(5) <= '0';
    D(6) <= '0';
    D(7) <= '1';          

    S(0) <= '0';
    S(1) <= '1';          --010
    S(2) <= '0';
    EN <= '0';
    
    WAIT FOR 200 ns;
    S(0) <= '1';
    S(1) <= '0';          --001
    EN <= '1';
        
    WAIT FOR 200 ns;    
    S(0) <= '0';
    S(1) <= '1';          --110
    S(2) <= '1';
        
    WAIT FOR 200 ns;    
    S(0) <= '1';          --011
    S(2) <= '0';
    
    WAIT;
end process;


end Behavioral;
