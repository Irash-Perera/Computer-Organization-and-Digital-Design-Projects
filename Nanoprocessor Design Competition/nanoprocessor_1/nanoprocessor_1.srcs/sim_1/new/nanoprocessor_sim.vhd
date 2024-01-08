library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nanoprocessor_sim is
--  Port ( );
end nanoprocessor_sim;

architecture Behavioral of nanoprocessor_sim is
component nanoprocessor
Port (  Clk : in STD_LOGIC;
        Reset : in STD_LOGIC;
        Zero : out STD_LOGIC;
        Overflow : out STD_LOGIC;
        Seven_seg : out STD_LOGIC_VECTOR (6 downto 0);
        LED : out STD_LOGIC_VECTOR (3 downto 0);
        Selector : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal Clk,Reset,Zero,Overflow: STD_LOGIC;
signal Seven_seg : STD_LOGIC_VECTOR (6 downto 0);
signal LED,Selector: STD_LOGIC_VECTOR (3 downto 0);

begin
UUT: nanoprocessor
    port map (
        Clk => Clk,
        Reset => Reset,
        Zero => Zero,
        Overflow => Overflow,
        Seven_seg => Seven_seg,
        LED => LED,
        Selector => Selector);

    process
    begin
        Clk <= '0';
        wait for 5ns;
        Clk <= '1';
        wait for 5ns;
    end process;
    
    process
    begin
    Reset <= '1';
    wait for 100ns;
    Reset <= '0';
    wait;
    end process;
    
end Behavioral;
