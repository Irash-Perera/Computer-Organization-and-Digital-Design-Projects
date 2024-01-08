library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_sim is
--  Port ( );
end PC_sim;

architecture Behavioral of PC_sim is
component PC
Port ( PC_in : in STD_LOGIC_VECTOR (2 downto 0);
       Res : in STD_LOGIC;
       Clk : in STD_LOGIC;
       PC_out : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal PC_in,PC_out:  STD_LOGIC_VECTOR (2 downto 0);
signal Res,Clk: STD_LOGIC;

begin
UUT: PC
    port map(
       PC_in => PC_in,
       Res => Res,
       Clk => Clk,
       PC_out => PC_out);
       
process begin
    Clk <= '0';
    wait for 50ns;
    Clk <= '1';
    wait for 50ns;
end process;

process begin
-- index numbers: 210471F :110 011 011 000 100 111
--                210434V :110 011 011 000 000 010
    Res <= '1';
    wait for 100ns;
    Res <= '0';
   
    
    PC_in <= "001";
    wait for 50ns;
    PC_in <= "100";
    wait for 50ns;
    PC_in <= "111";
    wait for 50ns;
    PC_in <= "000";
    wait for 50ns;
    PC_in <= "110";
    wait for 50ns;
    
    Res <= '1';
    wait for 100ns;
    Res <= '0';
    wait;
end process;
end Behavioral;
