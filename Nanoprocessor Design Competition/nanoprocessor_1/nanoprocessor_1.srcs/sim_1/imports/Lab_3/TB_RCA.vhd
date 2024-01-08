----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2022 06:32:12 PM
-- Design Name: 
-- Module Name: TB_RCA - Behavioral
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

entity TB_RCA is
--  Port ( );
end TB_RCA;

architecture Behavioral of TB_RCA is
component RCA
port(A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           operator : in STD_LOGIC;
           S : OUT STD_LOGIC_VECTOR(3 downto 0);
           overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end component;
signal operator,overflow,zero: std_logic;
signal a,b,s: std_logic_vector(3 downto 0);
begin
    UUT: RCA
    port map(
        A=>a,
        B=>b,
        operator => operator,
        S=>s,
        overflow=>overflow,
        Zero=>zero
        
    );
process
begin
--index numbers: 210471F : 0011 0011 0110 0010 0111
--             : 210434V : 0011 0011 0110 0000 0010
    a<="0111";
    operator <= '0';
    b<="0010";
    wait for 100ns;  
    
    a<= "0010";
    operator <= '1';
    b<= "0000";
    wait for 100ns;     
    
    a<= "0110";
    operator <= '0';
    b<= "0011";
    wait for 100ns;
    
    a<= "0110";
    operator <= '1';
    b<= "0011";
    wait;
   
end process;
end Behavioral;
