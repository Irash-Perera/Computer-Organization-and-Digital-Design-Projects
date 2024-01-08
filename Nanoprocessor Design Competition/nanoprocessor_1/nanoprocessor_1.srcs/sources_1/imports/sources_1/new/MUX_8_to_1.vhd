library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_8_to_1 is
    Port ( R0 : in STD_LOGIC_VECTOR (3 downto 0);
           R1 : in STD_LOGIC_VECTOR (3 downto 0);
           R2 : in STD_LOGIC_VECTOR (3 downto 0);
           R3 : in STD_LOGIC_VECTOR (3 downto 0);
           R4 : in STD_LOGIC_VECTOR (3 downto 0);
           R5 : in STD_LOGIC_VECTOR (3 downto 0);
           R6 : in STD_LOGIC_VECTOR (3 downto 0);
           R7 : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (2 downto 0));
end MUX_8_to_1;

architecture Behavioral of MUX_8_to_1 is
Component Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
          EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;
Component tri_state_buffer_4bit
    Port ( Input : in STD_LOGIC_VECTOR (3 downto 0);
           Enable : in STD_LOGIC;
           Output : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal Y_out:STD_LOGIC_VECTOR(7 downto 0);
begin
Decoder_3_to_8_0:Decoder_3_to_8
    Port map(I=>S,
             EN=>'1',
             Y=>Y_out);
tri_state_buffer_4bit_0:tri_state_buffer_4bit
    Port map(Input=>R0,
             Enable=>Y_out(0),
             Output=>O);
tri_state_buffer_4bit_1:tri_state_buffer_4bit
    Port map(Input=>R1,
             Enable=>Y_out(1),
             Output=>O);
tri_state_buffer_4bit_2:tri_state_buffer_4bit
    Port map(Input=>R2,
             Enable=>Y_out(2),
             Output=>O);
tri_state_buffer_4bit_3:tri_state_buffer_4bit
    Port map(Input=>R3,
             Enable=>Y_out(3),
             Output=>O);
tri_state_buffer_4bit_4:tri_state_buffer_4bit
    Port map(Input=>R4,
             Enable=>Y_out(4),
             Output=>O);
tri_state_buffer_4bit_5:tri_state_buffer_4bit
     Port map(Input=>R5,
              Enable=>Y_out(5),
              Output=>O);
tri_state_buffer_4bit_6:tri_state_buffer_4bit
     Port map(Input=>R6,
              Enable=>Y_out(6),
              Output=>O);
tri_state_buffer_4bit_7:tri_state_buffer_4bit
     Port map(Input=>R7,
              Enable=>Y_out(7),
              Output=>O);
end Behavioral;
