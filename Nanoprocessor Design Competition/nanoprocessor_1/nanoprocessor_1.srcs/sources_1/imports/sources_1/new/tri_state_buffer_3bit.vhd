library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tri_state_buffer_3bit is
    Port ( Input : in STD_LOGIC_VECTOR (2 downto 0);
           Enable : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2 downto 0));
end tri_state_buffer_3bit;

architecture Behavioral of tri_state_buffer_3bit is

begin
output<=Input WHEN(Enable='1') else "ZZZ";

end Behavioral;
