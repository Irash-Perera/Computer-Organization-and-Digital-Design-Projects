
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tri_state_buffer_3bit_sim is
--  Port ( );
end tri_state_buffer_3bit_sim;

architecture Behavioral of tri_state_buffer_3bit_sim is
component tri_state_buffer_3bit
    Port ( Input : in STD_LOGIC_VECTOR (2 downto 0);
           Enable : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal Input:STD_LOGIC_VECTOR(2 downto 0);
signal Output:STD_LOGIC_VECTOR(2 downto 0);
signal Enable:STD_LOGIC;

begin
UUT: tri_state_buffer_3bit
port map(Input=>Input,
        Output=>Output,
        Enable=>Enable);

process
begin

Input<="110";
enable<='0';
wait for 100ns;

enable<='1';
wait for 100ns;
Input<="111";
wait;

end process;
end Behavioral;
