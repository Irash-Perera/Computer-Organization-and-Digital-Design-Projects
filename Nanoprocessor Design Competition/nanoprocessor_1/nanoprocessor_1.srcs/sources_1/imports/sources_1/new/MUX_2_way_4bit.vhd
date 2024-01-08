library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_2_way_4bit is
    Port ( Load_Sel : in STD_LOGIC;
           Imedi_Val : in STD_LOGIC_VECTOR(3 downto 0);
           Result : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR(3 downto 0));
end MUX_2_way_4bit;

architecture Behavioral of MUX_2_way_4bit is
component tri_state_buffer_4bit
    Port ( Input : in STD_LOGIC_VECTOR (3 downto 0);
           Enable : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal not_Load_Sel:STD_LOGIC;
begin
not_Load_Sel<=not(Load_Sel);
tri_state_buffer_4bit_0:tri_state_buffer_4bit
    Port map(Input=>Result,
             Enable=>not_Load_Sel,
             Output=>O);
tri_state_buffer_4bit_1:tri_state_buffer_4bit
    Port map(Input=>Imedi_Val,
             Enable=>Load_Sel,
             Output=>O);
end Behavioral;
