----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2023 10:39:46 PM
-- Design Name: 
-- Module Name: AU_7_seg - Behavioral
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

entity AU_7_Seg is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           RegSel : in STD_LOGIC;
           S_LED : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC;
           S_7Seg : out STD_LOGIC_VECTOR (6 downto 0);
           Anode : out STD_LOGIC_VECTOR (3 downto 0));
           
           
end AU_7_Seg;

architecture Behavioral of AU_7_Seg is

component AU
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
end component;

component LUT_16_7
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

component Slow_Clk
    Generic(count_max: integer:=100000);
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end component;

signal s : STD_LOGIC_VECTOR (3 downto 0);
signal S_7s : STD_LOGIC_VECTOR(6 downto 0):="0000000";
signal c,clk_7seg: STD_LOGIC;
signal selected_7seg: integer:=0;

begin

AU_0:AU
    PORT MAP(
        A=>A,
        Clk=>Clk,
        RegSel=>RegSel,
        S=>S,
        Zero=>Zero,
        Carry=>Carry);
        
LUT_16_7_0:LUT_16_7
    PORT MAP(
        address=>s,
        data=>S_7s);
        
Slow_Clk_7seg: Slow_Clk
    GENERIC  MAP(count_max=>100000)
    PORT MAP(
        Clk_in=>Clk,
        Clk_Out=>clk_7seg);
        
S_LED<=S;
Carry<=c;

process(clk_7seg)
begin
    if(rising_edge(clk_7seg)) then
        selected_7seg<=selected_7seg+1;
        if(selected_7seg=4)then
            selected_7seg<=0;
        end if;
     end if;
end process;

process(clk_7seg)
begin
    if(selected_7seg=0) then
        Anode<="1110";
        S_7Seg<=S_7s;
    elsif(selected_7seg=1) then
        Anode<="1101";
        if(c='0') then
            S_7Seg<="0000001";--0
        else
            S_7Seg<="1001111";--1
        end if;
    end if;
end process;
        
end Behavioral;
