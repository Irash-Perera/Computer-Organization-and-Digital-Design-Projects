library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_Reg_Bank is
--  Port ( );
end TB_Reg_Bank;

architecture Behavioral of TB_Reg_Bank is
component RegBank
    Port ( Res : in STD_LOGIC;
           RegEN : in STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           Data_In : in STD_LOGIC_VECTOR (3 downto 0);
           R0 : out STD_LOGIC_VECTOR (3 downto 0);
           R1 : out STD_LOGIC_VECTOR (3 downto 0);
           R2 : out STD_LOGIC_VECTOR (3 downto 0);
           R3 : out STD_LOGIC_VECTOR (3 downto 0);
           R4 : out STD_LOGIC_VECTOR (3 downto 0);
           R5 : out STD_LOGIC_VECTOR (3 downto 0);
           R6 : out STD_LOGIC_VECTOR (3 downto 0);
           R7 : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal RegEN :  STD_LOGIC_VECTOR (2 downto 0);
signal Res :  STD_LOGIC;
signal Clk :  STD_LOGIC:='0';
signal Data_In :  STD_LOGIC_VECTOR (3 downto 0):="0000";
signal R0,R1,R2,R3,R4,R5,R6,R7 :  STD_LOGIC_VECTOR (3 downto 0);
begin
UUT:RegBank
    port map(
        Res => Res,
        RegEN=>RegEN,
        Clk=>Clk,
        Data_in=>Data_in,
        R0=>R0,
        R1=>R1,
        R2=>R2,
        R3=>R3,
        R4=>R4,
        R5=>R5,
        R6=>R6,
        R7=>R7);
        
process begin
Clk<=not(Clk);
wait for 20ns;
end process;

process begin

    Res <= '1';
    wait for 50ns;
    Res <= '0';
    
    Data_in<="0100";
    RegEN<="110";
    wait for 100ns;
    
    RegEN<="000";
    Data_in<="1110";
    wait for 100ns;
    
    Data_in<="0000";
    RegEN<="111";
    wait for 100ns;
    
    Data_in<="0011";
    RegEN<="001";
    wait for 100ns;
    
    Res <= '1';
    wait for 50ns;
    Res <= '0';
    wait;
end process;
end Behavioral;
