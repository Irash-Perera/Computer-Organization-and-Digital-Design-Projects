library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Slow_clock_sim is
--  Port ( );
end Slow_clock_sim;

architecture Behavioral of Slow_clock_sim is
component Slow_clk
Port ( Clk_in : in STD_LOGIC;
       Clk_out : out STD_LOGIC);
end component;

signal Clk_in,Clk_out:STD_LOGIC;

begin
UUT: Slow_Clk
    port map(
        Clk_in=> Clk_in,
        Clk_out=> Clk_out);
        
    process begin
        Clk_in <= '1';
        wait for 1 ns;
        Clk_in <= '0';
        wait for 1 ns;
    end process;

end Behavioral;
