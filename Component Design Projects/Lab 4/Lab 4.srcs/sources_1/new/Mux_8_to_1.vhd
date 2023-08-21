----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 05:08:11 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Q : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
COMPONENT Decoder_3_to_8
    PORT(I : in STD_LOGIC_VECTOR (2 downto 0);
         EN : in STD_LOGIC;
         Y : out STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

SIGNAL T : std_logic_vector (7 downto 0);
SIGNAL MID : std_logic;

begin
Decoder_3_to_8_x : Decoder_3_to_8
PORT MAP(
I => S,
EN => EN,
Y => T
);

MID <= (D(0) AND T(0)) OR (D(1) AND T(1)) OR (D(2) AND T(2)) OR (D(3) AND T(3)) OR (D(4) AND T(4)) OR (D(5) AND T(5)) OR 
        (D(6) AND T(6)) OR (D(7) AND T(7));
Q <= MID AND EN;


end Behavioral;
