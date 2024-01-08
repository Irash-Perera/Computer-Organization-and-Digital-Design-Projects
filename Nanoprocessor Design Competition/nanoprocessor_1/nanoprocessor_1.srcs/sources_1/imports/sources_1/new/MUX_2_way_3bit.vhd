library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_2_way_3bit is
    Port ( Jump_Address : in STD_LOGIC_VECTOR (2 downto 0);
           Inc_Address : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_flag : in STD_LOGIC;
           Address : out STD_LOGIC_VECTOR(2 downto 0));
end MUX_2_way_3bit;


architecture Behavioral of MUX_2_way_3bit is
component tri_state_buffer_3bit
    Port ( Input : in STD_LOGIC_VECTOR (2 downto 0);
           Enable : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal not_jump_flag:STD_LOGIC;
begin
not_jump_flag<=not(Jump_flag);
tri_state_buffer_3bit_0:tri_state_buffer_3bit
    Port map(Input=>jump_address,
             Enable=>Jump_flag,
             Output=>Address);
tri_state_buffer_3bit_1:tri_state_buffer_3bit
    Port map(Input=>Inc_Address,
             Enable=>not_Jump_flag,
             Output=>Address);
end Behavioral;
